// findasm.cc
// g++ -std=gnu++17 -O2 -fPIC -fno-rtti -shared -I"$(/root/AsmXoM/gcc-15.2.0/build/bin/gcc -print-file-name=plugin)/include" findasm.cc -o findasm.so

#include <cerrno>
#include <cstdio>
#include <cstdlib>
#include <filesystem>
#include <memory>
#include <string>
#include <string_view>

// Include the C++ standard library before GCC plugin headers. GCC's
// safe-ctype.h defines macros such as toupper and tolower that conflict with
// declarations pulled in by <filesystem> on older libstdc++ versions.
#include "gcc-plugin.h"
#include "plugin-version.h"

#include "tree.h"
#include "gimple.h"
#include "context.h"
#include "basic-block.h"
#include "function.h"
#include "coretypes.h"
#include "diagnostic.h"
#include "gimple-iterator.h"
#include "tree-pass.h"

// GCC's system.h redirects these functions to unlocked variants through
// function-like macros. Undefine them so qualified std:: calls remain valid.
#undef fopen
#undef fflush

int plugin_is_GPL_compatible;

namespace {

namespace fs = std::filesystem;

constexpr std::string_view kTargetPath = "/workspace/compiler-info";
constexpr std::string_view kFallbackBasePath = "/tmp";
constexpr std::string_view kDefaultLogFilename =
    "default_inline_stats.log";
constexpr std::string_view kInlineStatsSuffix = "_inline_stats.log";

struct FileCloser {
    void operator()(std::FILE *file) const noexcept
    {
        if (file != nullptr) {
            std::fclose(file);
        }
    }
};

using FileHandle = std::unique_ptr<std::FILE, FileCloser>;

FileHandle g_output;

const pass_data kFindAsmPassData = {
    GIMPLE_PASS,
    "findasm",
    OPTGROUP_NONE,
    TV_NONE,
    0, // properties_required
    0, // properties_provided
    0, // properties_destroyed
    0, // todo_flags_start
    0  // todo_flags_finish
};


/*
 * Convert the path returned by LOCATION_FILE() to an absolute path.
 *
 * Rules:
 * 1. If file exists, use std::filesystem::canonical() to resolve:
 *      - relative paths;
 *      - "." and "..";
 *      - symbolic links.
 *
 * 2. If canonicalization fails:
 *      - preserve an absolute path as is;
 *      - prepend GCC's current working directory to a relative path.
 *
 * 3. Preserve GCC virtual filenames such as <built-in> and <command-line> as is.
 */
std::string
get_absolute_source_path(const char *file)
{
    if (file == nullptr || file[0] == '\0') {
        return "<unknown>";
    }

    /*
     * GCC may use the following virtual filenames:
     *
     *   <built-in>
     *   <command-line>
     *   <stdin>
     *
     * They are not real file paths and must not be canonicalized.
     */
    if (file[0] == '<') {
        return file;
    }

    const fs::path source_path{file};
    std::error_code error;

    /*
     * canonical() resolves relative paths against the GCC process's current
     * working directory. This usually succeeds when the source file exists.
     */
    fs::path resolved_path = fs::canonical(source_path, error);
    if (!error) {
        return resolved_path.string();
    }

    /*
     * If the path is already absolute but canonicalization fails, for example
     * because the file was deleted during compilation, preserve the absolute path.
     */
    if (source_path.is_absolute()) {
        return source_path.string();
    }

    /*
     * If canonicalization fails for a relative path, construct an absolute path
     * using the current working directory.
     */
    fs::path current_directory = fs::current_path(error);
    if (error) {
        std::fprintf(stderr,
                     "findasm: getcwd failed while resolving '%s': %s\n",
                     file,
                     error.message().c_str());
        return file;
    }

    const fs::path combined_path = current_directory / source_path;

    /*
     * Try canonical() again after joining the paths to eliminate "../" and
     * "./".
     */
    error.clear();
    resolved_path = fs::canonical(combined_path, error);
    if (!error) {
        return resolved_path.string();
    }

    /*
     * When the file does not exist, ".." cannot be fully normalized.
     * Still, output an absolute path rooted at the current working directory.
     */
    return combined_path.string();
}


std::string
get_environment_value(const char *name)
{
    const char *const value = std::getenv(name);
    return value != nullptr ? value : "";
}


fs::path
get_log_filename()
{
    const std::string asmxom_home = get_environment_value("ASMXOM_HOME");
    const fs::path base_path = asmxom_home.empty()
        ? fs::path{kFallbackBasePath}
        : fs::path{asmxom_home + std::string{kTargetPath}};

    const std::string stats_directory =
        get_environment_value("ASM_STATS_DIR");

    if (stats_directory.empty()) {
        return base_path / kDefaultLogFilename;
    }

    const fs::path project_name =
        fs::path{stats_directory}.parent_path().filename();
    return base_path
        / (project_name.string() + std::string{kInlineStatsSuffix});
}


class FindAsmPass final : public gimple_opt_pass {
public:
    explicit FindAsmPass(gcc::context *context)
        : gimple_opt_pass(kFindAsmPassData, context)
    {
    }

    unsigned int execute(function *fun) override
    {
        basic_block bb;

        FOR_EACH_BB_FN(bb, fun) {
            for (gimple_stmt_iterator gsi = gsi_start_bb(bb);
                 !gsi_end_p(gsi);
                 gsi_next(&gsi)) {
                gimple *const stmt = gsi_stmt(gsi);

                if (gimple_code(stmt) != GIMPLE_ASM) {
                    continue;
                }

                const location_t location = gimple_location(stmt);
                const char *const file = LOCATION_FILE(location);
                const int line = LOCATION_LINE(location);
                const std::string absolute_file =
                    get_absolute_source_path(file);

                std::FILE *const output =
                    g_output ? g_output.get() : stderr;

                std::fprintf(output,
                             "[inline-asm] %s:%d\n",
                             absolute_file.c_str(),
                             line);
                std::fflush(output);
            }
        }

        return 0;
    }

    FindAsmPass *clone() override
    {
        return new FindAsmPass(m_ctxt);
    }
};

} // namespace


int
plugin_init(struct plugin_name_args *plugin_info,
            struct plugin_gcc_version *version)
{
    if (!plugin_default_version_check(version, &gcc_version)) {
        std::fprintf(stderr,
                     "findasm: incompatible GCC/plugin versions\n");
        return 1;
    }

    const fs::path output_path = get_log_filename();
    g_output.reset(std::fopen(output_path.c_str(), "a"));

    if (!g_output) {
        std::fprintf(stderr,
                     "findasm: cannot open output file '%s': %s\n",
                     output_path.c_str(),
                     xstrerror(errno));

        /*
         * The current behavior allows the plugin to continue and falls back to
         * stderr. To stop compilation when the log file cannot be opened, use:
         *
         * return 1;
         */
    }

    auto *const pass = new FindAsmPass(g);

    register_pass_info pass_info{};

    pass_info.pass = pass;
    pass_info.reference_pass_name = "cfg";
    pass_info.ref_pass_instance_number = 1;
    pass_info.pos_op = PASS_POS_INSERT_AFTER;

    register_callback(plugin_info->base_name,
                      PLUGIN_PASS_MANAGER_SETUP,
                      nullptr,
                      &pass_info);

    return 0;
}

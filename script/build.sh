#!/usr/bin/env bash

set -euo pipefail

# ================= Configuration =================
# Source env.sh if ASMXOM_HOME is empty.
if [[ -z "$ASMXOM_HOME" ]]; then
    echo "[+] ASMXOM_HOME is not set. Sourcing env.sh..."
    source "$(dirname "$0")/../env.sh"
fi

# base dir
BASE_ROOT="$ASMXOM_HOME"


# workspace
COMPILER_INFO_DIR="$BASE_ROOT/workspace/compiler-info"
DATA_INFO_DIR="$BASE_ROOT/workspace/data-info"
OUTPUT_DIR="$BASE_ROOT/workspace/output"
PROJECT_DIR="$BASE_ROOT/workspace/projects"

# compiler
CC="$GCC_PATH"
CXX="$GXX_PATH"
CC_WRAPPER="$GCC_WRAPPER_PATH"
CXX_WRAPPER="$GXX_WRAPPER_PATH"

GCC_PLUGIN="$BASE_ROOT/gcc-wrapper/findasm.so"
LD_SCRIPT="$BASE_ROOT/gcc-wrapper/ldscript.ld"

EXTRA_CFLAGS=""
EXTRA_CXXFLAGS=""
EXTRA_LDFLAGS=""
EXTRA_ASM_FLAGS=""

# python
LOC_PY="$BASE_ROOT/script/loc_stats.py"
DATA_PY="$BASE_ROOT/script/parse_xom_info.py"

# xom config
# MPK_SO="$BASE_ROOT/xom/libmpk_xom.so"
# PROBE_SO="$BASE_ROOT/xom/libleak_probe.so"
# XOM_RUN="$BASE_ROOT/xom/xom_run"

# ================= Helper functions =================
# log
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'  # Bold yellow for warnings and dry runs
BLUE='\033[1;34m'    # Bold blue for step headings
NC='\033[0m'         # Reset color

STEP_ID=1
log_step() {
    echo -e "${BLUE}========================================${NC}"
    echo -e "${BLUE}[Step $STEP_ID] $1${NC}"
    echo -e "${BLUE}========================================${NC}"
    ((STEP_ID++))
}

log_error() {
    echo -e "${RED}[Error] $1${NC}"
}

log_success() {
    echo -e "${GREEN}[Success] $1${NC}"
}

log_warn() {
    echo -e "${YELLOW}[Warning] $1${NC}"
}

# ================= Execution parameters =================
readonly SCRIPT_NAME="$(basename "$0")"

TARGET=""
PROJECT_FULL=""
JOBS="$(nproc 2>/dev/null || printf '1')"
MODE=""

declare -Ar DEFAULT_PROJECT_VERSIONS=(
    [openssl]="3.3.5"
    [tongsuo]="8.3.0"
    [libressl]="3.7.0"
    [libgcrypt]="1.8.12"
    [boringssl]="3112"
    [libsodium]="1.0.19"
    [gnutls]="3.7.11"
)

# ================= Command-line parsing =================
# help
usage() {
    cat <<EOF
Usage: $SCRIPT_NAME -p <target> [-j <jobs>] <-c | -b | -f | -s>

Options:
  -p <target>  Project name.
  -j <jobs>    Number of parallel compilation jobs (default: $JOBS).
  -c           Run in precompile mode. (Collect assembly and inline asm statistics)
  -b           Run in build mode. (Collect embedded data statistics)
  -f           Function correctness test.
  -s           Security test.
  -h           Show this help message and exit.

Exactly one of -c, -b, -f, and -s must be specified.
EOF
}


die() {
    printf 'Error: %s\n\n' "$1" >&2
    usage >&2
    exit 1
}


# mode
set_mode() {
    local requested_mode="$1"

    if [[ -n "$MODE" ]]; then
        die "options -c and -b are mutually exclusive"
    fi

    MODE="$requested_mode"
}

resolve_project_full() {
    if [[ "$TARGET" =~ -[0-9] ]]; then
        PROJECT_FULL="$TARGET"
        return
    fi

    local default_version="${DEFAULT_PROJECT_VERSIONS[$TARGET]-}"
    if [[ -z "$default_version" ]]; then
        die "no default version is configured for project: $TARGET"
    fi

    PROJECT_FULL="${TARGET}-${default_version}"
}

get_project_download_url() {
    local target="$1"
    local version

    case "$target" in
        openssl-*)
            version="${target#openssl-}"
            printf 'https://github.com/openssl/openssl/releases/download/openssl-%s/%s.tar.gz\n' \
                "$version" "$target"
            ;;
        tongsuo-*)
            version="${target#tongsuo-}"
            printf 'https://github.com/Tongsuo-Project/Tongsuo/archive/refs/tags/%s.tar.gz\n' \
                "$version"
            ;;
        libressl-*)
            printf 'https://cdn.openbsd.org/pub/OpenBSD/LibreSSL/%s.tar.gz\n' \
                "$target"
            ;;
        libgcrypt-*)
            printf 'https://gnupg.org/ftp/gcrypt/libgcrypt/%s.tar.bz2\n' \
                "$target"
            ;;
        boringssl-*)
            version="${target#boringssl-}"
            printf 'https://boringssl.googlesource.com/boringssl/+archive/refs/heads/chromium-%s.tar.gz\n' \
                "$version"
            ;;
        libsodium-*)
            printf 'https://download.libsodium.org/libsodium/releases/%s.tar.gz\n' \
                "$target"
            ;;
        gnutls-*)
            version="${target#gnutls-}"
            printf 'https://www.gnupg.org/ftp/gcrypt/gnutls/v%s/%s.tar.xz\n' \
                "${version%.*}" "$target"
            ;;
        *)
            return 1
            ;;
    esac
}


download_archive() {
    local url="$1"
    local destination="$2"

    if command -v curl >/dev/null 2>&1; then
        curl --fail --location --retry 3 --output "$destination" "$url"
    elif command -v wget >/dev/null 2>&1; then
        wget --tries=3 --output-document="$destination" "$url"
    else
        die "neither curl nor wget is available"
    fi
}


remove_download_directory() {
    local directory="$1"

    case "$directory" in
        "$PROJECT_DIR"/.*.download.*)
            rm -rf -- "$directory"
            ;;
        *)
            die "refusing to remove an unexpected temporary path: $directory"
            ;;
    esac
}


initialize_project() {
    local target="$1"

    if [[ ! "$target" =~ ^[a-z0-9][a-z0-9._+-]*$ ]]; then
        die "invalid project target: $target"
    fi

    mkdir -p -- "$PROJECT_DIR"
    cd -- "$PROJECT_DIR"

    if [[ -d "$target" ]]; then
        printf 'Project already exists: %s\n' "$PROJECT_DIR/$target"
        return
    fi

    if [[ -e "$target" ]]; then
        die "project path exists but is not a directory: $PROJECT_DIR/$target"
    fi

    local download_url
    if ! download_url="$(get_project_download_url "$target")"; then
        die "no download URL is configured for project: $target"
    fi

    local temporary_directory
    temporary_directory="$(mktemp -d "$PROJECT_DIR/.${target}.download.XXXXXX")"

    local archive_name="${download_url##*/}"
    local archive_path="$temporary_directory/$archive_name"
    local extraction_directory="$temporary_directory/extracted"
    local staged_directory="$temporary_directory/$target"

    printf 'Downloading %s from %s\n' "$target" "$download_url"
    if ! download_archive "$download_url" "$archive_path"; then
        remove_download_directory "$temporary_directory"
        die "failed to download project: $target"
    fi

    mkdir -- "$extraction_directory"
    if ! tar -xf "$archive_path" -C "$extraction_directory"; then
        remove_download_directory "$temporary_directory"
        die "failed to extract project archive: $archive_name"
    fi

    local -a extracted_entries=()
    mapfile -d '' extracted_entries \
        < <(find "$extraction_directory" -mindepth 1 -maxdepth 1 -print0)

    if ((${#extracted_entries[@]} == 0)); then
        remove_download_directory "$temporary_directory"
        die "project archive is empty: $archive_name"
    fi

    if ((${#extracted_entries[@]} == 1)) \
        && [[ -d "${extracted_entries[0]}" ]]; then
        mv -- "${extracted_entries[0]}" "$staged_directory"
    else
        mkdir -- "$staged_directory"
        cp -a -- "$extraction_directory/." "$staged_directory/"
    fi

    if ! mv -T -- "$staged_directory" "$PROJECT_DIR/$target"; then
        remove_download_directory "$temporary_directory"
        die "failed to install the extracted project directory: $target"
    fi

    remove_download_directory "$temporary_directory"
    printf 'Project initialized: %s\n' "$PROJECT_DIR/$target"
}

check_config() {
    local config_log="$1"
    log_step "Configuring project $PROJECT_FULL ..."

    if [ $? -eq 0 ]; then
        log_success "[+] Configuration Successful!"
        rm -f "$config_log"
    else
        log_error "Configuration Failed!"
        echo "================ Error Log (Last 20 lines) ================"
        tail -n 20 "$config_log"  # Show only the last 20 lines of error output.
        echo "==========================================================="
        echo "Full log available at: $(pwd)/$config_log"
        exit 1
    fi
}

do_build() {
    log_step "Compiling $PROJECT_FULL with -j$JOBS ..."
    local BUILD_LOG="build_process.log"
    local INSTALL_LOG="install_process.log"
    time make -j"$JOBS" V=1 > "$BUILD_LOG" 2>&1

    if [ $? -eq 0 ]; then
        log_success "[+] Compilation Successful!"
        rm -f "$BUILD_LOG"
    else 
        log_error "Compilation Failed!"
        echo "================ Error Log (Last 20 lines) ================"
        tail -n 20 "$BUILD_LOG"  # Show only the last 20 lines of error output.
        echo "==========================================================="
        echo "Full log available at: $(pwd)/$BUILD_LOG"
        exit 1
    fi

    # log_step "Installing $PROJECT_FULL ..."
    # make install > "$INSTALL_LOG" 2>&1
    # if [ $? -eq 0 ]; then
    #     log_success "[+] Installation Successful!"
    #     rm -rf "$INSTALL_LOG"
    # else 
    #     log_error "Installation Failed!"
    #     echo "================ Error Log (Last 20 lines) ================"
    #     tail -n 20 "$INSTALL_LOG"  # Show only the last 20 lines of error output.
    #     echo "==========================================================="
    #     echo "Full log available at: $(pwd)/$INSTALL_LOG"
    #     exit 1
    # fi
}

build_openssl() {
    local target="$1"
    local config_log="config_process.log"

    ../Configure no-shared --prefix="$PROJECT_DIR/$target/build-install" CC="$CC" CFLAGS="$EXTRA_CFLAGS -fPIC" LDFLAGS="$EXTRA_LDFLAGS -fPIC" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}

build_tongsuo() {
    local target="$1"
    local config_log="config_process.log"

    ../config no-shared --prefix="$PROJECT_DIR/$target/build-install" CC="$CC" CFLAGS="$EXTRA_CFLAGS" LDFLAGS="$EXTRA_LDFLAGS" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}

build_libressl() {
    local target="$1"
    local config_log="config_process.log"

    ../configure --prefix="$PROJECT_DIR/$target/build-install" CC="$CC" CFLAGS="$EXTRA_CFLAGS -fPIC" LDFLAGS="$EXTRA_LDFLAGS -fPIC" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}

build_libgcrypt() {
    local target="$1"
    local config_log="config_process.log"

    ../configure --prefix="$PROJECT_DIR/$target/build-install" CC="$CC" CFLAGS="$EXTRA_CFLAGS -fPIC" LDFLAGS="$EXTRA_LDFLAGS -fPIC" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}

build_boringssl() {
    local target="$1"
    local config_log="config_process.log"

    cmake .. -DCMAKE_INSTALL_PREFIX="$PROJECT_DIR/$target/build-install" -DCMAKE_C_COMPILER="$CC" -DCMAKE_CXX_COMPILER="$CXX" -DCMAKE_C_FLAGS="$EXTRA_CFLAGS -Wno-array-parameter -Wno-error=maybe-uninitialized" -DCMAKE_CXX_FLAGS="$EXTRA_CFLAGS -Wno-array-parameter -Wno-error=maybe-uninitialized" -DCMAKE_ASM_FLAGS="$EXTRA_ASM_FLAGS" -DCMAKE_EXE_LINKER_FLAGS="$EXTRA_LDFLAGS" -DCMAKE_SHARED_LINKER_FLAGS="$EXTRA_LDFLAGS" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}

build_libsodium() {
    local target="$1"
    local config_log="config_process.log"

    ../configure --prefix="$PROJECT_DIR/$target/build-install" CC="$CC" CFLAGS="$EXTRA_CFLAGS" LDFLAGS="$EXTRA_LDFLAGS" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}

build_gnutls() {
    local target="$1"
    local config_log="config_process.log"

    # prepare nettle
    pushd "$PROJECT_DIR"
    mkdir -p nettle
    cd nettle
    if ! compgen -G "$PROJECT_DIR/nettle/nettle-3.10.2*" > /dev/null; then
        log_step "Preparing nettle-3.10.2 ..."
        download_archive "https://ftp.gnu.org/gnu/nettle/nettle-3.10.2.tar.gz" "nettle-3.10.2.tar.gz"
        tar -xf "nettle-3.10.2.tar.gz"

        cd nettle-3.10.2
        mkdir build && cd build
        ../configure --prefix="$PWD" > /dev/null 2>&1 
        make -j"$JOBS" > /dev/null 2>&1 
        make install > /dev/null 2>&1
    fi

    popd

    NETTLE_PKGCONFIG="$PROJECT_DIR/nettle/nettle-3.10.2/build/lib64/pkgconfig"
    NETTLE_LIB="$PROJECT_DIR/nettle/nettle-3.10.2/build/lib64"

    if [[ -n "${PKG_CONFIG_PATH:-}" ]]; then
        export PKG_CONFIG_PATH="$NETTLE_PKGCONFIG:$PKG_CONFIG_PATH"
    else
        export PKG_CONFIG_PATH="$NETTLE_PKGCONFIG"
    fi

    if [[ -n "${LD_LIBRARY_PATH:-}" ]]; then
        export LD_LIBRARY_PATH="$NETTLE_LIB:$LD_LIBRARY_PATH"
    else
        export LD_LIBRARY_PATH="$NETTLE_LIB"
    fi

    ../configure --prefix="$PROJECT_DIR/$target/build-install"  --with-included-libtasn1 --with-included-unistring --without-p11-kit --disable-doc --disable-shared --enable-static CC="$CC" CFLAGS="$EXTRA_CFLAGS -std=gnu11 -fPIC" LDFLAGS="$EXTRA_LDFLAGS -fPIC" > "$config_log" 2>&1
    check_config "$config_log"

    do_build
}


compile_project() {
    local target="$1"
    local jobs="$2"

    initialize_project "$target"

    cd "$PROJECT_DIR/$target"
    rm -rf build build-install
    mkdir -p build build-install
    cd build

    export ASM_STATS_DIR=$PWD # This environment variable configures log files.
    

    case "$target" in
        openssl-*)
            build_openssl "$target"
            ;;
        tongsuo-*)
            build_tongsuo "$target"
            ;;
        libressl-*)
            build_libressl "$target"
            ;;
        libgcrypt-*)
            build_libgcrypt "$target"
            ;;
        boringssl-*)
            build_boringssl "$target"
            ;;
        libsodium-*)
            build_libsodium "$target"
            ;;
        gnutls-*)
            build_gnutls "$target"
            ;;
        *)
            return 1
            ;;
    esac

    
}


while getopts ':p:j:cbh' option; do
    case "$option" in
        p)
            TARGET="${OPTARG,,}"
            ;;
        j)
            JOBS="$OPTARG"
            ;;
        c)
            set_mode "precompile"
            ;;
        b)
            set_mode "build"
            ;;
        h)
            usage
            exit 0
            ;;
        :)
            die "option -$OPTARG requires an argument"
            ;;
        \?)
            die "unknown option: -$OPTARG"
            ;;
    esac
done

shift "$((OPTIND - 1))"

if (($# > 0)); then
    die "unexpected positional argument: $1"
fi

if [[ -z "$TARGET" ]]; then
    die "option -p is required"
fi

if [[ ! "$JOBS" =~ ^[1-9][0-9]*$ ]]; then
    die "option -j must be a positive integer"
fi

if [[ -z "$MODE" ]]; then
    die "one of -c or -b is required"
fi

initial_env() {
    # Build the GCC plugin if it does not exist.
    if [[ ! -f "$GCC_PLUGIN" ]]; then
        echo "[+] GCC plugin not found. Attempting to build the plugin..."
        cd "$BASE_ROOT/gcc-wrapper"
        g++ -std=gnu++17 -O2 -fPIC -fno-rtti -shared -I"$("$CC" -print-file-name=plugin)/include" findasm.cc -o findasm.so

        if [[ ! -f "$GCC_PLUGIN" ]]; then
            echo "[!] Failed to build GCC plugin. Please check the build logs."
            exit 1
        fi
    fi

    # clean tmp files
    rm -f $DATA_INFO_DIR/data_*.txt
    rm -f $DATA_INFO_DIR/ld_*.txt
}

analysis_embedded_data() {
    find "$DATA_INFO_DIR" -maxdepth 1 -type f -name "ld_*" | while read -r ldlog_file_path; do
        ldlog_file=$(basename "$ldlog_file_path")
        temp_name="${ldlog_file#ld_}"
        temp_name="${temp_name%.txt}"
        target_name="${temp_name%_*}"

        if [ -z "$target_name" ] || [ "$target_name" == "$temp_name" ]; then
            log_warn "Skip Invalid filename format: $ldlog_file"
            continue
        fi

        if echo "$target_name" | grep -iqE "conftest|test|tests|example|examples|demo|check|a.out"; then
            # log_warn "Ignored test/example artifact (matched 'conftest' or 'test'): $target_name_path"
            continue
        fi

        found_path=$(find . -type f -name "$target_name" -print -quit)
        if [ -z "$found_path" ]; then
            # log_warn "Target file '$target_name' NOT found in build directory."
            continue
        fi

        target_name_path=$(realpath "$found_path")

        if echo "$target_name_path" | grep -iqE "conftest|test|tests|example|examples|demo|check"; then
            # log_warn "Ignored test/example artifact (matched 'conftest' or 'test'): $target_name_path"
            continue
        fi

        ldlog_abs_path=$(realpath "$ldlog_file_path")
        
        FINAL_LOG_FILE="${OUTPUT_DIR}/${PROJECT_FULL}_${target_name}.log"
        echo "[+] Processing $target_name... the log will be written in $FINAL_LOG_FILE"
        python3.10 "$DATA_PY" "$target_name_path" --section .xomdata --ldlog "$ldlog_abs_path" 2>&1 | tee "$FINAL_LOG_FILE"
    done
}

initial_env

resolve_project_full

case "$MODE" in
    precompile)
        EXTRA_CFLAGS="-fplugin=$GCC_PLUGIN -save-temps=obj"
        CC="$CC_WRAPPER"
        CXX="$CXX_WRAPPER"
        compile_project "$PROJECT_FULL" "$JOBS"

        log_step "Analysis the assembly files in programs..."
        python3.10 "$LOC_PY" --compile-log "$COMPILER_INFO_DIR/${PROJECT_FULL}_asm_stats.log" --inline-log "$COMPILER_INFO_DIR/${PROJECT_FULL}_inline_stats.log" --base-dir "" --output-dir $OUTPUT_DIR --allow-missing --allow-invalid-inline
        ;;
    build)
        EXTRA_CFLAGS="-O0 -Wa,--keep-locals -Wa,--dsplit -save-temps=obj"
        EXTRA_LDFLAGS="-Wl,--dsplit -Wl,-T,$LD_SCRIPT"
        EXTRA_ASM_FLAGS="-O0 -Wa,--keep-locals -Wa,--dsplit -save-temps=obj"
        compile_project "$PROJECT_FULL" "$JOBS"

        log_step "Analysis the embedded data in programs..."
        analysis_embedded_data
        ;;
esac

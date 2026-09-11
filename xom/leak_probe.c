#define _GNU_SOURCE

#include <elf.h>
#include <link.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

static uintptr_t g_code_start = 0;
static uintptr_t g_code_end = 0;
static uintptr_t g_test_addr = 0;

// compilation 1: relying on libmpk_xom.so to apply MPK-XOM
// gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-z,now -Wl,-soname,libleak_probe.so -o libleak_probe.so leak_probe.c -L. -Wl,--no-as-needed -lmpk_xom -Wl,--as-needed -ldl -Wl,-rpath,'$ORIGIN'


// conpilation 2: no relying on libmpk_xom.so, just test the in-process code disclosure primitive
// gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-z,now -o libleak_probe_native.so leak_probe.c -ldl


/*
 * This test attempts to read the main executable's code segment as data.
 * If MPK-XOM is working, the first read should cause a SIGSEGV with
 * si_code == SEGV_PKUERR. Otherwise, the read will succeed and the
 * leaked bytes will be printed.
 *
 * The test is run in two ways:
 *
 * 1. With MPK-XOM enabled (libmpk_xom.so preloaded), which should prevent
 *    reading executable pages as data.
 *
 * 2. Without MPK-XOM (no preloading), which should allow reading executable
 *    pages as data.
 * 
 * Usage:
 *   LD_PRELOAD=/root/AsmXoM/xom/libleak_probe.so ./probe read
*/  


/*
 * Locate the executable PT_LOAD segment of the main executable.
 */
static int find_main_code(struct dl_phdr_info *info,
                          size_t size,
                          void *data)
{
    (void)size;
    (void)data;

    const int is_main =
        info->dlpi_name == NULL ||
        info->dlpi_name[0] == '\0';

    if (!is_main)
        return 0;

    for (ElfW(Half) i = 0; i < info->dlpi_phnum; ++i) {
        const ElfW(Phdr) *phdr = &info->dlpi_phdr[i];

        if (phdr->p_type != PT_LOAD)
            continue;

        if (!(phdr->p_flags & PF_X))
            continue;

        if (phdr->p_memsz == 0)
            continue;

        g_code_start =
            (uintptr_t)info->dlpi_addr +
            (uintptr_t)phdr->p_vaddr;

        g_code_end =
            g_code_start +
            (uintptr_t)phdr->p_memsz;

        /*
         * Avoid using the exact segment boundary merely to make
         * the test address visually unambiguous.
         */
        if (phdr->p_memsz > 16)
            g_test_addr = g_code_start + 16;
        else
            g_test_addr = g_code_start;

        return 1;
    }

    return 1;
}


/*
 * SIGSEGV handler for the deliberate disclosure attempt.
 */
static void segv_handler(int sig,
                         siginfo_t *info,
                         void *context)
{
    (void)context;

#ifdef SEGV_PKUERR
    if (sig == SIGSEGV &&
        info != NULL &&
        info->si_code == SEGV_PKUERR &&
        (uintptr_t)info->si_addr >= g_code_start &&
        (uintptr_t)info->si_addr < g_code_end)
    {
        static const char msg[] =
            "\n"
            "[leak-probe] PASS\n"
            "[leak-probe] attempted in-process code disclosure\n"
            "[leak-probe] signal  : SIGSEGV\n"
            "[leak-probe] si_code : SEGV_PKUERR\n"
            "[leak-probe] result  : executable page cannot be "
            "read as data\n";

        ssize_t ret = write(STDERR_FILENO,
                    msg,
                    sizeof(msg) - 1);

        (void)ret;

        _exit(0);
    }
#endif

    {
        static const char msg[] =
            "\n"
            "[leak-probe] FAIL\n"
            "[leak-probe] unexpected SIGSEGV\n";

        ssize_t ret = write(STDERR_FILENO,
                    msg,
                    sizeof(msg) - 1);

        (void)ret;
    }

    _exit(128 + sig);
}


static void install_segv_handler(void)
{
    struct sigaction sa;

    memset(&sa, 0, sizeof(sa));

    sa.sa_sigaction = segv_handler;
    sa.sa_flags = SA_SIGINFO;

    sigemptyset(&sa.sa_mask);

    if (sigaction(SIGSEGV, &sa, NULL) != 0) {
        static const char msg[] =
            "[leak-probe] sigaction failed\n";

        ssize_t ret = write(STDERR_FILENO,
                    msg,
                    sizeof(msg) - 1);

        (void)ret;

        _exit(120);
    }
}


/*
 * Simulated in-process disclosure primitive.
 */
__attribute__((noinline))
static void leak_code(void)
{
    volatile unsigned char leaked[16];

    const volatile unsigned char *src =
        (const volatile unsigned char *)g_test_addr;

    fprintf(stderr,
            "[leak-probe] attempting to read code\n"
            "[leak-probe] executable segment : [%p, %p)\n"
            "[leak-probe] test address       : %p\n",
            (void *)g_code_start,
            (void *)g_code_end,
            (void *)g_test_addr);

    /*
     * Ordinary data loads from executable memory.
     *
     * Native RX:
     *     succeeds.
     *
     * MPK-XOM:
     *     first access should cause
     *     SIGSEGV + SEGV_PKUERR.
     */
    for (size_t i = 0; i < sizeof(leaked); ++i)
        leaked[i] = src[i];

    /*
     * Reaching here means all 16 bytes were readable.
     */
    fprintf(stderr,
            "[leak-probe] READ SUCCEEDED\n"
            "[leak-probe] leaked bytes       : ");

    for (size_t i = 0; i < sizeof(leaked); ++i)
        fprintf(stderr, "%02x ",
                (unsigned int)leaked[i]);

    fprintf(stderr, "\n");
}


__attribute__((constructor))
static void leak_probe_init(void)
{
    /*
     * Because this DSO has a DT_NEEDED dependency on
     * libmpk_xom.so, mpk_xom_init() has already run
     * before this constructor.
     */

    install_segv_handler();

    dl_iterate_phdr(find_main_code, NULL);

    if (g_test_addr == 0) {
        static const char msg[] =
            "[leak-probe] cannot locate main executable "
            "PF_X PT_LOAD segment\n";

        ssize_t ret = write(STDERR_FILENO,
                    msg,
                    sizeof(msg) - 1);

        (void)ret;

        _exit(121);
    }

    leak_code();
}
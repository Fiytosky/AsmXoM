#define _GNU_SOURCE

#include <elf.h>
#include <errno.h>
#include <link.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/syscall.h>
#include <unistd.h>

#ifndef PKEY_DISABLE_ACCESS
#define PKEY_DISABLE_ACCESS 0x1
#endif

// gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -o libmpk_xom.so mpk_xom.c -ldl
// gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-soname,libmpk_xom.so -o libmpk_xom.so mpk_xom.c -ldl

static long g_page_size;
static int g_pkey = -1;
static int g_verbose = 1;
static int g_protect_all = 0;
static int g_protected_segments = 0;

/*
 * Directly invoke the Linux pkey syscalls. This avoids depending on
 * whether the installed glibc exports pkey_alloc/pkey_mprotect wrappers.
 */
static int x_pkey_alloc(unsigned int flags, unsigned int rights)
{
#ifdef SYS_pkey_alloc
    return (int)syscall(SYS_pkey_alloc, flags, rights);
#else
    (void)flags;
    (void)rights;
    errno = ENOSYS;
    return -1;
#endif
}

static int x_pkey_mprotect(void *addr,
                          size_t len,
                          int prot,
                          int pkey)
{
#ifdef SYS_pkey_mprotect
    return (int)syscall(SYS_pkey_mprotect,
                        addr,
                        len,
                        prot,
                        pkey);
#else
    (void)addr;
    (void)len;
    (void)prot;
    (void)pkey;
    errno = ENOSYS;
    return -1;
#endif
}

/*
 * RDPKRU:
 *   ECX must be zero.
 *   Result is returned in EAX.
 */
static inline uint32_t rdpkru(void)
{
    uint32_t eax;
    uint32_t edx;
    uint32_t ecx = 0;

    __asm__ volatile(
        ".byte 0x0f, 0x01, 0xee"
        : "=a"(eax), "=d"(edx)
        : "c"(ecx));

    (void)edx;
    return eax;
}

/*
 * WRPKRU:
 *   ECX and EDX must both be zero.
 */
static inline void wrpkru(uint32_t pkru)
{
    uint32_t ecx = 0;
    uint32_t edx = 0;

    __asm__ volatile(
        ".byte 0x0f, 0x01, 0xef"
        :
        : "a"(pkru), "c"(ecx), "d"(edx)
        : "memory");
}

/*
 * Each protection key occupies two PKRU bits:
 *
 * bit 2*k     : Access Disable
 * bit 2*k + 1 : Write Disable
 */
static int x_pkey_set(int pkey, unsigned int rights)
{
    if (pkey < 0 || pkey > 15 || rights > 3) {
        errno = EINVAL;
        return -1;
    }

    const unsigned int shift = 2u * (unsigned int)pkey;
    const uint32_t mask = 3u << shift;

    uint32_t pkru = rdpkru();
    pkru = (pkru & ~mask) | ((rights & 3u) << shift);
    wrpkru(pkru);

    return 0;
}

static int prot_from_phdr(const ElfW(Phdr) *phdr)
{
    int prot = 0;

    if (phdr->p_flags & PF_R)
        prot |= PROT_READ;

    if (phdr->p_flags & PF_W)
        prot |= PROT_WRITE;

    if (phdr->p_flags & PF_X)
        prot |= PROT_EXEC;

    return prot;
}

/*
 * Called once for every ELF object loaded into the process.
 *
 * Default:
 *   protect only the main executable.
 *
 * MPK_XOM_SCOPE=all:
 *   protect executable PT_LOAD segments in all loaded DSOs as well.
 */
static int protect_object(struct dl_phdr_info *info,
                          size_t size,
                          void *data)
{
    (void)size;
    (void)data;

    const int is_main =
        info->dlpi_name == NULL || info->dlpi_name[0] == '\0';

    if (!is_main && !g_protect_all)
        return 0;

    for (ElfW(Half) i = 0; i < info->dlpi_phnum; ++i) {
        const ElfW(Phdr) *phdr = &info->dlpi_phdr[i];

        if (phdr->p_type != PT_LOAD)
            continue;

        if (!(phdr->p_flags & PF_X))
            continue;

        if (phdr->p_memsz == 0)
            continue;

        const uintptr_t lo =
            (uintptr_t)info->dlpi_addr +
            (uintptr_t)phdr->p_vaddr;

        const uintptr_t hi =
            lo + (uintptr_t)phdr->p_memsz;

        const uintptr_t start =
            lo & ~((uintptr_t)g_page_size - 1u);

        const uintptr_t end =
            (hi + (uintptr_t)g_page_size - 1u) &
            ~((uintptr_t)g_page_size - 1u);

        const size_t len = (size_t)(end - start);
        const int prot = prot_from_phdr(phdr);

        /*
         * Preserve the ELF segment's normal permissions while assigning
         * the segment to our protection key.
         */
        if (x_pkey_mprotect((void *)start,
                           len,
                           prot,
                           g_pkey) != 0) {
            dprintf(STDERR_FILENO,
                    "[mpk-xom] pkey_mprotect failed for "
                    "%s [%p, %p): %s\n",
                    is_main ? "<main>" : info->dlpi_name,
                    (void *)start,
                    (void *)end,
                    strerror(errno));

            _exit(126);
        }

        ++g_protected_segments;

        if (g_verbose) {
            dprintf(STDERR_FILENO,
                    "[mpk-xom] pkey=%d object=%s "
                    "exec=[%p, %p) prot=%c%c%c\n",
                    g_pkey,
                    is_main ? "<main>" : info->dlpi_name,
                    (void *)start,
                    (void *)end,
                    (prot & PROT_READ) ? 'r' : '-',
                    (prot & PROT_WRITE) ? 'w' : '-',
                    (prot & PROT_EXEC) ? 'x' : '-');
        }
    }

    return 0;
}

__attribute__((constructor))
static void mpk_xom_init(void)
{
    const char *scope = getenv("MPK_XOM_SCOPE");
    const char *verbose = getenv("MPK_XOM_VERBOSE");

    g_protect_all =
        scope != NULL && strcmp(scope, "all") == 0;

    g_verbose =
        !(verbose != NULL && strcmp(verbose, "0") == 0);

    g_page_size = sysconf(_SC_PAGESIZE);

    if (g_page_size <= 0) {
        dprintf(STDERR_FILENO,
                "[mpk-xom] cannot determine page size\n");
        _exit(125);
    }

    /*
     * Allocate a protection key with unrestricted initial permissions.
     */
    g_pkey = x_pkey_alloc(0, 0);

    if (g_pkey < 0) {
        dprintf(STDERR_FILENO,
                "[mpk-xom] pkey_alloc failed: %s. "
                "Check CPU flag pku and kernel flag ospke.\n",
                strerror(errno));
        _exit(125);
    }

    /*
     * Assign the protection key to executable PT_LOAD pages.
     */
    dl_iterate_phdr(protect_object, NULL);

    if (g_protected_segments == 0) {
        dprintf(STDERR_FILENO,
                "[mpk-xom] no executable PT_LOAD segment found\n");
        _exit(126);
    }

    /*
     * Disable data reads and writes for pages assigned to g_pkey.
     * Instruction fetch remains permitted on x86-64.
     */
    if (x_pkey_set(g_pkey, PKEY_DISABLE_ACCESS) != 0) {
        dprintf(STDERR_FILENO,
                "[mpk-xom] WRPKRU setup failed: %s\n",
                strerror(errno));
        _exit(127);
    }

    if (g_verbose) {
        const char msg[] =
            "[mpk-xom] data read/write access to selected "
            "executable pages is disabled; "
            "instruction fetch remains enabled\n";

        if (write(STDERR_FILENO,
                    msg,
                    sizeof(msg) - 1u) < 0)
        {
            
        }
    }
}
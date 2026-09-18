# 0 "../crypto/ec/curve25519.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/ec/curve25519.c"
# 14 "../crypto/ec/curve25519.c"
# 1 "../include/internal/deprecated.h" 1
# 21 "../include/internal/deprecated.h"
        

# 1 "include/openssl/configuration.h" 1
# 16 "include/openssl/configuration.h"
        
# 24 "../include/internal/deprecated.h" 2




# 1 "../include/openssl/macros.h" 1
# 12 "../include/openssl/macros.h"
        

# 1 "../include/openssl/opensslconf.h" 1
# 12 "../include/openssl/opensslconf.h"
        
# 15 "../include/openssl/macros.h" 2
# 1 "include/openssl/opensslv.h" 1
# 15 "include/openssl/opensslv.h"
        
# 16 "../include/openssl/macros.h" 2
# 29 "../include/internal/deprecated.h" 2
# 15 "../crypto/ec/curve25519.c" 2

# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 461 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 229 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4

# 229 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 91 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 122 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 154 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 226 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 303 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 330 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 385 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
# 410 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 428 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4










extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));



# 433 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 499 "/usr/include/string.h" 3 4

# 17 "../crypto/ec/curve25519.c" 2
# 1 "../include/crypto/ecx.h" 1
# 14 "../include/crypto/ecx.h"
        





# 1 "../include/openssl/core.h" 1
# 12 "../include/openssl/core.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 160 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 344 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 440 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 451 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
} max_align_t;
# 465 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
  typedef __typeof__(nullptr) nullptr_t;
# 15 "../include/openssl/core.h" 2
# 1 "../include/openssl/types.h" 1
# 26 "../include/openssl/types.h"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 34 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/syslimits.h" 1 3 4






#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 210 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 183 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 161 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4
# 162 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 184 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
# 188 "/usr/include/limits.h" 2 3 4
# 211 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 2 3 4
# 10 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/syslimits.h" 2 3 4
#pragma GCC diagnostic pop
# 35 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 2 3 4
# 27 "../include/openssl/types.h" 2





# 1 "../include/openssl/e_os2.h" 1
# 12 "../include/openssl/e_os2.h"
        
# 235 "../include/openssl/e_os2.h"
# 1 "/usr/include/inttypes.h" 1 3 4
# 27 "/usr/include/inttypes.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdint.h" 1 3 4
# 9 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdint.h" 3 4
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 12 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdint.h" 2 3 4
#pragma GCC diagnostic pop
# 28 "/usr/include/inttypes.h" 2 3 4






typedef int __gwchar_t;
# 266 "/usr/include/inttypes.h" 3 4





typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 290 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));


extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));


extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
# 432 "/usr/include/inttypes.h" 3 4

# 236 "../include/openssl/e_os2.h" 2
# 261 "../include/openssl/e_os2.h"

# 261 "../include/openssl/e_os2.h"
typedef intmax_t ossl_intmax_t;
typedef uintmax_t ossl_uintmax_t;
# 33 "../include/openssl/types.h" 2
# 1 "include/openssl/safestack.h" 1
# 17 "include/openssl/safestack.h"
        






# 1 "../include/openssl/stack.h" 1
# 12 "../include/openssl/stack.h"
        
# 23 "../include/openssl/stack.h"
typedef struct stack_st OPENSSL_STACK;

typedef int (*OPENSSL_sk_compfunc)(const void *, const void *);
typedef void (*OPENSSL_sk_freefunc)(void *);
typedef void *(*OPENSSL_sk_copyfunc)(const void *);

int OPENSSL_sk_num(const OPENSSL_STACK *);
void *OPENSSL_sk_value(const OPENSSL_STACK *, int);

void *OPENSSL_sk_set(OPENSSL_STACK *st, int i, const void *data);

OPENSSL_STACK *OPENSSL_sk_new(OPENSSL_sk_compfunc cmp);
OPENSSL_STACK *OPENSSL_sk_new_null(void);
OPENSSL_STACK *OPENSSL_sk_new_reserve(OPENSSL_sk_compfunc c, int n);
int OPENSSL_sk_reserve(OPENSSL_STACK *st, int n);
void OPENSSL_sk_free(OPENSSL_STACK *);
void OPENSSL_sk_pop_free(OPENSSL_STACK *st, void (*func) (void *));
OPENSSL_STACK *OPENSSL_sk_deep_copy(const OPENSSL_STACK *,
                                    OPENSSL_sk_copyfunc c,
                                    OPENSSL_sk_freefunc f);
int OPENSSL_sk_insert(OPENSSL_STACK *sk, const void *data, int where);
void *OPENSSL_sk_delete(OPENSSL_STACK *st, int loc);
void *OPENSSL_sk_delete_ptr(OPENSSL_STACK *st, const void *p);
int OPENSSL_sk_find(OPENSSL_STACK *st, const void *data);
int OPENSSL_sk_find_ex(OPENSSL_STACK *st, const void *data);
int OPENSSL_sk_find_all(OPENSSL_STACK *st, const void *data, int *pnum);
int OPENSSL_sk_push(OPENSSL_STACK *st, const void *data);
int OPENSSL_sk_unshift(OPENSSL_STACK *st, const void *data);
void *OPENSSL_sk_shift(OPENSSL_STACK *st);
void *OPENSSL_sk_pop(OPENSSL_STACK *st);
void OPENSSL_sk_zero(OPENSSL_STACK *st);
OPENSSL_sk_compfunc OPENSSL_sk_set_cmp_func(OPENSSL_STACK *sk,
                                            OPENSSL_sk_compfunc cmp);
OPENSSL_STACK *OPENSSL_sk_dup(const OPENSSL_STACK *st);
void OPENSSL_sk_sort(OPENSSL_STACK *st);
int OPENSSL_sk_is_sorted(const OPENSSL_STACK *st);
# 25 "include/openssl/safestack.h" 2
# 195 "include/openssl/safestack.h"
typedef char *OPENSSL_STRING;
typedef const char *OPENSSL_CSTRING;
# 205 "include/openssl/safestack.h"
struct stack_st_OPENSSL_STRING; typedef int (*sk_OPENSSL_STRING_compfunc)(const char * const *a, const char *const *b); typedef void (*sk_OPENSSL_STRING_freefunc)(char *a); typedef char * (*sk_OPENSSL_STRING_copyfunc)(const char *a); static __attribute__((unused)) inline char *ossl_check_OPENSSL_STRING_type(char *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_OPENSSL_STRING_sk_type(const struct stack_st_OPENSSL_STRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_OPENSSL_STRING_sk_type(struct stack_st_OPENSSL_STRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_OPENSSL_STRING_compfunc_type(sk_OPENSSL_STRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_OPENSSL_STRING_copyfunc_type(sk_OPENSSL_STRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_OPENSSL_STRING_freefunc_type(sk_OPENSSL_STRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 231 "include/openssl/safestack.h"
struct stack_st_OPENSSL_CSTRING; typedef int (*sk_OPENSSL_CSTRING_compfunc)(const char * const *a, const char *const *b); typedef void (*sk_OPENSSL_CSTRING_freefunc)(char *a); typedef char * (*sk_OPENSSL_CSTRING_copyfunc)(const char *a); static __attribute__((unused)) inline const char *ossl_check_OPENSSL_CSTRING_type(const char *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_OPENSSL_CSTRING_sk_type(const struct stack_st_OPENSSL_CSTRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_OPENSSL_CSTRING_sk_type(struct stack_st_OPENSSL_CSTRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_OPENSSL_CSTRING_compfunc_type(sk_OPENSSL_CSTRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_OPENSSL_CSTRING_copyfunc_type(sk_OPENSSL_CSTRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_OPENSSL_CSTRING_freefunc_type(sk_OPENSSL_CSTRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 264 "include/openssl/safestack.h"
typedef void *OPENSSL_BLOCK;
struct stack_st_OPENSSL_BLOCK; typedef int (*sk_OPENSSL_BLOCK_compfunc)(const void * const *a, const void *const *b); typedef void (*sk_OPENSSL_BLOCK_freefunc)(void *a); typedef void * (*sk_OPENSSL_BLOCK_copyfunc)(const void *a); static __attribute__((unused)) inline void *ossl_check_OPENSSL_BLOCK_type(void *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_OPENSSL_BLOCK_sk_type(const struct stack_st_OPENSSL_BLOCK *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_OPENSSL_BLOCK_sk_type(struct stack_st_OPENSSL_BLOCK *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_OPENSSL_BLOCK_compfunc_type(sk_OPENSSL_BLOCK_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_OPENSSL_BLOCK_copyfunc_type(sk_OPENSSL_BLOCK_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_OPENSSL_BLOCK_freefunc_type(sk_OPENSSL_BLOCK_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 34 "../include/openssl/types.h" 2


typedef struct ossl_provider_st OSSL_PROVIDER;
# 57 "../include/openssl/types.h"
typedef struct asn1_string_st ASN1_INTEGER;
typedef struct asn1_string_st ASN1_ENUMERATED;
typedef struct asn1_string_st ASN1_BIT_STRING;
typedef struct asn1_string_st ASN1_OCTET_STRING;
typedef struct asn1_string_st ASN1_PRINTABLESTRING;
typedef struct asn1_string_st ASN1_T61STRING;
typedef struct asn1_string_st ASN1_IA5STRING;
typedef struct asn1_string_st ASN1_GENERALSTRING;
typedef struct asn1_string_st ASN1_UNIVERSALSTRING;
typedef struct asn1_string_st ASN1_BMPSTRING;
typedef struct asn1_string_st ASN1_UTCTIME;
typedef struct asn1_string_st ASN1_TIME;
typedef struct asn1_string_st ASN1_GENERALIZEDTIME;
typedef struct asn1_string_st ASN1_VISIBLESTRING;
typedef struct asn1_string_st ASN1_UTF8STRING;
typedef struct asn1_string_st ASN1_STRING;
typedef int ASN1_BOOLEAN;
typedef int ASN1_NULL;


typedef struct asn1_type_st ASN1_TYPE;
typedef struct asn1_object_st ASN1_OBJECT;
typedef struct asn1_string_table_st ASN1_STRING_TABLE;

typedef struct ASN1_ITEM_st ASN1_ITEM;
typedef struct asn1_pctx_st ASN1_PCTX;
typedef struct asn1_sctx_st ASN1_SCTX;





typedef struct bio_st BIO;
typedef struct bignum_st BIGNUM;
typedef struct bignum_ctx BN_CTX;
typedef struct bn_blinding_st BN_BLINDING;
typedef struct bn_mont_ctx_st BN_MONT_CTX;
typedef struct bn_recp_ctx_st BN_RECP_CTX;
typedef struct bn_gencb_st BN_GENCB;

typedef struct buf_mem_st BUF_MEM;

struct stack_st_BIGNUM;
struct stack_st_BIGNUM_const;

typedef struct err_state_st ERR_STATE;

typedef struct evp_cipher_st EVP_CIPHER;
typedef struct evp_cipher_ctx_st EVP_CIPHER_CTX;
typedef struct evp_md_st EVP_MD;
typedef struct evp_md_ctx_st EVP_MD_CTX;
typedef struct evp_mac_st EVP_MAC;
typedef struct evp_mac_ctx_st EVP_MAC_CTX;
typedef struct evp_pkey_st EVP_PKEY;

typedef struct evp_pkey_asn1_method_st EVP_PKEY_ASN1_METHOD;

typedef struct evp_pkey_method_st EVP_PKEY_METHOD;
typedef struct evp_pkey_ctx_st EVP_PKEY_CTX;

typedef struct evp_keymgmt_st EVP_KEYMGMT;

typedef struct evp_kdf_st EVP_KDF;
typedef struct evp_kdf_ctx_st EVP_KDF_CTX;

typedef struct evp_rand_st EVP_RAND;
typedef struct evp_rand_ctx_st EVP_RAND_CTX;

typedef struct evp_keyexch_st EVP_KEYEXCH;

typedef struct evp_signature_st EVP_SIGNATURE;

typedef struct evp_asym_cipher_st EVP_ASYM_CIPHER;

typedef struct evp_kem_st EVP_KEM;

typedef struct evp_Encode_Ctx_st EVP_ENCODE_CTX;

typedef struct hmac_ctx_st HMAC_CTX;

typedef struct dh_st DH;
typedef struct dh_method DH_METHOD;


typedef struct dsa_st DSA;
typedef struct dsa_method DSA_METHOD;



typedef struct rsa_st RSA;
typedef struct rsa_meth_st RSA_METHOD;

typedef struct rsa_pss_params_st RSA_PSS_PARAMS;


typedef struct ec_key_st EC_KEY;
typedef struct ec_key_method_st EC_KEY_METHOD;


typedef struct rand_meth_st RAND_METHOD;
typedef struct rand_drbg_st RAND_DRBG;

typedef struct ssl_dane_st SSL_DANE;
typedef struct x509_st X509;
typedef struct X509_algor_st X509_ALGOR;
typedef struct X509_crl_st X509_CRL;
typedef struct x509_crl_method_st X509_CRL_METHOD;
typedef struct x509_revoked_st X509_REVOKED;
typedef struct X509_name_st X509_NAME;
typedef struct X509_pubkey_st X509_PUBKEY;
typedef struct x509_store_st X509_STORE;
typedef struct x509_store_ctx_st X509_STORE_CTX;

typedef struct x509_object_st X509_OBJECT;
typedef struct x509_lookup_st X509_LOOKUP;
typedef struct x509_lookup_method_st X509_LOOKUP_METHOD;
typedef struct X509_VERIFY_PARAM_st X509_VERIFY_PARAM;

typedef struct x509_sig_info_st X509_SIG_INFO;

typedef struct pkcs8_priv_key_info_st PKCS8_PRIV_KEY_INFO;

typedef struct v3_ext_ctx X509V3_CTX;
typedef struct conf_st CONF;
typedef struct ossl_init_settings_st OPENSSL_INIT_SETTINGS;

typedef struct ui_st UI;
typedef struct ui_method_st UI_METHOD;

typedef struct engine_st ENGINE;
typedef struct ssl_st SSL;
typedef struct ssl_ctx_st SSL_CTX;

typedef struct comp_ctx_st COMP_CTX;
typedef struct comp_method_st COMP_METHOD;

typedef struct X509_POLICY_NODE_st X509_POLICY_NODE;
typedef struct X509_POLICY_LEVEL_st X509_POLICY_LEVEL;
typedef struct X509_POLICY_TREE_st X509_POLICY_TREE;
typedef struct X509_POLICY_CACHE_st X509_POLICY_CACHE;

typedef struct AUTHORITY_KEYID_st AUTHORITY_KEYID;
typedef struct DIST_POINT_st DIST_POINT;
typedef struct ISSUING_DIST_POINT_st ISSUING_DIST_POINT;
typedef struct NAME_CONSTRAINTS_st NAME_CONSTRAINTS;

typedef struct crypto_ex_data_st CRYPTO_EX_DATA;

typedef struct ossl_http_req_ctx_st OSSL_HTTP_REQ_CTX;
typedef struct ocsp_response_st OCSP_RESPONSE;
typedef struct ocsp_responder_id_st OCSP_RESPID;

typedef struct sct_st SCT;
typedef struct sct_ctx_st SCT_CTX;
typedef struct ctlog_st CTLOG;
typedef struct ctlog_store_st CTLOG_STORE;
typedef struct ct_policy_eval_ctx_st CT_POLICY_EVAL_CTX;

typedef struct ossl_store_info_st OSSL_STORE_INFO;
typedef struct ossl_store_search_st OSSL_STORE_SEARCH;

typedef struct ossl_lib_ctx_st OSSL_LIB_CTX;

typedef struct ossl_dispatch_st OSSL_DISPATCH;
typedef struct ossl_item_st OSSL_ITEM;
typedef struct ossl_algorithm_st OSSL_ALGORITHM;
typedef struct ossl_param_st OSSL_PARAM;
typedef struct ossl_param_bld_st OSSL_PARAM_BLD;

typedef int pem_password_cb (char *buf, int size, int rwflag, void *userdata);

typedef struct ossl_encoder_st OSSL_ENCODER;
typedef struct ossl_encoder_ctx_st OSSL_ENCODER_CTX;
typedef struct ossl_decoder_st OSSL_DECODER;
typedef struct ossl_decoder_ctx_st OSSL_DECODER_CTX;

typedef struct ossl_self_test_st OSSL_SELF_TEST;
# 16 "../include/openssl/core.h" 2
# 30 "../include/openssl/core.h"
typedef struct ossl_core_handle_st OSSL_CORE_HANDLE;
typedef struct openssl_core_ctx_st OPENSSL_CORE_CTX;
typedef struct ossl_core_bio_st OSSL_CORE_BIO;







struct ossl_dispatch_st {
    int function_id;
    void (*function)(void);
};
# 61 "../include/openssl/core.h"
struct ossl_item_st {
    unsigned int id;
    void *ptr;
};







struct ossl_algorithm_st {
    const char *algorithm_names;
    const char *property_definition;
    const OSSL_DISPATCH *implementation;
    const char *algorithm_description;
};







struct ossl_param_st {
    const char *key;
    unsigned int data_type;
    void *data;
    size_t data_size;
    size_t return_size;
};
# 172 "../include/openssl/core.h"
typedef void (*OSSL_thread_stop_handler_fn)(void *arg);
# 193 "../include/openssl/core.h"
typedef int (OSSL_provider_init_fn)(const OSSL_CORE_HANDLE *handle,
                                    const OSSL_DISPATCH *in,
                                    const OSSL_DISPATCH **out,
                                    void **provctx);




extern OSSL_provider_init_fn OSSL_provider_init;
# 219 "../include/openssl/core.h"
typedef int (OSSL_CALLBACK)(const OSSL_PARAM params[], void *arg);
typedef int (OSSL_INOUT_CALLBACK)(const OSSL_PARAM in_params[],
                                  OSSL_PARAM out_params[], void *arg);






typedef int (OSSL_PASSPHRASE_CALLBACK)(char *pass, size_t pass_size,
                                       size_t *pass_len,
                                       const OSSL_PARAM params[], void *arg);
# 21 "../include/crypto/ecx.h" 2

# 1 "include/openssl/crypto.h" 1
# 18 "include/openssl/crypto.h"
        






# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 32 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4

# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 129 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 33 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 34 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 130 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));

extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));

extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;
# 59 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 97 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 144 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;







typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 176 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
struct timespec
{
  __time_t tv_sec;



  __syscall_slong_t tv_nsec;
# 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 101 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 126 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 227 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 74 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
};
# 75 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 87 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
};
# 88 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));



extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)));



extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 569 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;



extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 647 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 675 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 688 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 710 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 731 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 784 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 800 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 820 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 840 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
# 872 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));







extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 957 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 1003 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1013 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 1014 "/usr/include/stdlib.h" 2 3 4
# 1023 "/usr/include/stdlib.h" 3 4

# 26 "include/openssl/crypto.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 30 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 34 "/usr/include/time.h" 2 3 4





# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h" 1 3 4






struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};
# 40 "/usr/include/time.h" 2 3 4
# 48 "/usr/include/time.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h" 1 3 4







struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
# 49 "/usr/include/time.h" 2 3 4
struct sigevent;
# 68 "/usr/include/time.h" 3 4




extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
# 104 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
# 119 "/usr/include/time.h" 3 4
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));




extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));




extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));






extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;
# 190 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 205 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 301 "/usr/include/time.h" 3 4

# 27 "include/openssl/crypto.h" 2




# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 1 3 4
# 40 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4
# 52 "/usr/include/stdio.h" 3 4
typedef __gnuc_va_list va_list;
# 84 "/usr/include/stdio.h" 3 4
typedef __fpos_t fpos_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));



extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 173 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 187 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;




extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 204 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;







extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 227 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 246 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 279 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 292 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));




extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));







extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));



extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
# 379 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));







extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));






extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 432 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));




extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 485 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);






extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 510 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 521 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 537 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);







extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 603 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;







extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 673 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);







extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 707 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 731 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 757 "/usr/include/stdio.h" 3 4
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;



extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;







extern void perror (const char *__s);





# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 782 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 800 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 840 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 858 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
# 873 "/usr/include/stdio.h" 3 4

# 32 "include/openssl/crypto.h" 2




# 1 "../include/openssl/types.h" 1
# 37 "include/openssl/crypto.h" 2

# 1 "../include/openssl/cryptoerr.h" 1
# 13 "../include/openssl/cryptoerr.h"
        


# 1 "../include/openssl/symhacks.h" 1
# 12 "../include/openssl/symhacks.h"
        
# 17 "../include/openssl/cryptoerr.h" 2
# 1 "../include/openssl/cryptoerr_legacy.h" 1
# 19 "../include/openssl/cryptoerr_legacy.h"
        
# 29 "../include/openssl/cryptoerr_legacy.h"

# 29 "../include/openssl/cryptoerr_legacy.h"
extern int ERR_load_ASN1_strings(void);
extern int ERR_load_ASYNC_strings(void);
extern int ERR_load_BIO_strings(void);
extern int ERR_load_BN_strings(void);
extern int ERR_load_BUF_strings(void);

extern int ERR_load_CMS_strings(void);


extern int ERR_load_COMP_strings(void);

extern int ERR_load_CONF_strings(void);
extern int ERR_load_CRYPTO_strings(void);

extern int ERR_load_CT_strings(void);


extern int ERR_load_DH_strings(void);


extern int ERR_load_DSA_strings(void);


extern int ERR_load_EC_strings(void);


extern int ERR_load_ENGINE_strings(void);

extern int ERR_load_ERR_strings(void);
extern int ERR_load_EVP_strings(void);
extern int ERR_load_KDF_strings(void);
extern int ERR_load_OBJ_strings(void);

extern int ERR_load_OCSP_strings(void);

extern int ERR_load_PEM_strings(void);
extern int ERR_load_PKCS12_strings(void);
extern int ERR_load_PKCS7_strings(void);
extern int ERR_load_RAND_strings(void);
extern int ERR_load_RSA_strings(void);
extern int ERR_load_OSSL_STORE_strings(void);

extern int ERR_load_TS_strings(void);

extern int ERR_load_UI_strings(void);
extern int ERR_load_X509_strings(void);
extern int ERR_load_X509V3_strings(void);
# 18 "../include/openssl/cryptoerr.h" 2
# 39 "include/openssl/crypto.h" 2
# 73 "include/openssl/crypto.h"
typedef struct {
    int dummy;
} CRYPTO_dynlock;



typedef void CRYPTO_RWLOCK;

CRYPTO_RWLOCK *CRYPTO_THREAD_lock_new(void);
 int CRYPTO_THREAD_read_lock(CRYPTO_RWLOCK *lock);
 int CRYPTO_THREAD_write_lock(CRYPTO_RWLOCK *lock);
int CRYPTO_THREAD_unlock(CRYPTO_RWLOCK *lock);
void CRYPTO_THREAD_lock_free(CRYPTO_RWLOCK *lock);

int CRYPTO_atomic_add(int *val, int amount, int *ret, CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_or(uint64_t *val, uint64_t op, uint64_t *ret,
                     CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_load(uint64_t *val, uint64_t *ret, CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_load_int(int *val, int *ret, CRYPTO_RWLOCK *lock);
# 125 "include/openssl/crypto.h"
size_t OPENSSL_strlcpy(char *dst, const char *src, size_t siz);
size_t OPENSSL_strlcat(char *dst, const char *src, size_t siz);
size_t OPENSSL_strnlen(const char *str, size_t maxlen);
int OPENSSL_buf2hexstr_ex(char *str, size_t str_n, size_t *strlength,
                          const unsigned char *buf, size_t buflen,
                          const char sep);
char *OPENSSL_buf2hexstr(const unsigned char *buf, long buflen);
int OPENSSL_hexstr2buf_ex(unsigned char *buf, size_t buf_n, size_t *buflen,
                          const char *str, const char sep);
unsigned char *OPENSSL_hexstr2buf(const char *str, long *buflen);
int OPENSSL_hexchar2int(unsigned char c);
int OPENSSL_strcasecmp(const char *s1, const char *s2);
int OPENSSL_strncasecmp(const char *s1, const char *s2, size_t n);
# 146 "include/openssl/crypto.h"
unsigned int OPENSSL_version_major(void);
unsigned int OPENSSL_version_minor(void);
unsigned int OPENSSL_version_patch(void);
const char *OPENSSL_version_pre_release(void);
const char *OPENSSL_version_build_metadata(void);

unsigned long OpenSSL_version_num(void);
const char *OpenSSL_version(int type);
# 165 "include/openssl/crypto.h"
const char *OPENSSL_info(int type);
# 179 "include/openssl/crypto.h"
int OPENSSL_issetugid(void);

struct crypto_ex_data_st {
    OSSL_LIB_CTX *ctx;
    struct stack_st_void *sk;
};

struct stack_st_void; typedef int (*sk_void_compfunc)(const void * const *a, const void *const *b); typedef void (*sk_void_freefunc)(void *a); typedef void * (*sk_void_copyfunc)(const void *a); static __attribute__((unused)) inline void *ossl_check_void_type(void *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_void_sk_type(const struct stack_st_void *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_void_sk_type(struct stack_st_void *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_void_compfunc_type(sk_void_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_void_copyfunc_type(sk_void_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_void_freefunc_type(sk_void_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 239 "include/openssl/crypto.h"
typedef void CRYPTO_EX_new (void *parent, void *ptr, CRYPTO_EX_DATA *ad,
                           int idx, long argl, void *argp);
typedef void CRYPTO_EX_free (void *parent, void *ptr, CRYPTO_EX_DATA *ad,
                             int idx, long argl, void *argp);
typedef int CRYPTO_EX_dup (CRYPTO_EX_DATA *to, const CRYPTO_EX_DATA *from,
                           void **from_d, int idx, long argl, void *argp);
 int CRYPTO_get_ex_new_index(int class_index, long argl, void *argp,
                                   CRYPTO_EX_new *new_func,
                                   CRYPTO_EX_dup *dup_func,
                                   CRYPTO_EX_free *free_func);

int CRYPTO_free_ex_index(int class_index, int idx);





int CRYPTO_new_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad);
int CRYPTO_dup_ex_data(int class_index, CRYPTO_EX_DATA *to,
                       const CRYPTO_EX_DATA *from);

void CRYPTO_free_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad);


int CRYPTO_alloc_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad,
                         int idx);





int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val);
void *CRYPTO_get_ex_data(const CRYPTO_EX_DATA *ad, int idx);
# 307 "include/openssl/crypto.h"
typedef struct crypto_threadid_st {
    int dummy;
} CRYPTO_THREADID;
# 334 "include/openssl/crypto.h"
typedef void *(*CRYPTO_malloc_fn)(size_t num, const char *file, int line);
typedef void *(*CRYPTO_realloc_fn)(void *addr, size_t num, const char *file,
                                   int line);
typedef void (*CRYPTO_free_fn)(void *addr, const char *file, int line);
int CRYPTO_set_mem_functions(CRYPTO_malloc_fn malloc_fn,
                             CRYPTO_realloc_fn realloc_fn,
                             CRYPTO_free_fn free_fn);
void CRYPTO_get_mem_functions(CRYPTO_malloc_fn *malloc_fn,
                              CRYPTO_realloc_fn *realloc_fn,
                              CRYPTO_free_fn *free_fn);

__attribute__((__malloc__)) void *CRYPTO_malloc(size_t num, const char *file, int line);
__attribute__((__malloc__)) void *CRYPTO_zalloc(size_t num, const char *file, int line);
void *CRYPTO_memdup(const void *str, size_t siz, const char *file, int line);
char *CRYPTO_strdup(const char *str, const char *file, int line);
char *CRYPTO_strndup(const char *str, size_t s, const char *file, int line);
void CRYPTO_free(void *ptr, const char *file, int line);
void CRYPTO_clear_free(void *ptr, size_t num, const char *file, int line);
void *CRYPTO_realloc(void *addr, size_t num, const char *file, int line);
void *CRYPTO_clear_realloc(void *addr, size_t old_num, size_t num,
                           const char *file, int line);

int CRYPTO_secure_malloc_init(size_t sz, size_t minsize);
int CRYPTO_secure_malloc_done(void);
__attribute__((__malloc__)) void *CRYPTO_secure_malloc(size_t num, const char *file, int line);
__attribute__((__malloc__)) void *CRYPTO_secure_zalloc(size_t num, const char *file, int line);
void CRYPTO_secure_free(void *ptr, const char *file, int line);
void CRYPTO_secure_clear_free(void *ptr, size_t num,
                              const char *file, int line);
int CRYPTO_secure_allocated(const void *ptr);
int CRYPTO_secure_malloc_initialized(void);
size_t CRYPTO_secure_actual_size(void *ptr);
size_t CRYPTO_secure_used(void);

void OPENSSL_cleanse(void *ptr, size_t len);
# 416 "include/openssl/crypto.h"
_Noreturn void OPENSSL_die(const char *assertion, const char *file, int line);






int OPENSSL_isservice(void);

void OPENSSL_init(void);


extern void OPENSSL_fork_prepare(void);
extern void OPENSSL_fork_parent(void);
extern void OPENSSL_fork_child(void);



struct tm *OPENSSL_gmtime(const time_t *timer, struct tm *result);
int OPENSSL_gmtime_adj(struct tm *tm, int offset_day, long offset_sec);
int OPENSSL_gmtime_diff(int *pday, int *psec,
                        const struct tm *from, const struct tm *to);
# 446 "include/openssl/crypto.h"
int CRYPTO_memcmp(const void * in_a, const void * in_b, size_t len);
# 485 "include/openssl/crypto.h"
void OPENSSL_cleanup(void);
int OPENSSL_init_crypto(uint64_t opts, const OPENSSL_INIT_SETTINGS *settings);
int OPENSSL_atexit(void (*handler)(void));
void OPENSSL_thread_stop(void);
void OPENSSL_thread_stop_ex(OSSL_LIB_CTX *ctx);


OPENSSL_INIT_SETTINGS *OPENSSL_INIT_new(void);

int OPENSSL_INIT_set_config_filename(OPENSSL_INIT_SETTINGS *settings,
                                     const char *config_filename);
void OPENSSL_INIT_set_config_file_flags(OPENSSL_INIT_SETTINGS *settings,
                                        unsigned long flags);
int OPENSSL_INIT_set_config_appname(OPENSSL_INIT_SETTINGS *settings,
                                    const char *config_appname);

void OPENSSL_INIT_free(OPENSSL_INIT_SETTINGS *settings);
# 519 "include/openssl/crypto.h"
# 1 "/usr/include/pthread.h" 1 3 4
# 22 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 29 "/usr/include/sched.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 30 "/usr/include/sched.h" 2 3 4
# 43 "/usr/include/sched.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sched.h" 1 3 4
# 76 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h" 3 4

# 23 "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h" 3 4
struct sched_param
{
  int sched_priority;
};
# 77 "/usr/include/x86_64-linux-gnu/bits/sched.h" 2 3 4


# 98 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4

# 44 "/usr/include/sched.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 115 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h" 3 4


extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
     __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


# 45 "/usr/include/sched.h" 2 3 4









extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
# 129 "/usr/include/sched.h" 3 4

# 23 "/usr/include/pthread.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4




enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 100 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 120 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 155 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 193 "/usr/include/pthread.h" 3 4





extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 247 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 405 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));
# 470 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 482 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 516 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 656 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
# 668 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
# 709 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
# 756 "/usr/include/pthread.h" 3 4
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 789 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 871 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
# 902 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
# 924 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 997 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));
# 1020 "/usr/include/pthread.h" 3 4
extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1056 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1123 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 1157 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
# 1171 "/usr/include/pthread.h" 3 4

# 520 "include/openssl/crypto.h" 2


# 521 "include/openssl/crypto.h"
typedef pthread_once_t CRYPTO_ONCE;
typedef pthread_key_t CRYPTO_THREAD_LOCAL;
typedef pthread_t CRYPTO_THREAD_ID;
# 536 "include/openssl/crypto.h"
int CRYPTO_THREAD_run_once(CRYPTO_ONCE *once, void (*init)(void));

int CRYPTO_THREAD_init_local(CRYPTO_THREAD_LOCAL *key, void (*cleanup)(void *));
void *CRYPTO_THREAD_get_local(CRYPTO_THREAD_LOCAL *key);
int CRYPTO_THREAD_set_local(CRYPTO_THREAD_LOCAL *key, void *val);
int CRYPTO_THREAD_cleanup_local(CRYPTO_THREAD_LOCAL *key);

CRYPTO_THREAD_ID CRYPTO_THREAD_get_current_id(void);
int CRYPTO_THREAD_compare_id(CRYPTO_THREAD_ID a, CRYPTO_THREAD_ID b);

OSSL_LIB_CTX *OSSL_LIB_CTX_new(void);
OSSL_LIB_CTX *OSSL_LIB_CTX_new_from_dispatch(const OSSL_CORE_HANDLE *handle,
                                             const OSSL_DISPATCH *in);
OSSL_LIB_CTX *OSSL_LIB_CTX_new_child(const OSSL_CORE_HANDLE *handle,
                                     const OSSL_DISPATCH *in);
int OSSL_LIB_CTX_load_config(OSSL_LIB_CTX *ctx, const char *config_file);
void OSSL_LIB_CTX_free(OSSL_LIB_CTX *);
OSSL_LIB_CTX *OSSL_LIB_CTX_get0_global_default(void);
OSSL_LIB_CTX *OSSL_LIB_CTX_set0_default(OSSL_LIB_CTX *libctx);

void OSSL_sleep(uint64_t millis);
# 23 "../include/crypto/ecx.h" 2
# 1 "../include/internal/refcount.h" 1
# 11 "../include/internal/refcount.h"
        


# 1 "../include/openssl/trace.h" 1
# 12 "../include/openssl/trace.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 1 3 4
# 15 "../include/openssl/trace.h" 2

# 1 "include/openssl/bio.h" 1
# 16 "include/openssl/bio.h"
        
# 31 "include/openssl/bio.h"
# 1 "../include/openssl/bioerr.h" 1
# 13 "../include/openssl/bioerr.h"
        
# 32 "include/openssl/bio.h" 2
# 242 "include/openssl/bio.h"
typedef union bio_addr_st BIO_ADDR;
typedef struct bio_addrinfo_st BIO_ADDRINFO;

int BIO_get_new_index(void);
void BIO_set_flags(BIO *b, int flags);
int BIO_test_flags(const BIO *b, int flags);
void BIO_clear_flags(BIO *b, int flags);
# 307 "include/openssl/bio.h"
typedef long (*BIO_callback_fn)(BIO *b, int oper, const char *argp, int argi,
                                long argl, long ret);
extern BIO_callback_fn BIO_get_callback(const BIO *b);
extern void BIO_set_callback(BIO *b, BIO_callback_fn callback);
extern long BIO_debug_callback(BIO *bio, int cmd,
                                               const char *argp, int argi,
                                               long argl, long ret);


typedef long (*BIO_callback_fn_ex)(BIO *b, int oper, const char *argp,
                                   size_t len, int argi,
                                   long argl, int ret, size_t *processed);
BIO_callback_fn_ex BIO_get_callback_ex(const BIO *b);
void BIO_set_callback_ex(BIO *b, BIO_callback_fn_ex callback);
long BIO_debug_callback_ex(BIO *bio, int oper, const char *argp, size_t len,
                           int argi, long argl, int ret, size_t *processed);

char *BIO_get_callback_arg(const BIO *b);
void BIO_set_callback_arg(BIO *b, char *arg);

typedef struct bio_method_st BIO_METHOD;

const char *BIO_method_name(const BIO *b);
int BIO_method_type(const BIO *b);

typedef int BIO_info_cb(BIO *, int, int);
typedef BIO_info_cb bio_info_cb;

struct stack_st_BIO; typedef int (*sk_BIO_compfunc)(const BIO * const *a, const BIO *const *b); typedef void (*sk_BIO_freefunc)(BIO *a); typedef BIO * (*sk_BIO_copyfunc)(const BIO *a); static __attribute__((unused)) inline BIO *ossl_check_BIO_type(BIO *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_BIO_sk_type(const struct stack_st_BIO *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_BIO_sk_type(struct stack_st_BIO *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_BIO_compfunc_type(sk_BIO_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_BIO_copyfunc_type(sk_BIO_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_BIO_freefunc_type(sk_BIO_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 365 "include/openssl/bio.h"
typedef int asn1_ps_func (BIO *b, unsigned char **pbuf, int *plen,
                          void *parg);

typedef void (*BIO_dgram_sctp_notification_handler_fn) (BIO *b,
                                                        void *context,
                                                        void *buf);
# 397 "include/openssl/bio.h"
typedef struct bio_msg_st {
    void *data;
    size_t data_len;
    BIO_ADDR *peer, *local;
    uint64_t flags;
} BIO_MSG;

typedef struct bio_mmsg_cb_args_st {
    BIO_MSG *msg;
    size_t stride, num_msg;
    uint64_t flags;
    size_t *msgs_processed;
} BIO_MMSG_CB_ARGS;






typedef struct bio_poll_descriptor_st {
    uint32_t type;
    union {
        int fd;
        void *custom;
        uintptr_t custom_ui;
        SSL *ssl;
    } value;
} BIO_POLL_DESCRIPTOR;
# 635 "include/openssl/bio.h"
size_t BIO_ctrl_pending(BIO *b);
size_t BIO_ctrl_wpending(BIO *b);
# 655 "include/openssl/bio.h"
size_t BIO_ctrl_get_write_guarantee(BIO *b);
size_t BIO_ctrl_get_read_request(BIO *b);
int BIO_ctrl_reset_read_request(BIO *b);
# 704 "include/openssl/bio.h"
int BIO_set_ex_data(BIO *bio, int idx, void *data);
void *BIO_get_ex_data(const BIO *bio, int idx);
uint64_t BIO_number_read(BIO *bio);
uint64_t BIO_number_written(BIO *bio);


int BIO_asn1_set_prefix(BIO *b, asn1_ps_func *prefix,
                        asn1_ps_func *prefix_free);
int BIO_asn1_get_prefix(BIO *b, asn1_ps_func **pprefix,
                        asn1_ps_func **pprefix_free);
int BIO_asn1_set_suffix(BIO *b, asn1_ps_func *suffix,
                        asn1_ps_func *suffix_free);
int BIO_asn1_get_suffix(BIO *b, asn1_ps_func **psuffix,
                        asn1_ps_func **psuffix_free);

const BIO_METHOD *BIO_s_file(void);
BIO *BIO_new_file(const char *filename, const char *mode);
BIO *BIO_new_from_core_bio(OSSL_LIB_CTX *libctx, OSSL_CORE_BIO *corebio);

BIO *BIO_new_fp(FILE *stream, int close_flag);

BIO *BIO_new_ex(OSSL_LIB_CTX *libctx, const BIO_METHOD *method);
BIO *BIO_new(const BIO_METHOD *type);
int BIO_free(BIO *a);
void BIO_set_data(BIO *a, void *ptr);
void *BIO_get_data(BIO *a);
void BIO_set_init(BIO *a, int init);
int BIO_get_init(BIO *a);
void BIO_set_shutdown(BIO *a, int shut);
int BIO_get_shutdown(BIO *a);
void BIO_vfree(BIO *a);
int BIO_up_ref(BIO *a);
int BIO_read(BIO *b, void *data, int dlen);
int BIO_read_ex(BIO *b, void *data, size_t dlen, size_t *readbytes);
 int BIO_recvmmsg(BIO *b, BIO_MSG *msg,
                        size_t stride, size_t num_msg, uint64_t flags,
                        size_t *msgs_processed);
int BIO_gets(BIO *bp, char *buf, int size);
int BIO_get_line(BIO *bio, char *buf, int size);
int BIO_write(BIO *b, const void *data, int dlen);
int BIO_write_ex(BIO *b, const void *data, size_t dlen, size_t *written);
 int BIO_sendmmsg(BIO *b, BIO_MSG *msg,
                        size_t stride, size_t num_msg, uint64_t flags,
                        size_t *msgs_processed);
 int BIO_get_rpoll_descriptor(BIO *b, BIO_POLL_DESCRIPTOR *desc);
 int BIO_get_wpoll_descriptor(BIO *b, BIO_POLL_DESCRIPTOR *desc);
int BIO_puts(BIO *bp, const char *buf);
int BIO_indent(BIO *b, int indent, int max);
long BIO_ctrl(BIO *bp, int cmd, long larg, void *parg);
long BIO_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp);
void *BIO_ptr_ctrl(BIO *bp, int cmd, long larg);
long BIO_int_ctrl(BIO *bp, int cmd, long larg, int iarg);
BIO *BIO_push(BIO *b, BIO *append);
BIO *BIO_pop(BIO *b);
void BIO_free_all(BIO *a);
BIO *BIO_find_type(BIO *b, int bio_type);
BIO *BIO_next(BIO *b);
void BIO_set_next(BIO *b, BIO *next);
BIO *BIO_get_retry_BIO(BIO *bio, int *reason);
int BIO_get_retry_reason(BIO *bio);
void BIO_set_retry_reason(BIO *bio, int reason);
BIO *BIO_dup_chain(BIO *in);

int BIO_nread0(BIO *bio, char **buf);
int BIO_nread(BIO *bio, char **buf, int num);
int BIO_nwrite0(BIO *bio, char **buf);
int BIO_nwrite(BIO *bio, char **buf, int num);

const BIO_METHOD *BIO_s_mem(void);

const BIO_METHOD *BIO_s_dgram_mem(void);

const BIO_METHOD *BIO_s_secmem(void);
BIO *BIO_new_mem_buf(const void *buf, int len);

const BIO_METHOD *BIO_s_socket(void);
const BIO_METHOD *BIO_s_connect(void);
const BIO_METHOD *BIO_s_accept(void);

const BIO_METHOD *BIO_s_fd(void);
const BIO_METHOD *BIO_s_log(void);
const BIO_METHOD *BIO_s_bio(void);
const BIO_METHOD *BIO_s_null(void);
const BIO_METHOD *BIO_f_null(void);
const BIO_METHOD *BIO_f_buffer(void);
const BIO_METHOD *BIO_f_readbuffer(void);
const BIO_METHOD *BIO_f_linebuffer(void);
const BIO_METHOD *BIO_f_nbio_test(void);
const BIO_METHOD *BIO_f_prefix(void);
const BIO_METHOD *BIO_s_core(void);

const BIO_METHOD *BIO_s_dgram_pair(void);
const BIO_METHOD *BIO_s_datagram(void);
int BIO_dgram_non_fatal_error(int error);
BIO *BIO_new_dgram(int fd, int close_flag);
# 812 "include/openssl/bio.h"
int BIO_sock_should_retry(int i);
int BIO_sock_non_fatal_error(int error);
int BIO_err_is_non_fatal(unsigned int errcode);
int BIO_socket_wait(int fd, int for_read, time_t max_time);

int BIO_wait(BIO *bio, time_t max_time, unsigned int nap_milliseconds);
int BIO_do_connect_retry(BIO *bio, int timeout, int nap_milliseconds);

int BIO_fd_should_retry(int i);
int BIO_fd_non_fatal_error(int error);
int BIO_dump_cb(int (*cb) (const void *data, size_t len, void *u),
                void *u, const void *s, int len);
int BIO_dump_indent_cb(int (*cb) (const void *data, size_t len, void *u),
                       void *u, const void *s, int len, int indent);
int BIO_dump(BIO *b, const void *bytes, int len);
int BIO_dump_indent(BIO *b, const void *bytes, int len, int indent);

int BIO_dump_fp(FILE *fp, const void *s, int len);
int BIO_dump_indent_fp(FILE *fp, const void *s, int len, int indent);

int BIO_hex_string(BIO *out, int indent, int width, const void *data,
                   int datalen);


BIO_ADDR *BIO_ADDR_new(void);
int BIO_ADDR_copy(BIO_ADDR *dst, const BIO_ADDR *src);
BIO_ADDR *BIO_ADDR_dup(const BIO_ADDR *ap);
int BIO_ADDR_rawmake(BIO_ADDR *ap, int family,
                     const void *where, size_t wherelen, unsigned short port);
void BIO_ADDR_free(BIO_ADDR *);
void BIO_ADDR_clear(BIO_ADDR *ap);
int BIO_ADDR_family(const BIO_ADDR *ap);
int BIO_ADDR_rawaddress(const BIO_ADDR *ap, void *p, size_t *l);
unsigned short BIO_ADDR_rawport(const BIO_ADDR *ap);
char *BIO_ADDR_hostname_string(const BIO_ADDR *ap, int numeric);
char *BIO_ADDR_service_string(const BIO_ADDR *ap, int numeric);
char *BIO_ADDR_path_string(const BIO_ADDR *ap);

const BIO_ADDRINFO *BIO_ADDRINFO_next(const BIO_ADDRINFO *bai);
int BIO_ADDRINFO_family(const BIO_ADDRINFO *bai);
int BIO_ADDRINFO_socktype(const BIO_ADDRINFO *bai);
int BIO_ADDRINFO_protocol(const BIO_ADDRINFO *bai);
const BIO_ADDR *BIO_ADDRINFO_address(const BIO_ADDRINFO *bai);
void BIO_ADDRINFO_free(BIO_ADDRINFO *bai);

enum BIO_hostserv_priorities {
    BIO_PARSE_PRIO_HOST, BIO_PARSE_PRIO_SERV
};
int BIO_parse_hostserv(const char *hostserv, char **host, char **service,
                       enum BIO_hostserv_priorities hostserv_prio);
enum BIO_lookup_type {
    BIO_LOOKUP_CLIENT, BIO_LOOKUP_SERVER
};
int BIO_lookup(const char *host, const char *service,
               enum BIO_lookup_type lookup_type,
               int family, int socktype, BIO_ADDRINFO **res);
int BIO_lookup_ex(const char *host, const char *service,
                  int lookup_type, int family, int socktype, int protocol,
                  BIO_ADDRINFO **res);
int BIO_sock_error(int sock);
int BIO_socket_ioctl(int fd, long type, void *arg);
int BIO_socket_nbio(int fd, int mode);
int BIO_sock_init(void);



int BIO_set_tcp_ndelay(int sock, int turn_on);

extern struct hostent *BIO_gethostbyname(const char *name);
extern int BIO_get_port(const char *str, unsigned short *port_ptr);
extern int BIO_get_host_ip(const char *str, unsigned char *ip);
extern int BIO_get_accept_socket(char *host_port, int mode);
extern int BIO_accept(int sock, char **ip_port);


union BIO_sock_info_u {
    BIO_ADDR *addr;
};
enum BIO_sock_info_type {
    BIO_SOCK_INFO_ADDRESS
};
int BIO_sock_info(int sock,
                  enum BIO_sock_info_type type, union BIO_sock_info_u *info);
# 903 "include/openssl/bio.h"
int BIO_socket(int domain, int socktype, int protocol, int options);
int BIO_connect(int sock, const BIO_ADDR *addr, int options);
int BIO_bind(int sock, const BIO_ADDR *addr, int options);
int BIO_listen(int sock, const BIO_ADDR *addr, int options);
int BIO_accept_ex(int accept_sock, BIO_ADDR *addr, int options);
int BIO_closesocket(int sock);

BIO *BIO_new_socket(int sock, int close_flag);
BIO *BIO_new_connect(const char *host_port);
BIO *BIO_new_accept(const char *host_port);


BIO *BIO_new_fd(int fd, int close_flag);

int BIO_new_bio_pair(BIO **bio1, size_t writebuf1,
                     BIO **bio2, size_t writebuf2);

int BIO_new_bio_dgram_pair(BIO **bio1, size_t writebuf1,
                           BIO **bio2, size_t writebuf2);
# 930 "include/openssl/bio.h"
void BIO_copy_next_retry(BIO *b);
# 954 "include/openssl/bio.h"
int BIO_printf(BIO *bio, const char *format, ...)
__attribute__((__format__(__gnu_printf__, 2, 3)));
int BIO_vprintf(BIO *bio, const char *format, va_list args)
__attribute__((__format__(__gnu_printf__, 2, 0)));
int BIO_snprintf(char *buf, size_t n, const char *format, ...)
__attribute__((__format__(__gnu_printf__, 3, 4)));
int BIO_vsnprintf(char *buf, size_t n, const char *format, va_list args)
__attribute__((__format__(__gnu_printf__, 3, 0)));




BIO_METHOD *BIO_meth_new(int type, const char *name);
void BIO_meth_free(BIO_METHOD *biom);
int (*BIO_meth_get_write(const BIO_METHOD *biom)) (BIO *, const char *, int);
int (*BIO_meth_get_write_ex(const BIO_METHOD *biom)) (BIO *, const char *, size_t,
                                                size_t *);
int BIO_meth_set_write(BIO_METHOD *biom,
                       int (*write) (BIO *, const char *, int));
int BIO_meth_set_write_ex(BIO_METHOD *biom,
                       int (*bwrite) (BIO *, const char *, size_t, size_t *));
int BIO_meth_set_sendmmsg(BIO_METHOD *biom,
                          int (*f) (BIO *, BIO_MSG *, size_t, size_t,
                                    uint64_t, size_t *));
int (*BIO_meth_get_sendmmsg(const BIO_METHOD *biom))(BIO *, BIO_MSG *,
                                                     size_t, size_t,
                                                     uint64_t, size_t *);
int (*BIO_meth_get_read(const BIO_METHOD *biom)) (BIO *, char *, int);
int (*BIO_meth_get_read_ex(const BIO_METHOD *biom)) (BIO *, char *, size_t, size_t *);
int BIO_meth_set_read(BIO_METHOD *biom,
                      int (*read) (BIO *, char *, int));
int BIO_meth_set_read_ex(BIO_METHOD *biom,
                         int (*bread) (BIO *, char *, size_t, size_t *));
int BIO_meth_set_recvmmsg(BIO_METHOD *biom,
                          int (*f) (BIO *, BIO_MSG *, size_t, size_t,
                                    uint64_t, size_t *));
int (*BIO_meth_get_recvmmsg(const BIO_METHOD *biom))(BIO *, BIO_MSG *,
                                                     size_t, size_t,
                                                     uint64_t, size_t *);
int (*BIO_meth_get_puts(const BIO_METHOD *biom)) (BIO *, const char *);
int BIO_meth_set_puts(BIO_METHOD *biom,
                      int (*puts) (BIO *, const char *));
int (*BIO_meth_get_gets(const BIO_METHOD *biom)) (BIO *, char *, int);
int BIO_meth_set_gets(BIO_METHOD *biom,
                      int (*ossl_gets) (BIO *, char *, int));
long (*BIO_meth_get_ctrl(const BIO_METHOD *biom)) (BIO *, int, long, void *);
int BIO_meth_set_ctrl(BIO_METHOD *biom,
                      long (*ctrl) (BIO *, int, long, void *));
int (*BIO_meth_get_create(const BIO_METHOD *bion)) (BIO *);
int BIO_meth_set_create(BIO_METHOD *biom, int (*create) (BIO *));
int (*BIO_meth_get_destroy(const BIO_METHOD *biom)) (BIO *);
int BIO_meth_set_destroy(BIO_METHOD *biom, int (*destroy) (BIO *));
long (*BIO_meth_get_callback_ctrl(const BIO_METHOD *biom))
                                 (BIO *, int, BIO_info_cb *);
int BIO_meth_set_callback_ctrl(BIO_METHOD *biom,
                               long (*callback_ctrl) (BIO *, int,
                                                      BIO_info_cb *));
# 17 "../include/openssl/trace.h" 2
# 64 "../include/openssl/trace.h"
int OSSL_trace_get_category_num(const char *name);


const char *OSSL_trace_get_category_name(int num);
# 80 "../include/openssl/trace.h"
int OSSL_trace_set_channel(int category, BIO* channel);
# 91 "../include/openssl/trace.h"
int OSSL_trace_set_prefix(int category, const char *prefix);
int OSSL_trace_set_suffix(int category, const char *suffix);
# 105 "../include/openssl/trace.h"
typedef size_t (*OSSL_trace_cb)(const char *buffer, size_t count,
                                int category, int cmd, void *data);
# 125 "../include/openssl/trace.h"
int OSSL_trace_set_callback(int category, OSSL_trace_cb callback, void *data);
# 134 "../include/openssl/trace.h"
int OSSL_trace_enabled(int category);
# 153 "../include/openssl/trace.h"
BIO *OSSL_trace_begin(int category);
void OSSL_trace_end(int category, BIO *channel);
# 309 "../include/openssl/trace.h"
int OSSL_trace_string(BIO *out, int text, int full,
                      const unsigned char *data, size_t size);
# 15 "../include/internal/refcount.h" 2
# 1 "include/openssl/err.h" 1
# 14 "include/openssl/err.h"
        
# 28 "include/openssl/err.h"
# 1 "../include/openssl/types.h" 1
# 29 "include/openssl/err.h" 2

# 1 "include/openssl/lhash.h" 1
# 18 "include/openssl/lhash.h"
        
# 35 "include/openssl/lhash.h"
typedef struct lhash_node_st OPENSSL_LH_NODE;
typedef int (*OPENSSL_LH_COMPFUNC) (const void *, const void *);
typedef int (*OPENSSL_LH_COMPFUNCTHUNK) (const void *, const void *, OPENSSL_LH_COMPFUNC cfn);
typedef unsigned long (*OPENSSL_LH_HASHFUNC) (const void *);
typedef unsigned long (*OPENSSL_LH_HASHFUNCTHUNK) (const void *, OPENSSL_LH_HASHFUNC hfn);
typedef void (*OPENSSL_LH_DOALL_FUNC) (void *);
typedef void (*OPENSSL_LH_DOALL_FUNC_THUNK) (void *, OPENSSL_LH_DOALL_FUNC doall);
typedef void (*OPENSSL_LH_DOALL_FUNCARG) (void *, void *);
typedef void (*OPENSSL_LH_DOALL_FUNCARG_THUNK) (void *, void *, OPENSSL_LH_DOALL_FUNCARG doall);
typedef struct lhash_st OPENSSL_LHASH;
# 87 "include/openssl/lhash.h"
int OPENSSL_LH_error(OPENSSL_LHASH *lh);
OPENSSL_LHASH *OPENSSL_LH_new(OPENSSL_LH_HASHFUNC h, OPENSSL_LH_COMPFUNC c);
OPENSSL_LHASH *OPENSSL_LH_set_thunks(OPENSSL_LHASH *lh,
                                     OPENSSL_LH_HASHFUNCTHUNK hw,
                                     OPENSSL_LH_COMPFUNCTHUNK cw,
                                     OPENSSL_LH_DOALL_FUNC_THUNK daw,
                                     OPENSSL_LH_DOALL_FUNCARG_THUNK daaw);
void OPENSSL_LH_free(OPENSSL_LHASH *lh);
void OPENSSL_LH_flush(OPENSSL_LHASH *lh);
void *OPENSSL_LH_insert(OPENSSL_LHASH *lh, void *data);
void *OPENSSL_LH_delete(OPENSSL_LHASH *lh, const void *data);
void *OPENSSL_LH_retrieve(OPENSSL_LHASH *lh, const void *data);
void OPENSSL_LH_doall(OPENSSL_LHASH *lh, OPENSSL_LH_DOALL_FUNC func);
void OPENSSL_LH_doall_arg(OPENSSL_LHASH *lh,
                          OPENSSL_LH_DOALL_FUNCARG func, void *arg);
void OPENSSL_LH_doall_arg_thunk(OPENSSL_LHASH *lh,
                          OPENSSL_LH_DOALL_FUNCARG_THUNK daaw,
                          OPENSSL_LH_DOALL_FUNCARG fn, void *arg);

unsigned long OPENSSL_LH_strhash(const char *c);
unsigned long OPENSSL_LH_num_items(const OPENSSL_LHASH *lh);
unsigned long OPENSSL_LH_get_down_load(const OPENSSL_LHASH *lh);
void OPENSSL_LH_set_down_load(OPENSSL_LHASH *lh, unsigned long down_load);



extern void OPENSSL_LH_stats(const OPENSSL_LHASH *lh, FILE *fp);
extern void OPENSSL_LH_node_stats(const OPENSSL_LHASH *lh, FILE *fp);
extern void OPENSSL_LH_node_usage_stats(const OPENSSL_LHASH *lh, FILE *fp);



extern void OPENSSL_LH_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
extern void OPENSSL_LH_node_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
extern void OPENSSL_LH_node_usage_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
# 362 "include/openssl/lhash.h"
struct lhash_st_OPENSSL_STRING { union lh_OPENSSL_STRING_dummy { void* d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_OPENSSL_STRING_compfunc)(const OPENSSL_STRING *a, const OPENSSL_STRING *b); typedef unsigned long (*lh_OPENSSL_STRING_hashfunc)(const OPENSSL_STRING *a); typedef void (*lh_OPENSSL_STRING_doallfunc)(OPENSSL_STRING *a); static inline unsigned long lh_OPENSSL_STRING_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const OPENSSL_STRING *) = (unsigned long (*)(const OPENSSL_STRING *))hfn; return hfn_conv((const OPENSSL_STRING *)data); } static inline int lh_OPENSSL_STRING_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const OPENSSL_STRING *, const OPENSSL_STRING *) = (int (*)(const OPENSSL_STRING *, const OPENSSL_STRING *))cfn; return cfn_conv((const OPENSSL_STRING *)da, (const OPENSSL_STRING *)db); } static inline void lh_OPENSSL_STRING_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(OPENSSL_STRING *) = (void (*)(OPENSSL_STRING *))doall; doall_conv((OPENSSL_STRING *)node); } static inline void lh_OPENSSL_STRING_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(OPENSSL_STRING *, void *) = (void (*)(OPENSSL_STRING *, void *))doall; doall_conv((OPENSSL_STRING *)node, arg); } static __attribute__((unused)) inline OPENSSL_STRING * ossl_check_OPENSSL_STRING_lh_plain_type(OPENSSL_STRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STRING * ossl_check_const_OPENSSL_STRING_lh_plain_type(const OPENSSL_STRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_OPENSSL_STRING_lh_type(const struct lhash_st_OPENSSL_STRING *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_OPENSSL_STRING_lh_type(struct lhash_st_OPENSSL_STRING *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_OPENSSL_STRING_lh_compfunc_type(lh_OPENSSL_STRING_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_OPENSSL_STRING_lh_hashfunc_type(lh_OPENSSL_STRING_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_OPENSSL_STRING_lh_doallfunc_type(lh_OPENSSL_STRING_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_OPENSSL_STRING;
# 377 "include/openssl/lhash.h"
struct lhash_st_OPENSSL_CSTRING { union lh_OPENSSL_CSTRING_dummy { void* d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_OPENSSL_CSTRING_compfunc)(const OPENSSL_CSTRING *a, const OPENSSL_CSTRING *b); typedef unsigned long (*lh_OPENSSL_CSTRING_hashfunc)(const OPENSSL_CSTRING *a); typedef void (*lh_OPENSSL_CSTRING_doallfunc)(OPENSSL_CSTRING *a); static inline unsigned long lh_OPENSSL_CSTRING_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const OPENSSL_CSTRING *) = (unsigned long (*)(const OPENSSL_CSTRING *))hfn; return hfn_conv((const OPENSSL_CSTRING *)data); } static inline int lh_OPENSSL_CSTRING_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const OPENSSL_CSTRING *, const OPENSSL_CSTRING *) = (int (*)(const OPENSSL_CSTRING *, const OPENSSL_CSTRING *))cfn; return cfn_conv((const OPENSSL_CSTRING *)da, (const OPENSSL_CSTRING *)db); } static inline void lh_OPENSSL_CSTRING_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(OPENSSL_CSTRING *) = (void (*)(OPENSSL_CSTRING *))doall; doall_conv((OPENSSL_CSTRING *)node); } static inline void lh_OPENSSL_CSTRING_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(OPENSSL_CSTRING *, void *) = (void (*)(OPENSSL_CSTRING *, void *))doall; doall_conv((OPENSSL_CSTRING *)node, arg); } static __attribute__((unused)) inline OPENSSL_CSTRING * ossl_check_OPENSSL_CSTRING_lh_plain_type(OPENSSL_CSTRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_CSTRING * ossl_check_const_OPENSSL_CSTRING_lh_plain_type(const OPENSSL_CSTRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_OPENSSL_CSTRING_lh_type(const struct lhash_st_OPENSSL_CSTRING *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_OPENSSL_CSTRING_lh_type(struct lhash_st_OPENSSL_CSTRING *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_OPENSSL_CSTRING_lh_compfunc_type(lh_OPENSSL_CSTRING_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_OPENSSL_CSTRING_lh_hashfunc_type(lh_OPENSSL_CSTRING_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_OPENSSL_CSTRING_lh_doallfunc_type(lh_OPENSSL_CSTRING_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_OPENSSL_CSTRING;
# 31 "include/openssl/err.h" 2
# 45 "include/openssl/err.h"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 46 "include/openssl/err.h" 2
# 1 "/usr/include/errno.h" 1 3 4
# 28 "/usr/include/errno.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/errno.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4




# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 6 "/usr/include/asm-generic/errno.h" 2 3 4
# 2 "/usr/include/x86_64-linux-gnu/asm/errno.h" 2 3 4
# 2 "/usr/include/linux/errno.h" 2 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/errno.h" 2 3 4
# 29 "/usr/include/errno.h" 2 3 4









# 37 "/usr/include/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 52 "/usr/include/errno.h" 3 4

# 47 "include/openssl/err.h" 2
# 56 "include/openssl/err.h"

# 56 "include/openssl/err.h"
struct err_state_st {
    int err_flags[16];
    int err_marks[16];
    unsigned long err_buffer[16];
    char *err_data[16];
    size_t err_data_size[16];
    int err_data_flags[16];
    char *err_file[16];
    int err_line[16];
    char *err_func[16];
    int top, bottom;
};
# 241 "include/openssl/err.h"
static __attribute__((unused)) inline int ERR_GET_LIB(unsigned long errcode)
{
    if ((((errcode) & ((unsigned int)0x7fffffff 
# 243 "include/openssl/err.h"
       + 1)) != 0))
        return 2;
    return (errcode >> 23L) & 0xFF;
}

static __attribute__((unused)) inline int ERR_GET_RFLAGS(unsigned long errcode)
{
    if ((((errcode) & ((unsigned int)0x7fffffff 
# 250 "include/openssl/err.h"
       + 1)) != 0))
        return 0;
    return errcode & (0x1F << 18L);
}

static __attribute__((unused)) inline int ERR_GET_REASON(unsigned long errcode)
{
    if ((((errcode) & ((unsigned int)0x7fffffff 
# 257 "include/openssl/err.h"
       + 1)) != 0))
        return errcode & ((unsigned int)0x7fffffff
# 258 "include/openssl/err.h"
                        );
    return errcode & 0X7FFFFF;
}

static __attribute__((unused)) inline int ERR_FATAL_ERROR(unsigned long errcode)
{
    return (ERR_GET_RFLAGS(errcode) & (0x1 << 18L)) != 0;
}

static __attribute__((unused)) inline int ERR_COMMON_ERROR(unsigned long errcode)
{
    return (ERR_GET_RFLAGS(errcode) & (0x2 << 18L)) != 0;
}
# 369 "include/openssl/err.h"
typedef struct ERR_string_data_st {
    unsigned long error;
    const char *string;
} ERR_STRING_DATA;

struct lhash_st_ERR_STRING_DATA { union lh_ERR_STRING_DATA_dummy { void* d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_ERR_STRING_DATA_compfunc)(const ERR_STRING_DATA *a, const ERR_STRING_DATA *b); typedef unsigned long (*lh_ERR_STRING_DATA_hashfunc)(const ERR_STRING_DATA *a); typedef void (*lh_ERR_STRING_DATA_doallfunc)(ERR_STRING_DATA *a); static inline unsigned long lh_ERR_STRING_DATA_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const ERR_STRING_DATA *) = (unsigned long (*)(const ERR_STRING_DATA *))hfn; return hfn_conv((const ERR_STRING_DATA *)data); } static inline int lh_ERR_STRING_DATA_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const ERR_STRING_DATA *, const ERR_STRING_DATA *) = (int (*)(const ERR_STRING_DATA *, const ERR_STRING_DATA *))cfn; return cfn_conv((const ERR_STRING_DATA *)da, (const ERR_STRING_DATA *)db); } static inline void lh_ERR_STRING_DATA_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(ERR_STRING_DATA *) = (void (*)(ERR_STRING_DATA *))doall; doall_conv((ERR_STRING_DATA *)node); } static inline void lh_ERR_STRING_DATA_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(ERR_STRING_DATA *, void *) = (void (*)(ERR_STRING_DATA *, void *))doall; doall_conv((ERR_STRING_DATA *)node, arg); } static __attribute__((unused)) inline ERR_STRING_DATA * ossl_check_ERR_STRING_DATA_lh_plain_type(ERR_STRING_DATA *ptr) { return ptr; } static __attribute__((unused)) inline const ERR_STRING_DATA * ossl_check_const_ERR_STRING_DATA_lh_plain_type(const ERR_STRING_DATA *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_ERR_STRING_DATA_lh_type(const struct lhash_st_ERR_STRING_DATA *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_ERR_STRING_DATA_lh_type(struct lhash_st_ERR_STRING_DATA *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_ERR_STRING_DATA_lh_compfunc_type(lh_ERR_STRING_DATA_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_ERR_STRING_DATA_lh_hashfunc_type(lh_ERR_STRING_DATA_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_ERR_STRING_DATA_lh_doallfunc_type(lh_ERR_STRING_DATA_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_ERR_STRING_DATA;
# 395 "include/openssl/err.h"
void ERR_new(void);
void ERR_set_debug(const char *file, int line, const char *func);
void ERR_set_error(int lib, int reason, const char *fmt, ...);
void ERR_vset_error(int lib, int reason, const char *fmt, va_list args);
# 415 "include/openssl/err.h"
void ERR_set_error_data(char *data, int flags);

unsigned long ERR_get_error(void);
unsigned long ERR_get_error_all(const char **file, int *line,
                                const char **func,
                                const char **data, int *flags);

extern
unsigned long ERR_get_error_line(const char **file, int *line);
extern
unsigned long ERR_get_error_line_data(const char **file, int *line,
                                      const char **data, int *flags);

unsigned long ERR_peek_error(void);
unsigned long ERR_peek_error_line(const char **file, int *line);
unsigned long ERR_peek_error_func(const char **func);
unsigned long ERR_peek_error_data(const char **data, int *flags);
unsigned long ERR_peek_error_all(const char **file, int *line,
                                 const char **func,
                                 const char **data, int *flags);

extern
unsigned long ERR_peek_error_line_data(const char **file, int *line,
                                       const char **data, int *flags);

unsigned long ERR_peek_last_error(void);
unsigned long ERR_peek_last_error_line(const char **file, int *line);
unsigned long ERR_peek_last_error_func(const char **func);
unsigned long ERR_peek_last_error_data(const char **data, int *flags);
unsigned long ERR_peek_last_error_all(const char **file, int *line,
                                      const char **func,
                                      const char **data, int *flags);

extern
unsigned long ERR_peek_last_error_line_data(const char **file, int *line,
                                            const char **data, int *flags);


void ERR_clear_error(void);

char *ERR_error_string(unsigned long e, char *buf);
void ERR_error_string_n(unsigned long e, char *buf, size_t len);
const char *ERR_lib_error_string(unsigned long e);

extern const char *ERR_func_error_string(unsigned long e);

const char *ERR_reason_error_string(unsigned long e);

void ERR_print_errors_cb(int (*cb) (const char *str, size_t len, void *u),
                         void *u);

void ERR_print_errors_fp(FILE *fp);

void ERR_print_errors(BIO *bp);

void ERR_add_error_data(int num, ...);
void ERR_add_error_vdata(int num, va_list args);
void ERR_add_error_txt(const char *sepr, const char *txt);
void ERR_add_error_mem_bio(const char *sep, BIO *bio);

int ERR_load_strings(int lib, ERR_STRING_DATA *str);
int ERR_load_strings_const(const ERR_STRING_DATA *str);
int ERR_unload_strings(int lib, ERR_STRING_DATA *str);







extern void ERR_remove_thread_state(void *);


extern void ERR_remove_state(unsigned long pid);


extern ERR_STATE *ERR_get_state(void);


int ERR_get_next_error_library(void);

int ERR_set_mark(void);
int ERR_pop_to_mark(void);
int ERR_clear_last_mark(void);
int ERR_count_to_mark(void);
int ERR_pop(void);

ERR_STATE *OSSL_ERR_STATE_new(void);
void OSSL_ERR_STATE_save(ERR_STATE *es);
void OSSL_ERR_STATE_save_to_mark(ERR_STATE *es);
void OSSL_ERR_STATE_restore(const ERR_STATE *es);
void OSSL_ERR_STATE_free(ERR_STATE *es);
# 16 "../include/internal/refcount.h" 2




# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdatomic.h" 1 3 4
# 29 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdatomic.h" 3 4

# 29 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdatomic.h" 3 4
typedef enum
  {
    memory_order_relaxed = 0,
    memory_order_consume = 1,
    memory_order_acquire = 2,
    memory_order_release = 3,
    memory_order_acq_rel = 4,
    memory_order_seq_cst = 5
  } memory_order;


typedef _Atomic _Bool atomic_bool;
typedef _Atomic char atomic_char;
typedef _Atomic signed char atomic_schar;
typedef _Atomic unsigned char atomic_uchar;
typedef _Atomic short atomic_short;
typedef _Atomic unsigned short atomic_ushort;
typedef _Atomic int atomic_int;
typedef _Atomic unsigned int atomic_uint;
typedef _Atomic long atomic_long;
typedef _Atomic unsigned long atomic_ulong;
typedef _Atomic long long atomic_llong;
typedef _Atomic unsigned long long atomic_ullong;

typedef _Atomic unsigned char atomic_char8_t;

typedef _Atomic short unsigned int atomic_char16_t;
typedef _Atomic unsigned int atomic_char32_t;
typedef _Atomic int atomic_wchar_t;
typedef _Atomic signed char atomic_int_least8_t;
typedef _Atomic unsigned char atomic_uint_least8_t;
typedef _Atomic short int atomic_int_least16_t;
typedef _Atomic short unsigned int atomic_uint_least16_t;
typedef _Atomic int atomic_int_least32_t;
typedef _Atomic unsigned int atomic_uint_least32_t;
typedef _Atomic long int atomic_int_least64_t;
typedef _Atomic long unsigned int atomic_uint_least64_t;
typedef _Atomic signed char atomic_int_fast8_t;
typedef _Atomic unsigned char atomic_uint_fast8_t;
typedef _Atomic long int atomic_int_fast16_t;
typedef _Atomic long unsigned int atomic_uint_fast16_t;
typedef _Atomic long int atomic_int_fast32_t;
typedef _Atomic long unsigned int atomic_uint_fast32_t;
typedef _Atomic long int atomic_int_fast64_t;
typedef _Atomic long unsigned int atomic_uint_fast64_t;
typedef _Atomic long int atomic_intptr_t;
typedef _Atomic long unsigned int atomic_uintptr_t;
typedef _Atomic long unsigned int atomic_size_t;
typedef _Atomic long int atomic_ptrdiff_t;
typedef _Atomic long int atomic_intmax_t;
typedef _Atomic long unsigned int atomic_uintmax_t;
# 97 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdatomic.h" 3 4
extern void atomic_thread_fence (memory_order);

extern void atomic_signal_fence (memory_order);
# 226 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdatomic.h" 3 4
typedef _Atomic struct
{

  _Bool __val;



} atomic_flag;




extern _Bool atomic_flag_test_and_set (volatile atomic_flag *);


extern _Bool atomic_flag_test_and_set_explicit (volatile atomic_flag *,
      memory_order);



extern void atomic_flag_clear (volatile atomic_flag *);

extern void atomic_flag_clear_explicit (volatile atomic_flag *, memory_order);
# 21 "../include/internal/refcount.h" 2
# 35 "../include/internal/refcount.h"

# 35 "../include/internal/refcount.h"
typedef struct {
    _Atomic int val;
} CRYPTO_REF_COUNT;

static inline int CRYPTO_UP_REF(CRYPTO_REF_COUNT *refcnt, int *ret)
{
    *ret = 
# 41 "../include/internal/refcount.h" 3 4
          __atomic_fetch_add ((
# 41 "../include/internal/refcount.h"
          &refcnt->val
# 41 "../include/internal/refcount.h" 3 4
          ), (
# 41 "../include/internal/refcount.h"
          1
# 41 "../include/internal/refcount.h" 3 4
          ), (
# 41 "../include/internal/refcount.h"
          memory_order_relaxed
# 41 "../include/internal/refcount.h" 3 4
          )) 
# 41 "../include/internal/refcount.h"
                                                                           + 1;
    return 1;
}
# 55 "../include/internal/refcount.h"
static inline int CRYPTO_DOWN_REF(CRYPTO_REF_COUNT *refcnt, int *ret)
{







    *ret = 
# 64 "../include/internal/refcount.h" 3 4
          __atomic_fetch_sub ((
# 64 "../include/internal/refcount.h"
          &refcnt->val
# 64 "../include/internal/refcount.h" 3 4
          ), (
# 64 "../include/internal/refcount.h"
          1
# 64 "../include/internal/refcount.h" 3 4
          ), (
# 64 "../include/internal/refcount.h"
          memory_order_release
# 64 "../include/internal/refcount.h" 3 4
          )) 
# 64 "../include/internal/refcount.h"
                                                                           - 1;
    if (*ret == 0)
        
# 66 "../include/internal/refcount.h" 3 4
       __atomic_thread_fence (
# 66 "../include/internal/refcount.h"
       memory_order_acquire
# 66 "../include/internal/refcount.h" 3 4
       )
# 66 "../include/internal/refcount.h"
                                                ;

    return 1;
}

static inline int CRYPTO_GET_REF(CRYPTO_REF_COUNT *refcnt, int *ret)
{
    *ret = 
# 73 "../include/internal/refcount.h" 3 4
          __extension__ ({ __auto_type __atomic_load_ptr = (
# 73 "../include/internal/refcount.h"
          &refcnt->val
# 73 "../include/internal/refcount.h" 3 4
          ); __typeof__ ((void)0, *__atomic_load_ptr) __atomic_load_tmp; __atomic_load (__atomic_load_ptr, &__atomic_load_tmp, (
# 73 "../include/internal/refcount.h"
          memory_order_acquire
# 73 "../include/internal/refcount.h" 3 4
          )); __atomic_load_tmp; })
# 73 "../include/internal/refcount.h"
                                                                  ;
    return 1;
}
# 279 "../include/internal/refcount.h"
static __attribute__((unused)) inline int CRYPTO_NEW_REF(CRYPTO_REF_COUNT *refcnt, int n)
{
    refcnt->val = n;
    return 1;
}

static __attribute__((unused)) inline void CRYPTO_FREE_REF(CRYPTO_REF_COUNT *refcnt)
 {
}
# 24 "../include/crypto/ecx.h" 2
# 1 "../include/crypto/types.h" 1
# 14 "../include/crypto/types.h"
        
# 29 "../include/crypto/types.h"
typedef struct ecx_key_st ECX_KEY;
# 25 "../include/crypto/ecx.h" 2
# 50 "../include/crypto/ecx.h"
typedef enum {
    ECX_KEY_TYPE_X25519,
    ECX_KEY_TYPE_X448,
    ECX_KEY_TYPE_ED25519,
    ECX_KEY_TYPE_ED448
} ECX_KEY_TYPE;
# 66 "../include/crypto/ecx.h"
struct ecx_key_st {
    OSSL_LIB_CTX *libctx;
    char *propq;
    unsigned int haspubkey:1;
    unsigned char pubkey[57];
    unsigned char *privkey;
    size_t keylen;
    ECX_KEY_TYPE type;
    CRYPTO_REF_COUNT references;
};

size_t ossl_ecx_key_length(ECX_KEY_TYPE type);
ECX_KEY *ossl_ecx_key_new(OSSL_LIB_CTX *libctx, ECX_KEY_TYPE type,
                          int haspubkey, const char *propq);
void ossl_ecx_key_set0_libctx(ECX_KEY *key, OSSL_LIB_CTX *libctx);
unsigned char *ossl_ecx_key_allocate_privkey(ECX_KEY *key);
void ossl_ecx_key_free(ECX_KEY *key);
int ossl_ecx_key_up_ref(ECX_KEY *key);
ECX_KEY *ossl_ecx_key_dup(const ECX_KEY *key, int selection);
int ossl_ecx_compute_key(ECX_KEY *peer, ECX_KEY *priv, size_t keylen,
                         unsigned char *secret, size_t *secretlen,
                         size_t outlen);

int ossl_x25519(uint8_t out_shared_key[32], const uint8_t private_key[32],
                const uint8_t peer_public_value[32]);
void ossl_x25519_public_from_private(uint8_t out_public_value[32],
                                     const uint8_t private_key[32]);

int
ossl_ed25519_public_from_private(OSSL_LIB_CTX *ctx, uint8_t out_public_key[32],
                                 const uint8_t private_key[32],
                                 const char *propq);
int
ossl_ed25519_sign(uint8_t *out_sig, const uint8_t *tbs, size_t tbs_len,
                  const uint8_t public_key[32], const uint8_t private_key[32],
                  const uint8_t dom2flag, const uint8_t phflag, const uint8_t csflag,
                  const uint8_t *context, size_t context_len,
                  OSSL_LIB_CTX *libctx, const char *propq);
int
ossl_ed25519_verify(const uint8_t *tbs, size_t tbs_len,
                    const uint8_t signature[64], const uint8_t public_key[32],
                    const uint8_t dom2flag, const uint8_t phflag, const uint8_t csflag,
                    const uint8_t *context, size_t context_len,
                    OSSL_LIB_CTX *libctx, const char *propq);
int
ossl_ed448_public_from_private(OSSL_LIB_CTX *ctx, uint8_t out_public_key[57],
                               const uint8_t private_key[57], const char *propq);
int
ossl_ed448_sign(OSSL_LIB_CTX *ctx, uint8_t *out_sig,
                const uint8_t *message, size_t message_len,
                const uint8_t public_key[57], const uint8_t private_key[57],
                const uint8_t *context, size_t context_len,
                const uint8_t phflag, const char *propq);

int
ossl_ed448_verify(OSSL_LIB_CTX *ctx,
                  const uint8_t *message, size_t message_len,
                  const uint8_t signature[114], const uint8_t public_key[57],
                  const uint8_t *context, size_t context_len,
                  const uint8_t phflag, const char *propq);

int
ossl_x448(uint8_t out_shared_key[56], const uint8_t private_key[56],
          const uint8_t peer_public_value[56]);
void
ossl_x448_public_from_private(uint8_t out_public_value[56],
                              const uint8_t private_key[56]);



typedef enum {
    KEY_OP_PUBLIC,
    KEY_OP_PRIVATE,
    KEY_OP_KEYGEN
} ecx_key_op_t;

ECX_KEY *ossl_ecx_key_op(const X509_ALGOR *palg,
                         const unsigned char *p, int plen,
                         int pkey_id, ecx_key_op_t op,
                         OSSL_LIB_CTX *libctx, const char *propq);

int ossl_ecx_public_from_private(ECX_KEY *key);
int ossl_ecx_key_fromdata(ECX_KEY *ecx, const OSSL_PARAM params[],
                          int include_private);
ECX_KEY *ossl_ecx_key_from_pkcs8(const PKCS8_PRIV_KEY_INFO *p8inf,
                                 OSSL_LIB_CTX *libctx, const char *propq);

ECX_KEY *ossl_evp_pkey_get1_X25519(EVP_PKEY *pkey);
ECX_KEY *ossl_evp_pkey_get1_X448(EVP_PKEY *pkey);
ECX_KEY *ossl_evp_pkey_get1_ED25519(EVP_PKEY *pkey);
ECX_KEY *ossl_evp_pkey_get1_ED448(EVP_PKEY *pkey);
# 18 "../crypto/ec/curve25519.c" 2
# 1 "../crypto/ec/ec_local.h" 1
# 13 "../crypto/ec/ec_local.h"
# 1 "../include/openssl/obj_mac.h" 1
# 14 "../include/openssl/obj_mac.h"
        
# 14 "../crypto/ec/ec_local.h" 2
# 1 "../include/openssl/ec.h" 1
# 13 "../include/openssl/ec.h"
        







# 1 "../include/openssl/types.h" 1
# 22 "../include/openssl/ec.h" 2
# 33 "../include/openssl/ec.h"
int EVP_PKEY_CTX_set_ec_paramgen_curve_nid(EVP_PKEY_CTX *ctx, int nid);
int EVP_PKEY_CTX_set_ec_param_enc(EVP_PKEY_CTX *ctx, int param_enc);
int EVP_PKEY_CTX_set_ecdh_cofactor_mode(EVP_PKEY_CTX *ctx, int cofactor_mode);
int EVP_PKEY_CTX_get_ecdh_cofactor_mode(EVP_PKEY_CTX *ctx);

int EVP_PKEY_CTX_set_ecdh_kdf_type(EVP_PKEY_CTX *ctx, int kdf);
int EVP_PKEY_CTX_get_ecdh_kdf_type(EVP_PKEY_CTX *ctx);

int EVP_PKEY_CTX_set_ecdh_kdf_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_get_ecdh_kdf_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);

int EVP_PKEY_CTX_set_ecdh_kdf_outlen(EVP_PKEY_CTX *ctx, int len);
int EVP_PKEY_CTX_get_ecdh_kdf_outlen(EVP_PKEY_CTX *ctx, int *len);

int EVP_PKEY_CTX_set0_ecdh_kdf_ukm(EVP_PKEY_CTX *ctx, unsigned char *ukm,
                                   int len);

extern
int EVP_PKEY_CTX_get0_ecdh_kdf_ukm(EVP_PKEY_CTX *ctx, unsigned char **ukm);
# 78 "../include/openssl/ec.h"
typedef enum {


    POINT_CONVERSION_COMPRESSED = 2,

    POINT_CONVERSION_UNCOMPRESSED = 4,


    POINT_CONVERSION_HYBRID = 6
} point_conversion_form_t;

const char *OSSL_EC_curve_nid2name(int nid);





# 1 "include/openssl/asn1.h" 1
# 17 "include/openssl/asn1.h"
        
# 32 "include/openssl/asn1.h"
# 1 "../include/openssl/asn1err.h" 1
# 13 "../include/openssl/asn1err.h"
        
# 33 "include/openssl/asn1.h" 2


# 1 "../include/openssl/types.h" 1
# 36 "include/openssl/asn1.h" 2
# 1 "../include/openssl/bn.h" 1
# 13 "../include/openssl/bn.h"
        
# 25 "../include/openssl/bn.h"
# 1 "../include/openssl/types.h" 1
# 26 "../include/openssl/bn.h" 2

# 1 "../include/openssl/bnerr.h" 1
# 13 "../include/openssl/bnerr.h"
        
# 28 "../include/openssl/bn.h" 2
# 76 "../include/openssl/bn.h"
void BN_set_flags(BIGNUM *b, int n);
int BN_get_flags(const BIGNUM *b, int n);
# 94 "../include/openssl/bn.h"
void BN_with_flags(BIGNUM *dest, const BIGNUM *b, int flags);


int BN_GENCB_call(BN_GENCB *cb, int a, int b);

BN_GENCB *BN_GENCB_new(void);
void BN_GENCB_free(BN_GENCB *cb);


void BN_GENCB_set_old(BN_GENCB *gencb, void (*callback) (int, int, void *),
                      void *cb_arg);


void BN_GENCB_set(BN_GENCB *gencb, int (*callback) (int, int, BN_GENCB *),
                  void *cb_arg);

void *BN_GENCB_get_arg(BN_GENCB *cb);
# 191 "../include/openssl/bn.h"
int BN_abs_is_word(const BIGNUM *a, const unsigned long w);
int BN_is_zero(const BIGNUM *a);
int BN_is_one(const BIGNUM *a);
int BN_is_word(const BIGNUM *a, const unsigned long w);
int BN_is_odd(const BIGNUM *a);



void BN_zero_ex(BIGNUM *a);







const BIGNUM *BN_value_one(void);
char *BN_options(void);
BN_CTX *BN_CTX_new_ex(OSSL_LIB_CTX *ctx);
BN_CTX *BN_CTX_new(void);
BN_CTX *BN_CTX_secure_new_ex(OSSL_LIB_CTX *ctx);
BN_CTX *BN_CTX_secure_new(void);
void BN_CTX_free(BN_CTX *c);
void BN_CTX_start(BN_CTX *ctx);
BIGNUM *BN_CTX_get(BN_CTX *ctx);
void BN_CTX_end(BN_CTX *ctx);
int BN_rand_ex(BIGNUM *rnd, int bits, int top, int bottom,
               unsigned int strength, BN_CTX *ctx);
int BN_rand(BIGNUM *rnd, int bits, int top, int bottom);
int BN_priv_rand_ex(BIGNUM *rnd, int bits, int top, int bottom,
                    unsigned int strength, BN_CTX *ctx);
int BN_priv_rand(BIGNUM *rnd, int bits, int top, int bottom);
int BN_rand_range_ex(BIGNUM *r, const BIGNUM *range, unsigned int strength,
                     BN_CTX *ctx);
int BN_rand_range(BIGNUM *rnd, const BIGNUM *range);
int BN_priv_rand_range_ex(BIGNUM *r, const BIGNUM *range,
                          unsigned int strength, BN_CTX *ctx);
int BN_priv_rand_range(BIGNUM *rnd, const BIGNUM *range);

extern
int BN_pseudo_rand(BIGNUM *rnd, int bits, int top, int bottom);
extern
int BN_pseudo_rand_range(BIGNUM *rnd, const BIGNUM *range);

int BN_num_bits(const BIGNUM *a);
int BN_num_bits_word(unsigned long l);
int BN_security_bits(int L, int N);
BIGNUM *BN_new(void);
BIGNUM *BN_secure_new(void);
void BN_clear_free(BIGNUM *a);
BIGNUM *BN_copy(BIGNUM *a, const BIGNUM *b);
void BN_swap(BIGNUM *a, BIGNUM *b);
BIGNUM *BN_bin2bn(const unsigned char *s, int len, BIGNUM *ret);
BIGNUM *BN_signed_bin2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2bin(const BIGNUM *a, unsigned char *to);
int BN_bn2binpad(const BIGNUM *a, unsigned char *to, int tolen);
int BN_signed_bn2bin(const BIGNUM *a, unsigned char *to, int tolen);
BIGNUM *BN_lebin2bn(const unsigned char *s, int len, BIGNUM *ret);
BIGNUM *BN_signed_lebin2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2lebinpad(const BIGNUM *a, unsigned char *to, int tolen);
int BN_signed_bn2lebin(const BIGNUM *a, unsigned char *to, int tolen);
BIGNUM *BN_native2bn(const unsigned char *s, int len, BIGNUM *ret);
BIGNUM *BN_signed_native2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2nativepad(const BIGNUM *a, unsigned char *to, int tolen);
int BN_signed_bn2native(const BIGNUM *a, unsigned char *to, int tolen);
BIGNUM *BN_mpi2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2mpi(const BIGNUM *a, unsigned char *to);
int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_uadd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
int BN_sqr(BIGNUM *r, const BIGNUM *a, BN_CTX *ctx);




void BN_set_negative(BIGNUM *b, int n);




int BN_is_negative(const BIGNUM *b);

int BN_div(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, const BIGNUM *d,
           BN_CTX *ctx);

int BN_nnmod(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx);
int BN_mod_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
               BN_CTX *ctx);
int BN_mod_add_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                     const BIGNUM *m);
int BN_mod_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
               BN_CTX *ctx);
int BN_mod_sub_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                     const BIGNUM *m);
int BN_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
               BN_CTX *ctx);
int BN_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx);
int BN_mod_lshift1(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx);
int BN_mod_lshift1_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *m);
int BN_mod_lshift(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m,
                  BN_CTX *ctx);
int BN_mod_lshift_quick(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m);

unsigned long BN_mod_word(const BIGNUM *a, unsigned long w);
unsigned long BN_div_word(BIGNUM *a, unsigned long w);
int BN_mul_word(BIGNUM *a, unsigned long w);
int BN_add_word(BIGNUM *a, unsigned long w);
int BN_sub_word(BIGNUM *a, unsigned long w);
int BN_set_word(BIGNUM *a, unsigned long w);
unsigned long BN_get_word(const BIGNUM *a);

int BN_cmp(const BIGNUM *a, const BIGNUM *b);
void BN_free(BIGNUM *a);
int BN_is_bit_set(const BIGNUM *a, int n);
int BN_lshift(BIGNUM *r, const BIGNUM *a, int n);
int BN_lshift1(BIGNUM *r, const BIGNUM *a);
int BN_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);

int BN_mod_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
               const BIGNUM *m, BN_CTX *ctx);
int BN_mod_exp_mont(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                    const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_mod_exp_mont_consttime(BIGNUM *rr, const BIGNUM *a, const BIGNUM *p,
                              const BIGNUM *m, BN_CTX *ctx,
                              BN_MONT_CTX *in_mont);
int BN_mod_exp_mont_word(BIGNUM *r, unsigned long a, const BIGNUM *p,
                         const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_mod_exp2_mont(BIGNUM *r, const BIGNUM *a1, const BIGNUM *p1,
                     const BIGNUM *a2, const BIGNUM *p2, const BIGNUM *m,
                     BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_mod_exp_simple(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                      const BIGNUM *m, BN_CTX *ctx);
int BN_mod_exp_mont_consttime_x2(BIGNUM *rr1, const BIGNUM *a1, const BIGNUM *p1,
                                 const BIGNUM *m1, BN_MONT_CTX *in_mont1,
                                 BIGNUM *rr2, const BIGNUM *a2, const BIGNUM *p2,
                                 const BIGNUM *m2, BN_MONT_CTX *in_mont2,
                                 BN_CTX *ctx);

int BN_mask_bits(BIGNUM *a, int n);

int BN_print_fp(FILE *fp, const BIGNUM *a);

int BN_print(BIO *bio, const BIGNUM *a);
int BN_reciprocal(BIGNUM *r, const BIGNUM *m, int len, BN_CTX *ctx);
int BN_rshift(BIGNUM *r, const BIGNUM *a, int n);
int BN_rshift1(BIGNUM *r, const BIGNUM *a);
void BN_clear(BIGNUM *a);
BIGNUM *BN_dup(const BIGNUM *a);
int BN_ucmp(const BIGNUM *a, const BIGNUM *b);
int BN_set_bit(BIGNUM *a, int n);
int BN_clear_bit(BIGNUM *a, int n);
char *BN_bn2hex(const BIGNUM *a);
char *BN_bn2dec(const BIGNUM *a);
int BN_hex2bn(BIGNUM **a, const char *str);
int BN_dec2bn(BIGNUM **a, const char *str);
int BN_asc2bn(BIGNUM **a, const char *str);
int BN_gcd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
int BN_kronecker(const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);


int BN_are_coprime(BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
BIGNUM *BN_mod_inverse(BIGNUM *ret,
                       const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx);
BIGNUM *BN_mod_sqrt(BIGNUM *ret,
                    const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx);

void BN_consttime_swap(unsigned long swap, BIGNUM *a, BIGNUM *b, int nwords);



extern
BIGNUM *BN_generate_prime(BIGNUM *ret, int bits, int safe,
                          const BIGNUM *add, const BIGNUM *rem,
                          void (*callback) (int, int, void *),
                          void *cb_arg);
extern
int BN_is_prime(const BIGNUM *p, int nchecks,
                void (*callback) (int, int, void *),
                BN_CTX *ctx, void *cb_arg);
extern
int BN_is_prime_fasttest(const BIGNUM *p, int nchecks,
                         void (*callback) (int, int, void *),
                         BN_CTX *ctx, void *cb_arg,
                         int do_trial_division);


extern
int BN_is_prime_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx, BN_GENCB *cb);
extern
int BN_is_prime_fasttest_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx,
                            int do_trial_division, BN_GENCB *cb);


int BN_generate_prime_ex2(BIGNUM *ret, int bits, int safe,
                          const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb,
                          BN_CTX *ctx);
int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe, const BIGNUM *add,
                         const BIGNUM *rem, BN_GENCB *cb);
int BN_check_prime(const BIGNUM *p, BN_CTX *ctx, BN_GENCB *cb);


extern
int BN_X931_generate_Xpq(BIGNUM *Xp, BIGNUM *Xq, int nbits, BN_CTX *ctx);

extern
int BN_X931_derive_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
                            const BIGNUM *Xp, const BIGNUM *Xp1,
                            const BIGNUM *Xp2, const BIGNUM *e, BN_CTX *ctx,
                            BN_GENCB *cb);
extern
int BN_X931_generate_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2, BIGNUM *Xp1,
                              BIGNUM *Xp2, const BIGNUM *Xp, const BIGNUM *e,
                              BN_CTX *ctx, BN_GENCB *cb);


BN_MONT_CTX *BN_MONT_CTX_new(void);
int BN_mod_mul_montgomery(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                          BN_MONT_CTX *mont, BN_CTX *ctx);
int BN_to_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont,
                     BN_CTX *ctx);
int BN_from_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont,
                       BN_CTX *ctx);
void BN_MONT_CTX_free(BN_MONT_CTX *mont);
int BN_MONT_CTX_set(BN_MONT_CTX *mont, const BIGNUM *mod, BN_CTX *ctx);
BN_MONT_CTX *BN_MONT_CTX_copy(BN_MONT_CTX *to, BN_MONT_CTX *from);
BN_MONT_CTX *BN_MONT_CTX_set_locked(BN_MONT_CTX **pmont, CRYPTO_RWLOCK *lock,
                                    const BIGNUM *mod, BN_CTX *ctx);





BN_BLINDING *BN_BLINDING_new(const BIGNUM *A, const BIGNUM *Ai, BIGNUM *mod);
void BN_BLINDING_free(BN_BLINDING *b);
int BN_BLINDING_update(BN_BLINDING *b, BN_CTX *ctx);
int BN_BLINDING_convert(BIGNUM *n, BN_BLINDING *b, BN_CTX *ctx);
int BN_BLINDING_invert(BIGNUM *n, BN_BLINDING *b, BN_CTX *ctx);
int BN_BLINDING_convert_ex(BIGNUM *n, BIGNUM *r, BN_BLINDING *b, BN_CTX *);
int BN_BLINDING_invert_ex(BIGNUM *n, const BIGNUM *r, BN_BLINDING *b,
                          BN_CTX *);

int BN_BLINDING_is_current_thread(BN_BLINDING *b);
void BN_BLINDING_set_current_thread(BN_BLINDING *b);
int BN_BLINDING_lock(BN_BLINDING *b);
int BN_BLINDING_unlock(BN_BLINDING *b);

unsigned long BN_BLINDING_get_flags(const BN_BLINDING *);
void BN_BLINDING_set_flags(BN_BLINDING *, unsigned long);
BN_BLINDING *BN_BLINDING_create_param(BN_BLINDING *b,
                                      const BIGNUM *e, BIGNUM *m, BN_CTX *ctx,
                                      int (*bn_mod_exp) (BIGNUM *r,
                                                         const BIGNUM *a,
                                                         const BIGNUM *p,
                                                         const BIGNUM *m,
                                                         BN_CTX *ctx,
                                                         BN_MONT_CTX *m_ctx),
                                      BN_MONT_CTX *m_ctx);

extern
void BN_set_params(int mul, int high, int low, int mont);
extern
int BN_get_params(int which);


BN_RECP_CTX *BN_RECP_CTX_new(void);
void BN_RECP_CTX_free(BN_RECP_CTX *recp);
int BN_RECP_CTX_set(BN_RECP_CTX *recp, const BIGNUM *rdiv, BN_CTX *ctx);
int BN_mod_mul_reciprocal(BIGNUM *r, const BIGNUM *x, const BIGNUM *y,
                          BN_RECP_CTX *recp, BN_CTX *ctx);
int BN_mod_exp_recp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                    const BIGNUM *m, BN_CTX *ctx);
int BN_div_recp(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m,
                BN_RECP_CTX *recp, BN_CTX *ctx);
# 479 "../include/openssl/bn.h"
int BN_GF2m_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);




int BN_GF2m_mod(BIGNUM *r, const BIGNUM *a, const BIGNUM *p);

int BN_GF2m_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                    const BIGNUM *p, BN_CTX *ctx);

int BN_GF2m_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);

int BN_GF2m_mod_inv(BIGNUM *r, const BIGNUM *b, const BIGNUM *p, BN_CTX *ctx);

int BN_GF2m_mod_div(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                    const BIGNUM *p, BN_CTX *ctx);

int BN_GF2m_mod_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                    const BIGNUM *p, BN_CTX *ctx);

int BN_GF2m_mod_sqrt(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                     BN_CTX *ctx);

int BN_GF2m_mod_solve_quad(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                           BN_CTX *ctx);
# 512 "../include/openssl/bn.h"
int BN_GF2m_mod_arr(BIGNUM *r, const BIGNUM *a, const int p[]);

int BN_GF2m_mod_mul_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                        const int p[], BN_CTX *ctx);

int BN_GF2m_mod_sqr_arr(BIGNUM *r, const BIGNUM *a, const int p[],
                        BN_CTX *ctx);

int BN_GF2m_mod_inv_arr(BIGNUM *r, const BIGNUM *b, const int p[],
                        BN_CTX *ctx);

int BN_GF2m_mod_div_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                        const int p[], BN_CTX *ctx);

int BN_GF2m_mod_exp_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                        const int p[], BN_CTX *ctx);

int BN_GF2m_mod_sqrt_arr(BIGNUM *r, const BIGNUM *a,
                         const int p[], BN_CTX *ctx);

int BN_GF2m_mod_solve_quad_arr(BIGNUM *r, const BIGNUM *a,
                               const int p[], BN_CTX *ctx);
int BN_GF2m_poly2arr(const BIGNUM *a, int p[], int max);
int BN_GF2m_arr2poly(const int p[], BIGNUM *a);






int BN_nist_mod_192(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_224(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_256(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_384(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_521(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);

const BIGNUM *BN_get0_nist_prime_192(void);
const BIGNUM *BN_get0_nist_prime_224(void);
const BIGNUM *BN_get0_nist_prime_256(void);
const BIGNUM *BN_get0_nist_prime_384(void);
const BIGNUM *BN_get0_nist_prime_521(void);

int (*BN_nist_mod_func(const BIGNUM *p)) (BIGNUM *r, const BIGNUM *a,
                                          const BIGNUM *field, BN_CTX *ctx);

int BN_generate_dsa_nonce(BIGNUM *out, const BIGNUM *range,
                          const BIGNUM *priv, const unsigned char *message,
                          size_t message_len, BN_CTX *ctx);


BIGNUM *BN_get_rfc2409_prime_768(BIGNUM *bn);
BIGNUM *BN_get_rfc2409_prime_1024(BIGNUM *bn);


BIGNUM *BN_get_rfc3526_prime_1536(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_2048(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_3072(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_4096(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_6144(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_8192(BIGNUM *bn);
# 584 "../include/openssl/bn.h"
int BN_bntest_rand(BIGNUM *rnd, int bits, int top, int bottom);
# 37 "include/openssl/asn1.h" 2
# 132 "include/openssl/asn1.h"
struct stack_st_X509_ALGOR; typedef int (*sk_X509_ALGOR_compfunc)(const X509_ALGOR * const *a, const X509_ALGOR *const *b); typedef void (*sk_X509_ALGOR_freefunc)(X509_ALGOR *a); typedef X509_ALGOR * (*sk_X509_ALGOR_copyfunc)(const X509_ALGOR *a); static __attribute__((unused)) inline X509_ALGOR *ossl_check_X509_ALGOR_type(X509_ALGOR *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_ALGOR_sk_type(const struct stack_st_X509_ALGOR *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_ALGOR_sk_type(struct stack_st_X509_ALGOR *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_ALGOR_compfunc_type(sk_X509_ALGOR_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_ALGOR_copyfunc_type(sk_X509_ALGOR_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_ALGOR_freefunc_type(sk_X509_ALGOR_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 186 "include/openssl/asn1.h"
struct asn1_string_st {
    int length;
    int type;
    unsigned char *data;





    long flags;
};







typedef struct ASN1_ENCODING_st {
    unsigned char *enc;
    long len;
    int modified;
} ASN1_ENCODING;
# 226 "include/openssl/asn1.h"
struct asn1_string_table_st {
    int nid;
    long minsize;
    long maxsize;
    unsigned long mask;
    unsigned long flags;
};

struct stack_st_ASN1_STRING_TABLE; typedef int (*sk_ASN1_STRING_TABLE_compfunc)(const ASN1_STRING_TABLE * const *a, const ASN1_STRING_TABLE *const *b); typedef void (*sk_ASN1_STRING_TABLE_freefunc)(ASN1_STRING_TABLE *a); typedef ASN1_STRING_TABLE * (*sk_ASN1_STRING_TABLE_copyfunc)(const ASN1_STRING_TABLE *a); static __attribute__((unused)) inline ASN1_STRING_TABLE *ossl_check_ASN1_STRING_TABLE_type(ASN1_STRING_TABLE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_STRING_TABLE_sk_type(const struct stack_st_ASN1_STRING_TABLE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_STRING_TABLE_sk_type(struct stack_st_ASN1_STRING_TABLE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_STRING_TABLE_compfunc_type(sk_ASN1_STRING_TABLE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_STRING_TABLE_copyfunc_type(sk_ASN1_STRING_TABLE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_STRING_TABLE_freefunc_type(sk_ASN1_STRING_TABLE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 276 "include/openssl/asn1.h"
typedef struct ASN1_TEMPLATE_st ASN1_TEMPLATE;
typedef struct ASN1_TLC_st ASN1_TLC;

typedef struct ASN1_VALUE_st ASN1_VALUE;
# 372 "include/openssl/asn1.h"
typedef void *d2i_of_void(void **, const unsigned char **, long);
typedef int i2d_of_void(const void *, unsigned char **);
# 418 "include/openssl/asn1.h"
typedef const ASN1_ITEM *ASN1_ITEM_EXP (void);
# 523 "include/openssl/asn1.h"
struct asn1_type_st {
    int type;
    union {
        char *ptr;
        ASN1_BOOLEAN boolean;
        ASN1_STRING *asn1_string;
        ASN1_OBJECT *object;
        ASN1_INTEGER *integer;
        ASN1_ENUMERATED *enumerated;
        ASN1_BIT_STRING *bit_string;
        ASN1_OCTET_STRING *octet_string;
        ASN1_PRINTABLESTRING *printablestring;
        ASN1_T61STRING *t61string;
        ASN1_IA5STRING *ia5string;
        ASN1_GENERALSTRING *generalstring;
        ASN1_BMPSTRING *bmpstring;
        ASN1_UNIVERSALSTRING *universalstring;
        ASN1_UTCTIME *utctime;
        ASN1_GENERALIZEDTIME *generalizedtime;
        ASN1_VISIBLESTRING *visiblestring;
        ASN1_UTF8STRING *utf8string;




        ASN1_STRING *set;
        ASN1_STRING *sequence;
        ASN1_VALUE *asn1_value;
    } value;
};

struct stack_st_ASN1_TYPE; typedef int (*sk_ASN1_TYPE_compfunc)(const ASN1_TYPE * const *a, const ASN1_TYPE *const *b); typedef void (*sk_ASN1_TYPE_freefunc)(ASN1_TYPE *a); typedef ASN1_TYPE * (*sk_ASN1_TYPE_copyfunc)(const ASN1_TYPE *a); static __attribute__((unused)) inline ASN1_TYPE *ossl_check_ASN1_TYPE_type(ASN1_TYPE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_TYPE_sk_type(const struct stack_st_ASN1_TYPE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_TYPE_sk_type(struct stack_st_ASN1_TYPE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_TYPE_compfunc_type(sk_ASN1_TYPE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_TYPE_copyfunc_type(sk_ASN1_TYPE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_TYPE_freefunc_type(sk_ASN1_TYPE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 582 "include/openssl/asn1.h"
typedef struct stack_st_ASN1_TYPE ASN1_SEQUENCE_ANY;

extern ASN1_SEQUENCE_ANY *d2i_ASN1_SEQUENCE_ANY(ASN1_SEQUENCE_ANY **a, const unsigned char **in, long len); extern int i2d_ASN1_SEQUENCE_ANY(const ASN1_SEQUENCE_ANY *a, unsigned char **out); extern const ASN1_ITEM * ASN1_SEQUENCE_ANY_it(void);
extern ASN1_SEQUENCE_ANY *d2i_ASN1_SET_ANY(ASN1_SEQUENCE_ANY **a, const unsigned char **in, long len); extern int i2d_ASN1_SET_ANY(const ASN1_SEQUENCE_ANY *a, unsigned char **out); extern const ASN1_ITEM * ASN1_SET_ANY_it(void);


typedef struct BIT_STRING_BITNAME_st {
    int bitnum;
    const char *lname;
    const char *sname;
} BIT_STRING_BITNAME;
# 623 "include/openssl/asn1.h"
extern ASN1_TYPE *ASN1_TYPE_new(void); extern void ASN1_TYPE_free(ASN1_TYPE *a);
extern ASN1_TYPE *d2i_ASN1_TYPE(ASN1_TYPE **a, const unsigned char **in, long len); extern int i2d_ASN1_TYPE(const ASN1_TYPE *a, unsigned char **out); extern const ASN1_ITEM * ASN1_ANY_it(void);

int ASN1_TYPE_get(const ASN1_TYPE *a);
void ASN1_TYPE_set(ASN1_TYPE *a, int type, void *value);
int ASN1_TYPE_set1(ASN1_TYPE *a, int type, const void *value);
int ASN1_TYPE_cmp(const ASN1_TYPE *a, const ASN1_TYPE *b);

ASN1_TYPE *ASN1_TYPE_pack_sequence(const ASN1_ITEM *it, void *s, ASN1_TYPE **t);
void *ASN1_TYPE_unpack_sequence(const ASN1_ITEM *it, const ASN1_TYPE *t);

struct stack_st_ASN1_OBJECT; typedef int (*sk_ASN1_OBJECT_compfunc)(const ASN1_OBJECT * const *a, const ASN1_OBJECT *const *b); typedef void (*sk_ASN1_OBJECT_freefunc)(ASN1_OBJECT *a); typedef ASN1_OBJECT * (*sk_ASN1_OBJECT_copyfunc)(const ASN1_OBJECT *a); static __attribute__((unused)) inline ASN1_OBJECT *ossl_check_ASN1_OBJECT_type(ASN1_OBJECT *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_OBJECT_sk_type(const struct stack_st_ASN1_OBJECT *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_OBJECT_sk_type(struct stack_st_ASN1_OBJECT *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_OBJECT_compfunc_type(sk_ASN1_OBJECT_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_OBJECT_copyfunc_type(sk_ASN1_OBJECT_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_OBJECT_freefunc_type(sk_ASN1_OBJECT_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 662 "include/openssl/asn1.h"
extern ASN1_OBJECT *ASN1_OBJECT_new(void); extern void ASN1_OBJECT_free(ASN1_OBJECT *a); extern ASN1_OBJECT *d2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned char **in, long len); extern int i2d_ASN1_OBJECT(const ASN1_OBJECT *a, unsigned char **out); extern const ASN1_ITEM * ASN1_OBJECT_it(void);

ASN1_STRING *ASN1_STRING_new(void);
void ASN1_STRING_free(ASN1_STRING *a);
void ASN1_STRING_clear_free(ASN1_STRING *a);
int ASN1_STRING_copy(ASN1_STRING *dst, const ASN1_STRING *str);
extern ASN1_STRING *ASN1_STRING_dup(const ASN1_STRING *a);
ASN1_STRING *ASN1_STRING_type_new(int type);
int ASN1_STRING_cmp(const ASN1_STRING *a, const ASN1_STRING *b);




int ASN1_STRING_set(ASN1_STRING *str, const void *data, int len);
void ASN1_STRING_set0(ASN1_STRING *str, void *data, int len);
int ASN1_STRING_length(const ASN1_STRING *x);

extern void ASN1_STRING_length_set(ASN1_STRING *x, int n);

int ASN1_STRING_type(const ASN1_STRING *x);

extern unsigned char *ASN1_STRING_data(ASN1_STRING *x);

const unsigned char *ASN1_STRING_get0_data(const ASN1_STRING *x);

extern ASN1_BIT_STRING *ASN1_BIT_STRING_new(void); extern void ASN1_BIT_STRING_free(ASN1_BIT_STRING *a); extern ASN1_BIT_STRING *d2i_ASN1_BIT_STRING(ASN1_BIT_STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_BIT_STRING(const ASN1_BIT_STRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_BIT_STRING_it(void);
int ASN1_BIT_STRING_set(ASN1_BIT_STRING *a, unsigned char *d, int length);
int ASN1_BIT_STRING_set_bit(ASN1_BIT_STRING *a, int n, int value);
int ASN1_BIT_STRING_get_bit(const ASN1_BIT_STRING *a, int n);
int ASN1_BIT_STRING_check(const ASN1_BIT_STRING *a,
                          const unsigned char *flags, int flags_len);

int ASN1_BIT_STRING_name_print(BIO *out, ASN1_BIT_STRING *bs,
                               BIT_STRING_BITNAME *tbl, int indent);
int ASN1_BIT_STRING_num_asc(const char *name, BIT_STRING_BITNAME *tbl);
int ASN1_BIT_STRING_set_asc(ASN1_BIT_STRING *bs, const char *name, int value,
                            BIT_STRING_BITNAME *tbl);

struct stack_st_ASN1_INTEGER; typedef int (*sk_ASN1_INTEGER_compfunc)(const ASN1_INTEGER * const *a, const ASN1_INTEGER *const *b); typedef void (*sk_ASN1_INTEGER_freefunc)(ASN1_INTEGER *a); typedef ASN1_INTEGER * (*sk_ASN1_INTEGER_copyfunc)(const ASN1_INTEGER *a); static __attribute__((unused)) inline ASN1_INTEGER *ossl_check_ASN1_INTEGER_type(ASN1_INTEGER *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_INTEGER_sk_type(const struct stack_st_ASN1_INTEGER *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_INTEGER_sk_type(struct stack_st_ASN1_INTEGER *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_INTEGER_compfunc_type(sk_ASN1_INTEGER_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_INTEGER_copyfunc_type(sk_ASN1_INTEGER_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_INTEGER_freefunc_type(sk_ASN1_INTEGER_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 729 "include/openssl/asn1.h"
extern ASN1_INTEGER *ASN1_INTEGER_new(void); extern void ASN1_INTEGER_free(ASN1_INTEGER *a); extern ASN1_INTEGER *d2i_ASN1_INTEGER(ASN1_INTEGER **a, const unsigned char **in, long len); extern int i2d_ASN1_INTEGER(const ASN1_INTEGER *a, unsigned char **out); extern const ASN1_ITEM * ASN1_INTEGER_it(void);
ASN1_INTEGER *d2i_ASN1_UINTEGER(ASN1_INTEGER **a, const unsigned char **pp,
                                long length);
extern ASN1_INTEGER *ASN1_INTEGER_dup(const ASN1_INTEGER *a);
int ASN1_INTEGER_cmp(const ASN1_INTEGER *x, const ASN1_INTEGER *y);

extern ASN1_ENUMERATED *ASN1_ENUMERATED_new(void); extern void ASN1_ENUMERATED_free(ASN1_ENUMERATED *a); extern ASN1_ENUMERATED *d2i_ASN1_ENUMERATED(ASN1_ENUMERATED **a, const unsigned char **in, long len); extern int i2d_ASN1_ENUMERATED(const ASN1_ENUMERATED *a, unsigned char **out); extern const ASN1_ITEM * ASN1_ENUMERATED_it(void);

int ASN1_UTCTIME_check(const ASN1_UTCTIME *a);
ASN1_UTCTIME *ASN1_UTCTIME_set(ASN1_UTCTIME *s, time_t t);
ASN1_UTCTIME *ASN1_UTCTIME_adj(ASN1_UTCTIME *s, time_t t,
                               int offset_day, long offset_sec);
int ASN1_UTCTIME_set_string(ASN1_UTCTIME *s, const char *str);
int ASN1_UTCTIME_cmp_time_t(const ASN1_UTCTIME *s, time_t t);

int ASN1_GENERALIZEDTIME_check(const ASN1_GENERALIZEDTIME *a);
ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_set(ASN1_GENERALIZEDTIME *s,
                                               time_t t);
ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_adj(ASN1_GENERALIZEDTIME *s,
                                               time_t t, int offset_day,
                                               long offset_sec);
int ASN1_GENERALIZEDTIME_set_string(ASN1_GENERALIZEDTIME *s, const char *str);

int ASN1_TIME_diff(int *pday, int *psec,
                   const ASN1_TIME *from, const ASN1_TIME *to);

extern ASN1_OCTET_STRING *ASN1_OCTET_STRING_new(void); extern void ASN1_OCTET_STRING_free(ASN1_OCTET_STRING *a); extern ASN1_OCTET_STRING *d2i_ASN1_OCTET_STRING(ASN1_OCTET_STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_OCTET_STRING(const ASN1_OCTET_STRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_OCTET_STRING_it(void);
extern ASN1_OCTET_STRING *ASN1_OCTET_STRING_dup(const ASN1_OCTET_STRING *a);
int ASN1_OCTET_STRING_cmp(const ASN1_OCTET_STRING *a,
                          const ASN1_OCTET_STRING *b);
int ASN1_OCTET_STRING_set(ASN1_OCTET_STRING *str, const unsigned char *data,
                          int len);

struct stack_st_ASN1_UTF8STRING; typedef int (*sk_ASN1_UTF8STRING_compfunc)(const ASN1_UTF8STRING * const *a, const ASN1_UTF8STRING *const *b); typedef void (*sk_ASN1_UTF8STRING_freefunc)(ASN1_UTF8STRING *a); typedef ASN1_UTF8STRING * (*sk_ASN1_UTF8STRING_copyfunc)(const ASN1_UTF8STRING *a); static __attribute__((unused)) inline ASN1_UTF8STRING *ossl_check_ASN1_UTF8STRING_type(ASN1_UTF8STRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_UTF8STRING_sk_type(const struct stack_st_ASN1_UTF8STRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_UTF8STRING_sk_type(struct stack_st_ASN1_UTF8STRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_UTF8STRING_compfunc_type(sk_ASN1_UTF8STRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_UTF8STRING_copyfunc_type(sk_ASN1_UTF8STRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_UTF8STRING_freefunc_type(sk_ASN1_UTF8STRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 790 "include/openssl/asn1.h"
extern ASN1_VISIBLESTRING *ASN1_VISIBLESTRING_new(void); extern void ASN1_VISIBLESTRING_free(ASN1_VISIBLESTRING *a); extern ASN1_VISIBLESTRING *d2i_ASN1_VISIBLESTRING(ASN1_VISIBLESTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_VISIBLESTRING(const ASN1_VISIBLESTRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_VISIBLESTRING_it(void);
extern ASN1_UNIVERSALSTRING *ASN1_UNIVERSALSTRING_new(void); extern void ASN1_UNIVERSALSTRING_free(ASN1_UNIVERSALSTRING *a); extern ASN1_UNIVERSALSTRING *d2i_ASN1_UNIVERSALSTRING(ASN1_UNIVERSALSTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_UNIVERSALSTRING(const ASN1_UNIVERSALSTRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_UNIVERSALSTRING_it(void);
extern ASN1_UTF8STRING *ASN1_UTF8STRING_new(void); extern void ASN1_UTF8STRING_free(ASN1_UTF8STRING *a); extern ASN1_UTF8STRING *d2i_ASN1_UTF8STRING(ASN1_UTF8STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_UTF8STRING(const ASN1_UTF8STRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_UTF8STRING_it(void);
extern ASN1_NULL *ASN1_NULL_new(void); extern void ASN1_NULL_free(ASN1_NULL *a); extern ASN1_NULL *d2i_ASN1_NULL(ASN1_NULL **a, const unsigned char **in, long len); extern int i2d_ASN1_NULL(const ASN1_NULL *a, unsigned char **out); extern const ASN1_ITEM * ASN1_NULL_it(void);
extern ASN1_BMPSTRING *ASN1_BMPSTRING_new(void); extern void ASN1_BMPSTRING_free(ASN1_BMPSTRING *a); extern ASN1_BMPSTRING *d2i_ASN1_BMPSTRING(ASN1_BMPSTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_BMPSTRING(const ASN1_BMPSTRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_BMPSTRING_it(void);

int UTF8_getc(const unsigned char *str, int len, unsigned long *val);
int UTF8_putc(unsigned char *str, int len, unsigned long value);

struct stack_st_ASN1_GENERALSTRING; typedef int (*sk_ASN1_GENERALSTRING_compfunc)(const ASN1_GENERALSTRING * const *a, const ASN1_GENERALSTRING *const *b); typedef void (*sk_ASN1_GENERALSTRING_freefunc)(ASN1_GENERALSTRING *a); typedef ASN1_GENERALSTRING * (*sk_ASN1_GENERALSTRING_copyfunc)(const ASN1_GENERALSTRING *a); static __attribute__((unused)) inline ASN1_GENERALSTRING *ossl_check_ASN1_GENERALSTRING_type(ASN1_GENERALSTRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_GENERALSTRING_sk_type(const struct stack_st_ASN1_GENERALSTRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_GENERALSTRING_sk_type(struct stack_st_ASN1_GENERALSTRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_GENERALSTRING_compfunc_type(sk_ASN1_GENERALSTRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_GENERALSTRING_copyfunc_type(sk_ASN1_GENERALSTRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_GENERALSTRING_freefunc_type(sk_ASN1_GENERALSTRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
# 827 "include/openssl/asn1.h"
extern ASN1_STRING *ASN1_PRINTABLE_new(void); extern void ASN1_PRINTABLE_free(ASN1_STRING *a); extern ASN1_STRING *d2i_ASN1_PRINTABLE(ASN1_STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_PRINTABLE(const ASN1_STRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_PRINTABLE_it(void);

extern ASN1_STRING *DIRECTORYSTRING_new(void); extern void DIRECTORYSTRING_free(ASN1_STRING *a); extern ASN1_STRING *d2i_DIRECTORYSTRING(ASN1_STRING **a, const unsigned char **in, long len); extern int i2d_DIRECTORYSTRING(const ASN1_STRING *a, unsigned char **out); extern const ASN1_ITEM * DIRECTORYSTRING_it(void);
extern ASN1_STRING *DISPLAYTEXT_new(void); extern void DISPLAYTEXT_free(ASN1_STRING *a); extern ASN1_STRING *d2i_DISPLAYTEXT(ASN1_STRING **a, const unsigned char **in, long len); extern int i2d_DISPLAYTEXT(const ASN1_STRING *a, unsigned char **out); extern const ASN1_ITEM * DISPLAYTEXT_it(void);
extern ASN1_PRINTABLESTRING *ASN1_PRINTABLESTRING_new(void); extern void ASN1_PRINTABLESTRING_free(ASN1_PRINTABLESTRING *a); extern ASN1_PRINTABLESTRING *d2i_ASN1_PRINTABLESTRING(ASN1_PRINTABLESTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_PRINTABLESTRING(const ASN1_PRINTABLESTRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_PRINTABLESTRING_it(void);
extern ASN1_T61STRING *ASN1_T61STRING_new(void); extern void ASN1_T61STRING_free(ASN1_T61STRING *a); extern ASN1_T61STRING *d2i_ASN1_T61STRING(ASN1_T61STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_T61STRING(const ASN1_T61STRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_T61STRING_it(void);
extern ASN1_IA5STRING *ASN1_IA5STRING_new(void); extern void ASN1_IA5STRING_free(ASN1_IA5STRING *a); extern ASN1_IA5STRING *d2i_ASN1_IA5STRING(ASN1_IA5STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_IA5STRING(const ASN1_IA5STRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_IA5STRING_it(void);
extern ASN1_GENERALSTRING *ASN1_GENERALSTRING_new(void); extern void ASN1_GENERALSTRING_free(ASN1_GENERALSTRING *a); extern ASN1_GENERALSTRING *d2i_ASN1_GENERALSTRING(ASN1_GENERALSTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_GENERALSTRING(const ASN1_GENERALSTRING *a, unsigned char **out); extern const ASN1_ITEM * ASN1_GENERALSTRING_it(void);
extern ASN1_UTCTIME *ASN1_UTCTIME_new(void); extern void ASN1_UTCTIME_free(ASN1_UTCTIME *a); extern ASN1_UTCTIME *d2i_ASN1_UTCTIME(ASN1_UTCTIME **a, const unsigned char **in, long len); extern int i2d_ASN1_UTCTIME(const ASN1_UTCTIME *a, unsigned char **out); extern const ASN1_ITEM * ASN1_UTCTIME_it(void);
extern ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_new(void); extern void ASN1_GENERALIZEDTIME_free(ASN1_GENERALIZEDTIME *a); extern ASN1_GENERALIZEDTIME *d2i_ASN1_GENERALIZEDTIME(ASN1_GENERALIZEDTIME **a, const unsigned char **in, long len); extern int i2d_ASN1_GENERALIZEDTIME(const ASN1_GENERALIZEDTIME *a, unsigned char **out); extern const ASN1_ITEM * ASN1_GENERALIZEDTIME_it(void);
extern ASN1_TIME *ASN1_TIME_new(void); extern void ASN1_TIME_free(ASN1_TIME *a); extern ASN1_TIME *d2i_ASN1_TIME(ASN1_TIME **a, const unsigned char **in, long len); extern int i2d_ASN1_TIME(const ASN1_TIME *a, unsigned char **out); extern const ASN1_ITEM * ASN1_TIME_it(void);

extern ASN1_TIME *ASN1_TIME_dup(const ASN1_TIME *a);
extern ASN1_UTCTIME *ASN1_UTCTIME_dup(const ASN1_UTCTIME *a);
extern ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_dup(const ASN1_GENERALIZEDTIME *a);

extern const ASN1_ITEM * ASN1_OCTET_STRING_NDEF_it(void);

ASN1_TIME *ASN1_TIME_set(ASN1_TIME *s, time_t t);
ASN1_TIME *ASN1_TIME_adj(ASN1_TIME *s, time_t t,
                         int offset_day, long offset_sec);
int ASN1_TIME_check(const ASN1_TIME *t);
ASN1_GENERALIZEDTIME *ASN1_TIME_to_generalizedtime(const ASN1_TIME *t,
                                                   ASN1_GENERALIZEDTIME **out);
int ASN1_TIME_set_string(ASN1_TIME *s, const char *str);
int ASN1_TIME_set_string_X509(ASN1_TIME *s, const char *str);
int ASN1_TIME_to_tm(const ASN1_TIME *s, struct tm *tm);
int ASN1_TIME_normalize(ASN1_TIME *s);
int ASN1_TIME_cmp_time_t(const ASN1_TIME *s, time_t t);
int ASN1_TIME_compare(const ASN1_TIME *a, const ASN1_TIME *b);

int i2a_ASN1_INTEGER(BIO *bp, const ASN1_INTEGER *a);
int a2i_ASN1_INTEGER(BIO *bp, ASN1_INTEGER *bs, char *buf, int size);
int i2a_ASN1_ENUMERATED(BIO *bp, const ASN1_ENUMERATED *a);
int a2i_ASN1_ENUMERATED(BIO *bp, ASN1_ENUMERATED *bs, char *buf, int size);
int i2a_ASN1_OBJECT(BIO *bp, const ASN1_OBJECT *a);
int a2i_ASN1_STRING(BIO *bp, ASN1_STRING *bs, char *buf, int size);
int i2a_ASN1_STRING(BIO *bp, const ASN1_STRING *a, int type);
int i2t_ASN1_OBJECT(char *buf, int buf_len, const ASN1_OBJECT *a);

int a2d_ASN1_OBJECT(unsigned char *out, int olen, const char *buf, int num);
ASN1_OBJECT *ASN1_OBJECT_create(int nid, unsigned char *data, int len,
                                const char *sn, const char *ln);

int ASN1_INTEGER_get_int64(int64_t *pr, const ASN1_INTEGER *a);
int ASN1_INTEGER_set_int64(ASN1_INTEGER *a, int64_t r);
int ASN1_INTEGER_get_uint64(uint64_t *pr, const ASN1_INTEGER *a);
int ASN1_INTEGER_set_uint64(ASN1_INTEGER *a, uint64_t r);

int ASN1_INTEGER_set(ASN1_INTEGER *a, long v);
long ASN1_INTEGER_get(const ASN1_INTEGER *a);
ASN1_INTEGER *BN_to_ASN1_INTEGER(const BIGNUM *bn, ASN1_INTEGER *ai);
BIGNUM *ASN1_INTEGER_to_BN(const ASN1_INTEGER *ai, BIGNUM *bn);

int ASN1_ENUMERATED_get_int64(int64_t *pr, const ASN1_ENUMERATED *a);
int ASN1_ENUMERATED_set_int64(ASN1_ENUMERATED *a, int64_t r);


int ASN1_ENUMERATED_set(ASN1_ENUMERATED *a, long v);
long ASN1_ENUMERATED_get(const ASN1_ENUMERATED *a);
ASN1_ENUMERATED *BN_to_ASN1_ENUMERATED(const BIGNUM *bn, ASN1_ENUMERATED *ai);
BIGNUM *ASN1_ENUMERATED_to_BN(const ASN1_ENUMERATED *ai, BIGNUM *bn);



int ASN1_PRINTABLE_type(const unsigned char *s, int max);

unsigned long ASN1_tag2bit(int tag);


int ASN1_get_object(const unsigned char **pp, long *plength, int *ptag,
                    int *pclass, long omax);
int ASN1_check_infinite_end(unsigned char **p, long len);
int ASN1_const_check_infinite_end(const unsigned char **p, long len);
void ASN1_put_object(unsigned char **pp, int constructed, int length,
                     int tag, int xclass);
int ASN1_put_eoc(unsigned char **pp);
int ASN1_object_size(int constructed, int length, int tag);


void *ASN1_dup(i2d_of_void *i2d, d2i_of_void *d2i, const void *x);






void *ASN1_item_dup(const ASN1_ITEM *it, const void *x);
int ASN1_item_sign_ex(const ASN1_ITEM *it, X509_ALGOR *algor1,
                      X509_ALGOR *algor2, ASN1_BIT_STRING *signature,
                      const void *data, const ASN1_OCTET_STRING *id,
                      EVP_PKEY *pkey, const EVP_MD *md, OSSL_LIB_CTX *libctx,
                      const char *propq);
int ASN1_item_verify_ex(const ASN1_ITEM *it, const X509_ALGOR *alg,
                        const ASN1_BIT_STRING *signature, const void *data,
                        const ASN1_OCTET_STRING *id, EVP_PKEY *pkey,
                        OSSL_LIB_CTX *libctx, const char *propq);
# 932 "include/openssl/asn1.h"
void *ASN1_d2i_fp(void *(*xnew) (void), d2i_of_void *d2i, FILE *in, void **x);







void *ASN1_item_d2i_fp_ex(const ASN1_ITEM *it, FILE *in, void *x,
                          OSSL_LIB_CTX *libctx, const char *propq);
void *ASN1_item_d2i_fp(const ASN1_ITEM *it, FILE *in, void *x);
int ASN1_i2d_fp(i2d_of_void *i2d, FILE *out, const void *x);






int ASN1_item_i2d_fp(const ASN1_ITEM *it, FILE *out, const void *x);
int ASN1_STRING_print_ex_fp(FILE *fp, const ASN1_STRING *str, unsigned long flags);


int ASN1_STRING_to_UTF8(unsigned char **out, const ASN1_STRING *in);

void *ASN1_d2i_bio(void *(*xnew) (void), d2i_of_void *d2i, BIO *in, void **x);







void *ASN1_item_d2i_bio_ex(const ASN1_ITEM *it, BIO *in, void *pval,
                           OSSL_LIB_CTX *libctx, const char *propq);
void *ASN1_item_d2i_bio(const ASN1_ITEM *it, BIO *in, void *pval);
int ASN1_i2d_bio(i2d_of_void *i2d, BIO *out, const void *x);






int ASN1_item_i2d_bio(const ASN1_ITEM *it, BIO *out, const void *x);
BIO *ASN1_item_i2d_mem_bio(const ASN1_ITEM *it, const ASN1_VALUE *val);
int ASN1_UTCTIME_print(BIO *fp, const ASN1_UTCTIME *a);
int ASN1_GENERALIZEDTIME_print(BIO *fp, const ASN1_GENERALIZEDTIME *a);
int ASN1_TIME_print(BIO *bp, const ASN1_TIME *tm);
int ASN1_TIME_print_ex(BIO *bp, const ASN1_TIME *tm, unsigned long flags);
int ASN1_STRING_print(BIO *bp, const ASN1_STRING *v);
int ASN1_STRING_print_ex(BIO *out, const ASN1_STRING *str, unsigned long flags);
int ASN1_buf_print(BIO *bp, const unsigned char *buf, size_t buflen, int off);
int ASN1_bn_print(BIO *bp, const char *number, const BIGNUM *num,
                  unsigned char *buf, int off);
int ASN1_parse(BIO *bp, const unsigned char *pp, long len, int indent);
int ASN1_parse_dump(BIO *bp, const unsigned char *pp, long len, int indent,
                    int dump);
const char *ASN1_tag2str(int tag);



int ASN1_UNIVERSALSTRING_to_string(ASN1_UNIVERSALSTRING *s);

int ASN1_TYPE_set_octetstring(ASN1_TYPE *a, unsigned char *data, int len);
int ASN1_TYPE_get_octetstring(const ASN1_TYPE *a, unsigned char *data, int max_len);
int ASN1_TYPE_set_int_octetstring(ASN1_TYPE *a, long num,
                                  unsigned char *data, int len);
int ASN1_TYPE_get_int_octetstring(const ASN1_TYPE *a, long *num,
                                  unsigned char *data, int max_len);

void *ASN1_item_unpack(const ASN1_STRING *oct, const ASN1_ITEM *it);
void *ASN1_item_unpack_ex(const ASN1_STRING *oct, const ASN1_ITEM *it,
                          OSSL_LIB_CTX *libctx, const char *propq);

ASN1_STRING *ASN1_item_pack(void *obj, const ASN1_ITEM *it,
                            ASN1_OCTET_STRING **oct);

void ASN1_STRING_set_default_mask(unsigned long mask);
int ASN1_STRING_set_default_mask_asc(const char *p);
unsigned long ASN1_STRING_get_default_mask(void);
int ASN1_mbstring_copy(ASN1_STRING **out, const unsigned char *in, int len,
                       int inform, unsigned long mask);
int ASN1_mbstring_ncopy(ASN1_STRING **out, const unsigned char *in, int len,
                        int inform, unsigned long mask,
                        long minsize, long maxsize);

ASN1_STRING *ASN1_STRING_set_by_NID(ASN1_STRING **out,
                                    const unsigned char *in, int inlen,
                                    int inform, int nid);
ASN1_STRING_TABLE *ASN1_STRING_TABLE_get(int nid);
int ASN1_STRING_TABLE_add(int, long, long, unsigned long, unsigned long);
void ASN1_STRING_TABLE_cleanup(void);




ASN1_VALUE *ASN1_item_new(const ASN1_ITEM *it);
ASN1_VALUE *ASN1_item_new_ex(const ASN1_ITEM *it, OSSL_LIB_CTX *libctx,
                             const char *propq);
void ASN1_item_free(ASN1_VALUE *val, const ASN1_ITEM *it);
ASN1_VALUE *ASN1_item_d2i_ex(ASN1_VALUE **val, const unsigned char **in,
                             long len, const ASN1_ITEM *it,
                             OSSL_LIB_CTX *libctx, const char *propq);
ASN1_VALUE *ASN1_item_d2i(ASN1_VALUE **val, const unsigned char **in,
                          long len, const ASN1_ITEM *it);
int ASN1_item_i2d(const ASN1_VALUE *val, unsigned char **out, const ASN1_ITEM *it);
int ASN1_item_ndef_i2d(const ASN1_VALUE *val, unsigned char **out,
                       const ASN1_ITEM *it);

void ASN1_add_oid_module(void);
void ASN1_add_stable_module(void);

ASN1_TYPE *ASN1_generate_nconf(const char *str, CONF *nconf);
ASN1_TYPE *ASN1_generate_v3(const char *str, X509V3_CTX *cnf);
int ASN1_str2mask(const char *str, unsigned long *pmask);
# 1068 "include/openssl/asn1.h"
int ASN1_item_print(BIO *out, const ASN1_VALUE *ifld, int indent,
                    const ASN1_ITEM *it, const ASN1_PCTX *pctx);
ASN1_PCTX *ASN1_PCTX_new(void);
void ASN1_PCTX_free(ASN1_PCTX *p);
unsigned long ASN1_PCTX_get_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_nm_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_nm_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_cert_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_cert_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_oid_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_oid_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_str_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_str_flags(ASN1_PCTX *p, unsigned long flags);

ASN1_SCTX *ASN1_SCTX_new(int (*scan_cb) (ASN1_SCTX *ctx));
void ASN1_SCTX_free(ASN1_SCTX *p);
const ASN1_ITEM *ASN1_SCTX_get_item(ASN1_SCTX *p);
const ASN1_TEMPLATE *ASN1_SCTX_get_template(ASN1_SCTX *p);
unsigned long ASN1_SCTX_get_flags(ASN1_SCTX *p);
void ASN1_SCTX_set_app_data(ASN1_SCTX *p, void *data);
void *ASN1_SCTX_get_app_data(ASN1_SCTX *p);

const BIO_METHOD *BIO_f_asn1(void);


BIO *BIO_new_NDEF(BIO *out, ASN1_VALUE *val, const ASN1_ITEM *it);

int i2d_ASN1_bio_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                        const ASN1_ITEM *it);
int PEM_write_bio_ASN1_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                              const char *hdr, const ASN1_ITEM *it);

int SMIME_write_ASN1(BIO *bio, ASN1_VALUE *val, BIO *data, int flags,
                     int ctype_nid, int econt_nid,
                     struct stack_st_X509_ALGOR *mdalgs, const ASN1_ITEM *it);
int SMIME_write_ASN1_ex(BIO *bio, ASN1_VALUE *val, BIO *data, int flags,
                        int ctype_nid, int econt_nid,
                        struct stack_st_X509_ALGOR *mdalgs, const ASN1_ITEM *it,
                        OSSL_LIB_CTX *libctx, const char *propq);
ASN1_VALUE *SMIME_read_ASN1(BIO *bio, BIO **bcont, const ASN1_ITEM *it);
ASN1_VALUE *SMIME_read_ASN1_ex(BIO *bio, int flags, BIO **bcont,
                               const ASN1_ITEM *it, ASN1_VALUE **x,
                               OSSL_LIB_CTX *libctx, const char *propq);
int SMIME_crlf_copy(BIO *in, BIO *out, int flags);
int SMIME_text(BIO *in, BIO *out);

const ASN1_ITEM *ASN1_ITEM_lookup(const char *name);
const ASN1_ITEM *ASN1_ITEM_get(size_t i);
# 96 "../include/openssl/ec.h" 2




# 1 "../include/openssl/ecerr.h" 1
# 13 "../include/openssl/ecerr.h"
        
# 101 "../include/openssl/ec.h" 2





# 1 "../include/openssl/params.h" 1
# 13 "../include/openssl/params.h"
        
# 71 "../include/openssl/params.h"
OSSL_PARAM *OSSL_PARAM_locate(OSSL_PARAM *p, const char *key);
const OSSL_PARAM *OSSL_PARAM_locate_const(const OSSL_PARAM *p, const char *key);


OSSL_PARAM OSSL_PARAM_construct_int(const char *key, int *buf);
OSSL_PARAM OSSL_PARAM_construct_uint(const char *key, unsigned int *buf);
OSSL_PARAM OSSL_PARAM_construct_long(const char *key, long int *buf);
OSSL_PARAM OSSL_PARAM_construct_ulong(const char *key, unsigned long int *buf);
OSSL_PARAM OSSL_PARAM_construct_int32(const char *key, int32_t *buf);
OSSL_PARAM OSSL_PARAM_construct_uint32(const char *key, uint32_t *buf);
OSSL_PARAM OSSL_PARAM_construct_int64(const char *key, int64_t *buf);
OSSL_PARAM OSSL_PARAM_construct_uint64(const char *key, uint64_t *buf);
OSSL_PARAM OSSL_PARAM_construct_size_t(const char *key, size_t *buf);
OSSL_PARAM OSSL_PARAM_construct_time_t(const char *key, time_t *buf);
OSSL_PARAM OSSL_PARAM_construct_BN(const char *key, unsigned char *buf,
                                   size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_double(const char *key, double *buf);
OSSL_PARAM OSSL_PARAM_construct_utf8_string(const char *key, char *buf,
                                            size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_utf8_ptr(const char *key, char **buf,
                                         size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_octet_string(const char *key, void *buf,
                                             size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_octet_ptr(const char *key, void **buf,
                                          size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_end(void);

int OSSL_PARAM_allocate_from_text(OSSL_PARAM *to,
                                  const OSSL_PARAM *paramdefs,
                                  const char *key, const char *value,
                                  size_t value_n, int *found);

int OSSL_PARAM_get_int(const OSSL_PARAM *p, int *val);
int OSSL_PARAM_get_uint(const OSSL_PARAM *p, unsigned int *val);
int OSSL_PARAM_get_long(const OSSL_PARAM *p, long int *val);
int OSSL_PARAM_get_ulong(const OSSL_PARAM *p, unsigned long int *val);
int OSSL_PARAM_get_int32(const OSSL_PARAM *p, int32_t *val);
int OSSL_PARAM_get_uint32(const OSSL_PARAM *p, uint32_t *val);
int OSSL_PARAM_get_int64(const OSSL_PARAM *p, int64_t *val);
int OSSL_PARAM_get_uint64(const OSSL_PARAM *p, uint64_t *val);
int OSSL_PARAM_get_size_t(const OSSL_PARAM *p, size_t *val);
int OSSL_PARAM_get_time_t(const OSSL_PARAM *p, time_t *val);

int OSSL_PARAM_set_int(OSSL_PARAM *p, int val);
int OSSL_PARAM_set_uint(OSSL_PARAM *p, unsigned int val);
int OSSL_PARAM_set_long(OSSL_PARAM *p, long int val);
int OSSL_PARAM_set_ulong(OSSL_PARAM *p, unsigned long int val);
int OSSL_PARAM_set_int32(OSSL_PARAM *p, int32_t val);
int OSSL_PARAM_set_uint32(OSSL_PARAM *p, uint32_t val);
int OSSL_PARAM_set_int64(OSSL_PARAM *p, int64_t val);
int OSSL_PARAM_set_uint64(OSSL_PARAM *p, uint64_t val);
int OSSL_PARAM_set_size_t(OSSL_PARAM *p, size_t val);
int OSSL_PARAM_set_time_t(OSSL_PARAM *p, time_t val);

int OSSL_PARAM_get_double(const OSSL_PARAM *p, double *val);
int OSSL_PARAM_set_double(OSSL_PARAM *p, double val);

int OSSL_PARAM_get_BN(const OSSL_PARAM *p, BIGNUM **val);
int OSSL_PARAM_set_BN(OSSL_PARAM *p, const BIGNUM *val);

int OSSL_PARAM_get_utf8_string(const OSSL_PARAM *p, char **val, size_t max_len);
int OSSL_PARAM_set_utf8_string(OSSL_PARAM *p, const char *val);

int OSSL_PARAM_get_octet_string(const OSSL_PARAM *p, void **val, size_t max_len,
                                size_t *used_len);
int OSSL_PARAM_set_octet_string(OSSL_PARAM *p, const void *val, size_t len);

int OSSL_PARAM_get_utf8_ptr(const OSSL_PARAM *p, const char **val);
int OSSL_PARAM_set_utf8_ptr(OSSL_PARAM *p, const char *val);

int OSSL_PARAM_get_octet_ptr(const OSSL_PARAM *p, const void **val,
                             size_t *used_len);
int OSSL_PARAM_set_octet_ptr(OSSL_PARAM *p, const void *val,
                             size_t used_len);

int OSSL_PARAM_get_utf8_string_ptr(const OSSL_PARAM *p, const char **val);
int OSSL_PARAM_get_octet_string_ptr(const OSSL_PARAM *p, const void **val,
                                    size_t *used_len);

int OSSL_PARAM_modified(const OSSL_PARAM *p);
void OSSL_PARAM_set_all_unmodified(OSSL_PARAM *p);

OSSL_PARAM *OSSL_PARAM_dup(const OSSL_PARAM *p);
OSSL_PARAM *OSSL_PARAM_merge(const OSSL_PARAM *p1, const OSSL_PARAM *p2);
void OSSL_PARAM_free(OSSL_PARAM *p);
# 107 "../include/openssl/ec.h" 2

typedef struct ec_method_st EC_METHOD;

typedef struct ec_group_st EC_GROUP;
typedef struct ec_point_st EC_POINT;
typedef struct ecpk_parameters_st ECPKPARAMETERS;
typedef struct ec_parameters_st ECPARAMETERS;
# 124 "../include/openssl/ec.h"
extern const EC_METHOD *EC_GFp_simple_method(void);




extern const EC_METHOD *EC_GFp_mont_method(void);




extern const EC_METHOD *EC_GFp_nist_method(void);
# 161 "../include/openssl/ec.h"
extern const EC_METHOD *EC_GF2m_simple_method(void);
# 174 "../include/openssl/ec.h"
extern EC_GROUP *EC_GROUP_new(const EC_METHOD *meth);




extern void EC_GROUP_clear_free(EC_GROUP *group);





extern const EC_METHOD *EC_GROUP_method_of(const EC_GROUP *group);





extern int EC_METHOD_get_field_type(const EC_METHOD *meth);





void EC_GROUP_free(EC_GROUP *group);






int EC_GROUP_copy(EC_GROUP *dst, const EC_GROUP *src);






EC_GROUP *EC_GROUP_dup(const EC_GROUP *src);
# 221 "../include/openssl/ec.h"
int EC_GROUP_set_generator(EC_GROUP *group, const EC_POINT *generator,
                           const BIGNUM *order, const BIGNUM *cofactor);





const EC_POINT *EC_GROUP_get0_generator(const EC_GROUP *group);





BN_MONT_CTX *EC_GROUP_get_mont_data(const EC_GROUP *group);







int EC_GROUP_get_order(const EC_GROUP *group, BIGNUM *order, BN_CTX *ctx);





const BIGNUM *EC_GROUP_get0_order(const EC_GROUP *group);





int EC_GROUP_order_bits(const EC_GROUP *group);







int EC_GROUP_get_cofactor(const EC_GROUP *group, BIGNUM *cofactor,
                          BN_CTX *ctx);





const BIGNUM *EC_GROUP_get0_cofactor(const EC_GROUP *group);





void EC_GROUP_set_curve_name(EC_GROUP *group, int nid);





int EC_GROUP_get_curve_name(const EC_GROUP *group);





const BIGNUM *EC_GROUP_get0_field(const EC_GROUP *group);





int EC_GROUP_get_field_type(const EC_GROUP *group);

void EC_GROUP_set_asn1_flag(EC_GROUP *group, int flag);
int EC_GROUP_get_asn1_flag(const EC_GROUP *group);

void EC_GROUP_set_point_conversion_form(EC_GROUP *group,
                                        point_conversion_form_t form);
point_conversion_form_t EC_GROUP_get_point_conversion_form(const EC_GROUP *);

unsigned char *EC_GROUP_get0_seed(const EC_GROUP *x);
size_t EC_GROUP_get_seed_len(const EC_GROUP *);
size_t EC_GROUP_set_seed(EC_GROUP *, const unsigned char *, size_t len);
# 316 "../include/openssl/ec.h"
int EC_GROUP_set_curve(EC_GROUP *group, const BIGNUM *p, const BIGNUM *a,
                       const BIGNUM *b, BN_CTX *ctx);
# 329 "../include/openssl/ec.h"
int EC_GROUP_get_curve(const EC_GROUP *group, BIGNUM *p, BIGNUM *a, BIGNUM *b,
                       BN_CTX *ctx);
# 342 "../include/openssl/ec.h"
extern int EC_GROUP_set_curve_GFp(EC_GROUP *group,
                                                 const BIGNUM *p,
                                                 const BIGNUM *a,
                                                 const BIGNUM *b,
                                                 BN_CTX *ctx);
# 357 "../include/openssl/ec.h"
extern int EC_GROUP_get_curve_GFp(const EC_GROUP *group,
                                                 BIGNUM *p,
                                                 BIGNUM *a, BIGNUM *b,
                                                 BN_CTX *ctx);
# 372 "../include/openssl/ec.h"
extern int EC_GROUP_set_curve_GF2m(EC_GROUP *group,
                                                  const BIGNUM *p,
                                                  const BIGNUM *a,
                                                  const BIGNUM *b,
                                                  BN_CTX *ctx);
# 387 "../include/openssl/ec.h"
extern int EC_GROUP_get_curve_GF2m(const EC_GROUP *group,
                                                  BIGNUM *p,
                                                  BIGNUM *a, BIGNUM *b,
                                                  BN_CTX *ctx);







int EC_GROUP_get_degree(const EC_GROUP *group);






int EC_GROUP_check(const EC_GROUP *group, BN_CTX *ctx);






int EC_GROUP_check_discriminant(const EC_GROUP *group, BN_CTX *ctx);







int EC_GROUP_cmp(const EC_GROUP *a, const EC_GROUP *b, BN_CTX *ctx);
# 435 "../include/openssl/ec.h"
EC_GROUP *EC_GROUP_new_curve_GFp(const BIGNUM *p, const BIGNUM *a,
                                 const BIGNUM *b, BN_CTX *ctx);
# 446 "../include/openssl/ec.h"
EC_GROUP *EC_GROUP_new_curve_GF2m(const BIGNUM *p, const BIGNUM *a,
                                  const BIGNUM *b, BN_CTX *ctx);
# 460 "../include/openssl/ec.h"
EC_GROUP *EC_GROUP_new_from_params(const OSSL_PARAM params[],
                                   OSSL_LIB_CTX *libctx, const char *propq);
# 476 "../include/openssl/ec.h"
OSSL_PARAM *EC_GROUP_to_params(const EC_GROUP *group, OSSL_LIB_CTX *libctx,
                               const char *propq, BN_CTX *bnctx);
# 488 "../include/openssl/ec.h"
EC_GROUP *EC_GROUP_new_by_curve_name_ex(OSSL_LIB_CTX *libctx, const char *propq,
                                        int nid);
# 499 "../include/openssl/ec.h"
EC_GROUP *EC_GROUP_new_by_curve_name(int nid);






EC_GROUP *EC_GROUP_new_from_ecparameters(const ECPARAMETERS *params);







ECPARAMETERS *EC_GROUP_get_ecparameters(const EC_GROUP *group,
                                        ECPARAMETERS *params);






EC_GROUP *EC_GROUP_new_from_ecpkparameters(const ECPKPARAMETERS *params);







ECPKPARAMETERS *EC_GROUP_get_ecpkparameters(const EC_GROUP *group,
                                            ECPKPARAMETERS *params);





typedef struct {
    int nid;
    const char *comment;
} EC_builtin_curve;







size_t EC_get_builtin_curves(EC_builtin_curve *r, size_t nitems);

const char *EC_curve_nid2nist(int nid);
int EC_curve_nist2nid(const char *name);
int EC_GROUP_check_named_curve(const EC_GROUP *group, int nist_only,
                               BN_CTX *ctx);
# 563 "../include/openssl/ec.h"
EC_POINT *EC_POINT_new(const EC_GROUP *group);




void EC_POINT_free(EC_POINT *point);




void EC_POINT_clear_free(EC_POINT *point);






int EC_POINT_copy(EC_POINT *dst, const EC_POINT *src);







EC_POINT *EC_POINT_dup(const EC_POINT *src, const EC_GROUP *group);






int EC_POINT_set_to_infinity(const EC_GROUP *group, EC_POINT *point);






extern const EC_METHOD *EC_POINT_method_of(const EC_POINT *point);
# 613 "../include/openssl/ec.h"
extern int EC_POINT_set_Jprojective_coordinates_GFp
                      (const EC_GROUP *group, EC_POINT *p,
                       const BIGNUM *x, const BIGNUM *y, const BIGNUM *z,
                       BN_CTX *ctx);
# 627 "../include/openssl/ec.h"
extern int EC_POINT_get_Jprojective_coordinates_GFp
                      (const EC_GROUP *group, const EC_POINT *p,
                       BIGNUM *x, BIGNUM *y, BIGNUM *z, BN_CTX *ctx);
# 640 "../include/openssl/ec.h"
int EC_POINT_set_affine_coordinates(const EC_GROUP *group, EC_POINT *p,
                                    const BIGNUM *x, const BIGNUM *y,
                                    BN_CTX *ctx);
# 652 "../include/openssl/ec.h"
int EC_POINT_get_affine_coordinates(const EC_GROUP *group, const EC_POINT *p,
                                    BIGNUM *x, BIGNUM *y, BN_CTX *ctx);
# 665 "../include/openssl/ec.h"
extern int EC_POINT_set_affine_coordinates_GFp
                      (const EC_GROUP *group, EC_POINT *p,
                       const BIGNUM *x, const BIGNUM *y, BN_CTX *ctx);
# 678 "../include/openssl/ec.h"
extern int EC_POINT_get_affine_coordinates_GFp
                      (const EC_GROUP *group, const EC_POINT *p,
                       BIGNUM *x, BIGNUM *y, BN_CTX *ctx);
# 691 "../include/openssl/ec.h"
int EC_POINT_set_compressed_coordinates(const EC_GROUP *group, EC_POINT *p,
                                        const BIGNUM *x, int y_bit,
                                        BN_CTX *ctx);
# 705 "../include/openssl/ec.h"
extern int EC_POINT_set_compressed_coordinates_GFp
                      (const EC_GROUP *group, EC_POINT *p,
                       const BIGNUM *x, int y_bit, BN_CTX *ctx);
# 718 "../include/openssl/ec.h"
extern int EC_POINT_set_affine_coordinates_GF2m
                      (const EC_GROUP *group, EC_POINT *p,
                       const BIGNUM *x, const BIGNUM *y, BN_CTX *ctx);
# 731 "../include/openssl/ec.h"
extern int EC_POINT_get_affine_coordinates_GF2m
                      (const EC_GROUP *group, const EC_POINT *p,
                       BIGNUM *x, BIGNUM *y, BN_CTX *ctx);
# 744 "../include/openssl/ec.h"
extern int EC_POINT_set_compressed_coordinates_GF2m
                      (const EC_GROUP *group, EC_POINT *p,
                       const BIGNUM *x, int y_bit, BN_CTX *ctx);
# 760 "../include/openssl/ec.h"
size_t EC_POINT_point2oct(const EC_GROUP *group, const EC_POINT *p,
                          point_conversion_form_t form,
                          unsigned char *buf, size_t len, BN_CTX *ctx);
# 772 "../include/openssl/ec.h"
int EC_POINT_oct2point(const EC_GROUP *group, EC_POINT *p,
                       const unsigned char *buf, size_t len, BN_CTX *ctx);
# 783 "../include/openssl/ec.h"
size_t EC_POINT_point2buf(const EC_GROUP *group, const EC_POINT *point,
                          point_conversion_form_t form,
                          unsigned char **pbuf, BN_CTX *ctx);



extern BIGNUM *EC_POINT_point2bn(const EC_GROUP *,
                                                const EC_POINT *,
                                                point_conversion_form_t form,
                                                BIGNUM *, BN_CTX *);
extern EC_POINT *EC_POINT_bn2point(const EC_GROUP *,
                                                  const BIGNUM *,
                                                  EC_POINT *, BN_CTX *);


char *EC_POINT_point2hex(const EC_GROUP *, const EC_POINT *,
                         point_conversion_form_t form, BN_CTX *);
EC_POINT *EC_POINT_hex2point(const EC_GROUP *, const char *,
                             EC_POINT *, BN_CTX *);
# 815 "../include/openssl/ec.h"
int EC_POINT_add(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
                 const EC_POINT *b, BN_CTX *ctx);
# 825 "../include/openssl/ec.h"
int EC_POINT_dbl(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
                 BN_CTX *ctx);







int EC_POINT_invert(const EC_GROUP *group, EC_POINT *a, BN_CTX *ctx);






int EC_POINT_is_at_infinity(const EC_GROUP *group, const EC_POINT *p);







int EC_POINT_is_on_curve(const EC_GROUP *group, const EC_POINT *point,
                         BN_CTX *ctx);
# 859 "../include/openssl/ec.h"
int EC_POINT_cmp(const EC_GROUP *group, const EC_POINT *a, const EC_POINT *b,
                 BN_CTX *ctx);


extern int EC_POINT_make_affine(const EC_GROUP *group,
                                               EC_POINT *point, BN_CTX *ctx);
extern int EC_POINTs_make_affine(const EC_GROUP *group, size_t num,
                                                EC_POINT *points[], BN_CTX *ctx);
# 878 "../include/openssl/ec.h"
extern int EC_POINTs_mul(const EC_GROUP *group, EC_POINT *r,
                                        const BIGNUM *n, size_t num,
                                        const EC_POINT *p[], const BIGNUM *m[],
                                        BN_CTX *ctx);
# 893 "../include/openssl/ec.h"
int EC_POINT_mul(const EC_GROUP *group, EC_POINT *r, const BIGNUM *n,
                 const EC_POINT *q, const BIGNUM *m, BN_CTX *ctx);







extern int EC_GROUP_precompute_mult(EC_GROUP *group, BN_CTX *ctx);





extern int EC_GROUP_have_precompute_mult(const EC_GROUP *group);






extern const ASN1_ITEM * ECPKPARAMETERS_it(void);
extern ECPKPARAMETERS *ECPKPARAMETERS_new(void); extern void ECPKPARAMETERS_free(ECPKPARAMETERS *a);
extern const ASN1_ITEM * ECPARAMETERS_it(void);
extern ECPARAMETERS *ECPARAMETERS_new(void); extern void ECPARAMETERS_free(ECPARAMETERS *a);





int EC_GROUP_get_basis_type(const EC_GROUP *);

int EC_GROUP_get_trinomial_basis(const EC_GROUP *, unsigned int *k);
int EC_GROUP_get_pentanomial_basis(const EC_GROUP *, unsigned int *k1,
                                   unsigned int *k2, unsigned int *k3);


EC_GROUP *d2i_ECPKParameters(EC_GROUP **, const unsigned char **in, long len);
int i2d_ECPKParameters(const EC_GROUP *, unsigned char **out);
# 945 "../include/openssl/ec.h"
extern int ECPKParameters_print(BIO *bp, const EC_GROUP *x,
                                               int off);

extern int ECPKParameters_print_fp(FILE *fp, const EC_GROUP *x,
                                                  int off);
# 980 "../include/openssl/ec.h"
extern EC_KEY *EC_KEY_new_ex(OSSL_LIB_CTX *ctx, const char *propq);






extern EC_KEY *EC_KEY_new(void);

extern int EC_KEY_get_flags(const EC_KEY *key);

extern void EC_KEY_set_flags(EC_KEY *key, int flags);

extern void EC_KEY_clear_flags(EC_KEY *key, int flags);

extern int EC_KEY_decoded_from_explicit_params(const EC_KEY *key);
# 1006 "../include/openssl/ec.h"
extern EC_KEY *EC_KEY_new_by_curve_name_ex(OSSL_LIB_CTX *ctx,
                                                          const char *propq,
                                                          int nid);
# 1017 "../include/openssl/ec.h"
extern EC_KEY *EC_KEY_new_by_curve_name(int nid);




extern void EC_KEY_free(EC_KEY *key);






extern EC_KEY *EC_KEY_copy(EC_KEY *dst, const EC_KEY *src);





extern EC_KEY *EC_KEY_dup(const EC_KEY *src);





extern int EC_KEY_up_ref(EC_KEY *key);





extern ENGINE *EC_KEY_get0_engine(const EC_KEY *eckey);





extern const EC_GROUP *EC_KEY_get0_group(const EC_KEY *key);







extern int EC_KEY_set_group(EC_KEY *key, const EC_GROUP *group);





extern const BIGNUM *EC_KEY_get0_private_key(const EC_KEY *key);







extern int EC_KEY_set_private_key(EC_KEY *key, const BIGNUM *prv);





extern const EC_POINT *EC_KEY_get0_public_key(const EC_KEY *key);







extern int EC_KEY_set_public_key(EC_KEY *key, const EC_POINT *pub);

extern unsigned EC_KEY_get_enc_flags(const EC_KEY *key);
extern void EC_KEY_set_enc_flags(EC_KEY *eckey, unsigned int flags);
extern point_conversion_form_t EC_KEY_get_conv_form(const EC_KEY *key);
extern void EC_KEY_set_conv_form(EC_KEY *eckey,
                                                point_conversion_form_t cform);






extern int EC_KEY_set_ex_data(EC_KEY *key, int idx, void *arg);
extern void *EC_KEY_get_ex_data(const EC_KEY *key, int idx);


extern void EC_KEY_set_asn1_flag(EC_KEY *eckey, int asn1_flag);







extern int EC_KEY_precompute_mult(EC_KEY *key, BN_CTX *ctx);





extern int EC_KEY_generate_key(EC_KEY *key);





extern int EC_KEY_check_key(const EC_KEY *key);





extern int EC_KEY_can_sign(const EC_KEY *eckey);
# 1141 "../include/openssl/ec.h"
extern int EC_KEY_set_public_key_affine_coordinates(EC_KEY *key,
                                                                   BIGNUM *x,
                                                                   BIGNUM *y);
# 1152 "../include/openssl/ec.h"
extern size_t EC_KEY_key2buf(const EC_KEY *key,
                                            point_conversion_form_t form,
                                            unsigned char **pbuf, BN_CTX *ctx);
# 1164 "../include/openssl/ec.h"
extern int EC_KEY_oct2key(EC_KEY *key, const unsigned char *buf,
                                         size_t len, BN_CTX *ctx);
# 1174 "../include/openssl/ec.h"
extern int EC_KEY_oct2priv(EC_KEY *key, const unsigned char *buf,
                                          size_t len);
# 1185 "../include/openssl/ec.h"
extern size_t EC_KEY_priv2oct(const EC_KEY *key,
                                             unsigned char *buf, size_t len);






extern size_t EC_KEY_priv2buf(const EC_KEY *eckey,
                                             unsigned char **pbuf);
# 1206 "../include/openssl/ec.h"
extern EC_KEY *d2i_ECPrivateKey(EC_KEY **key,
                                               const unsigned char **in,
                                               long len);







extern int i2d_ECPrivateKey(const EC_KEY *key,
                                           unsigned char **out);
# 1230 "../include/openssl/ec.h"
extern EC_KEY *d2i_ECParameters(EC_KEY **key,
                                               const unsigned char **in,
                                               long len);







extern int i2d_ECParameters(const EC_KEY *key,
                                           unsigned char **out);
# 1255 "../include/openssl/ec.h"
extern EC_KEY *o2i_ECPublicKey(EC_KEY **key,
                                              const unsigned char **in, long len);







extern int i2o_ECPublicKey(const EC_KEY *key, unsigned char **out);






extern int ECParameters_print(BIO *bp, const EC_KEY *key);







extern int EC_KEY_print(BIO *bp, const EC_KEY *key, int off);







extern int ECParameters_print_fp(FILE *fp, const EC_KEY *key);







extern int EC_KEY_print_fp(FILE *fp, const EC_KEY *key, int off);


extern const EC_KEY_METHOD *EC_KEY_OpenSSL(void);
extern const EC_KEY_METHOD *EC_KEY_get_default_method(void);
extern void EC_KEY_set_default_method(const EC_KEY_METHOD *meth);
extern const EC_KEY_METHOD *EC_KEY_get_method(const EC_KEY *key);
extern int EC_KEY_set_method(EC_KEY *key, const EC_KEY_METHOD *meth);
extern EC_KEY *EC_KEY_new_method(ENGINE *engine);






extern int ECDH_KDF_X9_62(unsigned char *out, size_t outlen,
                                         const unsigned char *Z, size_t Zlen,
                                         const unsigned char *sinfo,
                                         size_t sinfolen, const EVP_MD *md);

extern int ECDH_compute_key(void *out, size_t outlen,
                                           const EC_POINT *pub_key,
                                           const EC_KEY *ecdh,
                                           void *(*KDF)(const void *in,
                                                        size_t inlen, void *out,
                                                        size_t *outlen));


typedef struct ECDSA_SIG_st ECDSA_SIG;




ECDSA_SIG *ECDSA_SIG_new(void);




void ECDSA_SIG_free(ECDSA_SIG *sig);
# 1342 "../include/openssl/ec.h"
extern ECDSA_SIG *d2i_ECDSA_SIG(ECDSA_SIG **a, const unsigned char **in, long len); extern int i2d_ECDSA_SIG(const ECDSA_SIG *a, unsigned char **out);
# 1357 "../include/openssl/ec.h"
void ECDSA_SIG_get0(const ECDSA_SIG *sig, const BIGNUM **pr, const BIGNUM **ps);




const BIGNUM *ECDSA_SIG_get0_r(const ECDSA_SIG *sig);




const BIGNUM *ECDSA_SIG_get0_s(const ECDSA_SIG *sig);






int ECDSA_SIG_set0(ECDSA_SIG *sig, BIGNUM *r, BIGNUM *s);
# 1384 "../include/openssl/ec.h"
extern ECDSA_SIG *ECDSA_do_sign(const unsigned char *dgst,
                                               int dgst_len, EC_KEY *eckey);
# 1397 "../include/openssl/ec.h"
extern ECDSA_SIG *ECDSA_do_sign_ex(const unsigned char *dgst,
                                                  int dgstlen, const BIGNUM *kinv,
                                                  const BIGNUM *rp, EC_KEY *eckey);
# 1410 "../include/openssl/ec.h"
extern int ECDSA_do_verify(const unsigned char *dgst, int dgst_len,
                                          const ECDSA_SIG *sig, EC_KEY *eckey);
# 1420 "../include/openssl/ec.h"
extern int ECDSA_sign_setup(EC_KEY *eckey, BN_CTX *ctx,
                                           BIGNUM **kinv, BIGNUM **rp);
# 1433 "../include/openssl/ec.h"
extern int ECDSA_sign(int type, const unsigned char *dgst,
                                     int dgstlen, unsigned char *sig,
                                     unsigned int *siglen, EC_KEY *eckey);
# 1450 "../include/openssl/ec.h"
extern int ECDSA_sign_ex(int type, const unsigned char *dgst,
                                        int dgstlen, unsigned char *sig,
                                        unsigned int *siglen, const BIGNUM *kinv,
                                        const BIGNUM *rp, EC_KEY *eckey);
# 1466 "../include/openssl/ec.h"
extern int ECDSA_verify(int type, const unsigned char *dgst,
                                       int dgstlen, const unsigned char *sig,
                                       int siglen, EC_KEY *eckey);





extern int ECDSA_size(const EC_KEY *eckey);





extern EC_KEY_METHOD *EC_KEY_METHOD_new(const EC_KEY_METHOD *meth);
extern void EC_KEY_METHOD_free(EC_KEY_METHOD *meth);
extern void EC_KEY_METHOD_set_init
                      (EC_KEY_METHOD *meth,
                       int (*init)(EC_KEY *key),
                       void (*finish)(EC_KEY *key),
                       int (*copy)(EC_KEY *dest, const EC_KEY *src),
                       int (*set_group)(EC_KEY *key, const EC_GROUP *grp),
                       int (*set_private)(EC_KEY *key, const BIGNUM *priv_key),
                       int (*set_public)(EC_KEY *key, const EC_POINT *pub_key));

extern void EC_KEY_METHOD_set_keygen(EC_KEY_METHOD *meth,
                                                    int (*keygen)(EC_KEY *key));

extern void EC_KEY_METHOD_set_compute_key
                      (EC_KEY_METHOD *meth,
                       int (*ckey)(unsigned char **psec, size_t *pseclen,
                                   const EC_POINT *pub_key, const EC_KEY *ecdh));

extern void EC_KEY_METHOD_set_sign
                      (EC_KEY_METHOD *meth,
                       int (*sign)(int type, const unsigned char *dgst,
                                   int dlen, unsigned char *sig,
                                   unsigned int *siglen,
                                   const BIGNUM *kinv, const BIGNUM *r,
                                   EC_KEY *eckey),
                       int (*sign_setup)(EC_KEY *eckey, BN_CTX *ctx_in,
                                         BIGNUM **kinvp, BIGNUM **rp),
                       ECDSA_SIG *(*sign_sig)(const unsigned char *dgst,
                                              int dgst_len,
                                              const BIGNUM *in_kinv,
                                              const BIGNUM *in_r,
                                              EC_KEY *eckey));

extern void EC_KEY_METHOD_set_verify
                      (EC_KEY_METHOD *meth,
                       int (*verify)(int type, const unsigned
                                     char *dgst, int dgst_len,
                                     const unsigned char *sigbuf,
                                     int sig_len, EC_KEY *eckey),
                       int (*verify_sig)(const unsigned char *dgst,
                                         int dgst_len, const ECDSA_SIG *sig,
                                         EC_KEY *eckey));

extern void EC_KEY_METHOD_get_init
                      (const EC_KEY_METHOD *meth,
                       int (**pinit)(EC_KEY *key),
                       void (**pfinish)(EC_KEY *key),
                       int (**pcopy)(EC_KEY *dest, const EC_KEY *src),
                       int (**pset_group)(EC_KEY *key, const EC_GROUP *grp),
                       int (**pset_private)(EC_KEY *key, const BIGNUM *priv_key),
                       int (**pset_public)(EC_KEY *key, const EC_POINT *pub_key));

extern void EC_KEY_METHOD_get_keygen
                      (const EC_KEY_METHOD *meth, int (**pkeygen)(EC_KEY *key));

extern void EC_KEY_METHOD_get_compute_key
                      (const EC_KEY_METHOD *meth,
                       int (**pck)(unsigned char **psec,
                       size_t *pseclen,
                       const EC_POINT *pub_key,
                       const EC_KEY *ecdh));

extern void EC_KEY_METHOD_get_sign
                      (const EC_KEY_METHOD *meth,
                       int (**psign)(int type, const unsigned char *dgst,
                                     int dlen, unsigned char *sig,
                                     unsigned int *siglen,
                                     const BIGNUM *kinv, const BIGNUM *r,
                                     EC_KEY *eckey),
                       int (**psign_setup)(EC_KEY *eckey, BN_CTX *ctx_in,
                                           BIGNUM **kinvp, BIGNUM **rp),
                       ECDSA_SIG *(**psign_sig)(const unsigned char *dgst,
                                                int dgst_len,
                                                const BIGNUM *in_kinv,
                                                const BIGNUM *in_r,
                                                EC_KEY *eckey));

extern void EC_KEY_METHOD_get_verify
                      (const EC_KEY_METHOD *meth,
                       int (**pverify)(int type, const unsigned
                                       char *dgst, int dgst_len,
                                       const unsigned char *sigbuf,
                                       int sig_len, EC_KEY *eckey),
                       int (**pverify_sig)(const unsigned char *dgst,
                                           int dgst_len,
                                           const ECDSA_SIG *sig,
                                           EC_KEY *eckey));
# 15 "../crypto/ec/ec_local.h" 2


# 1 "../include/crypto/ec.h" 1
# 14 "../include/crypto/ec.h"
        


# 1 "../include/openssl/evp.h" 1
# 12 "../include/openssl/evp.h"
        
# 26 "../include/openssl/evp.h"
# 1 "../include/openssl/types.h" 1
# 27 "../include/openssl/evp.h" 2

# 1 "../include/openssl/core_dispatch.h" 1
# 12 "../include/openssl/core_dispatch.h"
        
# 64 "../include/openssl/core_dispatch.h"
typedef const OSSL_PARAM * (OSSL_FUNC_core_gettable_params_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_gettable_params_fn *OSSL_FUNC_core_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_gettable_params_fn *)opf->function; }


typedef int (OSSL_FUNC_core_get_params_fn)(const OSSL_CORE_HANDLE *prov, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_core_get_params_fn *OSSL_FUNC_core_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_get_params_fn *)opf->function; }


typedef int (OSSL_FUNC_core_thread_start_fn)(const OSSL_CORE_HANDLE *prov, OSSL_thread_stop_handler_fn handfn, void *arg); static __attribute__((unused)) inline OSSL_FUNC_core_thread_start_fn *OSSL_FUNC_core_thread_start(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_thread_start_fn *)opf->function; }



typedef OPENSSL_CORE_CTX * (OSSL_FUNC_core_get_libctx_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_get_libctx_fn *OSSL_FUNC_core_get_libctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_get_libctx_fn *)opf->function; }


typedef void (OSSL_FUNC_core_new_error_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_new_error_fn *OSSL_FUNC_core_new_error(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_new_error_fn *)opf->function; }

typedef void (OSSL_FUNC_core_set_error_debug_fn)(const OSSL_CORE_HANDLE *prov, const char *file, int line, const char *func); static __attribute__((unused)) inline OSSL_FUNC_core_set_error_debug_fn *OSSL_FUNC_core_set_error_debug(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_set_error_debug_fn *)opf->function; }



typedef void (OSSL_FUNC_core_vset_error_fn)(const OSSL_CORE_HANDLE *prov, uint32_t reason, const char *fmt, va_list args); static __attribute__((unused)) inline OSSL_FUNC_core_vset_error_fn *OSSL_FUNC_core_vset_error(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_vset_error_fn *)opf->function; }



typedef int (OSSL_FUNC_core_set_error_mark_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_set_error_mark_fn *OSSL_FUNC_core_set_error_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_set_error_mark_fn *)opf->function; }

typedef int (OSSL_FUNC_core_clear_last_error_mark_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_clear_last_error_mark_fn *OSSL_FUNC_core_clear_last_error_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_clear_last_error_mark_fn *)opf->function; }


typedef int (OSSL_FUNC_core_pop_error_to_mark_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_pop_error_to_mark_fn *OSSL_FUNC_core_pop_error_to_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_pop_error_to_mark_fn *)opf->function; }







typedef int (OSSL_FUNC_core_obj_add_sigid_fn)(const OSSL_CORE_HANDLE *prov, const char *sign_name, const char *digest_name, const char *pkey_name); static __attribute__((unused)) inline OSSL_FUNC_core_obj_add_sigid_fn *OSSL_FUNC_core_obj_add_sigid(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_obj_add_sigid_fn *)opf->function; }


typedef int (OSSL_FUNC_core_obj_create_fn)(const OSSL_CORE_HANDLE *prov, const char *oid, const char *sn, const char *ln); static __attribute__((unused)) inline OSSL_FUNC_core_obj_create_fn *OSSL_FUNC_core_obj_create(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_obj_create_fn *)opf->function; }





typedef void * (OSSL_FUNC_CRYPTO_malloc_fn)(size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_malloc_fn *OSSL_FUNC_CRYPTO_malloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_malloc_fn *)opf->function; }


typedef void * (OSSL_FUNC_CRYPTO_zalloc_fn)(size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_zalloc_fn *OSSL_FUNC_CRYPTO_zalloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_zalloc_fn *)opf->function; }


typedef void (OSSL_FUNC_CRYPTO_free_fn)(void *ptr, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_free_fn *OSSL_FUNC_CRYPTO_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_free_fn *)opf->function; }


typedef void (OSSL_FUNC_CRYPTO_clear_free_fn)(void *ptr, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_clear_free_fn *OSSL_FUNC_CRYPTO_clear_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_clear_free_fn *)opf->function; }


typedef void * (OSSL_FUNC_CRYPTO_realloc_fn)(void *addr, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_realloc_fn *OSSL_FUNC_CRYPTO_realloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_realloc_fn *)opf->function; }


typedef void * (OSSL_FUNC_CRYPTO_clear_realloc_fn)(void *addr, size_t old_num, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_clear_realloc_fn *OSSL_FUNC_CRYPTO_clear_realloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_clear_realloc_fn *)opf->function; }



typedef void * (OSSL_FUNC_CRYPTO_secure_malloc_fn)(size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_malloc_fn *OSSL_FUNC_CRYPTO_secure_malloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_malloc_fn *)opf->function; }


typedef void * (OSSL_FUNC_CRYPTO_secure_zalloc_fn)(size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_zalloc_fn *OSSL_FUNC_CRYPTO_secure_zalloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_zalloc_fn *)opf->function; }


typedef void (OSSL_FUNC_CRYPTO_secure_free_fn)(void *ptr, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_free_fn *OSSL_FUNC_CRYPTO_secure_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_free_fn *)opf->function; }


typedef void (OSSL_FUNC_CRYPTO_secure_clear_free_fn)(void *ptr, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_clear_free_fn *OSSL_FUNC_CRYPTO_secure_clear_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_clear_free_fn *)opf->function; }



typedef int (OSSL_FUNC_CRYPTO_secure_allocated_fn)(const void *ptr); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_allocated_fn *OSSL_FUNC_CRYPTO_secure_allocated(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_allocated_fn *)opf->function; }


typedef void (OSSL_FUNC_OPENSSL_cleanse_fn)(void *ptr, size_t len); static __attribute__((unused)) inline OSSL_FUNC_OPENSSL_cleanse_fn *OSSL_FUNC_OPENSSL_cleanse(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_OPENSSL_cleanse_fn *)opf->function; }
# 161 "../include/openssl/core_dispatch.h"
typedef OSSL_CORE_BIO * (OSSL_FUNC_BIO_new_file_fn)(const char *filename, const char *mode); static __attribute__((unused)) inline OSSL_FUNC_BIO_new_file_fn *OSSL_FUNC_BIO_new_file(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_new_file_fn *)opf->function; }

typedef OSSL_CORE_BIO * (OSSL_FUNC_BIO_new_membuf_fn)(const void *buf, int len); static __attribute__((unused)) inline OSSL_FUNC_BIO_new_membuf_fn *OSSL_FUNC_BIO_new_membuf(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_new_membuf_fn *)opf->function; }
typedef int (OSSL_FUNC_BIO_read_ex_fn)(OSSL_CORE_BIO *bio, void *data, size_t data_len, size_t *bytes_read); static __attribute__((unused)) inline OSSL_FUNC_BIO_read_ex_fn *OSSL_FUNC_BIO_read_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_read_ex_fn *)opf->function; }

typedef int (OSSL_FUNC_BIO_write_ex_fn)(OSSL_CORE_BIO *bio, const void *data, size_t data_len, size_t *written); static __attribute__((unused)) inline OSSL_FUNC_BIO_write_ex_fn *OSSL_FUNC_BIO_write_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_write_ex_fn *)opf->function; }

typedef int (OSSL_FUNC_BIO_gets_fn)(OSSL_CORE_BIO *bio, char *buf, int size); static __attribute__((unused)) inline OSSL_FUNC_BIO_gets_fn *OSSL_FUNC_BIO_gets(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_gets_fn *)opf->function; }
typedef int (OSSL_FUNC_BIO_puts_fn)(OSSL_CORE_BIO *bio, const char *str); static __attribute__((unused)) inline OSSL_FUNC_BIO_puts_fn *OSSL_FUNC_BIO_puts(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_puts_fn *)opf->function; }
typedef int (OSSL_FUNC_BIO_up_ref_fn)(OSSL_CORE_BIO *bio); static __attribute__((unused)) inline OSSL_FUNC_BIO_up_ref_fn *OSSL_FUNC_BIO_up_ref(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_up_ref_fn *)opf->function; }
typedef int (OSSL_FUNC_BIO_free_fn)(OSSL_CORE_BIO *bio); static __attribute__((unused)) inline OSSL_FUNC_BIO_free_fn *OSSL_FUNC_BIO_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_free_fn *)opf->function; }
typedef int (OSSL_FUNC_BIO_vprintf_fn)(OSSL_CORE_BIO *bio, const char *format, va_list args); static __attribute__((unused)) inline OSSL_FUNC_BIO_vprintf_fn *OSSL_FUNC_BIO_vprintf(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_vprintf_fn *)opf->function; }

typedef int (OSSL_FUNC_BIO_vsnprintf_fn)(char *buf, size_t n, const char *fmt, va_list args); static __attribute__((unused)) inline OSSL_FUNC_BIO_vsnprintf_fn *OSSL_FUNC_BIO_vsnprintf(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_vsnprintf_fn *)opf->function; }

typedef int (OSSL_FUNC_BIO_ctrl_fn)(OSSL_CORE_BIO *bio, int cmd, long num, void *ptr); static __attribute__((unused)) inline OSSL_FUNC_BIO_ctrl_fn *OSSL_FUNC_BIO_ctrl(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_ctrl_fn *)opf->function; }
# 186 "../include/openssl/core_dispatch.h"
typedef void (OSSL_FUNC_self_test_cb_fn)(OPENSSL_CORE_CTX *ctx, OSSL_CALLBACK **cb, void **cbarg); static __attribute__((unused)) inline OSSL_FUNC_self_test_cb_fn *OSSL_FUNC_self_test_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_self_test_cb_fn *)opf->function; }







typedef size_t (OSSL_FUNC_get_entropy_fn)(const OSSL_CORE_HANDLE *handle, unsigned char **pout, int entropy, size_t min_len, size_t max_len); static __attribute__((unused)) inline OSSL_FUNC_get_entropy_fn *OSSL_FUNC_get_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_entropy_fn *)opf->function; }


typedef size_t (OSSL_FUNC_get_user_entropy_fn)(const OSSL_CORE_HANDLE *handle, unsigned char **pout, int entropy, size_t min_len, size_t max_len); static __attribute__((unused)) inline OSSL_FUNC_get_user_entropy_fn *OSSL_FUNC_get_user_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_user_entropy_fn *)opf->function; }


typedef void (OSSL_FUNC_cleanup_entropy_fn)(const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_entropy_fn *OSSL_FUNC_cleanup_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_entropy_fn *)opf->function; }

typedef void (OSSL_FUNC_cleanup_user_entropy_fn)(const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_user_entropy_fn *OSSL_FUNC_cleanup_user_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_user_entropy_fn *)opf->function; }

typedef size_t (OSSL_FUNC_get_nonce_fn)(const OSSL_CORE_HANDLE *handle, unsigned char **pout, size_t min_len, size_t max_len, const void *salt, size_t salt_len); static __attribute__((unused)) inline OSSL_FUNC_get_nonce_fn *OSSL_FUNC_get_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_nonce_fn *)opf->function; }



typedef size_t (OSSL_FUNC_get_user_nonce_fn)(const OSSL_CORE_HANDLE *handle, unsigned char **pout, size_t min_len, size_t max_len, const void *salt, size_t salt_len); static __attribute__((unused)) inline OSSL_FUNC_get_user_nonce_fn *OSSL_FUNC_get_user_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_user_nonce_fn *)opf->function; }



typedef void (OSSL_FUNC_cleanup_nonce_fn)(const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_nonce_fn *OSSL_FUNC_cleanup_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_nonce_fn *)opf->function; }

typedef void (OSSL_FUNC_cleanup_user_nonce_fn)(const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_user_nonce_fn *OSSL_FUNC_cleanup_user_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_user_nonce_fn *)opf->function; }
# 226 "../include/openssl/core_dispatch.h"
typedef int (OSSL_FUNC_provider_register_child_cb_fn)(const OSSL_CORE_HANDLE *handle, int (*create_cb)(const OSSL_CORE_HANDLE *provider, void *cbdata), int (*remove_cb)(const OSSL_CORE_HANDLE *provider, void *cbdata), int (*global_props_cb)(const char *props, void *cbdata), void *cbdata); static __attribute__((unused)) inline OSSL_FUNC_provider_register_child_cb_fn *OSSL_FUNC_provider_register_child_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_register_child_cb_fn *)opf->function; }





typedef void (OSSL_FUNC_provider_deregister_child_cb_fn)(const OSSL_CORE_HANDLE *handle); static __attribute__((unused)) inline OSSL_FUNC_provider_deregister_child_cb_fn *OSSL_FUNC_provider_deregister_child_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_deregister_child_cb_fn *)opf->function; }

typedef const char * (OSSL_FUNC_provider_name_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_provider_name_fn *OSSL_FUNC_provider_name(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_name_fn *)opf->function; }

typedef void * (OSSL_FUNC_provider_get0_provider_ctx_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_provider_get0_provider_ctx_fn *OSSL_FUNC_provider_get0_provider_ctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get0_provider_ctx_fn *)opf->function; }

typedef const OSSL_DISPATCH * (OSSL_FUNC_provider_get0_dispatch_fn)(const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_provider_get0_dispatch_fn *OSSL_FUNC_provider_get0_dispatch(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get0_dispatch_fn *)opf->function; }

typedef int (OSSL_FUNC_provider_up_ref_fn)(const OSSL_CORE_HANDLE *prov, int activate); static __attribute__((unused)) inline OSSL_FUNC_provider_up_ref_fn *OSSL_FUNC_provider_up_ref(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_up_ref_fn *)opf->function; }

typedef int (OSSL_FUNC_provider_free_fn)(const OSSL_CORE_HANDLE *prov, int deactivate); static __attribute__((unused)) inline OSSL_FUNC_provider_free_fn *OSSL_FUNC_provider_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_free_fn *)opf->function; }




typedef void (OSSL_FUNC_provider_teardown_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_teardown_fn *OSSL_FUNC_provider_teardown(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_teardown_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_provider_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_gettable_params_fn *OSSL_FUNC_provider_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_gettable_params_fn *)opf->function; }


typedef int (OSSL_FUNC_provider_get_params_fn)(void *provctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_provider_get_params_fn *OSSL_FUNC_provider_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get_params_fn *)opf->function; }


typedef const OSSL_ALGORITHM * (OSSL_FUNC_provider_query_operation_fn)(void *provctx, int operation_id, int *no_store); static __attribute__((unused)) inline OSSL_FUNC_provider_query_operation_fn *OSSL_FUNC_provider_query_operation(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_query_operation_fn *)opf->function; }


typedef void (OSSL_FUNC_provider_unquery_operation_fn)(void *provctx, int operation_id, const OSSL_ALGORITHM *); static __attribute__((unused)) inline OSSL_FUNC_provider_unquery_operation_fn *OSSL_FUNC_provider_unquery_operation(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_unquery_operation_fn *)opf->function; }


typedef const OSSL_ITEM * (OSSL_FUNC_provider_get_reason_strings_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_get_reason_strings_fn *OSSL_FUNC_provider_get_reason_strings(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get_reason_strings_fn *)opf->function; }


typedef int (OSSL_FUNC_provider_get_capabilities_fn)(void *provctx, const char *capability, OSSL_CALLBACK *cb, void *arg); static __attribute__((unused)) inline OSSL_FUNC_provider_get_capabilities_fn *OSSL_FUNC_provider_get_capabilities(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get_capabilities_fn *)opf->function; }


typedef int (OSSL_FUNC_provider_self_test_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_self_test_fn *OSSL_FUNC_provider_self_test(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_self_test_fn *)opf->function; }
# 305 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_digest_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_newctx_fn *OSSL_FUNC_digest_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_newctx_fn *)opf->function; }
typedef int (OSSL_FUNC_digest_init_fn)(void *dctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_init_fn *OSSL_FUNC_digest_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_init_fn *)opf->function; }
typedef int (OSSL_FUNC_digest_update_fn)(void *dctx, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_digest_update_fn *OSSL_FUNC_digest_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_update_fn *)opf->function; }

typedef int (OSSL_FUNC_digest_final_fn)(void *dctx, unsigned char *out, size_t *outl, size_t outsz); static __attribute__((unused)) inline OSSL_FUNC_digest_final_fn *OSSL_FUNC_digest_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_final_fn *)opf->function; }


typedef int (OSSL_FUNC_digest_squeeze_fn)(void *dctx, unsigned char *out, size_t *outl, size_t outsz); static __attribute__((unused)) inline OSSL_FUNC_digest_squeeze_fn *OSSL_FUNC_digest_squeeze(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_squeeze_fn *)opf->function; }


typedef int (OSSL_FUNC_digest_digest_fn)(void *provctx, const unsigned char *in, size_t inl, unsigned char *out, size_t *outl, size_t outsz); static __attribute__((unused)) inline OSSL_FUNC_digest_digest_fn *OSSL_FUNC_digest_digest(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_digest_fn *)opf->function; }



typedef void (OSSL_FUNC_digest_freectx_fn)(void *dctx); static __attribute__((unused)) inline OSSL_FUNC_digest_freectx_fn *OSSL_FUNC_digest_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_freectx_fn *)opf->function; }
typedef void * (OSSL_FUNC_digest_dupctx_fn)(void *dctx); static __attribute__((unused)) inline OSSL_FUNC_digest_dupctx_fn *OSSL_FUNC_digest_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_dupctx_fn *)opf->function; }

typedef int (OSSL_FUNC_digest_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_get_params_fn *OSSL_FUNC_digest_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_get_params_fn *)opf->function; }
typedef int (OSSL_FUNC_digest_set_ctx_params_fn)(void *vctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_set_ctx_params_fn *OSSL_FUNC_digest_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_set_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_digest_get_ctx_params_fn)(void *vctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_get_ctx_params_fn *OSSL_FUNC_digest_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_get_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_digest_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_gettable_params_fn *OSSL_FUNC_digest_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_gettable_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_digest_settable_ctx_params_fn)(void *dctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_settable_ctx_params_fn *OSSL_FUNC_digest_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_settable_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_digest_gettable_ctx_params_fn)(void *dctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_gettable_ctx_params_fn *OSSL_FUNC_digest_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_gettable_ctx_params_fn *)opf->function; }
# 351 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_cipher_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_newctx_fn *OSSL_FUNC_cipher_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_newctx_fn *)opf->function; }
typedef int (OSSL_FUNC_cipher_encrypt_init_fn)(void *cctx, const unsigned char *key, size_t keylen, const unsigned char *iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_encrypt_init_fn *OSSL_FUNC_cipher_encrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_encrypt_init_fn *)opf->function; }





typedef int (OSSL_FUNC_cipher_decrypt_init_fn)(void *cctx, const unsigned char *key, size_t keylen, const unsigned char *iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_decrypt_init_fn *OSSL_FUNC_cipher_decrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_decrypt_init_fn *)opf->function; }





typedef int (OSSL_FUNC_cipher_update_fn)(void *cctx, unsigned char *out, size_t *outl, size_t outsize, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_cipher_update_fn *OSSL_FUNC_cipher_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_update_fn *)opf->function; }



typedef int (OSSL_FUNC_cipher_final_fn)(void *cctx, unsigned char *out, size_t *outl, size_t outsize); static __attribute__((unused)) inline OSSL_FUNC_cipher_final_fn *OSSL_FUNC_cipher_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_final_fn *)opf->function; }


typedef int (OSSL_FUNC_cipher_cipher_fn)(void *cctx, unsigned char *out, size_t *outl, size_t outsize, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_cipher_cipher_fn *OSSL_FUNC_cipher_cipher(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_cipher_fn *)opf->function; }



typedef void (OSSL_FUNC_cipher_freectx_fn)(void *cctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_freectx_fn *OSSL_FUNC_cipher_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_freectx_fn *)opf->function; }
typedef void * (OSSL_FUNC_cipher_dupctx_fn)(void *cctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_dupctx_fn *OSSL_FUNC_cipher_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_dupctx_fn *)opf->function; }
typedef int (OSSL_FUNC_cipher_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_get_params_fn *OSSL_FUNC_cipher_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_get_params_fn *)opf->function; }
typedef int (OSSL_FUNC_cipher_get_ctx_params_fn)(void *cctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_get_ctx_params_fn *OSSL_FUNC_cipher_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_get_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_cipher_set_ctx_params_fn)(void *cctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_set_ctx_params_fn *OSSL_FUNC_cipher_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_cipher_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_gettable_params_fn *OSSL_FUNC_cipher_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_gettable_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_cipher_settable_ctx_params_fn)(void *cctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_settable_ctx_params_fn *OSSL_FUNC_cipher_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_settable_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_cipher_gettable_ctx_params_fn)(void *cctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_gettable_ctx_params_fn *OSSL_FUNC_cipher_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_gettable_ctx_params_fn *)opf->function; }
# 404 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_mac_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_newctx_fn *OSSL_FUNC_mac_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_newctx_fn *)opf->function; }
typedef void * (OSSL_FUNC_mac_dupctx_fn)(void *src); static __attribute__((unused)) inline OSSL_FUNC_mac_dupctx_fn *OSSL_FUNC_mac_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_dupctx_fn *)opf->function; }
typedef void (OSSL_FUNC_mac_freectx_fn)(void *mctx); static __attribute__((unused)) inline OSSL_FUNC_mac_freectx_fn *OSSL_FUNC_mac_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_freectx_fn *)opf->function; }
typedef int (OSSL_FUNC_mac_init_fn)(void *mctx, const unsigned char *key, size_t keylen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_init_fn *OSSL_FUNC_mac_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_init_fn *)opf->function; }

typedef int (OSSL_FUNC_mac_update_fn)(void *mctx, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_mac_update_fn *OSSL_FUNC_mac_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_update_fn *)opf->function; }

typedef int (OSSL_FUNC_mac_final_fn)(void *mctx, unsigned char *out, size_t *outl, size_t outsize); static __attribute__((unused)) inline OSSL_FUNC_mac_final_fn *OSSL_FUNC_mac_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_final_fn *)opf->function; }


typedef const OSSL_PARAM * (OSSL_FUNC_mac_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_gettable_params_fn *OSSL_FUNC_mac_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_mac_gettable_ctx_params_fn)(void *mctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_gettable_ctx_params_fn *OSSL_FUNC_mac_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_gettable_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_mac_settable_ctx_params_fn)(void *mctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_settable_ctx_params_fn *OSSL_FUNC_mac_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_settable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_mac_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_get_params_fn *OSSL_FUNC_mac_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_get_params_fn *)opf->function; }
typedef int (OSSL_FUNC_mac_get_ctx_params_fn)(void *mctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_get_ctx_params_fn *OSSL_FUNC_mac_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_get_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_mac_set_ctx_params_fn)(void *mctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_set_ctx_params_fn *OSSL_FUNC_mac_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_set_ctx_params_fn *)opf->function; }
# 439 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_kdf_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_newctx_fn *OSSL_FUNC_kdf_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_newctx_fn *)opf->function; }
typedef void * (OSSL_FUNC_kdf_dupctx_fn)(void *src); static __attribute__((unused)) inline OSSL_FUNC_kdf_dupctx_fn *OSSL_FUNC_kdf_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_dupctx_fn *)opf->function; }
typedef void (OSSL_FUNC_kdf_freectx_fn)(void *kctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_freectx_fn *OSSL_FUNC_kdf_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_freectx_fn *)opf->function; }
typedef void (OSSL_FUNC_kdf_reset_fn)(void *kctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_reset_fn *OSSL_FUNC_kdf_reset(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_reset_fn *)opf->function; }
typedef int (OSSL_FUNC_kdf_derive_fn)(void *kctx, unsigned char *key, size_t keylen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_derive_fn *OSSL_FUNC_kdf_derive(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_derive_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_kdf_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_gettable_params_fn *OSSL_FUNC_kdf_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_kdf_gettable_ctx_params_fn)(void *kctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_gettable_ctx_params_fn *OSSL_FUNC_kdf_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_gettable_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_kdf_settable_ctx_params_fn)(void *kctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_settable_ctx_params_fn *OSSL_FUNC_kdf_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_settable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_kdf_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_get_params_fn *OSSL_FUNC_kdf_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_get_params_fn *)opf->function; }
typedef int (OSSL_FUNC_kdf_get_ctx_params_fn)(void *kctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_get_ctx_params_fn *OSSL_FUNC_kdf_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_get_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_kdf_set_ctx_params_fn)(void *kctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_set_ctx_params_fn *OSSL_FUNC_kdf_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_set_ctx_params_fn *)opf->function; }
# 478 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_rand_newctx_fn)(void *provctx, void *parent, const OSSL_DISPATCH *parent_calls); static __attribute__((unused)) inline OSSL_FUNC_rand_newctx_fn *OSSL_FUNC_rand_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_newctx_fn *)opf->function; }


typedef void (OSSL_FUNC_rand_freectx_fn)(void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_freectx_fn *OSSL_FUNC_rand_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_freectx_fn *)opf->function; }
typedef int (OSSL_FUNC_rand_instantiate_fn)(void *vdrbg, unsigned int strength, int prediction_resistance, const unsigned char *pstr, size_t pstr_len, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_instantiate_fn *OSSL_FUNC_rand_instantiate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_instantiate_fn *)opf->function; }




typedef int (OSSL_FUNC_rand_uninstantiate_fn)(void *vdrbg); static __attribute__((unused)) inline OSSL_FUNC_rand_uninstantiate_fn *OSSL_FUNC_rand_uninstantiate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_uninstantiate_fn *)opf->function; }
typedef int (OSSL_FUNC_rand_generate_fn)(void *vctx, unsigned char *out, size_t outlen, unsigned int strength, int prediction_resistance, const unsigned char *addin, size_t addin_len); static __attribute__((unused)) inline OSSL_FUNC_rand_generate_fn *OSSL_FUNC_rand_generate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_generate_fn *)opf->function; }



typedef int (OSSL_FUNC_rand_reseed_fn)(void *vctx, int prediction_resistance, const unsigned char *ent, size_t ent_len, const unsigned char *addin, size_t addin_len); static __attribute__((unused)) inline OSSL_FUNC_rand_reseed_fn *OSSL_FUNC_rand_reseed(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_reseed_fn *)opf->function; }



typedef size_t (OSSL_FUNC_rand_nonce_fn)(void *vctx, unsigned char *out, unsigned int strength, size_t min_noncelen, size_t max_noncelen); static __attribute__((unused)) inline OSSL_FUNC_rand_nonce_fn *OSSL_FUNC_rand_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_nonce_fn *)opf->function; }


typedef int (OSSL_FUNC_rand_enable_locking_fn)(void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_enable_locking_fn *OSSL_FUNC_rand_enable_locking(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_enable_locking_fn *)opf->function; }
typedef int (OSSL_FUNC_rand_lock_fn)(void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_lock_fn *OSSL_FUNC_rand_lock(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_lock_fn *)opf->function; }
typedef void (OSSL_FUNC_rand_unlock_fn)(void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_unlock_fn *OSSL_FUNC_rand_unlock(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_unlock_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_rand_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_rand_gettable_params_fn *OSSL_FUNC_rand_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_rand_gettable_ctx_params_fn)(void *vctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_rand_gettable_ctx_params_fn *OSSL_FUNC_rand_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_gettable_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_rand_settable_ctx_params_fn)(void *vctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_rand_settable_ctx_params_fn *OSSL_FUNC_rand_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_settable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_rand_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_get_params_fn *OSSL_FUNC_rand_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_get_params_fn *)opf->function; }
typedef int (OSSL_FUNC_rand_get_ctx_params_fn)(void *vctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_get_ctx_params_fn *OSSL_FUNC_rand_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_get_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_rand_set_ctx_params_fn)(void *vctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_set_ctx_params_fn *OSSL_FUNC_rand_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_set_ctx_params_fn *)opf->function; }

typedef void (OSSL_FUNC_rand_set_callbacks_fn)(void *vctx, OSSL_INOUT_CALLBACK *get_entropy, OSSL_CALLBACK *cleanup_entropy, OSSL_INOUT_CALLBACK *get_nonce, OSSL_CALLBACK *cleanup_nonce, void *arg); static __attribute__((unused)) inline OSSL_FUNC_rand_set_callbacks_fn *OSSL_FUNC_rand_set_callbacks(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_set_callbacks_fn *)opf->function; }




typedef int (OSSL_FUNC_rand_verify_zeroization_fn)(void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_verify_zeroization_fn *OSSL_FUNC_rand_verify_zeroization(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_verify_zeroization_fn *)opf->function; }

typedef size_t (OSSL_FUNC_rand_get_seed_fn)(void *vctx, unsigned char **buffer, int entropy, size_t min_len, size_t max_len, int prediction_resistance, const unsigned char *adin, size_t adin_len); static __attribute__((unused)) inline OSSL_FUNC_rand_get_seed_fn *OSSL_FUNC_rand_get_seed(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_get_seed_fn *)opf->function; }




typedef void (OSSL_FUNC_rand_clear_seed_fn)(void *vctx, unsigned char *buffer, size_t b_len); static __attribute__((unused)) inline OSSL_FUNC_rand_clear_seed_fn *OSSL_FUNC_rand_clear_seed(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_clear_seed_fn *)opf->function; }
# 582 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_keymgmt_new_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_new_fn *OSSL_FUNC_keymgmt_new(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_new_fn *)opf->function; }
# 591 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_keymgmt_gen_init_fn)(void *provctx, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_init_fn *OSSL_FUNC_keymgmt_gen_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_init_fn *)opf->function; }

typedef int (OSSL_FUNC_keymgmt_gen_set_template_fn)(void *genctx, void *templ); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_set_template_fn *OSSL_FUNC_keymgmt_gen_set_template(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_set_template_fn *)opf->function; }

typedef int (OSSL_FUNC_keymgmt_gen_set_params_fn)(void *genctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_set_params_fn *OSSL_FUNC_keymgmt_gen_set_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_set_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_gen_settable_params_fn)(void *genctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_settable_params_fn *OSSL_FUNC_keymgmt_gen_settable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_settable_params_fn *)opf->function; }


typedef void * (OSSL_FUNC_keymgmt_gen_fn)(void *genctx, OSSL_CALLBACK *cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_fn *OSSL_FUNC_keymgmt_gen(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_fn *)opf->function; }

typedef void (OSSL_FUNC_keymgmt_gen_cleanup_fn)(void *genctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_cleanup_fn *OSSL_FUNC_keymgmt_gen_cleanup(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_cleanup_fn *)opf->function; }



typedef void * (OSSL_FUNC_keymgmt_load_fn)(const void *reference, size_t reference_sz); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_load_fn *OSSL_FUNC_keymgmt_load(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_load_fn *)opf->function; }




typedef void (OSSL_FUNC_keymgmt_free_fn)(void *keydata); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_free_fn *OSSL_FUNC_keymgmt_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_free_fn *)opf->function; }




typedef int (OSSL_FUNC_keymgmt_get_params_fn)(void *keydata, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_get_params_fn *OSSL_FUNC_keymgmt_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_get_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gettable_params_fn *OSSL_FUNC_keymgmt_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gettable_params_fn *)opf->function; }




typedef int (OSSL_FUNC_keymgmt_set_params_fn)(void *keydata, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_set_params_fn *OSSL_FUNC_keymgmt_set_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_set_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_settable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_settable_params_fn *OSSL_FUNC_keymgmt_settable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_settable_params_fn *)opf->function; }




typedef const char * (OSSL_FUNC_keymgmt_query_operation_name_fn)(int operation_id); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_query_operation_name_fn *OSSL_FUNC_keymgmt_query_operation_name(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_query_operation_name_fn *)opf->function; }




typedef int (OSSL_FUNC_keymgmt_has_fn)(const void *keydata, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_has_fn *OSSL_FUNC_keymgmt_has(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_has_fn *)opf->function; }



typedef int (OSSL_FUNC_keymgmt_validate_fn)(const void *keydata, int selection, int checktype); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_validate_fn *OSSL_FUNC_keymgmt_validate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_validate_fn *)opf->function; }




typedef int (OSSL_FUNC_keymgmt_match_fn)(const void *keydata1, const void *keydata2, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_match_fn *OSSL_FUNC_keymgmt_match(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_match_fn *)opf->function; }
# 653 "../include/openssl/core_dispatch.h"
typedef int (OSSL_FUNC_keymgmt_import_fn)(void *keydata, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_import_fn *OSSL_FUNC_keymgmt_import(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_import_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_import_types_fn)(int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_import_types_fn *OSSL_FUNC_keymgmt_import_types(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_import_types_fn *)opf->function; }

typedef int (OSSL_FUNC_keymgmt_export_fn)(void *keydata, int selection, OSSL_CALLBACK *param_cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_export_fn *OSSL_FUNC_keymgmt_export(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_export_fn *)opf->function; }


typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_export_types_fn)(int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_export_types_fn *OSSL_FUNC_keymgmt_export_types(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_export_types_fn *)opf->function; }




typedef void * (OSSL_FUNC_keymgmt_dup_fn)(const void *keydata_from, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_dup_fn *OSSL_FUNC_keymgmt_dup(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_dup_fn *)opf->function; }





typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_import_types_ex_fn)(void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_import_types_ex_fn *OSSL_FUNC_keymgmt_import_types_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_import_types_ex_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keymgmt_export_types_ex_fn)(void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_export_types_ex_fn *OSSL_FUNC_keymgmt_export_types_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_export_types_ex_fn *)opf->function; }
# 689 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_keyexch_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_newctx_fn *OSSL_FUNC_keyexch_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_newctx_fn *)opf->function; }
typedef int (OSSL_FUNC_keyexch_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keyexch_init_fn *OSSL_FUNC_keyexch_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_init_fn *)opf->function; }

typedef int (OSSL_FUNC_keyexch_derive_fn)(void *ctx, unsigned char *secret, size_t *secretlen, size_t outlen); static __attribute__((unused)) inline OSSL_FUNC_keyexch_derive_fn *OSSL_FUNC_keyexch_derive(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_derive_fn *)opf->function; }

typedef int (OSSL_FUNC_keyexch_set_peer_fn)(void *ctx, void *provkey); static __attribute__((unused)) inline OSSL_FUNC_keyexch_set_peer_fn *OSSL_FUNC_keyexch_set_peer(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_set_peer_fn *)opf->function; }
typedef void (OSSL_FUNC_keyexch_freectx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_freectx_fn *OSSL_FUNC_keyexch_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_freectx_fn *)opf->function; }
typedef void * (OSSL_FUNC_keyexch_dupctx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_dupctx_fn *OSSL_FUNC_keyexch_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_dupctx_fn *)opf->function; }
typedef int (OSSL_FUNC_keyexch_set_ctx_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keyexch_set_ctx_params_fn *OSSL_FUNC_keyexch_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keyexch_settable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_settable_ctx_params_fn *OSSL_FUNC_keyexch_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_settable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_keyexch_get_ctx_params_fn)(void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keyexch_get_ctx_params_fn *OSSL_FUNC_keyexch_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_get_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_keyexch_gettable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_gettable_ctx_params_fn *OSSL_FUNC_keyexch_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_gettable_ctx_params_fn *)opf->function; }
# 734 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_signature_newctx_fn)(void *provctx, const char *propq); static __attribute__((unused)) inline OSSL_FUNC_signature_newctx_fn *OSSL_FUNC_signature_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_newctx_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_sign_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_init_fn *OSSL_FUNC_signature_sign_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_init_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_sign_fn)(void *ctx, unsigned char *sig, size_t *siglen, size_t sigsize, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_fn *OSSL_FUNC_signature_sign(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_fn *)opf->function; }



typedef int (OSSL_FUNC_signature_verify_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_init_fn *OSSL_FUNC_signature_verify_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_init_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_verify_fn)(void *ctx, const unsigned char *sig, size_t siglen, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_fn *OSSL_FUNC_signature_verify(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_fn *)opf->function; }




typedef int (OSSL_FUNC_signature_verify_recover_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_recover_init_fn *OSSL_FUNC_signature_verify_recover_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_recover_init_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_verify_recover_fn)(void *ctx, unsigned char *rout, size_t *routlen, size_t routsize, const unsigned char *sig, size_t siglen); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_recover_fn *OSSL_FUNC_signature_verify_recover(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_recover_fn *)opf->function; }


typedef int (OSSL_FUNC_signature_digest_sign_init_fn)(void *ctx, const char *mdname, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_init_fn *OSSL_FUNC_signature_digest_sign_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_init_fn *)opf->function; }


typedef int (OSSL_FUNC_signature_digest_sign_update_fn)(void *ctx, const unsigned char *data, size_t datalen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_update_fn *OSSL_FUNC_signature_digest_sign_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_update_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_digest_sign_final_fn)(void *ctx, unsigned char *sig, size_t *siglen, size_t sigsize); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_final_fn *OSSL_FUNC_signature_digest_sign_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_final_fn *)opf->function; }


typedef int (OSSL_FUNC_signature_digest_sign_fn)(void *ctx, unsigned char *sigret, size_t *siglen, size_t sigsize, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_fn *OSSL_FUNC_signature_digest_sign(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_fn *)opf->function; }


typedef int (OSSL_FUNC_signature_digest_verify_init_fn)(void *ctx, const char *mdname, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_init_fn *OSSL_FUNC_signature_digest_verify_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_init_fn *)opf->function; }


typedef int (OSSL_FUNC_signature_digest_verify_update_fn)(void *ctx, const unsigned char *data, size_t datalen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_update_fn *OSSL_FUNC_signature_digest_verify_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_update_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_digest_verify_final_fn)(void *ctx, const unsigned char *sig, size_t siglen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_final_fn *OSSL_FUNC_signature_digest_verify_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_final_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_digest_verify_fn)(void *ctx, const unsigned char *sig, size_t siglen, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_fn *OSSL_FUNC_signature_digest_verify(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_fn *)opf->function; }


typedef void (OSSL_FUNC_signature_freectx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_freectx_fn *OSSL_FUNC_signature_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_freectx_fn *)opf->function; }
typedef void * (OSSL_FUNC_signature_dupctx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_dupctx_fn *OSSL_FUNC_signature_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_dupctx_fn *)opf->function; }
typedef int (OSSL_FUNC_signature_get_ctx_params_fn)(void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_get_ctx_params_fn *OSSL_FUNC_signature_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_get_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_signature_gettable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_signature_gettable_ctx_params_fn *OSSL_FUNC_signature_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_gettable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_set_ctx_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_set_ctx_params_fn *OSSL_FUNC_signature_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_signature_settable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_signature_settable_ctx_params_fn *OSSL_FUNC_signature_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_settable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_get_ctx_md_params_fn)(void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_get_ctx_md_params_fn *OSSL_FUNC_signature_get_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_get_ctx_md_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_signature_gettable_ctx_md_params_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_gettable_ctx_md_params_fn *OSSL_FUNC_signature_gettable_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_gettable_ctx_md_params_fn *)opf->function; }

typedef int (OSSL_FUNC_signature_set_ctx_md_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_set_ctx_md_params_fn *OSSL_FUNC_signature_set_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_set_ctx_md_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_signature_settable_ctx_md_params_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_settable_ctx_md_params_fn *OSSL_FUNC_signature_settable_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_settable_ctx_md_params_fn *)opf->function; }
# 809 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_asym_cipher_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_newctx_fn *OSSL_FUNC_asym_cipher_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_newctx_fn *)opf->function; }
typedef int (OSSL_FUNC_asym_cipher_encrypt_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_encrypt_init_fn *OSSL_FUNC_asym_cipher_encrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_encrypt_init_fn *)opf->function; }

typedef int (OSSL_FUNC_asym_cipher_encrypt_fn)(void *ctx, unsigned char *out, size_t *outlen, size_t outsize, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_encrypt_fn *OSSL_FUNC_asym_cipher_encrypt(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_encrypt_fn *)opf->function; }




typedef int (OSSL_FUNC_asym_cipher_decrypt_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_decrypt_init_fn *OSSL_FUNC_asym_cipher_decrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_decrypt_init_fn *)opf->function; }

typedef int (OSSL_FUNC_asym_cipher_decrypt_fn)(void *ctx, unsigned char *out, size_t *outlen, size_t outsize, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_decrypt_fn *OSSL_FUNC_asym_cipher_decrypt(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_decrypt_fn *)opf->function; }




typedef void (OSSL_FUNC_asym_cipher_freectx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_freectx_fn *OSSL_FUNC_asym_cipher_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_freectx_fn *)opf->function; }
typedef void * (OSSL_FUNC_asym_cipher_dupctx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_dupctx_fn *OSSL_FUNC_asym_cipher_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_dupctx_fn *)opf->function; }
typedef int (OSSL_FUNC_asym_cipher_get_ctx_params_fn)(void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_get_ctx_params_fn *OSSL_FUNC_asym_cipher_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_get_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_asym_cipher_gettable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_gettable_ctx_params_fn *OSSL_FUNC_asym_cipher_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_gettable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_asym_cipher_set_ctx_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_set_ctx_params_fn *OSSL_FUNC_asym_cipher_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_asym_cipher_settable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_settable_ctx_params_fn *OSSL_FUNC_asym_cipher_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_settable_ctx_params_fn *)opf->function; }
# 850 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_kem_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kem_newctx_fn *OSSL_FUNC_kem_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_newctx_fn *)opf->function; }
typedef int (OSSL_FUNC_kem_encapsulate_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_encapsulate_init_fn *OSSL_FUNC_kem_encapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_encapsulate_init_fn *)opf->function; }

typedef int (OSSL_FUNC_kem_auth_encapsulate_init_fn)(void *ctx, void *provkey, void *authprivkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_auth_encapsulate_init_fn *OSSL_FUNC_kem_auth_encapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_auth_encapsulate_init_fn *)opf->function; }


typedef int (OSSL_FUNC_kem_encapsulate_fn)(void *ctx, unsigned char *out, size_t *outlen, unsigned char *secret, size_t *secretlen); static __attribute__((unused)) inline OSSL_FUNC_kem_encapsulate_fn *OSSL_FUNC_kem_encapsulate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_encapsulate_fn *)opf->function; }



typedef int (OSSL_FUNC_kem_decapsulate_init_fn)(void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_decapsulate_init_fn *OSSL_FUNC_kem_decapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_decapsulate_init_fn *)opf->function; }

typedef int (OSSL_FUNC_kem_auth_decapsulate_init_fn)(void *ctx, void *provkey, void *authpubkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_auth_decapsulate_init_fn *OSSL_FUNC_kem_auth_decapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_auth_decapsulate_init_fn *)opf->function; }


typedef int (OSSL_FUNC_kem_decapsulate_fn)(void *ctx, unsigned char *out, size_t *outlen, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_kem_decapsulate_fn *OSSL_FUNC_kem_decapsulate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_decapsulate_fn *)opf->function; }


typedef void (OSSL_FUNC_kem_freectx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_kem_freectx_fn *OSSL_FUNC_kem_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_freectx_fn *)opf->function; }
typedef void * (OSSL_FUNC_kem_dupctx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_kem_dupctx_fn *OSSL_FUNC_kem_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_dupctx_fn *)opf->function; }
typedef int (OSSL_FUNC_kem_get_ctx_params_fn)(void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_get_ctx_params_fn *OSSL_FUNC_kem_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_get_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_kem_gettable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kem_gettable_ctx_params_fn *OSSL_FUNC_kem_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_gettable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_kem_set_ctx_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_set_ctx_params_fn *OSSL_FUNC_kem_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_kem_settable_ctx_params_fn)(void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kem_settable_ctx_params_fn *OSSL_FUNC_kem_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_settable_ctx_params_fn *)opf->function; }
# 889 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_encoder_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_newctx_fn *OSSL_FUNC_encoder_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_newctx_fn *)opf->function; }
typedef void (OSSL_FUNC_encoder_freectx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_freectx_fn *OSSL_FUNC_encoder_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_freectx_fn *)opf->function; }
typedef int (OSSL_FUNC_encoder_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_encoder_get_params_fn *OSSL_FUNC_encoder_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_get_params_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_encoder_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_gettable_params_fn *OSSL_FUNC_encoder_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_gettable_params_fn *)opf->function; }

typedef int (OSSL_FUNC_encoder_set_ctx_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_encoder_set_ctx_params_fn *OSSL_FUNC_encoder_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_encoder_settable_ctx_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_settable_ctx_params_fn *OSSL_FUNC_encoder_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_settable_ctx_params_fn *)opf->function; }


typedef int (OSSL_FUNC_encoder_does_selection_fn)(void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_encoder_does_selection_fn *OSSL_FUNC_encoder_does_selection(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_does_selection_fn *)opf->function; }

typedef int (OSSL_FUNC_encoder_encode_fn)(void *ctx, OSSL_CORE_BIO *out, const void *obj_raw, const OSSL_PARAM obj_abstract[], int selection, OSSL_PASSPHRASE_CALLBACK *cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_encoder_encode_fn *OSSL_FUNC_encoder_encode(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_encode_fn *)opf->function; }





typedef void * (OSSL_FUNC_encoder_import_object_fn)(void *ctx, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_encoder_import_object_fn *OSSL_FUNC_encoder_import_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_import_object_fn *)opf->function; }

typedef void (OSSL_FUNC_encoder_free_object_fn)(void *obj); static __attribute__((unused)) inline OSSL_FUNC_encoder_free_object_fn *OSSL_FUNC_encoder_free_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_free_object_fn *)opf->function; }
# 920 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_decoder_newctx_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_newctx_fn *OSSL_FUNC_decoder_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_newctx_fn *)opf->function; }
typedef void (OSSL_FUNC_decoder_freectx_fn)(void *ctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_freectx_fn *OSSL_FUNC_decoder_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_freectx_fn *)opf->function; }
typedef int (OSSL_FUNC_decoder_get_params_fn)(OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_decoder_get_params_fn *OSSL_FUNC_decoder_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_get_params_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_decoder_gettable_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_gettable_params_fn *OSSL_FUNC_decoder_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_gettable_params_fn *)opf->function; }

typedef int (OSSL_FUNC_decoder_set_ctx_params_fn)(void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_decoder_set_ctx_params_fn *OSSL_FUNC_decoder_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_set_ctx_params_fn *)opf->function; }

typedef const OSSL_PARAM * (OSSL_FUNC_decoder_settable_ctx_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_settable_ctx_params_fn *OSSL_FUNC_decoder_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_settable_ctx_params_fn *)opf->function; }


typedef int (OSSL_FUNC_decoder_does_selection_fn)(void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_decoder_does_selection_fn *OSSL_FUNC_decoder_does_selection(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_does_selection_fn *)opf->function; }

typedef int (OSSL_FUNC_decoder_decode_fn)(void *ctx, OSSL_CORE_BIO *in, int selection, OSSL_CALLBACK *data_cb, void *data_cbarg, OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_decoder_decode_fn *OSSL_FUNC_decoder_decode(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_decode_fn *)opf->function; }



typedef int (OSSL_FUNC_decoder_export_object_fn)(void *ctx, const void *objref, size_t objref_sz, OSSL_CALLBACK *export_cb, void *export_cbarg); static __attribute__((unused)) inline OSSL_FUNC_decoder_export_object_fn *OSSL_FUNC_decoder_export_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_export_object_fn *)opf->function; }
# 962 "../include/openssl/core_dispatch.h"
typedef void * (OSSL_FUNC_store_open_fn)(void *provctx, const char *uri); static __attribute__((unused)) inline OSSL_FUNC_store_open_fn *OSSL_FUNC_store_open(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_open_fn *)opf->function; }
typedef void * (OSSL_FUNC_store_attach_fn)(void *provctx, OSSL_CORE_BIO *in); static __attribute__((unused)) inline OSSL_FUNC_store_attach_fn *OSSL_FUNC_store_attach(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_attach_fn *)opf->function; }
typedef const OSSL_PARAM * (OSSL_FUNC_store_settable_ctx_params_fn)(void *provctx); static __attribute__((unused)) inline OSSL_FUNC_store_settable_ctx_params_fn *OSSL_FUNC_store_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_settable_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_store_set_ctx_params_fn)(void *loaderctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_store_set_ctx_params_fn *OSSL_FUNC_store_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_set_ctx_params_fn *)opf->function; }

typedef int (OSSL_FUNC_store_load_fn)(void *loaderctx, OSSL_CALLBACK *object_cb, void *object_cbarg, OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_load_fn *OSSL_FUNC_store_load(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_load_fn *)opf->function; }



typedef int (OSSL_FUNC_store_eof_fn)(void *loaderctx); static __attribute__((unused)) inline OSSL_FUNC_store_eof_fn *OSSL_FUNC_store_eof(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_eof_fn *)opf->function; }
typedef int (OSSL_FUNC_store_close_fn)(void *loaderctx); static __attribute__((unused)) inline OSSL_FUNC_store_close_fn *OSSL_FUNC_store_close(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_close_fn *)opf->function; }
typedef int (OSSL_FUNC_store_export_object_fn)(void *loaderctx, const void *objref, size_t objref_sz, OSSL_CALLBACK *export_cb, void *export_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_export_object_fn *OSSL_FUNC_store_export_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_export_object_fn *)opf->function; }


typedef int (OSSL_FUNC_store_delete_fn)(void *provctx, const char *uri, const OSSL_PARAM params[], OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_delete_fn *OSSL_FUNC_store_delete(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_delete_fn *)opf->function; }


typedef void * (OSSL_FUNC_store_open_ex_fn)(void *provctx, const char *uri, const OSSL_PARAM params[], OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_open_ex_fn *OSSL_FUNC_store_open_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_open_ex_fn *)opf->function; }
# 29 "../include/openssl/evp.h" 2


# 1 "../include/openssl/evperr.h" 1
# 13 "../include/openssl/evperr.h"
        
# 32 "../include/openssl/evp.h" 2
# 44 "../include/openssl/evp.h"
# 1 "../include/openssl/objects.h" 1
# 12 "../include/openssl/objects.h"
        
# 22 "../include/openssl/objects.h"
# 1 "../include/openssl/objectserr.h" 1
# 13 "../include/openssl/objectserr.h"
        
# 23 "../include/openssl/objects.h" 2
# 43 "../include/openssl/objects.h"
typedef struct obj_name_st {
    int type;
    int alias;
    const char *name;
    const char *data;
} OBJ_NAME;



int OBJ_NAME_init(void);
int OBJ_NAME_new_index(unsigned long (*hash_func) (const char *),
                       int (*cmp_func) (const char *, const char *),
                       void (*free_func) (const char *, int, const char *));
const char *OBJ_NAME_get(const char *name, int type);
int OBJ_NAME_add(const char *name, int type, const char *data);
int OBJ_NAME_remove(const char *name, int type);
void OBJ_NAME_cleanup(int type);
void OBJ_NAME_do_all(int type, void (*fn) (const OBJ_NAME *, void *arg),
                     void *arg);
void OBJ_NAME_do_all_sorted(int type,
                            void (*fn) (const OBJ_NAME *, void *arg),
                            void *arg);

extern ASN1_OBJECT *OBJ_dup(const ASN1_OBJECT *a);
ASN1_OBJECT *OBJ_nid2obj(int n);
const char *OBJ_nid2ln(int n);
const char *OBJ_nid2sn(int n);
int OBJ_obj2nid(const ASN1_OBJECT *o);
ASN1_OBJECT *OBJ_txt2obj(const char *s, int no_name);
int OBJ_obj2txt(char *buf, int buf_len, const ASN1_OBJECT *a, int no_name);
int OBJ_txt2nid(const char *s);
int OBJ_ln2nid(const char *s);
int OBJ_sn2nid(const char *s);
int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b);
const void *OBJ_bsearch_(const void *key, const void *base, int num, int size,
                         int (*cmp) (const void *, const void *));
const void *OBJ_bsearch_ex_(const void *key, const void *base, int num,
                            int size,
                            int (*cmp) (const void *, const void *),
                            int flags);
# 163 "../include/openssl/objects.h"
int OBJ_new_nid(int num);
int OBJ_add_object(const ASN1_OBJECT *obj);
int OBJ_create(const char *oid, const char *sn, const char *ln);



int OBJ_create_objects(BIO *in);

size_t OBJ_length(const ASN1_OBJECT *obj);
const unsigned char *OBJ_get0_data(const ASN1_OBJECT *obj);

int OBJ_find_sigid_algs(int signid, int *pdig_nid, int *ppkey_nid);
int OBJ_find_sigid_by_algs(int *psignid, int dig_nid, int pkey_nid);
int OBJ_add_sigid(int signid, int dig_id, int pkey_id);
void OBJ_sigid_free(void);
# 45 "../include/openssl/evp.h" 2
# 100 "../include/openssl/evp.h"
int EVP_set_default_properties(OSSL_LIB_CTX *libctx, const char *propq);
int EVP_default_properties_is_fips_enabled(OSSL_LIB_CTX *libctx);
int EVP_default_properties_enable_fips(OSSL_LIB_CTX *libctx, int enable);
# 111 "../include/openssl/evp.h"
extern EVP_MD *EVP_MD_meth_new(int md_type, int pkey_type);
extern EVP_MD *EVP_MD_meth_dup(const EVP_MD *md);
extern void EVP_MD_meth_free(EVP_MD *md);
extern
int EVP_MD_meth_set_input_blocksize(EVP_MD *md, int blocksize);
extern
int EVP_MD_meth_set_result_size(EVP_MD *md, int resultsize);
extern
int EVP_MD_meth_set_app_datasize(EVP_MD *md, int datasize);
extern
int EVP_MD_meth_set_flags(EVP_MD *md, unsigned long flags);
extern
int EVP_MD_meth_set_init(EVP_MD *md, int (*init)(EVP_MD_CTX *ctx));
extern
int EVP_MD_meth_set_update(EVP_MD *md, int (*update)(EVP_MD_CTX *ctx,
                                                     const void *data,
                                                     size_t count));
extern
int EVP_MD_meth_set_final(EVP_MD *md, int (*final)(EVP_MD_CTX *ctx,
                                                   unsigned char *md));
extern
int EVP_MD_meth_set_copy(EVP_MD *md, int (*copy)(EVP_MD_CTX *to,
                                                 const EVP_MD_CTX *from));
extern
int EVP_MD_meth_set_cleanup(EVP_MD *md, int (*cleanup)(EVP_MD_CTX *ctx));
extern
int EVP_MD_meth_set_ctrl(EVP_MD *md, int (*ctrl)(EVP_MD_CTX *ctx, int cmd,
                                                 int p1, void *p2));
extern int EVP_MD_meth_get_input_blocksize(const EVP_MD *md);
extern int EVP_MD_meth_get_result_size(const EVP_MD *md);
extern int EVP_MD_meth_get_app_datasize(const EVP_MD *md);
extern unsigned long EVP_MD_meth_get_flags(const EVP_MD *md);
extern
int (*EVP_MD_meth_get_init(const EVP_MD *md))(EVP_MD_CTX *ctx);
extern
int (*EVP_MD_meth_get_update(const EVP_MD *md))(EVP_MD_CTX *ctx,
                                                const void *data, size_t count);
extern
int (*EVP_MD_meth_get_final(const EVP_MD *md))(EVP_MD_CTX *ctx,
                                               unsigned char *md);
extern
int (*EVP_MD_meth_get_copy(const EVP_MD *md))(EVP_MD_CTX *to,
                                              const EVP_MD_CTX *from);
extern
int (*EVP_MD_meth_get_cleanup(const EVP_MD *md))(EVP_MD_CTX *ctx);
extern
int (*EVP_MD_meth_get_ctrl(const EVP_MD *md))(EVP_MD_CTX *ctx, int cmd,
                                              int p1, void *p2);
# 235 "../include/openssl/evp.h"
extern
EVP_CIPHER *EVP_CIPHER_meth_new(int cipher_type, int block_size, int key_len);
extern
EVP_CIPHER *EVP_CIPHER_meth_dup(const EVP_CIPHER *cipher);
extern
void EVP_CIPHER_meth_free(EVP_CIPHER *cipher);
extern
int EVP_CIPHER_meth_set_iv_length(EVP_CIPHER *cipher, int iv_len);
extern
int EVP_CIPHER_meth_set_flags(EVP_CIPHER *cipher, unsigned long flags);
extern
int EVP_CIPHER_meth_set_impl_ctx_size(EVP_CIPHER *cipher, int ctx_size);
extern
int EVP_CIPHER_meth_set_init(EVP_CIPHER *cipher,
                             int (*init) (EVP_CIPHER_CTX *ctx,
                                          const unsigned char *key,
                                          const unsigned char *iv,
                                          int enc));
extern
int EVP_CIPHER_meth_set_do_cipher(EVP_CIPHER *cipher,
                                  int (*do_cipher) (EVP_CIPHER_CTX *ctx,
                                                    unsigned char *out,
                                                    const unsigned char *in,
                                                    size_t inl));
extern
int EVP_CIPHER_meth_set_cleanup(EVP_CIPHER *cipher,
                                int (*cleanup) (EVP_CIPHER_CTX *));
extern
int EVP_CIPHER_meth_set_set_asn1_params(EVP_CIPHER *cipher,
                                        int (*set_asn1_parameters) (EVP_CIPHER_CTX *,
                                                                    ASN1_TYPE *));
extern
int EVP_CIPHER_meth_set_get_asn1_params(EVP_CIPHER *cipher,
                                        int (*get_asn1_parameters) (EVP_CIPHER_CTX *,
                                                                    ASN1_TYPE *));
extern
int EVP_CIPHER_meth_set_ctrl(EVP_CIPHER *cipher,
                             int (*ctrl) (EVP_CIPHER_CTX *, int type,
                                          int arg, void *ptr));
extern int
(*EVP_CIPHER_meth_get_init(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *ctx,
                                                      const unsigned char *key,
                                                      const unsigned char *iv,
                                                      int enc);
extern int
(*EVP_CIPHER_meth_get_do_cipher(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *ctx,
                                                           unsigned char *out,
                                                           const unsigned char *in,
                                                           size_t inl);
extern int
(*EVP_CIPHER_meth_get_cleanup(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *);
extern int
(*EVP_CIPHER_meth_get_set_asn1_params(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *,
                                                                 ASN1_TYPE *);
extern int
(*EVP_CIPHER_meth_get_get_asn1_params(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *,
                                                                 ASN1_TYPE *);
extern int
(*EVP_CIPHER_meth_get_ctrl(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *, int type,
                                                      int arg, void *ptr);
# 453 "../include/openssl/evp.h"
typedef struct {
    unsigned char *out;
    const unsigned char *inp;
    size_t len;
    unsigned int interleave;
} EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM;
# 483 "../include/openssl/evp.h"
typedef struct evp_cipher_info_st {
    const EVP_CIPHER *cipher;
    unsigned char iv[16];
} EVP_CIPHER_INFO;



typedef int (EVP_PBE_KEYGEN) (EVP_CIPHER_CTX *ctx, const char *pass,
                              int passlen, ASN1_TYPE *param,
                              const EVP_CIPHER *cipher, const EVP_MD *md,
                              int en_de);

typedef int (EVP_PBE_KEYGEN_EX) (EVP_CIPHER_CTX *ctx, const char *pass,
                                 int passlen, ASN1_TYPE *param,
                                 const EVP_CIPHER *cipher, const EVP_MD *md,
                                 int en_de, OSSL_LIB_CTX *libctx, const char *propq);
# 536 "../include/openssl/evp.h"
int EVP_MD_get_type(const EVP_MD *md);


const char *EVP_MD_get0_name(const EVP_MD *md);

const char *EVP_MD_get0_description(const EVP_MD *md);
int EVP_MD_is_a(const EVP_MD *md, const char *name);
int EVP_MD_names_do_all(const EVP_MD *md,
                        void (*fn)(const char *name, void *data),
                        void *data);
const OSSL_PROVIDER *EVP_MD_get0_provider(const EVP_MD *md);
int EVP_MD_get_pkey_type(const EVP_MD *md);

int EVP_MD_get_size(const EVP_MD *md);

int EVP_MD_get_block_size(const EVP_MD *md);

unsigned long EVP_MD_get_flags(const EVP_MD *md);


const EVP_MD *EVP_MD_CTX_get0_md(const EVP_MD_CTX *ctx);
EVP_MD *EVP_MD_CTX_get1_md(EVP_MD_CTX *ctx);

extern
const EVP_MD *EVP_MD_CTX_md(const EVP_MD_CTX *ctx);
extern
int (*EVP_MD_CTX_update_fn(EVP_MD_CTX *ctx))(EVP_MD_CTX *ctx,
                                             const void *data, size_t count);
extern
void EVP_MD_CTX_set_update_fn(EVP_MD_CTX *ctx,
                              int (*update) (EVP_MD_CTX *ctx,
                                             const void *data, size_t count));
# 576 "../include/openssl/evp.h"
EVP_PKEY_CTX *EVP_MD_CTX_get_pkey_ctx(const EVP_MD_CTX *ctx);

void EVP_MD_CTX_set_pkey_ctx(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pctx);
void *EVP_MD_CTX_get0_md_data(const EVP_MD_CTX *ctx);


int EVP_CIPHER_get_nid(const EVP_CIPHER *cipher);

const char *EVP_CIPHER_get0_name(const EVP_CIPHER *cipher);

const char *EVP_CIPHER_get0_description(const EVP_CIPHER *cipher);
int EVP_CIPHER_is_a(const EVP_CIPHER *cipher, const char *name);
int EVP_CIPHER_names_do_all(const EVP_CIPHER *cipher,
                            void (*fn)(const char *name, void *data),
                            void *data);
const OSSL_PROVIDER *EVP_CIPHER_get0_provider(const EVP_CIPHER *cipher);
int EVP_CIPHER_get_block_size(const EVP_CIPHER *cipher);


extern
int EVP_CIPHER_impl_ctx_size(const EVP_CIPHER *cipher);

int EVP_CIPHER_get_key_length(const EVP_CIPHER *cipher);

int EVP_CIPHER_get_iv_length(const EVP_CIPHER *cipher);

unsigned long EVP_CIPHER_get_flags(const EVP_CIPHER *cipher);

int EVP_CIPHER_get_mode(const EVP_CIPHER *cipher);

int EVP_CIPHER_get_type(const EVP_CIPHER *cipher);

EVP_CIPHER *EVP_CIPHER_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                             const char *properties);
int EVP_CIPHER_up_ref(EVP_CIPHER *cipher);
void EVP_CIPHER_free(EVP_CIPHER *cipher);

const EVP_CIPHER *EVP_CIPHER_CTX_get0_cipher(const EVP_CIPHER_CTX *ctx);
EVP_CIPHER *EVP_CIPHER_CTX_get1_cipher(EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_is_encrypting(const EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_nid(const EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_block_size(const EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_key_length(const EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_iv_length(const EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_tag_length(const EVP_CIPHER_CTX *ctx);


const EVP_CIPHER *EVP_CIPHER_CTX_cipher(const EVP_CIPHER_CTX *ctx);
extern const unsigned char *EVP_CIPHER_CTX_iv(const EVP_CIPHER_CTX *ctx);
extern const unsigned char *EVP_CIPHER_CTX_original_iv(const EVP_CIPHER_CTX *ctx);
extern unsigned char *EVP_CIPHER_CTX_iv_noconst(EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_updated_iv(EVP_CIPHER_CTX *ctx, void *buf, size_t len);
int EVP_CIPHER_CTX_get_original_iv(EVP_CIPHER_CTX *ctx, void *buf, size_t len);

extern
unsigned char *EVP_CIPHER_CTX_buf_noconst(EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_num(const EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_set_num(EVP_CIPHER_CTX *ctx, int num);
EVP_CIPHER_CTX *EVP_CIPHER_CTX_dup(const EVP_CIPHER_CTX *in);
int EVP_CIPHER_CTX_copy(EVP_CIPHER_CTX *out, const EVP_CIPHER_CTX *in);
void *EVP_CIPHER_CTX_get_app_data(const EVP_CIPHER_CTX *ctx);
void EVP_CIPHER_CTX_set_app_data(EVP_CIPHER_CTX *ctx, void *data);
void *EVP_CIPHER_CTX_get_cipher_data(const EVP_CIPHER_CTX *ctx);
void *EVP_CIPHER_CTX_set_cipher_data(EVP_CIPHER_CTX *ctx, void *cipher_data);
# 680 "../include/openssl/evp.h"
 int EVP_Cipher(EVP_CIPHER_CTX *c,
                          unsigned char *out,
                          const unsigned char *in, unsigned int inl);
# 693 "../include/openssl/evp.h"
int EVP_MD_get_params(const EVP_MD *digest, OSSL_PARAM params[]);
int EVP_MD_CTX_set_params(EVP_MD_CTX *ctx, const OSSL_PARAM params[]);
int EVP_MD_CTX_get_params(EVP_MD_CTX *ctx, OSSL_PARAM params[]);
const OSSL_PARAM *EVP_MD_gettable_params(const EVP_MD *digest);
const OSSL_PARAM *EVP_MD_settable_ctx_params(const EVP_MD *md);
const OSSL_PARAM *EVP_MD_gettable_ctx_params(const EVP_MD *md);
const OSSL_PARAM *EVP_MD_CTX_settable_params(EVP_MD_CTX *ctx);
const OSSL_PARAM *EVP_MD_CTX_gettable_params(EVP_MD_CTX *ctx);
int EVP_MD_CTX_ctrl(EVP_MD_CTX *ctx, int cmd, int p1, void *p2);
EVP_MD_CTX *EVP_MD_CTX_new(void);
int EVP_MD_CTX_reset(EVP_MD_CTX *ctx);
void EVP_MD_CTX_free(EVP_MD_CTX *ctx);



 EVP_MD_CTX *EVP_MD_CTX_dup(const EVP_MD_CTX *in);
 int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in);
void EVP_MD_CTX_set_flags(EVP_MD_CTX *ctx, int flags);
void EVP_MD_CTX_clear_flags(EVP_MD_CTX *ctx, int flags);
int EVP_MD_CTX_test_flags(const EVP_MD_CTX *ctx, int flags);
 int EVP_DigestInit_ex2(EVP_MD_CTX *ctx, const EVP_MD *type,
                              const OSSL_PARAM params[]);
 int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type,
                                 ENGINE *impl);
 int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *d,
                                size_t cnt);
 int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned char *md,
                                  unsigned int *s);
 int EVP_Digest(const void *data, size_t count,
                          unsigned char *md, unsigned int *size,
                          const EVP_MD *type, ENGINE *impl);
 int EVP_Q_digest(OSSL_LIB_CTX *libctx, const char *name,
                        const char *propq, const void *data, size_t datalen,
                        unsigned char *md, size_t *mdlen);

 int EVP_MD_CTX_copy(EVP_MD_CTX *out, const EVP_MD_CTX *in);
 int EVP_DigestInit(EVP_MD_CTX *ctx, const EVP_MD *type);
 int EVP_DigestFinal(EVP_MD_CTX *ctx, unsigned char *md,
                           unsigned int *s);
 int EVP_DigestFinalXOF(EVP_MD_CTX *ctx, unsigned char *out,
                              size_t outlen);
 int EVP_DigestSqueeze(EVP_MD_CTX *ctx, unsigned char *out,
                             size_t outlen);

 EVP_MD *EVP_MD_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                            const char *properties);

int EVP_MD_up_ref(EVP_MD *md);
void EVP_MD_free(EVP_MD *md);

int EVP_read_pw_string(char *buf, int length, const char *prompt, int verify);
int EVP_read_pw_string_min(char *buf, int minlen, int maxlen,
                           const char *prompt, int verify);
void EVP_set_pw_prompt(const char *prompt);
char *EVP_get_pw_prompt(void);

 int EVP_BytesToKey(const EVP_CIPHER *type, const EVP_MD *md,
                          const unsigned char *salt,
                          const unsigned char *data, int datal, int count,
                          unsigned char *key, unsigned char *iv);

void EVP_CIPHER_CTX_set_flags(EVP_CIPHER_CTX *ctx, int flags);
void EVP_CIPHER_CTX_clear_flags(EVP_CIPHER_CTX *ctx, int flags);
int EVP_CIPHER_CTX_test_flags(const EVP_CIPHER_CTX *ctx, int flags);

 int EVP_EncryptInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                           const unsigned char *key, const unsigned char *iv);
 int EVP_EncryptInit_ex(EVP_CIPHER_CTX *ctx,
                                  const EVP_CIPHER *cipher, ENGINE *impl,
                                  const unsigned char *key,
                                  const unsigned char *iv);
 int EVP_EncryptInit_ex2(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                               const unsigned char *key,
                               const unsigned char *iv,
                               const OSSL_PARAM params[]);
 int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                 int *outl, const unsigned char *in, int inl);
 int EVP_EncryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                   int *outl);
 int EVP_EncryptFinal(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                int *outl);

 int EVP_DecryptInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                           const unsigned char *key, const unsigned char *iv);
 int EVP_DecryptInit_ex(EVP_CIPHER_CTX *ctx,
                                  const EVP_CIPHER *cipher, ENGINE *impl,
                                  const unsigned char *key,
                                  const unsigned char *iv);
 int EVP_DecryptInit_ex2(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                               const unsigned char *key,
                               const unsigned char *iv,
                               const OSSL_PARAM params[]);
 int EVP_DecryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                 int *outl, const unsigned char *in, int inl);
 int EVP_DecryptFinal(EVP_CIPHER_CTX *ctx, unsigned char *outm,
                            int *outl);
 int EVP_DecryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *outm,
                                   int *outl);

 int EVP_CipherInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                          const unsigned char *key, const unsigned char *iv,
                          int enc);
 int EVP_CipherInit_ex(EVP_CIPHER_CTX *ctx,
                                 const EVP_CIPHER *cipher, ENGINE *impl,
                                 const unsigned char *key,
                                 const unsigned char *iv, int enc);
 int EVP_CipherInit_ex2(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                              const unsigned char *key, const unsigned char *iv,
                              int enc, const OSSL_PARAM params[]);
 int EVP_CipherUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            int *outl, const unsigned char *in, int inl);
 int EVP_CipherFinal(EVP_CIPHER_CTX *ctx, unsigned char *outm,
                           int *outl);
 int EVP_CipherFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *outm,
                              int *outl);

 int EVP_SignFinal(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *s,
                         EVP_PKEY *pkey);
 int EVP_SignFinal_ex(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *s,
                            EVP_PKEY *pkey, OSSL_LIB_CTX *libctx,
                            const char *propq);

 int EVP_DigestSign(EVP_MD_CTX *ctx, unsigned char *sigret,
                          size_t *siglen, const unsigned char *tbs,
                          size_t tbslen);

 int EVP_VerifyFinal(EVP_MD_CTX *ctx, const unsigned char *sigbuf,
                           unsigned int siglen, EVP_PKEY *pkey);
 int EVP_VerifyFinal_ex(EVP_MD_CTX *ctx, const unsigned char *sigbuf,
                              unsigned int siglen, EVP_PKEY *pkey,
                              OSSL_LIB_CTX *libctx, const char *propq);

 int EVP_DigestVerify(EVP_MD_CTX *ctx, const unsigned char *sigret,
                            size_t siglen, const unsigned char *tbs,
                            size_t tbslen);

 int EVP_DigestSignInit_ex(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                          const char *mdname, OSSL_LIB_CTX *libctx,
                          const char *props, EVP_PKEY *pkey,
                          const OSSL_PARAM params[]);
 int EVP_DigestSignInit(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                                  const EVP_MD *type, ENGINE *e,
                                  EVP_PKEY *pkey);
 int EVP_DigestSignUpdate(EVP_MD_CTX *ctx, const void *data, size_t dsize);
 int EVP_DigestSignFinal(EVP_MD_CTX *ctx, unsigned char *sigret,
                               size_t *siglen);

 int EVP_DigestVerifyInit_ex(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                            const char *mdname, OSSL_LIB_CTX *libctx,
                            const char *props, EVP_PKEY *pkey,
                            const OSSL_PARAM params[]);
 int EVP_DigestVerifyInit(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                                const EVP_MD *type, ENGINE *e,
                                EVP_PKEY *pkey);
int EVP_DigestVerifyUpdate(EVP_MD_CTX *ctx, const void *data, size_t dsize);
 int EVP_DigestVerifyFinal(EVP_MD_CTX *ctx, const unsigned char *sig,
                                 size_t siglen);

 int EVP_OpenInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                        const unsigned char *ek, int ekl,
                        const unsigned char *iv, EVP_PKEY *priv);
 int EVP_OpenFinal(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl);

 int EVP_SealInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                        unsigned char **ek, int *ekl, unsigned char *iv,
                        EVP_PKEY **pubk, int npubk);
 int EVP_SealFinal(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl);

EVP_ENCODE_CTX *EVP_ENCODE_CTX_new(void);
void EVP_ENCODE_CTX_free(EVP_ENCODE_CTX *ctx);
int EVP_ENCODE_CTX_copy(EVP_ENCODE_CTX *dctx, const EVP_ENCODE_CTX *sctx);
int EVP_ENCODE_CTX_num(EVP_ENCODE_CTX *ctx);
void EVP_EncodeInit(EVP_ENCODE_CTX *ctx);
int EVP_EncodeUpdate(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl,
                     const unsigned char *in, int inl);
void EVP_EncodeFinal(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl);
int EVP_EncodeBlock(unsigned char *t, const unsigned char *f, int n);

void EVP_DecodeInit(EVP_ENCODE_CTX *ctx);
int EVP_DecodeUpdate(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl,
                     const unsigned char *in, int inl);
int EVP_DecodeFinal(EVP_ENCODE_CTX *ctx, unsigned
                    char *out, int *outl);
int EVP_DecodeBlock(unsigned char *t, const unsigned char *f, int n);





EVP_CIPHER_CTX *EVP_CIPHER_CTX_new(void);
int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *c);
void EVP_CIPHER_CTX_free(EVP_CIPHER_CTX *c);
int EVP_CIPHER_CTX_set_key_length(EVP_CIPHER_CTX *x, int keylen);
int EVP_CIPHER_CTX_set_padding(EVP_CIPHER_CTX *c, int pad);
int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr);
int EVP_CIPHER_CTX_rand_key(EVP_CIPHER_CTX *ctx, unsigned char *key);
int EVP_CIPHER_get_params(EVP_CIPHER *cipher, OSSL_PARAM params[]);
int EVP_CIPHER_CTX_set_params(EVP_CIPHER_CTX *ctx, const OSSL_PARAM params[]);
int EVP_CIPHER_CTX_get_params(EVP_CIPHER_CTX *ctx, OSSL_PARAM params[]);
const OSSL_PARAM *EVP_CIPHER_gettable_params(const EVP_CIPHER *cipher);
const OSSL_PARAM *EVP_CIPHER_settable_ctx_params(const EVP_CIPHER *cipher);
const OSSL_PARAM *EVP_CIPHER_gettable_ctx_params(const EVP_CIPHER *cipher);
const OSSL_PARAM *EVP_CIPHER_CTX_settable_params(EVP_CIPHER_CTX *ctx);
const OSSL_PARAM *EVP_CIPHER_CTX_gettable_params(EVP_CIPHER_CTX *ctx);

const BIO_METHOD *BIO_f_md(void);
const BIO_METHOD *BIO_f_base64(void);
const BIO_METHOD *BIO_f_cipher(void);
const BIO_METHOD *BIO_f_reliable(void);
 int BIO_set_cipher(BIO *b, const EVP_CIPHER *c, const unsigned char *k,
                          const unsigned char *i, int enc);

const EVP_MD *EVP_md_null(void);




const EVP_MD *EVP_md4(void);


const EVP_MD *EVP_md5(void);
const EVP_MD *EVP_md5_sha1(void);


const EVP_MD *EVP_blake2b512(void);
const EVP_MD *EVP_blake2s256(void);

const EVP_MD *EVP_sha1(void);
const EVP_MD *EVP_sha224(void);
const EVP_MD *EVP_sha256(void);
const EVP_MD *EVP_sha384(void);
const EVP_MD *EVP_sha512(void);
const EVP_MD *EVP_sha512_224(void);
const EVP_MD *EVP_sha512_256(void);
const EVP_MD *EVP_sha3_224(void);
const EVP_MD *EVP_sha3_256(void);
const EVP_MD *EVP_sha3_384(void);
const EVP_MD *EVP_sha3_512(void);
const EVP_MD *EVP_shake128(void);
const EVP_MD *EVP_shake256(void);


const EVP_MD *EVP_mdc2(void);


const EVP_MD *EVP_ripemd160(void);


const EVP_MD *EVP_whirlpool(void);


const EVP_MD *EVP_sm3(void);

const EVP_CIPHER *EVP_enc_null(void);

const EVP_CIPHER *EVP_des_ecb(void);
const EVP_CIPHER *EVP_des_ede(void);
const EVP_CIPHER *EVP_des_ede3(void);
const EVP_CIPHER *EVP_des_ede_ecb(void);
const EVP_CIPHER *EVP_des_ede3_ecb(void);
const EVP_CIPHER *EVP_des_cfb64(void);

const EVP_CIPHER *EVP_des_cfb1(void);
const EVP_CIPHER *EVP_des_cfb8(void);
const EVP_CIPHER *EVP_des_ede_cfb64(void);

const EVP_CIPHER *EVP_des_ede3_cfb64(void);

const EVP_CIPHER *EVP_des_ede3_cfb1(void);
const EVP_CIPHER *EVP_des_ede3_cfb8(void);
const EVP_CIPHER *EVP_des_ofb(void);
const EVP_CIPHER *EVP_des_ede_ofb(void);
const EVP_CIPHER *EVP_des_ede3_ofb(void);
const EVP_CIPHER *EVP_des_cbc(void);
const EVP_CIPHER *EVP_des_ede_cbc(void);
const EVP_CIPHER *EVP_des_ede3_cbc(void);
const EVP_CIPHER *EVP_desx_cbc(void);
const EVP_CIPHER *EVP_des_ede3_wrap(void);







const EVP_CIPHER *EVP_rc4(void);
const EVP_CIPHER *EVP_rc4_40(void);

const EVP_CIPHER *EVP_rc4_hmac_md5(void);



const EVP_CIPHER *EVP_idea_ecb(void);
const EVP_CIPHER *EVP_idea_cfb64(void);

const EVP_CIPHER *EVP_idea_ofb(void);
const EVP_CIPHER *EVP_idea_cbc(void);


const EVP_CIPHER *EVP_rc2_ecb(void);
const EVP_CIPHER *EVP_rc2_cbc(void);
const EVP_CIPHER *EVP_rc2_40_cbc(void);
const EVP_CIPHER *EVP_rc2_64_cbc(void);
const EVP_CIPHER *EVP_rc2_cfb64(void);

const EVP_CIPHER *EVP_rc2_ofb(void);


const EVP_CIPHER *EVP_bf_ecb(void);
const EVP_CIPHER *EVP_bf_cbc(void);
const EVP_CIPHER *EVP_bf_cfb64(void);

const EVP_CIPHER *EVP_bf_ofb(void);


const EVP_CIPHER *EVP_cast5_ecb(void);
const EVP_CIPHER *EVP_cast5_cbc(void);
const EVP_CIPHER *EVP_cast5_cfb64(void);

const EVP_CIPHER *EVP_cast5_ofb(void);
# 1021 "../include/openssl/evp.h"
const EVP_CIPHER *EVP_aes_128_ecb(void);
const EVP_CIPHER *EVP_aes_128_cbc(void);
const EVP_CIPHER *EVP_aes_128_cfb1(void);
const EVP_CIPHER *EVP_aes_128_cfb8(void);
const EVP_CIPHER *EVP_aes_128_cfb128(void);

const EVP_CIPHER *EVP_aes_128_ofb(void);
const EVP_CIPHER *EVP_aes_128_ctr(void);
const EVP_CIPHER *EVP_aes_128_ccm(void);
const EVP_CIPHER *EVP_aes_128_gcm(void);
const EVP_CIPHER *EVP_aes_128_xts(void);
const EVP_CIPHER *EVP_aes_128_wrap(void);
const EVP_CIPHER *EVP_aes_128_wrap_pad(void);

const EVP_CIPHER *EVP_aes_128_ocb(void);

const EVP_CIPHER *EVP_aes_192_ecb(void);
const EVP_CIPHER *EVP_aes_192_cbc(void);
const EVP_CIPHER *EVP_aes_192_cfb1(void);
const EVP_CIPHER *EVP_aes_192_cfb8(void);
const EVP_CIPHER *EVP_aes_192_cfb128(void);

const EVP_CIPHER *EVP_aes_192_ofb(void);
const EVP_CIPHER *EVP_aes_192_ctr(void);
const EVP_CIPHER *EVP_aes_192_ccm(void);
const EVP_CIPHER *EVP_aes_192_gcm(void);
const EVP_CIPHER *EVP_aes_192_wrap(void);
const EVP_CIPHER *EVP_aes_192_wrap_pad(void);

const EVP_CIPHER *EVP_aes_192_ocb(void);

const EVP_CIPHER *EVP_aes_256_ecb(void);
const EVP_CIPHER *EVP_aes_256_cbc(void);
const EVP_CIPHER *EVP_aes_256_cfb1(void);
const EVP_CIPHER *EVP_aes_256_cfb8(void);
const EVP_CIPHER *EVP_aes_256_cfb128(void);

const EVP_CIPHER *EVP_aes_256_ofb(void);
const EVP_CIPHER *EVP_aes_256_ctr(void);
const EVP_CIPHER *EVP_aes_256_ccm(void);
const EVP_CIPHER *EVP_aes_256_gcm(void);
const EVP_CIPHER *EVP_aes_256_xts(void);
const EVP_CIPHER *EVP_aes_256_wrap(void);
const EVP_CIPHER *EVP_aes_256_wrap_pad(void);

const EVP_CIPHER *EVP_aes_256_ocb(void);

const EVP_CIPHER *EVP_aes_128_cbc_hmac_sha1(void);
const EVP_CIPHER *EVP_aes_256_cbc_hmac_sha1(void);
const EVP_CIPHER *EVP_aes_128_cbc_hmac_sha256(void);
const EVP_CIPHER *EVP_aes_256_cbc_hmac_sha256(void);

const EVP_CIPHER *EVP_aria_128_ecb(void);
const EVP_CIPHER *EVP_aria_128_cbc(void);
const EVP_CIPHER *EVP_aria_128_cfb1(void);
const EVP_CIPHER *EVP_aria_128_cfb8(void);
const EVP_CIPHER *EVP_aria_128_cfb128(void);

const EVP_CIPHER *EVP_aria_128_ctr(void);
const EVP_CIPHER *EVP_aria_128_ofb(void);
const EVP_CIPHER *EVP_aria_128_gcm(void);
const EVP_CIPHER *EVP_aria_128_ccm(void);
const EVP_CIPHER *EVP_aria_192_ecb(void);
const EVP_CIPHER *EVP_aria_192_cbc(void);
const EVP_CIPHER *EVP_aria_192_cfb1(void);
const EVP_CIPHER *EVP_aria_192_cfb8(void);
const EVP_CIPHER *EVP_aria_192_cfb128(void);

const EVP_CIPHER *EVP_aria_192_ctr(void);
const EVP_CIPHER *EVP_aria_192_ofb(void);
const EVP_CIPHER *EVP_aria_192_gcm(void);
const EVP_CIPHER *EVP_aria_192_ccm(void);
const EVP_CIPHER *EVP_aria_256_ecb(void);
const EVP_CIPHER *EVP_aria_256_cbc(void);
const EVP_CIPHER *EVP_aria_256_cfb1(void);
const EVP_CIPHER *EVP_aria_256_cfb8(void);
const EVP_CIPHER *EVP_aria_256_cfb128(void);

const EVP_CIPHER *EVP_aria_256_ctr(void);
const EVP_CIPHER *EVP_aria_256_ofb(void);
const EVP_CIPHER *EVP_aria_256_gcm(void);
const EVP_CIPHER *EVP_aria_256_ccm(void);


const EVP_CIPHER *EVP_camellia_128_ecb(void);
const EVP_CIPHER *EVP_camellia_128_cbc(void);
const EVP_CIPHER *EVP_camellia_128_cfb1(void);
const EVP_CIPHER *EVP_camellia_128_cfb8(void);
const EVP_CIPHER *EVP_camellia_128_cfb128(void);

const EVP_CIPHER *EVP_camellia_128_ofb(void);
const EVP_CIPHER *EVP_camellia_128_ctr(void);
const EVP_CIPHER *EVP_camellia_192_ecb(void);
const EVP_CIPHER *EVP_camellia_192_cbc(void);
const EVP_CIPHER *EVP_camellia_192_cfb1(void);
const EVP_CIPHER *EVP_camellia_192_cfb8(void);
const EVP_CIPHER *EVP_camellia_192_cfb128(void);

const EVP_CIPHER *EVP_camellia_192_ofb(void);
const EVP_CIPHER *EVP_camellia_192_ctr(void);
const EVP_CIPHER *EVP_camellia_256_ecb(void);
const EVP_CIPHER *EVP_camellia_256_cbc(void);
const EVP_CIPHER *EVP_camellia_256_cfb1(void);
const EVP_CIPHER *EVP_camellia_256_cfb8(void);
const EVP_CIPHER *EVP_camellia_256_cfb128(void);

const EVP_CIPHER *EVP_camellia_256_ofb(void);
const EVP_CIPHER *EVP_camellia_256_ctr(void);


const EVP_CIPHER *EVP_chacha20(void);

const EVP_CIPHER *EVP_chacha20_poly1305(void);




const EVP_CIPHER *EVP_seed_ecb(void);
const EVP_CIPHER *EVP_seed_cbc(void);
const EVP_CIPHER *EVP_seed_cfb128(void);

const EVP_CIPHER *EVP_seed_ofb(void);



const EVP_CIPHER *EVP_sm4_ecb(void);
const EVP_CIPHER *EVP_sm4_cbc(void);
const EVP_CIPHER *EVP_sm4_cfb128(void);

const EVP_CIPHER *EVP_sm4_ofb(void);
const EVP_CIPHER *EVP_sm4_ctr(void);
# 1177 "../include/openssl/evp.h"
int EVP_add_cipher(const EVP_CIPHER *cipher);
int EVP_add_digest(const EVP_MD *digest);

const EVP_CIPHER *EVP_get_cipherbyname(const char *name);
const EVP_MD *EVP_get_digestbyname(const char *name);

void EVP_CIPHER_do_all(void (*fn) (const EVP_CIPHER *ciph,
                                   const char *from, const char *to, void *x),
                       void *arg);
void EVP_CIPHER_do_all_sorted(void (*fn)
                               (const EVP_CIPHER *ciph, const char *from,
                                const char *to, void *x), void *arg);
void EVP_CIPHER_do_all_provided(OSSL_LIB_CTX *libctx,
                                void (*fn)(EVP_CIPHER *cipher, void *arg),
                                void *arg);

void EVP_MD_do_all(void (*fn) (const EVP_MD *ciph,
                               const char *from, const char *to, void *x),
                   void *arg);
void EVP_MD_do_all_sorted(void (*fn)
                           (const EVP_MD *ciph, const char *from,
                            const char *to, void *x), void *arg);
void EVP_MD_do_all_provided(OSSL_LIB_CTX *libctx,
                            void (*fn)(EVP_MD *md, void *arg),
                            void *arg);



EVP_MAC *EVP_MAC_fetch(OSSL_LIB_CTX *libctx, const char *algorithm,
                       const char *properties);
int EVP_MAC_up_ref(EVP_MAC *mac);
void EVP_MAC_free(EVP_MAC *mac);
const char *EVP_MAC_get0_name(const EVP_MAC *mac);
const char *EVP_MAC_get0_description(const EVP_MAC *mac);
int EVP_MAC_is_a(const EVP_MAC *mac, const char *name);
const OSSL_PROVIDER *EVP_MAC_get0_provider(const EVP_MAC *mac);
int EVP_MAC_get_params(EVP_MAC *mac, OSSL_PARAM params[]);

EVP_MAC_CTX *EVP_MAC_CTX_new(EVP_MAC *mac);
void EVP_MAC_CTX_free(EVP_MAC_CTX *ctx);
EVP_MAC_CTX *EVP_MAC_CTX_dup(const EVP_MAC_CTX *src);
EVP_MAC *EVP_MAC_CTX_get0_mac(EVP_MAC_CTX *ctx);
int EVP_MAC_CTX_get_params(EVP_MAC_CTX *ctx, OSSL_PARAM params[]);
int EVP_MAC_CTX_set_params(EVP_MAC_CTX *ctx, const OSSL_PARAM params[]);

size_t EVP_MAC_CTX_get_mac_size(EVP_MAC_CTX *ctx);
size_t EVP_MAC_CTX_get_block_size(EVP_MAC_CTX *ctx);
unsigned char *EVP_Q_mac(OSSL_LIB_CTX *libctx, const char *name, const char *propq,
                         const char *subalg, const OSSL_PARAM *params,
                         const void *key, size_t keylen,
                         const unsigned char *data, size_t datalen,
                         unsigned char *out, size_t outsize, size_t *outlen);
int EVP_MAC_init(EVP_MAC_CTX *ctx, const unsigned char *key, size_t keylen,
                 const OSSL_PARAM params[]);
int EVP_MAC_update(EVP_MAC_CTX *ctx, const unsigned char *data, size_t datalen);
int EVP_MAC_final(EVP_MAC_CTX *ctx,
                  unsigned char *out, size_t *outl, size_t outsize);
int EVP_MAC_finalXOF(EVP_MAC_CTX *ctx, unsigned char *out, size_t outsize);
const OSSL_PARAM *EVP_MAC_gettable_params(const EVP_MAC *mac);
const OSSL_PARAM *EVP_MAC_gettable_ctx_params(const EVP_MAC *mac);
const OSSL_PARAM *EVP_MAC_settable_ctx_params(const EVP_MAC *mac);
const OSSL_PARAM *EVP_MAC_CTX_gettable_params(EVP_MAC_CTX *ctx);
const OSSL_PARAM *EVP_MAC_CTX_settable_params(EVP_MAC_CTX *ctx);

void EVP_MAC_do_all_provided(OSSL_LIB_CTX *libctx,
                             void (*fn)(EVP_MAC *mac, void *arg),
                             void *arg);
int EVP_MAC_names_do_all(const EVP_MAC *mac,
                         void (*fn)(const char *name, void *data),
                         void *data);


EVP_RAND *EVP_RAND_fetch(OSSL_LIB_CTX *libctx, const char *algorithm,
                         const char *properties);
int EVP_RAND_up_ref(EVP_RAND *rand);
void EVP_RAND_free(EVP_RAND *rand);
const char *EVP_RAND_get0_name(const EVP_RAND *rand);
const char *EVP_RAND_get0_description(const EVP_RAND *md);
int EVP_RAND_is_a(const EVP_RAND *rand, const char *name);
const OSSL_PROVIDER *EVP_RAND_get0_provider(const EVP_RAND *rand);
int EVP_RAND_get_params(EVP_RAND *rand, OSSL_PARAM params[]);

EVP_RAND_CTX *EVP_RAND_CTX_new(EVP_RAND *rand, EVP_RAND_CTX *parent);
int EVP_RAND_CTX_up_ref(EVP_RAND_CTX *ctx);
void EVP_RAND_CTX_free(EVP_RAND_CTX *ctx);
EVP_RAND *EVP_RAND_CTX_get0_rand(EVP_RAND_CTX *ctx);
int EVP_RAND_CTX_get_params(EVP_RAND_CTX *ctx, OSSL_PARAM params[]);
int EVP_RAND_CTX_set_params(EVP_RAND_CTX *ctx, const OSSL_PARAM params[]);
const OSSL_PARAM *EVP_RAND_gettable_params(const EVP_RAND *rand);
const OSSL_PARAM *EVP_RAND_gettable_ctx_params(const EVP_RAND *rand);
const OSSL_PARAM *EVP_RAND_settable_ctx_params(const EVP_RAND *rand);
const OSSL_PARAM *EVP_RAND_CTX_gettable_params(EVP_RAND_CTX *ctx);
const OSSL_PARAM *EVP_RAND_CTX_settable_params(EVP_RAND_CTX *ctx);

void EVP_RAND_do_all_provided(OSSL_LIB_CTX *libctx,
                              void (*fn)(EVP_RAND *rand, void *arg),
                              void *arg);
int EVP_RAND_names_do_all(const EVP_RAND *rand,
                          void (*fn)(const char *name, void *data),
                          void *data);

 int EVP_RAND_instantiate(EVP_RAND_CTX *ctx, unsigned int strength,
                                int prediction_resistance,
                                const unsigned char *pstr, size_t pstr_len,
                                const OSSL_PARAM params[]);
int EVP_RAND_uninstantiate(EVP_RAND_CTX *ctx);
 int EVP_RAND_generate(EVP_RAND_CTX *ctx, unsigned char *out,
                             size_t outlen, unsigned int strength,
                             int prediction_resistance,
                             const unsigned char *addin, size_t addin_len);
int EVP_RAND_reseed(EVP_RAND_CTX *ctx, int prediction_resistance,
                    const unsigned char *ent, size_t ent_len,
                    const unsigned char *addin, size_t addin_len);
 int EVP_RAND_nonce(EVP_RAND_CTX *ctx, unsigned char *out, size_t outlen);
 int EVP_RAND_enable_locking(EVP_RAND_CTX *ctx);

int EVP_RAND_verify_zeroization(EVP_RAND_CTX *ctx);
unsigned int EVP_RAND_get_strength(EVP_RAND_CTX *ctx);
int EVP_RAND_get_state(EVP_RAND_CTX *ctx);







extern int EVP_PKEY_decrypt_old(unsigned char *dec_key,
                                          const unsigned char *enc_key,
                                          int enc_key_len,
                                          EVP_PKEY *private_key);
extern int EVP_PKEY_encrypt_old(unsigned char *enc_key,
                                          const unsigned char *key,
                                          int key_len, EVP_PKEY *pub_key);

int EVP_PKEY_is_a(const EVP_PKEY *pkey, const char *name);
int EVP_PKEY_type_names_do_all(const EVP_PKEY *pkey,
                               void (*fn)(const char *name, void *data),
                               void *data);
int EVP_PKEY_type(int type);
int EVP_PKEY_get_id(const EVP_PKEY *pkey);

int EVP_PKEY_get_base_id(const EVP_PKEY *pkey);

int EVP_PKEY_get_bits(const EVP_PKEY *pkey);

int EVP_PKEY_get_security_bits(const EVP_PKEY *pkey);

int EVP_PKEY_get_size(const EVP_PKEY *pkey);

int EVP_PKEY_can_sign(const EVP_PKEY *pkey);
int EVP_PKEY_set_type(EVP_PKEY *pkey, int type);
int EVP_PKEY_set_type_str(EVP_PKEY *pkey, const char *str, int len);
int EVP_PKEY_set_type_by_keymgmt(EVP_PKEY *pkey, EVP_KEYMGMT *keymgmt);


extern
int EVP_PKEY_set1_engine(EVP_PKEY *pkey, ENGINE *e);
extern
ENGINE *EVP_PKEY_get0_engine(const EVP_PKEY *pkey);

extern
int EVP_PKEY_assign(EVP_PKEY *pkey, int type, void *key);
extern
void *EVP_PKEY_get0(const EVP_PKEY *pkey);
extern
const unsigned char *EVP_PKEY_get0_hmac(const EVP_PKEY *pkey, size_t *len);

extern
const unsigned char *EVP_PKEY_get0_poly1305(const EVP_PKEY *pkey, size_t *len);


extern
const unsigned char *EVP_PKEY_get0_siphash(const EVP_PKEY *pkey, size_t *len);


struct rsa_st;
extern
int EVP_PKEY_set1_RSA(EVP_PKEY *pkey, struct rsa_st *key);
extern
const struct rsa_st *EVP_PKEY_get0_RSA(const EVP_PKEY *pkey);
extern
struct rsa_st *EVP_PKEY_get1_RSA(EVP_PKEY *pkey);


struct dsa_st;
extern
int EVP_PKEY_set1_DSA(EVP_PKEY *pkey, struct dsa_st *key);
extern
const struct dsa_st *EVP_PKEY_get0_DSA(const EVP_PKEY *pkey);
extern
struct dsa_st *EVP_PKEY_get1_DSA(EVP_PKEY *pkey);



struct dh_st;
extern int EVP_PKEY_set1_DH(EVP_PKEY *pkey, struct dh_st *key);
extern const struct dh_st *EVP_PKEY_get0_DH(const EVP_PKEY *pkey);
extern struct dh_st *EVP_PKEY_get1_DH(EVP_PKEY *pkey);



struct ec_key_st;
extern
int EVP_PKEY_set1_EC_KEY(EVP_PKEY *pkey, struct ec_key_st *key);
extern
const struct ec_key_st *EVP_PKEY_get0_EC_KEY(const EVP_PKEY *pkey);
extern
struct ec_key_st *EVP_PKEY_get1_EC_KEY(EVP_PKEY *pkey);



EVP_PKEY *EVP_PKEY_new(void);
int EVP_PKEY_up_ref(EVP_PKEY *pkey);
EVP_PKEY *EVP_PKEY_dup(EVP_PKEY *pkey);
void EVP_PKEY_free(EVP_PKEY *pkey);
const char *EVP_PKEY_get0_description(const EVP_PKEY *pkey);
const OSSL_PROVIDER *EVP_PKEY_get0_provider(const EVP_PKEY *key);

EVP_PKEY *d2i_PublicKey(int type, EVP_PKEY **a, const unsigned char **pp,
                        long length);
int i2d_PublicKey(const EVP_PKEY *a, unsigned char **pp);


EVP_PKEY *d2i_PrivateKey_ex(int type, EVP_PKEY **a, const unsigned char **pp,
                            long length, OSSL_LIB_CTX *libctx,
                            const char *propq);
EVP_PKEY *d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned char **pp,
                         long length);
EVP_PKEY *d2i_AutoPrivateKey_ex(EVP_PKEY **a, const unsigned char **pp,
                                long length, OSSL_LIB_CTX *libctx,
                                const char *propq);
EVP_PKEY *d2i_AutoPrivateKey(EVP_PKEY **a, const unsigned char **pp,
                             long length);
int i2d_PrivateKey(const EVP_PKEY *a, unsigned char **pp);

int i2d_KeyParams(const EVP_PKEY *a, unsigned char **pp);
EVP_PKEY *d2i_KeyParams(int type, EVP_PKEY **a, const unsigned char **pp,
                        long length);
int i2d_KeyParams_bio(BIO *bp, const EVP_PKEY *pkey);
EVP_PKEY *d2i_KeyParams_bio(int type, EVP_PKEY **a, BIO *in);

int EVP_PKEY_copy_parameters(EVP_PKEY *to, const EVP_PKEY *from);
int EVP_PKEY_missing_parameters(const EVP_PKEY *pkey);
int EVP_PKEY_save_parameters(EVP_PKEY *pkey, int mode);
int EVP_PKEY_parameters_eq(const EVP_PKEY *a, const EVP_PKEY *b);
int EVP_PKEY_eq(const EVP_PKEY *a, const EVP_PKEY *b);


extern
int EVP_PKEY_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b);
extern
int EVP_PKEY_cmp(const EVP_PKEY *a, const EVP_PKEY *b);


int EVP_PKEY_print_public(BIO *out, const EVP_PKEY *pkey,
                          int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_private(BIO *out, const EVP_PKEY *pkey,
                           int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_params(BIO *out, const EVP_PKEY *pkey,
                          int indent, ASN1_PCTX *pctx);

int EVP_PKEY_print_public_fp(FILE *fp, const EVP_PKEY *pkey,
                             int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_private_fp(FILE *fp, const EVP_PKEY *pkey,
                              int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_params_fp(FILE *fp, const EVP_PKEY *pkey,
                             int indent, ASN1_PCTX *pctx);


int EVP_PKEY_get_default_digest_nid(EVP_PKEY *pkey, int *pnid);
int EVP_PKEY_get_default_digest_name(EVP_PKEY *pkey,
                                     char *mdname, size_t mdname_sz);
int EVP_PKEY_digestsign_supports_digest(EVP_PKEY *pkey, OSSL_LIB_CTX *libctx,
                                        const char *name, const char *propq);
# 1461 "../include/openssl/evp.h"
int EVP_PKEY_set1_encoded_public_key(EVP_PKEY *pkey,
                                     const unsigned char *pub, size_t publen);
# 1473 "../include/openssl/evp.h"
size_t EVP_PKEY_get1_encoded_public_key(EVP_PKEY *pkey, unsigned char **ppub);


int EVP_CIPHER_param_to_asn1(EVP_CIPHER_CTX *c, ASN1_TYPE *type);
int EVP_CIPHER_asn1_to_param(EVP_CIPHER_CTX *c, ASN1_TYPE *type);


int EVP_CIPHER_set_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type);
int EVP_CIPHER_get_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type);


int PKCS5_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen,
                       ASN1_TYPE *param, const EVP_CIPHER *cipher,
                       const EVP_MD *md, int en_de);
int PKCS5_PBE_keyivgen_ex(EVP_CIPHER_CTX *cctx, const char *pass, int passlen,
                          ASN1_TYPE *param, const EVP_CIPHER *cipher,
                          const EVP_MD *md, int en_de, OSSL_LIB_CTX *libctx,
                          const char *propq);
int PKCS5_PBKDF2_HMAC_SHA1(const char *pass, int passlen,
                           const unsigned char *salt, int saltlen, int iter,
                           int keylen, unsigned char *out);
int PKCS5_PBKDF2_HMAC(const char *pass, int passlen,
                      const unsigned char *salt, int saltlen, int iter,
                      const EVP_MD *digest, int keylen, unsigned char *out);
int PKCS5_v2_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen,
                          ASN1_TYPE *param, const EVP_CIPHER *cipher,
                          const EVP_MD *md, int en_de);
int PKCS5_v2_PBE_keyivgen_ex(EVP_CIPHER_CTX *ctx, const char *pass, int passlen,
                             ASN1_TYPE *param, const EVP_CIPHER *cipher,
                             const EVP_MD *md, int en_de,
                             OSSL_LIB_CTX *libctx, const char *propq);


int EVP_PBE_scrypt(const char *pass, size_t passlen,
                   const unsigned char *salt, size_t saltlen,
                   uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
                   unsigned char *key, size_t keylen);
int EVP_PBE_scrypt_ex(const char *pass, size_t passlen,
                      const unsigned char *salt, size_t saltlen,
                      uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
                      unsigned char *key, size_t keylen,
                      OSSL_LIB_CTX *ctx, const char *propq);

int PKCS5_v2_scrypt_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass,
                             int passlen, ASN1_TYPE *param,
                             const EVP_CIPHER *c, const EVP_MD *md, int en_de);
int PKCS5_v2_scrypt_keyivgen_ex(EVP_CIPHER_CTX *ctx, const char *pass,
                                int passlen, ASN1_TYPE *param,
                                const EVP_CIPHER *c, const EVP_MD *md, int en_de,
                                OSSL_LIB_CTX *libctx, const char *propq);


void PKCS5_PBE_add(void);

int EVP_PBE_CipherInit(ASN1_OBJECT *pbe_obj, const char *pass, int passlen,
                       ASN1_TYPE *param, EVP_CIPHER_CTX *ctx, int en_de);

int EVP_PBE_CipherInit_ex(ASN1_OBJECT *pbe_obj, const char *pass, int passlen,
                          ASN1_TYPE *param, EVP_CIPHER_CTX *ctx, int en_de,
                          OSSL_LIB_CTX *libctx, const char *propq);
# 1543 "../include/openssl/evp.h"
int EVP_PBE_alg_add_type(int pbe_type, int pbe_nid, int cipher_nid,
                         int md_nid, EVP_PBE_KEYGEN *keygen);
int EVP_PBE_alg_add(int nid, const EVP_CIPHER *cipher, const EVP_MD *md,
                    EVP_PBE_KEYGEN *keygen);
int EVP_PBE_find(int type, int pbe_nid, int *pcnid, int *pmnid,
                 EVP_PBE_KEYGEN **pkeygen);
int EVP_PBE_find_ex(int type, int pbe_nid, int *pcnid, int *pmnid,
                    EVP_PBE_KEYGEN **pkeygen, EVP_PBE_KEYGEN_EX **pkeygen_ex);
void EVP_PBE_cleanup(void);
int EVP_PBE_get(int *ptype, int *ppbe_nid, size_t num);
# 1569 "../include/openssl/evp.h"
int EVP_PKEY_asn1_get_count(void);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_get0(int idx);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_find(ENGINE **pe, int type);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_find_str(ENGINE **pe,
                                                   const char *str, int len);
int EVP_PKEY_asn1_add0(const EVP_PKEY_ASN1_METHOD *ameth);
int EVP_PKEY_asn1_add_alias(int to, int from);
int EVP_PKEY_asn1_get0_info(int *ppkey_id, int *pkey_base_id,
                            int *ppkey_flags, const char **pinfo,
                            const char **ppem_str,
                            const EVP_PKEY_ASN1_METHOD *ameth);

const EVP_PKEY_ASN1_METHOD *EVP_PKEY_get0_asn1(const EVP_PKEY *pkey);
EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_new(int id, int flags,
                                        const char *pem_str,
                                        const char *info);
void EVP_PKEY_asn1_copy(EVP_PKEY_ASN1_METHOD *dst,
                        const EVP_PKEY_ASN1_METHOD *src);
void EVP_PKEY_asn1_free(EVP_PKEY_ASN1_METHOD *ameth);
void EVP_PKEY_asn1_set_public(EVP_PKEY_ASN1_METHOD *ameth,
                              int (*pub_decode) (EVP_PKEY *pk,
                                                 const X509_PUBKEY *pub),
                              int (*pub_encode) (X509_PUBKEY *pub,
                                                 const EVP_PKEY *pk),
                              int (*pub_cmp) (const EVP_PKEY *a,
                                              const EVP_PKEY *b),
                              int (*pub_print) (BIO *out,
                                                const EVP_PKEY *pkey,
                                                int indent, ASN1_PCTX *pctx),
                              int (*pkey_size) (const EVP_PKEY *pk),
                              int (*pkey_bits) (const EVP_PKEY *pk));
void EVP_PKEY_asn1_set_private(EVP_PKEY_ASN1_METHOD *ameth,
                               int (*priv_decode) (EVP_PKEY *pk,
                                                   const PKCS8_PRIV_KEY_INFO
                                                   *p8inf),
                               int (*priv_encode) (PKCS8_PRIV_KEY_INFO *p8,
                                                   const EVP_PKEY *pk),
                               int (*priv_print) (BIO *out,
                                                  const EVP_PKEY *pkey,
                                                  int indent,
                                                  ASN1_PCTX *pctx));
void EVP_PKEY_asn1_set_param(EVP_PKEY_ASN1_METHOD *ameth,
                             int (*param_decode) (EVP_PKEY *pkey,
                                                  const unsigned char **pder,
                                                  int derlen),
                             int (*param_encode) (const EVP_PKEY *pkey,
                                                  unsigned char **pder),
                             int (*param_missing) (const EVP_PKEY *pk),
                             int (*param_copy) (EVP_PKEY *to,
                                                const EVP_PKEY *from),
                             int (*param_cmp) (const EVP_PKEY *a,
                                               const EVP_PKEY *b),
                             int (*param_print) (BIO *out,
                                                 const EVP_PKEY *pkey,
                                                 int indent,
                                                 ASN1_PCTX *pctx));

void EVP_PKEY_asn1_set_free(EVP_PKEY_ASN1_METHOD *ameth,
                            void (*pkey_free) (EVP_PKEY *pkey));
void EVP_PKEY_asn1_set_ctrl(EVP_PKEY_ASN1_METHOD *ameth,
                            int (*pkey_ctrl) (EVP_PKEY *pkey, int op,
                                              long arg1, void *arg2));
void EVP_PKEY_asn1_set_item(EVP_PKEY_ASN1_METHOD *ameth,
                            int (*item_verify) (EVP_MD_CTX *ctx,
                                                const ASN1_ITEM *it,
                                                const void *data,
                                                const X509_ALGOR *a,
                                                const ASN1_BIT_STRING *sig,
                                                EVP_PKEY *pkey),
                            int (*item_sign) (EVP_MD_CTX *ctx,
                                              const ASN1_ITEM *it,
                                              const void *data,
                                              X509_ALGOR *alg1,
                                              X509_ALGOR *alg2,
                                              ASN1_BIT_STRING *sig));

void EVP_PKEY_asn1_set_siginf(EVP_PKEY_ASN1_METHOD *ameth,
                              int (*siginf_set) (X509_SIG_INFO *siginf,
                                                 const X509_ALGOR *alg,
                                                 const ASN1_STRING *sig));

void EVP_PKEY_asn1_set_check(EVP_PKEY_ASN1_METHOD *ameth,
                             int (*pkey_check) (const EVP_PKEY *pk));

void EVP_PKEY_asn1_set_public_check(EVP_PKEY_ASN1_METHOD *ameth,
                                    int (*pkey_pub_check) (const EVP_PKEY *pk));

void EVP_PKEY_asn1_set_param_check(EVP_PKEY_ASN1_METHOD *ameth,
                                   int (*pkey_param_check) (const EVP_PKEY *pk));

void EVP_PKEY_asn1_set_set_priv_key(EVP_PKEY_ASN1_METHOD *ameth,
                                    int (*set_priv_key) (EVP_PKEY *pk,
                                                         const unsigned char
                                                            *priv,
                                                         size_t len));
void EVP_PKEY_asn1_set_set_pub_key(EVP_PKEY_ASN1_METHOD *ameth,
                                   int (*set_pub_key) (EVP_PKEY *pk,
                                                       const unsigned char *pub,
                                                       size_t len));
void EVP_PKEY_asn1_set_get_priv_key(EVP_PKEY_ASN1_METHOD *ameth,
                                    int (*get_priv_key) (const EVP_PKEY *pk,
                                                         unsigned char *priv,
                                                         size_t *len));
void EVP_PKEY_asn1_set_get_pub_key(EVP_PKEY_ASN1_METHOD *ameth,
                                   int (*get_pub_key) (const EVP_PKEY *pk,
                                                       unsigned char *pub,
                                                       size_t *len));

void EVP_PKEY_asn1_set_security_bits(EVP_PKEY_ASN1_METHOD *ameth,
                                     int (*pkey_security_bits) (const EVP_PKEY
                                                                *pk));

int EVP_PKEY_CTX_get_signature_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);
int EVP_PKEY_CTX_set_signature_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);

int EVP_PKEY_CTX_set1_id(EVP_PKEY_CTX *ctx, const void *id, int len);
int EVP_PKEY_CTX_get1_id(EVP_PKEY_CTX *ctx, void *id);
int EVP_PKEY_CTX_get1_id_len(EVP_PKEY_CTX *ctx, size_t *id_len);

int EVP_PKEY_CTX_set_kem_op(EVP_PKEY_CTX *ctx, const char *op);

const char *EVP_PKEY_get0_type_name(const EVP_PKEY *key);
# 1721 "../include/openssl/evp.h"
int EVP_PKEY_CTX_set_mac_key(EVP_PKEY_CTX *ctx, const unsigned char *key,
                             int keylen);
# 1753 "../include/openssl/evp.h"
extern const EVP_PKEY_METHOD *EVP_PKEY_meth_find(int type);
extern EVP_PKEY_METHOD *EVP_PKEY_meth_new(int id, int flags);
extern void EVP_PKEY_meth_get0_info(int *ppkey_id, int *pflags,
                                              const EVP_PKEY_METHOD *meth);
extern void EVP_PKEY_meth_copy(EVP_PKEY_METHOD *dst,
                                         const EVP_PKEY_METHOD *src);
extern void EVP_PKEY_meth_free(EVP_PKEY_METHOD *pmeth);
extern int EVP_PKEY_meth_add0(const EVP_PKEY_METHOD *pmeth);
extern int EVP_PKEY_meth_remove(const EVP_PKEY_METHOD *pmeth);
extern size_t EVP_PKEY_meth_get_count(void);
extern const EVP_PKEY_METHOD *EVP_PKEY_meth_get0(size_t idx);


EVP_KEYMGMT *EVP_KEYMGMT_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                               const char *properties);
int EVP_KEYMGMT_up_ref(EVP_KEYMGMT *keymgmt);
void EVP_KEYMGMT_free(EVP_KEYMGMT *keymgmt);
const OSSL_PROVIDER *EVP_KEYMGMT_get0_provider(const EVP_KEYMGMT *keymgmt);
const char *EVP_KEYMGMT_get0_name(const EVP_KEYMGMT *keymgmt);
const char *EVP_KEYMGMT_get0_description(const EVP_KEYMGMT *keymgmt);
int EVP_KEYMGMT_is_a(const EVP_KEYMGMT *keymgmt, const char *name);
void EVP_KEYMGMT_do_all_provided(OSSL_LIB_CTX *libctx,
                                 void (*fn)(EVP_KEYMGMT *keymgmt, void *arg),
                                 void *arg);
int EVP_KEYMGMT_names_do_all(const EVP_KEYMGMT *keymgmt,
                             void (*fn)(const char *name, void *data),
                             void *data);
const OSSL_PARAM *EVP_KEYMGMT_gettable_params(const EVP_KEYMGMT *keymgmt);
const OSSL_PARAM *EVP_KEYMGMT_settable_params(const EVP_KEYMGMT *keymgmt);
const OSSL_PARAM *EVP_KEYMGMT_gen_settable_params(const EVP_KEYMGMT *keymgmt);

EVP_PKEY_CTX *EVP_PKEY_CTX_new(EVP_PKEY *pkey, ENGINE *e);
EVP_PKEY_CTX *EVP_PKEY_CTX_new_id(int id, ENGINE *e);
EVP_PKEY_CTX *EVP_PKEY_CTX_new_from_name(OSSL_LIB_CTX *libctx,
                                         const char *name,
                                         const char *propquery);
EVP_PKEY_CTX *EVP_PKEY_CTX_new_from_pkey(OSSL_LIB_CTX *libctx,
                                         EVP_PKEY *pkey, const char *propquery);
EVP_PKEY_CTX *EVP_PKEY_CTX_dup(const EVP_PKEY_CTX *ctx);
void EVP_PKEY_CTX_free(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_is_a(EVP_PKEY_CTX *ctx, const char *keytype);

int EVP_PKEY_CTX_get_params(EVP_PKEY_CTX *ctx, OSSL_PARAM *params);
const OSSL_PARAM *EVP_PKEY_CTX_gettable_params(const EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set_params(EVP_PKEY_CTX *ctx, const OSSL_PARAM *params);
const OSSL_PARAM *EVP_PKEY_CTX_settable_params(const EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_ctrl(EVP_PKEY_CTX *ctx, int keytype, int optype,
                      int cmd, int p1, void *p2);
int EVP_PKEY_CTX_ctrl_str(EVP_PKEY_CTX *ctx, const char *type,
                          const char *value);
int EVP_PKEY_CTX_ctrl_uint64(EVP_PKEY_CTX *ctx, int keytype, int optype,
                             int cmd, uint64_t value);

int EVP_PKEY_CTX_str2ctrl(EVP_PKEY_CTX *ctx, int cmd, const char *str);
int EVP_PKEY_CTX_hex2ctrl(EVP_PKEY_CTX *ctx, int cmd, const char *hex);

int EVP_PKEY_CTX_md(EVP_PKEY_CTX *ctx, int optype, int cmd, const char *md);

int EVP_PKEY_CTX_get_operation(EVP_PKEY_CTX *ctx);
void EVP_PKEY_CTX_set0_keygen_info(EVP_PKEY_CTX *ctx, int *dat, int datlen);

EVP_PKEY *EVP_PKEY_new_mac_key(int type, ENGINE *e,
                               const unsigned char *key, int keylen);
EVP_PKEY *EVP_PKEY_new_raw_private_key_ex(OSSL_LIB_CTX *libctx,
                                          const char *keytype,
                                          const char *propq,
                                          const unsigned char *priv, size_t len);
EVP_PKEY *EVP_PKEY_new_raw_private_key(int type, ENGINE *e,
                                       const unsigned char *priv,
                                       size_t len);
EVP_PKEY *EVP_PKEY_new_raw_public_key_ex(OSSL_LIB_CTX *libctx,
                                         const char *keytype, const char *propq,
                                         const unsigned char *pub, size_t len);
EVP_PKEY *EVP_PKEY_new_raw_public_key(int type, ENGINE *e,
                                      const unsigned char *pub,
                                      size_t len);
int EVP_PKEY_get_raw_private_key(const EVP_PKEY *pkey, unsigned char *priv,
                                 size_t *len);
int EVP_PKEY_get_raw_public_key(const EVP_PKEY *pkey, unsigned char *pub,
                                size_t *len);


extern
EVP_PKEY *EVP_PKEY_new_CMAC_key(ENGINE *e, const unsigned char *priv,
                                size_t len, const EVP_CIPHER *cipher);


void EVP_PKEY_CTX_set_data(EVP_PKEY_CTX *ctx, void *data);
void *EVP_PKEY_CTX_get_data(const EVP_PKEY_CTX *ctx);
EVP_PKEY *EVP_PKEY_CTX_get0_pkey(EVP_PKEY_CTX *ctx);

EVP_PKEY *EVP_PKEY_CTX_get0_peerkey(EVP_PKEY_CTX *ctx);

void EVP_PKEY_CTX_set_app_data(EVP_PKEY_CTX *ctx, void *data);
void *EVP_PKEY_CTX_get_app_data(EVP_PKEY_CTX *ctx);

void EVP_SIGNATURE_free(EVP_SIGNATURE *signature);
int EVP_SIGNATURE_up_ref(EVP_SIGNATURE *signature);
OSSL_PROVIDER *EVP_SIGNATURE_get0_provider(const EVP_SIGNATURE *signature);
EVP_SIGNATURE *EVP_SIGNATURE_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                                   const char *properties);
int EVP_SIGNATURE_is_a(const EVP_SIGNATURE *signature, const char *name);
const char *EVP_SIGNATURE_get0_name(const EVP_SIGNATURE *signature);
const char *EVP_SIGNATURE_get0_description(const EVP_SIGNATURE *signature);
void EVP_SIGNATURE_do_all_provided(OSSL_LIB_CTX *libctx,
                                   void (*fn)(EVP_SIGNATURE *signature,
                                              void *data),
                                   void *data);
int EVP_SIGNATURE_names_do_all(const EVP_SIGNATURE *signature,
                               void (*fn)(const char *name, void *data),
                               void *data);
const OSSL_PARAM *EVP_SIGNATURE_gettable_ctx_params(const EVP_SIGNATURE *sig);
const OSSL_PARAM *EVP_SIGNATURE_settable_ctx_params(const EVP_SIGNATURE *sig);

void EVP_ASYM_CIPHER_free(EVP_ASYM_CIPHER *cipher);
int EVP_ASYM_CIPHER_up_ref(EVP_ASYM_CIPHER *cipher);
OSSL_PROVIDER *EVP_ASYM_CIPHER_get0_provider(const EVP_ASYM_CIPHER *cipher);
EVP_ASYM_CIPHER *EVP_ASYM_CIPHER_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                                       const char *properties);
int EVP_ASYM_CIPHER_is_a(const EVP_ASYM_CIPHER *cipher, const char *name);
const char *EVP_ASYM_CIPHER_get0_name(const EVP_ASYM_CIPHER *cipher);
const char *EVP_ASYM_CIPHER_get0_description(const EVP_ASYM_CIPHER *cipher);
void EVP_ASYM_CIPHER_do_all_provided(OSSL_LIB_CTX *libctx,
                                     void (*fn)(EVP_ASYM_CIPHER *cipher,
                                                void *arg),
                                     void *arg);
int EVP_ASYM_CIPHER_names_do_all(const EVP_ASYM_CIPHER *cipher,
                                 void (*fn)(const char *name, void *data),
                                 void *data);
const OSSL_PARAM *EVP_ASYM_CIPHER_gettable_ctx_params(const EVP_ASYM_CIPHER *ciph);
const OSSL_PARAM *EVP_ASYM_CIPHER_settable_ctx_params(const EVP_ASYM_CIPHER *ciph);

void EVP_KEM_free(EVP_KEM *wrap);
int EVP_KEM_up_ref(EVP_KEM *wrap);
OSSL_PROVIDER *EVP_KEM_get0_provider(const EVP_KEM *wrap);
EVP_KEM *EVP_KEM_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                       const char *properties);
int EVP_KEM_is_a(const EVP_KEM *wrap, const char *name);
const char *EVP_KEM_get0_name(const EVP_KEM *wrap);
const char *EVP_KEM_get0_description(const EVP_KEM *wrap);
void EVP_KEM_do_all_provided(OSSL_LIB_CTX *libctx,
                             void (*fn)(EVP_KEM *wrap, void *arg), void *arg);
int EVP_KEM_names_do_all(const EVP_KEM *wrap,
                         void (*fn)(const char *name, void *data), void *data);
const OSSL_PARAM *EVP_KEM_gettable_ctx_params(const EVP_KEM *kem);
const OSSL_PARAM *EVP_KEM_settable_ctx_params(const EVP_KEM *kem);

int EVP_PKEY_sign_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_sign_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_sign(EVP_PKEY_CTX *ctx,
                  unsigned char *sig, size_t *siglen,
                  const unsigned char *tbs, size_t tbslen);
int EVP_PKEY_verify_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_verify_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_verify(EVP_PKEY_CTX *ctx,
                    const unsigned char *sig, size_t siglen,
                    const unsigned char *tbs, size_t tbslen);
int EVP_PKEY_verify_recover_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_verify_recover_init_ex(EVP_PKEY_CTX *ctx,
                                    const OSSL_PARAM params[]);
int EVP_PKEY_verify_recover(EVP_PKEY_CTX *ctx,
                            unsigned char *rout, size_t *routlen,
                            const unsigned char *sig, size_t siglen);
int EVP_PKEY_encrypt_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_encrypt_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_encrypt(EVP_PKEY_CTX *ctx,
                     unsigned char *out, size_t *outlen,
                     const unsigned char *in, size_t inlen);
int EVP_PKEY_decrypt_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_decrypt_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_decrypt(EVP_PKEY_CTX *ctx,
                     unsigned char *out, size_t *outlen,
                     const unsigned char *in, size_t inlen);

int EVP_PKEY_derive_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_derive_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_derive_set_peer_ex(EVP_PKEY_CTX *ctx, EVP_PKEY *peer,
                                int validate_peer);
int EVP_PKEY_derive_set_peer(EVP_PKEY_CTX *ctx, EVP_PKEY *peer);
int EVP_PKEY_derive(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen);

int EVP_PKEY_encapsulate_init(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_auth_encapsulate_init(EVP_PKEY_CTX *ctx, EVP_PKEY *authpriv,
                                   const OSSL_PARAM params[]);
int EVP_PKEY_encapsulate(EVP_PKEY_CTX *ctx,
                         unsigned char *wrappedkey, size_t *wrappedkeylen,
                         unsigned char *genkey, size_t *genkeylen);
int EVP_PKEY_decapsulate_init(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_auth_decapsulate_init(EVP_PKEY_CTX *ctx, EVP_PKEY *authpub,
                                   const OSSL_PARAM params[]);
int EVP_PKEY_decapsulate(EVP_PKEY_CTX *ctx,
                         unsigned char *unwrapped, size_t *unwrappedlen,
                         const unsigned char *wrapped, size_t wrappedlen);
typedef int EVP_PKEY_gen_cb(EVP_PKEY_CTX *ctx);

int EVP_PKEY_fromdata_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_fromdata(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey, int selection,
                      OSSL_PARAM param[]);
const OSSL_PARAM *EVP_PKEY_fromdata_settable(EVP_PKEY_CTX *ctx, int selection);

int EVP_PKEY_todata(const EVP_PKEY *pkey, int selection, OSSL_PARAM **params);
int EVP_PKEY_export(const EVP_PKEY *pkey, int selection,
                    OSSL_CALLBACK *export_cb, void *export_cbarg);

const OSSL_PARAM *EVP_PKEY_gettable_params(const EVP_PKEY *pkey);
int EVP_PKEY_get_params(const EVP_PKEY *pkey, OSSL_PARAM params[]);
int EVP_PKEY_get_int_param(const EVP_PKEY *pkey, const char *key_name,
                           int *out);
int EVP_PKEY_get_size_t_param(const EVP_PKEY *pkey, const char *key_name,
                              size_t *out);
int EVP_PKEY_get_bn_param(const EVP_PKEY *pkey, const char *key_name,
                          BIGNUM **bn);
int EVP_PKEY_get_utf8_string_param(const EVP_PKEY *pkey, const char *key_name,
                                    char *str, size_t max_buf_sz, size_t *out_sz);
int EVP_PKEY_get_octet_string_param(const EVP_PKEY *pkey, const char *key_name,
                                    unsigned char *buf, size_t max_buf_sz,
                                    size_t *out_sz);

const OSSL_PARAM *EVP_PKEY_settable_params(const EVP_PKEY *pkey);
int EVP_PKEY_set_params(EVP_PKEY *pkey, OSSL_PARAM params[]);
int EVP_PKEY_set_int_param(EVP_PKEY *pkey, const char *key_name, int in);
int EVP_PKEY_set_size_t_param(EVP_PKEY *pkey, const char *key_name, size_t in);
int EVP_PKEY_set_bn_param(EVP_PKEY *pkey, const char *key_name,
                          const BIGNUM *bn);
int EVP_PKEY_set_utf8_string_param(EVP_PKEY *pkey, const char *key_name,
                                   const char *str);
int EVP_PKEY_set_octet_string_param(EVP_PKEY *pkey, const char *key_name,
                                    const unsigned char *buf, size_t bsize);

int EVP_PKEY_get_ec_point_conv_form(const EVP_PKEY *pkey);
int EVP_PKEY_get_field_type(const EVP_PKEY *pkey);

EVP_PKEY *EVP_PKEY_Q_keygen(OSSL_LIB_CTX *libctx, const char *propq,
                            const char *type, ...);
int EVP_PKEY_paramgen_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_paramgen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey);
int EVP_PKEY_keygen_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey);
int EVP_PKEY_generate(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey);
int EVP_PKEY_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_public_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_public_check_quick(EVP_PKEY_CTX *ctx);
int EVP_PKEY_param_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_param_check_quick(EVP_PKEY_CTX *ctx);
int EVP_PKEY_private_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_pairwise_check(EVP_PKEY_CTX *ctx);



int EVP_PKEY_set_ex_data(EVP_PKEY *key, int idx, void *arg);
void *EVP_PKEY_get_ex_data(const EVP_PKEY *key, int idx);

void EVP_PKEY_CTX_set_cb(EVP_PKEY_CTX *ctx, EVP_PKEY_gen_cb *cb);
EVP_PKEY_gen_cb *EVP_PKEY_CTX_get_cb(EVP_PKEY_CTX *ctx);

int EVP_PKEY_CTX_get_keygen_info(EVP_PKEY_CTX *ctx, int idx);

extern void EVP_PKEY_meth_set_init(EVP_PKEY_METHOD *pmeth,
                                             int (*init) (EVP_PKEY_CTX *ctx));
extern void EVP_PKEY_meth_set_copy
    (EVP_PKEY_METHOD *pmeth, int (*copy) (EVP_PKEY_CTX *dst,
                                          const EVP_PKEY_CTX *src));
extern void EVP_PKEY_meth_set_cleanup
    (EVP_PKEY_METHOD *pmeth, void (*cleanup) (EVP_PKEY_CTX *ctx));
extern void EVP_PKEY_meth_set_paramgen
    (EVP_PKEY_METHOD *pmeth, int (*paramgen_init) (EVP_PKEY_CTX *ctx),
     int (*paramgen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
extern void EVP_PKEY_meth_set_keygen
    (EVP_PKEY_METHOD *pmeth, int (*keygen_init) (EVP_PKEY_CTX *ctx),
     int (*keygen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
extern void EVP_PKEY_meth_set_sign
    (EVP_PKEY_METHOD *pmeth, int (*sign_init) (EVP_PKEY_CTX *ctx),
     int (*sign) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                  const unsigned char *tbs, size_t tbslen));
extern void EVP_PKEY_meth_set_verify
    (EVP_PKEY_METHOD *pmeth, int (*verify_init) (EVP_PKEY_CTX *ctx),
     int (*verify) (EVP_PKEY_CTX *ctx, const unsigned char *sig, size_t siglen,
                    const unsigned char *tbs, size_t tbslen));
extern void EVP_PKEY_meth_set_verify_recover
    (EVP_PKEY_METHOD *pmeth, int (*verify_recover_init) (EVP_PKEY_CTX *ctx),
     int (*verify_recover) (EVP_PKEY_CTX *ctx, unsigned char *sig,
                            size_t *siglen, const unsigned char *tbs,
                            size_t tbslen));
extern void EVP_PKEY_meth_set_signctx
    (EVP_PKEY_METHOD *pmeth, int (*signctx_init) (EVP_PKEY_CTX *ctx,
                                                  EVP_MD_CTX *mctx),
     int (*signctx) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                     EVP_MD_CTX *mctx));
extern void EVP_PKEY_meth_set_verifyctx
    (EVP_PKEY_METHOD *pmeth, int (*verifyctx_init) (EVP_PKEY_CTX *ctx,
                                                    EVP_MD_CTX *mctx),
     int (*verifyctx) (EVP_PKEY_CTX *ctx, const unsigned char *sig, int siglen,
                       EVP_MD_CTX *mctx));
extern void EVP_PKEY_meth_set_encrypt
    (EVP_PKEY_METHOD *pmeth, int (*encrypt_init) (EVP_PKEY_CTX *ctx),
     int (*encryptfn) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                       const unsigned char *in, size_t inlen));
extern void EVP_PKEY_meth_set_decrypt
    (EVP_PKEY_METHOD *pmeth, int (*decrypt_init) (EVP_PKEY_CTX *ctx),
     int (*decrypt) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                     const unsigned char *in, size_t inlen));
extern void EVP_PKEY_meth_set_derive
    (EVP_PKEY_METHOD *pmeth, int (*derive_init) (EVP_PKEY_CTX *ctx),
     int (*derive) (EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen));
extern void EVP_PKEY_meth_set_ctrl
    (EVP_PKEY_METHOD *pmeth, int (*ctrl) (EVP_PKEY_CTX *ctx, int type, int p1,
                                          void *p2),
     int (*ctrl_str) (EVP_PKEY_CTX *ctx, const char *type, const char *value));
extern void EVP_PKEY_meth_set_digestsign
    (EVP_PKEY_METHOD *pmeth,
     int (*digestsign) (EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
                        const unsigned char *tbs, size_t tbslen));
extern void EVP_PKEY_meth_set_digestverify
    (EVP_PKEY_METHOD *pmeth,
     int (*digestverify) (EVP_MD_CTX *ctx, const unsigned char *sig,
                          size_t siglen, const unsigned char *tbs,
                          size_t tbslen));
extern void EVP_PKEY_meth_set_check
    (EVP_PKEY_METHOD *pmeth, int (*check) (EVP_PKEY *pkey));
extern void EVP_PKEY_meth_set_public_check
    (EVP_PKEY_METHOD *pmeth, int (*check) (EVP_PKEY *pkey));
extern void EVP_PKEY_meth_set_param_check
    (EVP_PKEY_METHOD *pmeth, int (*check) (EVP_PKEY *pkey));
extern void EVP_PKEY_meth_set_digest_custom
    (EVP_PKEY_METHOD *pmeth, int (*digest_custom) (EVP_PKEY_CTX *ctx,
                                                   EVP_MD_CTX *mctx));
extern void EVP_PKEY_meth_get_init
    (const EVP_PKEY_METHOD *pmeth, int (**pinit) (EVP_PKEY_CTX *ctx));
extern void EVP_PKEY_meth_get_copy
    (const EVP_PKEY_METHOD *pmeth, int (**pcopy) (EVP_PKEY_CTX *dst,
                                                  const EVP_PKEY_CTX *src));
extern void EVP_PKEY_meth_get_cleanup
    (const EVP_PKEY_METHOD *pmeth, void (**pcleanup) (EVP_PKEY_CTX *ctx));
extern void EVP_PKEY_meth_get_paramgen
    (const EVP_PKEY_METHOD *pmeth, int (**pparamgen_init) (EVP_PKEY_CTX *ctx),
     int (**pparamgen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
extern void EVP_PKEY_meth_get_keygen
    (const EVP_PKEY_METHOD *pmeth, int (**pkeygen_init) (EVP_PKEY_CTX *ctx),
     int (**pkeygen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
extern void EVP_PKEY_meth_get_sign
    (const EVP_PKEY_METHOD *pmeth, int (**psign_init) (EVP_PKEY_CTX *ctx),
     int (**psign) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                    const unsigned char *tbs, size_t tbslen));
extern void EVP_PKEY_meth_get_verify
    (const EVP_PKEY_METHOD *pmeth, int (**pverify_init) (EVP_PKEY_CTX *ctx),
     int (**pverify) (EVP_PKEY_CTX *ctx, const unsigned char *sig,
                      size_t siglen, const unsigned char *tbs, size_t tbslen));
extern void EVP_PKEY_meth_get_verify_recover
    (const EVP_PKEY_METHOD *pmeth,
     int (**pverify_recover_init) (EVP_PKEY_CTX *ctx),
     int (**pverify_recover) (EVP_PKEY_CTX *ctx, unsigned char *sig,
                              size_t *siglen, const unsigned char *tbs,
                              size_t tbslen));
extern void EVP_PKEY_meth_get_signctx
    (const EVP_PKEY_METHOD *pmeth,
     int (**psignctx_init) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
     int (**psignctx) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                       EVP_MD_CTX *mctx));
extern void EVP_PKEY_meth_get_verifyctx
    (const EVP_PKEY_METHOD *pmeth,
     int (**pverifyctx_init) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
     int (**pverifyctx) (EVP_PKEY_CTX *ctx, const unsigned char *sig,
                          int siglen, EVP_MD_CTX *mctx));
extern void EVP_PKEY_meth_get_encrypt
    (const EVP_PKEY_METHOD *pmeth, int (**pencrypt_init) (EVP_PKEY_CTX *ctx),
     int (**pencryptfn) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                         const unsigned char *in, size_t inlen));
extern void EVP_PKEY_meth_get_decrypt
    (const EVP_PKEY_METHOD *pmeth, int (**pdecrypt_init) (EVP_PKEY_CTX *ctx),
     int (**pdecrypt) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                       const unsigned char *in, size_t inlen));
extern void EVP_PKEY_meth_get_derive
    (const EVP_PKEY_METHOD *pmeth, int (**pderive_init) (EVP_PKEY_CTX *ctx),
     int (**pderive) (EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen));
extern void EVP_PKEY_meth_get_ctrl
    (const EVP_PKEY_METHOD *pmeth,
     int (**pctrl) (EVP_PKEY_CTX *ctx, int type, int p1, void *p2),
     int (**pctrl_str) (EVP_PKEY_CTX *ctx, const char *type,
                        const char *value));
extern void EVP_PKEY_meth_get_digestsign
    (const EVP_PKEY_METHOD *pmeth,
     int (**digestsign) (EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
                         const unsigned char *tbs, size_t tbslen));
extern void EVP_PKEY_meth_get_digestverify
    (const EVP_PKEY_METHOD *pmeth,
     int (**digestverify) (EVP_MD_CTX *ctx, const unsigned char *sig,
                           size_t siglen, const unsigned char *tbs,
                           size_t tbslen));
extern void EVP_PKEY_meth_get_check
    (const EVP_PKEY_METHOD *pmeth, int (**pcheck) (EVP_PKEY *pkey));
extern void EVP_PKEY_meth_get_public_check
    (const EVP_PKEY_METHOD *pmeth, int (**pcheck) (EVP_PKEY *pkey));
extern void EVP_PKEY_meth_get_param_check
    (const EVP_PKEY_METHOD *pmeth, int (**pcheck) (EVP_PKEY *pkey));
extern void EVP_PKEY_meth_get_digest_custom
    (const EVP_PKEY_METHOD *pmeth,
     int (**pdigest_custom) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx));


void EVP_KEYEXCH_free(EVP_KEYEXCH *exchange);
int EVP_KEYEXCH_up_ref(EVP_KEYEXCH *exchange);
EVP_KEYEXCH *EVP_KEYEXCH_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                               const char *properties);
OSSL_PROVIDER *EVP_KEYEXCH_get0_provider(const EVP_KEYEXCH *exchange);
int EVP_KEYEXCH_is_a(const EVP_KEYEXCH *keyexch, const char *name);
const char *EVP_KEYEXCH_get0_name(const EVP_KEYEXCH *keyexch);
const char *EVP_KEYEXCH_get0_description(const EVP_KEYEXCH *keyexch);
void EVP_KEYEXCH_do_all_provided(OSSL_LIB_CTX *libctx,
                                 void (*fn)(EVP_KEYEXCH *keyexch, void *data),
                                 void *data);
int EVP_KEYEXCH_names_do_all(const EVP_KEYEXCH *keyexch,
                             void (*fn)(const char *name, void *data),
                             void *data);
const OSSL_PARAM *EVP_KEYEXCH_gettable_ctx_params(const EVP_KEYEXCH *keyexch);
const OSSL_PARAM *EVP_KEYEXCH_settable_ctx_params(const EVP_KEYEXCH *keyexch);

void EVP_add_alg_module(void);

int EVP_PKEY_CTX_set_group_name(EVP_PKEY_CTX *ctx, const char *name);
int EVP_PKEY_CTX_get_group_name(EVP_PKEY_CTX *ctx, char *name, size_t namelen);
int EVP_PKEY_get_group_name(const EVP_PKEY *pkey, char *name, size_t name_sz,
                            size_t *gname_len);

OSSL_LIB_CTX *EVP_PKEY_CTX_get0_libctx(EVP_PKEY_CTX *ctx);
const char *EVP_PKEY_CTX_get0_propq(const EVP_PKEY_CTX *ctx);
const OSSL_PROVIDER *EVP_PKEY_CTX_get0_provider(const EVP_PKEY_CTX *ctx);
# 18 "../include/crypto/ec.h" 2

int ossl_ec_curve_name2nid(const char *name);
const char *ossl_ec_curve_nid2nist_int(int nid);
int ossl_ec_curve_nist2nid_int(const char *name);
int evp_pkey_ctx_set_ec_param_enc_prov(EVP_PKEY_CTX *ctx, int param_enc);
# 50 "../include/crypto/ec.h"
 int ossl_ec_group_do_inverse_ord(const EC_GROUP *group, BIGNUM *res,
                                        const BIGNUM *x, BN_CTX *ctx);




int ossl_ecdh_kdf_X9_63(unsigned char *out, size_t outlen,
                        const unsigned char *Z, size_t Zlen,
                        const unsigned char *sinfo, size_t sinfolen,
                        const EVP_MD *md, OSSL_LIB_CTX *libctx,
                        const char *propq);

int ossl_ec_key_public_check(const EC_KEY *eckey, BN_CTX *ctx);
int ossl_ec_key_public_check_quick(const EC_KEY *eckey, BN_CTX *ctx);
int ossl_ec_key_private_check(const EC_KEY *eckey);
int ossl_ec_key_pairwise_check(const EC_KEY *eckey, BN_CTX *ctx);
OSSL_LIB_CTX *ossl_ec_key_get_libctx(const EC_KEY *eckey);
const char *ossl_ec_key_get0_propq(const EC_KEY *eckey);
void ossl_ec_key_set0_libctx(EC_KEY *key, OSSL_LIB_CTX *libctx);


int ossl_ec_group_todata(const EC_GROUP *group, OSSL_PARAM_BLD *tmpl,
                         OSSL_PARAM params[], OSSL_LIB_CTX *libctx,
                         const char *propq,
                         BN_CTX *bnctx, unsigned char **genbuf);
int ossl_ec_group_fromdata(EC_KEY *ec, const OSSL_PARAM params[]);
int ossl_ec_group_set_params(EC_GROUP *group, const OSSL_PARAM params[]);
int ossl_ec_key_fromdata(EC_KEY *ecx, const OSSL_PARAM params[],
                         int include_private);
int ossl_ec_key_otherparams_fromdata(EC_KEY *ec, const OSSL_PARAM params[]);
int ossl_ec_key_is_foreign(const EC_KEY *ec);
EC_KEY *ossl_ec_key_dup(const EC_KEY *key, int selection);
int ossl_x509_algor_is_sm2(const X509_ALGOR *palg);
EC_KEY *ossl_ec_key_param_from_x509_algor(const X509_ALGOR *palg,
                                          OSSL_LIB_CTX *libctx,
                                          const char *propq);
EC_KEY *ossl_ec_key_from_pkcs8(const PKCS8_PRIV_KEY_INFO *p8inf,
                               OSSL_LIB_CTX *libctx, const char *propq);

int ossl_ec_set_ecdh_cofactor_mode(EC_KEY *ec, int mode);
int ossl_ec_encoding_name2id(const char *name);
int ossl_ec_encoding_param2id(const OSSL_PARAM *p, int *id);
int ossl_ec_pt_format_name2id(const char *name);
int ossl_ec_pt_format_param2id(const OSSL_PARAM *p, int *id);
char *ossl_ec_pt_format_id2name(int id);

char *ossl_ec_check_group_type_id2name(int flags);
int ossl_ec_set_check_group_type_from_name(EC_KEY *ec, const char *name);
int ossl_ec_generate_key_dhkem(EC_KEY *eckey,
                               const unsigned char *ikm, size_t ikmlen);
int ossl_ecdsa_deterministic_sign(const unsigned char *dgst, int dlen,
                                  unsigned char *sig, unsigned int *siglen,
                                  EC_KEY *eckey, unsigned int nonce_type,
                                  const char *digestname,
                                  OSSL_LIB_CTX *libctx, const char *propq);
# 18 "../crypto/ec/ec_local.h" 2
# 43 "../crypto/ec/ec_local.h"
struct ec_method_st {

    int flags;

    int field_type;




    int (*group_init) (EC_GROUP *);
    void (*group_finish) (EC_GROUP *);
    void (*group_clear_finish) (EC_GROUP *);
    int (*group_copy) (EC_GROUP *, const EC_GROUP *);

    int (*group_set_curve) (EC_GROUP *, const BIGNUM *p, const BIGNUM *a,
                            const BIGNUM *b, BN_CTX *);
    int (*group_get_curve) (const EC_GROUP *, BIGNUM *p, BIGNUM *a, BIGNUM *b,
                            BN_CTX *);

    int (*group_get_degree) (const EC_GROUP *);
    int (*group_order_bits) (const EC_GROUP *);

    int (*group_check_discriminant) (const EC_GROUP *, BN_CTX *);




    int (*point_init) (EC_POINT *);
    void (*point_finish) (EC_POINT *);
    void (*point_clear_finish) (EC_POINT *);
    int (*point_copy) (EC_POINT *, const EC_POINT *);
# 82 "../crypto/ec/ec_local.h"
    int (*point_set_to_infinity) (const EC_GROUP *, EC_POINT *);
    int (*point_set_affine_coordinates) (const EC_GROUP *, EC_POINT *,
                                         const BIGNUM *x, const BIGNUM *y,
                                         BN_CTX *);
    int (*point_get_affine_coordinates) (const EC_GROUP *, const EC_POINT *,
                                         BIGNUM *x, BIGNUM *y, BN_CTX *);
    int (*point_set_compressed_coordinates) (const EC_GROUP *, EC_POINT *,
                                             const BIGNUM *x, int y_bit,
                                             BN_CTX *);

    size_t (*point2oct) (const EC_GROUP *, const EC_POINT *,
                         point_conversion_form_t form, unsigned char *buf,
                         size_t len, BN_CTX *);
    int (*oct2point) (const EC_GROUP *, EC_POINT *, const unsigned char *buf,
                      size_t len, BN_CTX *);

    int (*add) (const EC_GROUP *, EC_POINT *r, const EC_POINT *a,
                const EC_POINT *b, BN_CTX *);
    int (*dbl) (const EC_GROUP *, EC_POINT *r, const EC_POINT *a, BN_CTX *);
    int (*invert) (const EC_GROUP *, EC_POINT *, BN_CTX *);



    int (*is_at_infinity) (const EC_GROUP *, const EC_POINT *);
    int (*is_on_curve) (const EC_GROUP *, const EC_POINT *, BN_CTX *);
    int (*point_cmp) (const EC_GROUP *, const EC_POINT *a, const EC_POINT *b,
                      BN_CTX *);

    int (*make_affine) (const EC_GROUP *, EC_POINT *, BN_CTX *);
    int (*points_make_affine) (const EC_GROUP *, size_t num, EC_POINT *[],
                               BN_CTX *);
# 135 "../crypto/ec/ec_local.h"
    int (*mul) (const EC_GROUP *group, EC_POINT *r, const BIGNUM *scalar,
                size_t num, const EC_POINT *points[], const BIGNUM *scalars[],
                BN_CTX *);
    int (*precompute_mult) (EC_GROUP *group, BN_CTX *);
    int (*have_precompute_mult) (const EC_GROUP *group);







    int (*field_mul) (const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                      const BIGNUM *b, BN_CTX *);
    int (*field_sqr) (const EC_GROUP *, BIGNUM *r, const BIGNUM *a, BN_CTX *);
    int (*field_div) (const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                      const BIGNUM *b, BN_CTX *);






    int (*field_inv) (const EC_GROUP *, BIGNUM *r, const BIGNUM *a, BN_CTX *);

    int (*field_encode) (const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                         BN_CTX *);

    int (*field_decode) (const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                         BN_CTX *);
    int (*field_set_to_one) (const EC_GROUP *, BIGNUM *r, BN_CTX *);

    size_t (*priv2oct)(const EC_KEY *eckey, unsigned char *buf, size_t len);
    int (*oct2priv)(EC_KEY *eckey, const unsigned char *buf, size_t len);
    int (*set_private)(EC_KEY *eckey, const BIGNUM *priv_key);
    int (*keygen)(EC_KEY *eckey);
    int (*keycheck)(const EC_KEY *eckey);
    int (*keygenpub)(EC_KEY *eckey);
    int (*keycopy)(EC_KEY *dst, const EC_KEY *src);
    void (*keyfinish)(EC_KEY *eckey);

    int (*ecdh_compute_key)(unsigned char **pout, size_t *poutlen,
                            const EC_POINT *pub_key, const EC_KEY *ecdh);

    int (*ecdsa_sign_setup)(EC_KEY *eckey, BN_CTX *ctx, BIGNUM **kinvp,
                            BIGNUM **rp);
    ECDSA_SIG *(*ecdsa_sign_sig)(const unsigned char *dgst, int dgstlen,
                                 const BIGNUM *kinv, const BIGNUM *r,
                                 EC_KEY *eckey);
    int (*ecdsa_verify_sig)(const unsigned char *dgst, int dgstlen,
                            const ECDSA_SIG *sig, EC_KEY *eckey);

    int (*field_inverse_mod_ord)(const EC_GROUP *, BIGNUM *r,
                                 const BIGNUM *x, BN_CTX *);
    int (*blind_coordinates)(const EC_GROUP *group, EC_POINT *p, BN_CTX *ctx);
    int (*ladder_pre)(const EC_GROUP *group,
                      EC_POINT *r, EC_POINT *s,
                      EC_POINT *p, BN_CTX *ctx);
    int (*ladder_step)(const EC_GROUP *group,
                       EC_POINT *r, EC_POINT *s,
                       EC_POINT *p, BN_CTX *ctx);
    int (*ladder_post)(const EC_GROUP *group,
                       EC_POINT *r, EC_POINT *s,
                       EC_POINT *p, BN_CTX *ctx);
};




typedef struct nistp224_pre_comp_st NISTP224_PRE_COMP;
typedef struct nistp256_pre_comp_st NISTP256_PRE_COMP;
typedef struct nistp384_pre_comp_st NISTP384_PRE_COMP;
typedef struct nistp521_pre_comp_st NISTP521_PRE_COMP;
typedef struct nistz256_pre_comp_st NISTZ256_PRE_COMP;
typedef struct ec_pre_comp_st EC_PRE_COMP;

struct ec_group_st {
    const EC_METHOD *meth;
    EC_POINT *generator;
    BIGNUM *order, *cofactor;
    int curve_name;
    int asn1_flag;
    int decoded_from_explicit_params;

    point_conversion_form_t asn1_form;
    unsigned char *seed;

    size_t seed_len;
# 232 "../crypto/ec/ec_local.h"
    BIGNUM *field;







    int poly[6];







    BIGNUM *a, *b;

    int a_is_minus3;

    void *field_data1;

    void *field_data2;

    int (*field_mod_func) (BIGNUM *, const BIGNUM *, const BIGNUM *,
                           BN_CTX *);

    BN_MONT_CTX *mont_data;






    enum {
        PCT_none,
        PCT_nistp224, PCT_nistp256, PCT_nistp384, PCT_nistp521, PCT_nistz256,
        PCT_ec
    } pre_comp_type;
    union {
        NISTP224_PRE_COMP *nistp224;
        NISTP256_PRE_COMP *nistp256;
        NISTP384_PRE_COMP *nistp384;
        NISTP521_PRE_COMP *nistp521;
        NISTZ256_PRE_COMP *nistz256;
        EC_PRE_COMP *ec;
    } pre_comp;

    OSSL_LIB_CTX *libctx;
    char *propq;
};






struct ec_key_st {
    const EC_KEY_METHOD *meth;
    ENGINE *engine;
    int version;
    EC_GROUP *group;
    EC_POINT *pub_key;
    BIGNUM *priv_key;
    unsigned int enc_flag;
    point_conversion_form_t conv_form;
    CRYPTO_REF_COUNT references;
    int flags;

    CRYPTO_EX_DATA ex_data;

    OSSL_LIB_CTX *libctx;
    char *propq;


    size_t dirty_cnt;
};

struct ec_point_st {
    const EC_METHOD *meth;

    int curve_name;




    BIGNUM *X;
    BIGNUM *Y;
    BIGNUM *Z;

    int Z_is_one;

};

static inline int ec_point_is_compat(const EC_POINT *point,
                                          const EC_GROUP *group)
{
    return group->meth == point->meth
           && (group->curve_name == 0
               || point->curve_name == 0
               || group->curve_name == point->curve_name);
}

NISTP224_PRE_COMP *EC_nistp224_pre_comp_dup(NISTP224_PRE_COMP *);
NISTP256_PRE_COMP *EC_nistp256_pre_comp_dup(NISTP256_PRE_COMP *);
NISTP384_PRE_COMP *ossl_ec_nistp384_pre_comp_dup(NISTP384_PRE_COMP *);
NISTP521_PRE_COMP *EC_nistp521_pre_comp_dup(NISTP521_PRE_COMP *);
NISTZ256_PRE_COMP *EC_nistz256_pre_comp_dup(NISTZ256_PRE_COMP *);
NISTP256_PRE_COMP *EC_nistp256_pre_comp_dup(NISTP256_PRE_COMP *);
EC_PRE_COMP *EC_ec_pre_comp_dup(EC_PRE_COMP *);

void EC_pre_comp_free(EC_GROUP *group);
void EC_nistp224_pre_comp_free(NISTP224_PRE_COMP *);
void EC_nistp256_pre_comp_free(NISTP256_PRE_COMP *);
void ossl_ec_nistp384_pre_comp_free(NISTP384_PRE_COMP *);
void EC_nistp521_pre_comp_free(NISTP521_PRE_COMP *);
void EC_nistz256_pre_comp_free(NISTZ256_PRE_COMP *);
void EC_ec_pre_comp_free(EC_PRE_COMP *);





int ossl_ec_wNAF_mul(const EC_GROUP *group, EC_POINT *r, const BIGNUM *scalar,
                     size_t num, const EC_POINT *points[],
                     const BIGNUM *scalars[], BN_CTX *);
int ossl_ec_wNAF_precompute_mult(EC_GROUP *group, BN_CTX *);
int ossl_ec_wNAF_have_precompute_mult(const EC_GROUP *group);


int ossl_ec_GFp_simple_group_init(EC_GROUP *);
void ossl_ec_GFp_simple_group_finish(EC_GROUP *);
void ossl_ec_GFp_simple_group_clear_finish(EC_GROUP *);
int ossl_ec_GFp_simple_group_copy(EC_GROUP *, const EC_GROUP *);
int ossl_ec_GFp_simple_group_set_curve(EC_GROUP *, const BIGNUM *p,
                                       const BIGNUM *a, const BIGNUM *b,
                                       BN_CTX *);
int ossl_ec_GFp_simple_group_get_curve(const EC_GROUP *, BIGNUM *p, BIGNUM *a,
                                       BIGNUM *b, BN_CTX *);
int ossl_ec_GFp_simple_group_get_degree(const EC_GROUP *);
int ossl_ec_GFp_simple_group_check_discriminant(const EC_GROUP *, BN_CTX *);
int ossl_ec_GFp_simple_point_init(EC_POINT *);
void ossl_ec_GFp_simple_point_finish(EC_POINT *);
void ossl_ec_GFp_simple_point_clear_finish(EC_POINT *);
int ossl_ec_GFp_simple_point_copy(EC_POINT *, const EC_POINT *);
int ossl_ec_GFp_simple_point_set_to_infinity(const EC_GROUP *, EC_POINT *);
int ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp(const EC_GROUP *,
                                                       EC_POINT *,
                                                       const BIGNUM *x,
                                                       const BIGNUM *y,
                                                       const BIGNUM *z,
                                                       BN_CTX *);
int ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp(const EC_GROUP *,
                                                       const EC_POINT *,
                                                       BIGNUM *x,
                                                       BIGNUM *y, BIGNUM *z,
                                                       BN_CTX *);
int ossl_ec_GFp_simple_point_set_affine_coordinates(const EC_GROUP *, EC_POINT *,
                                                    const BIGNUM *x,
                                                    const BIGNUM *y, BN_CTX *);
int ossl_ec_GFp_simple_point_get_affine_coordinates(const EC_GROUP *,
                                                    const EC_POINT *, BIGNUM *x,
                                                    BIGNUM *y, BN_CTX *);
int ossl_ec_GFp_simple_set_compressed_coordinates(const EC_GROUP *, EC_POINT *,
                                                  const BIGNUM *x, int y_bit,
                                                  BN_CTX *);
size_t ossl_ec_GFp_simple_point2oct(const EC_GROUP *, const EC_POINT *,
                                    point_conversion_form_t form,
                                    unsigned char *buf, size_t len, BN_CTX *);
int ossl_ec_GFp_simple_oct2point(const EC_GROUP *, EC_POINT *,
                                 const unsigned char *buf, size_t len, BN_CTX *);
int ossl_ec_GFp_simple_add(const EC_GROUP *, EC_POINT *r, const EC_POINT *a,
                           const EC_POINT *b, BN_CTX *);
int ossl_ec_GFp_simple_dbl(const EC_GROUP *, EC_POINT *r, const EC_POINT *a,
                           BN_CTX *);
int ossl_ec_GFp_simple_invert(const EC_GROUP *, EC_POINT *, BN_CTX *);
int ossl_ec_GFp_simple_is_at_infinity(const EC_GROUP *, const EC_POINT *);
int ossl_ec_GFp_simple_is_on_curve(const EC_GROUP *, const EC_POINT *, BN_CTX *);
int ossl_ec_GFp_simple_cmp(const EC_GROUP *, const EC_POINT *a,
                           const EC_POINT *b, BN_CTX *);
int ossl_ec_GFp_simple_make_affine(const EC_GROUP *, EC_POINT *, BN_CTX *);
int ossl_ec_GFp_simple_points_make_affine(const EC_GROUP *, size_t num,
                                          EC_POINT *[], BN_CTX *);
int ossl_ec_GFp_simple_field_mul(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                 const BIGNUM *b, BN_CTX *);
int ossl_ec_GFp_simple_field_sqr(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                 BN_CTX *);
int ossl_ec_GFp_simple_field_inv(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                 BN_CTX *);
int ossl_ec_GFp_simple_blind_coordinates(const EC_GROUP *group, EC_POINT *p,
                                         BN_CTX *ctx);
int ossl_ec_GFp_simple_ladder_pre(const EC_GROUP *group,
                                  EC_POINT *r, EC_POINT *s,
                                  EC_POINT *p, BN_CTX *ctx);
int ossl_ec_GFp_simple_ladder_step(const EC_GROUP *group,
                                   EC_POINT *r, EC_POINT *s,
                                   EC_POINT *p, BN_CTX *ctx);
int ossl_ec_GFp_simple_ladder_post(const EC_GROUP *group,
                                   EC_POINT *r, EC_POINT *s,
                                   EC_POINT *p, BN_CTX *ctx);


int ossl_ec_GFp_mont_group_init(EC_GROUP *);
int ossl_ec_GFp_mont_group_set_curve(EC_GROUP *, const BIGNUM *p,
                                     const BIGNUM *a,
                                     const BIGNUM *b, BN_CTX *);
void ossl_ec_GFp_mont_group_finish(EC_GROUP *);
void ossl_ec_GFp_mont_group_clear_finish(EC_GROUP *);
int ossl_ec_GFp_mont_group_copy(EC_GROUP *, const EC_GROUP *);
int ossl_ec_GFp_mont_field_mul(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                               const BIGNUM *b, BN_CTX *);
int ossl_ec_GFp_mont_field_sqr(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                               BN_CTX *);
int ossl_ec_GFp_mont_field_inv(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                               BN_CTX *);
int ossl_ec_GFp_mont_field_encode(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                  BN_CTX *);
int ossl_ec_GFp_mont_field_decode(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                  BN_CTX *);
int ossl_ec_GFp_mont_field_set_to_one(const EC_GROUP *, BIGNUM *r, BN_CTX *);


int ossl_ec_GFp_nist_group_copy(EC_GROUP *dest, const EC_GROUP *src);
int ossl_ec_GFp_nist_group_set_curve(EC_GROUP *, const BIGNUM *p,
                                     const BIGNUM *a, const BIGNUM *b, BN_CTX *);
int ossl_ec_GFp_nist_field_mul(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                              const BIGNUM *b, BN_CTX *);
int ossl_ec_GFp_nist_field_sqr(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                               BN_CTX *);


int ossl_ec_GF2m_simple_group_init(EC_GROUP *);
void ossl_ec_GF2m_simple_group_finish(EC_GROUP *);
void ossl_ec_GF2m_simple_group_clear_finish(EC_GROUP *);
int ossl_ec_GF2m_simple_group_copy(EC_GROUP *, const EC_GROUP *);
int ossl_ec_GF2m_simple_group_set_curve(EC_GROUP *, const BIGNUM *p,
                                        const BIGNUM *a, const BIGNUM *b,
                                        BN_CTX *);
int ossl_ec_GF2m_simple_group_get_curve(const EC_GROUP *, BIGNUM *p, BIGNUM *a,
                                        BIGNUM *b, BN_CTX *);
int ossl_ec_GF2m_simple_group_get_degree(const EC_GROUP *);
int ossl_ec_GF2m_simple_group_check_discriminant(const EC_GROUP *, BN_CTX *);
int ossl_ec_GF2m_simple_point_init(EC_POINT *);
void ossl_ec_GF2m_simple_point_finish(EC_POINT *);
void ossl_ec_GF2m_simple_point_clear_finish(EC_POINT *);
int ossl_ec_GF2m_simple_point_copy(EC_POINT *, const EC_POINT *);
int ossl_ec_GF2m_simple_point_set_to_infinity(const EC_GROUP *, EC_POINT *);
int ossl_ec_GF2m_simple_point_set_affine_coordinates(const EC_GROUP *,
                                                     EC_POINT *,
                                                     const BIGNUM *x,
                                                     const BIGNUM *y, BN_CTX *);
int ossl_ec_GF2m_simple_point_get_affine_coordinates(const EC_GROUP *,
                                                     const EC_POINT *, BIGNUM *x,
                                                     BIGNUM *y, BN_CTX *);
int ossl_ec_GF2m_simple_set_compressed_coordinates(const EC_GROUP *, EC_POINT *,
                                                   const BIGNUM *x, int y_bit,
                                                   BN_CTX *);
size_t ossl_ec_GF2m_simple_point2oct(const EC_GROUP *, const EC_POINT *,
                                     point_conversion_form_t form,
                                     unsigned char *buf, size_t len, BN_CTX *);
int ossl_ec_GF2m_simple_oct2point(const EC_GROUP *, EC_POINT *,
                                  const unsigned char *buf, size_t len, BN_CTX *);
int ossl_ec_GF2m_simple_add(const EC_GROUP *, EC_POINT *r, const EC_POINT *a,
                            const EC_POINT *b, BN_CTX *);
int ossl_ec_GF2m_simple_dbl(const EC_GROUP *, EC_POINT *r, const EC_POINT *a,
                            BN_CTX *);
int ossl_ec_GF2m_simple_invert(const EC_GROUP *, EC_POINT *, BN_CTX *);
int ossl_ec_GF2m_simple_is_at_infinity(const EC_GROUP *, const EC_POINT *);
int ossl_ec_GF2m_simple_is_on_curve(const EC_GROUP *, const EC_POINT *, BN_CTX *);
int ossl_ec_GF2m_simple_cmp(const EC_GROUP *, const EC_POINT *a,
                            const EC_POINT *b, BN_CTX *);
int ossl_ec_GF2m_simple_make_affine(const EC_GROUP *, EC_POINT *, BN_CTX *);
int ossl_ec_GF2m_simple_points_make_affine(const EC_GROUP *, size_t num,
                                           EC_POINT *[], BN_CTX *);
int ossl_ec_GF2m_simple_field_mul(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                  const BIGNUM *b, BN_CTX *);
int ossl_ec_GF2m_simple_field_sqr(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                  BN_CTX *);
int ossl_ec_GF2m_simple_field_div(const EC_GROUP *, BIGNUM *r, const BIGNUM *a,
                                 const BIGNUM *b, BN_CTX *);
# 622 "../crypto/ec/ec_local.h"
int ossl_ec_group_simple_order_bits(const EC_GROUP *group);
# 632 "../crypto/ec/ec_local.h"
EC_GROUP *ossl_ec_group_new_ex(OSSL_LIB_CTX *libctx, const char *propq,
                               const EC_METHOD *meth);






const EC_METHOD *EC_GFp_nistz256_method(void);







size_t ossl_ec_key_simple_priv2oct(const EC_KEY *eckey,
                                   unsigned char *buf, size_t len);
int ossl_ec_key_simple_oct2priv(EC_KEY *eckey, const unsigned char *buf,
                                size_t len);
int ossl_ec_key_simple_generate_key(EC_KEY *eckey);
int ossl_ec_key_simple_generate_public_key(EC_KEY *eckey);
int ossl_ec_key_simple_check_key(const EC_KEY *eckey);






int ossl_ec_curve_nid_from_params(const EC_GROUP *group, BN_CTX *ctx);



struct ec_key_method_st {
    const char *name;
    int32_t flags;
    int (*init)(EC_KEY *key);
    void (*finish)(EC_KEY *key);
    int (*copy)(EC_KEY *dest, const EC_KEY *src);
    int (*set_group)(EC_KEY *key, const EC_GROUP *grp);
    int (*set_private)(EC_KEY *key, const BIGNUM *priv_key);
    int (*set_public)(EC_KEY *key, const EC_POINT *pub_key);
    int (*keygen)(EC_KEY *key);
    int (*compute_key)(unsigned char **pout, size_t *poutlen,
                       const EC_POINT *pub_key, const EC_KEY *ecdh);
    int (*sign)(int type, const unsigned char *dgst, int dlen, unsigned char
                *sig, unsigned int *siglen, const BIGNUM *kinv,
                const BIGNUM *r, EC_KEY *eckey);
    int (*sign_setup)(EC_KEY *eckey, BN_CTX *ctx_in, BIGNUM **kinvp,
                      BIGNUM **rp);
    ECDSA_SIG *(*sign_sig)(const unsigned char *dgst, int dgst_len,
                           const BIGNUM *in_kinv, const BIGNUM *in_r,
                           EC_KEY *eckey);

    int (*verify)(int type, const unsigned char *dgst, int dgst_len,
                  const unsigned char *sigbuf, int sig_len, EC_KEY *eckey);
    int (*verify_sig)(const unsigned char *dgst, int dgst_len,
                      const ECDSA_SIG *sig, EC_KEY *eckey);
};



EC_KEY *ossl_ec_key_new_method_int(OSSL_LIB_CTX *libctx, const char *propq,
                                   ENGINE *engine);

int ossl_ec_key_gen(EC_KEY *eckey);
int ossl_ecdh_compute_key(unsigned char **pout, size_t *poutlen,
                          const EC_POINT *pub_key, const EC_KEY *ecdh);
int ossl_ecdh_simple_compute_key(unsigned char **pout, size_t *poutlen,
                                 const EC_POINT *pub_key, const EC_KEY *ecdh);

struct ECDSA_SIG_st {
    BIGNUM *r;
    BIGNUM *s;
};

int ossl_ecdsa_sign_setup(EC_KEY *eckey, BN_CTX *ctx_in, BIGNUM **kinvp,
                          BIGNUM **rp);
int ossl_ecdsa_sign(int type, const unsigned char *dgst, int dlen,
                    unsigned char *sig, unsigned int *siglen,
                    const BIGNUM *kinv, const BIGNUM *r, EC_KEY *eckey);
ECDSA_SIG *ossl_ecdsa_sign_sig(const unsigned char *dgst, int dgst_len,
                               const BIGNUM *in_kinv, const BIGNUM *in_r,
                               EC_KEY *eckey);
int ossl_ecdsa_verify(int type, const unsigned char *dgst, int dgst_len,
                      const unsigned char *sigbuf, int sig_len, EC_KEY *eckey);
int ossl_ecdsa_verify_sig(const unsigned char *dgst, int dgst_len,
                          const ECDSA_SIG *sig, EC_KEY *eckey);
int ossl_ecdsa_simple_sign_setup(EC_KEY *eckey, BN_CTX *ctx_in, BIGNUM **kinvp,
                                 BIGNUM **rp);
ECDSA_SIG *ossl_ecdsa_simple_sign_sig(const unsigned char *dgst, int dgst_len,
                                      const BIGNUM *in_kinv, const BIGNUM *in_r,
                                      EC_KEY *eckey);
int ossl_ecdsa_simple_verify_sig(const unsigned char *dgst, int dgst_len,
                                 const ECDSA_SIG *sig, EC_KEY *eckey);
# 758 "../crypto/ec/ec_local.h"
int ossl_ec_scalar_mul_ladder(const EC_GROUP *group, EC_POINT *r,
                              const BIGNUM *scalar, const EC_POINT *point,
                              BN_CTX *ctx);

int ossl_ec_point_blind_coordinates(const EC_GROUP *group, EC_POINT *p,
                                    BN_CTX *ctx);

static inline int ec_point_ladder_pre(const EC_GROUP *group,
                                           EC_POINT *r, EC_POINT *s,
                                           EC_POINT *p, BN_CTX *ctx)
{
    if (group->meth->ladder_pre != 
# 769 "../crypto/ec/ec_local.h" 3 4
                                  ((void *)0)
# 769 "../crypto/ec/ec_local.h"
                                      )
        return group->meth->ladder_pre(group, r, s, p, ctx);

    if (!EC_POINT_copy(s, p)
        || !EC_POINT_dbl(group, r, s, ctx))
        return 0;

    return 1;
}

static inline int ec_point_ladder_step(const EC_GROUP *group,
                                            EC_POINT *r, EC_POINT *s,
                                            EC_POINT *p, BN_CTX *ctx)
{
    if (group->meth->ladder_step != 
# 783 "../crypto/ec/ec_local.h" 3 4
                                   ((void *)0)
# 783 "../crypto/ec/ec_local.h"
                                       )
        return group->meth->ladder_step(group, r, s, p, ctx);

    if (!EC_POINT_add(group, s, r, s, ctx)
        || !EC_POINT_dbl(group, r, r, ctx))
        return 0;

    return 1;

}

static inline int ec_point_ladder_post(const EC_GROUP *group,
                                            EC_POINT *r, EC_POINT *s,
                                            EC_POINT *p, BN_CTX *ctx)
{
    if (group->meth->ladder_post != 
# 798 "../crypto/ec/ec_local.h" 3 4
                                   ((void *)0)
# 798 "../crypto/ec/ec_local.h"
                                       )
        return group->meth->ladder_post(group, r, s, p, ctx);

    return 1;
}
# 19 "../crypto/ec/curve25519.c" 2

# 1 "../include/openssl/sha.h" 1
# 12 "../include/openssl/sha.h"
        







# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 21 "../include/openssl/sha.h" 2
# 42 "../include/openssl/sha.h"
typedef struct SHAstate_st {
    unsigned int h0, h1, h2, h3, h4;
    unsigned int Nl, Nh;
    unsigned int data[16];
    unsigned int num;
} SHA_CTX;

extern int SHA1_Init(SHA_CTX *c);
extern int SHA1_Update(SHA_CTX *c, const void *data, size_t len);
extern int SHA1_Final(unsigned char *md, SHA_CTX *c);
extern void SHA1_Transform(SHA_CTX *c, const unsigned char *data);


unsigned char *SHA1(const unsigned char *d, size_t n, unsigned char *md);






typedef struct SHA256state_st {
    unsigned int h[8];
    unsigned int Nl, Nh;
    unsigned int data[16];
    unsigned int num, md_len;
} SHA256_CTX;

extern int SHA224_Init(SHA256_CTX *c);
extern int SHA224_Update(SHA256_CTX *c,
                                        const void *data, size_t len);
extern int SHA224_Final(unsigned char *md, SHA256_CTX *c);
extern int SHA256_Init(SHA256_CTX *c);
extern int SHA256_Update(SHA256_CTX *c,
                                        const void *data, size_t len);
extern int SHA256_Final(unsigned char *md, SHA256_CTX *c);
extern void SHA256_Transform(SHA256_CTX *c,
                                            const unsigned char *data);


unsigned char *SHA224(const unsigned char *d, size_t n, unsigned char *md);
unsigned char *SHA256(const unsigned char *d, size_t n, unsigned char *md);
# 110 "../include/openssl/sha.h"
typedef struct SHA512state_st {
    unsigned long long h[8];
    unsigned long long Nl, Nh;
    union {
        unsigned long long d[16];
        unsigned char p[(16*8)];
    } u;
    unsigned int num, md_len;
} SHA512_CTX;

extern int SHA384_Init(SHA512_CTX *c);
extern int SHA384_Update(SHA512_CTX *c,
                                        const void *data, size_t len);
extern int SHA384_Final(unsigned char *md, SHA512_CTX *c);
extern int SHA512_Init(SHA512_CTX *c);
extern int SHA512_Update(SHA512_CTX *c,
                                        const void *data, size_t len);
extern int SHA512_Final(unsigned char *md, SHA512_CTX *c);
extern void SHA512_Transform(SHA512_CTX *c,
                                            const unsigned char *data);


unsigned char *SHA384(const unsigned char *d, size_t n, unsigned char *md);
unsigned char *SHA512(const unsigned char *d, size_t n, unsigned char *md);
# 21 "../crypto/ec/curve25519.c" 2

# 1 "../include/internal/numbers.h" 1
# 12 "../include/internal/numbers.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 15 "../include/internal/numbers.h" 2
# 91 "../include/internal/numbers.h"
typedef __int128_t int128_t;
typedef __uint128_t uint128_t;
# 23 "../crypto/ec/curve25519.c" 2






typedef uint64_t fe64[4];

int x25519_fe64_eligible(void);
# 42 "../crypto/ec/curve25519.c"
void x25519_fe64_mul(fe64 h, const fe64 f, const fe64 g);
void x25519_fe64_sqr(fe64 h, const fe64 f);
void x25519_fe64_mul121666(fe64 h, fe64 f);
void x25519_fe64_add(fe64 h, const fe64 f, const fe64 g);
void x25519_fe64_sub(fe64 h, const fe64 f, const fe64 g);
void x25519_fe64_tobytes(uint8_t *s, const fe64 f);







static uint64_t load_8(const uint8_t *in)
{
    uint64_t result;

    result = in[0];
    result |= ((uint64_t)in[1]) << 8;
    result |= ((uint64_t)in[2]) << 16;
    result |= ((uint64_t)in[3]) << 24;
    result |= ((uint64_t)in[4]) << 32;
    result |= ((uint64_t)in[5]) << 40;
    result |= ((uint64_t)in[6]) << 48;
    result |= ((uint64_t)in[7]) << 56;

    return result;
}

static void fe64_frombytes(fe64 h, const uint8_t *s)
{
    h[0] = load_8(s);
    h[1] = load_8(s + 8);
    h[2] = load_8(s + 16);
    h[3] = load_8(s + 24) & 0x7fffffffffffffff;
}

static void fe64_0(fe64 h)
{
    h[0] = 0;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
}

static void fe64_1(fe64 h)
{
    h[0] = 1;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
}

static void fe64_copy(fe64 h, const fe64 f)
{
    h[0] = f[0];
    h[1] = f[1];
    h[2] = f[2];
    h[3] = f[3];
}

static void fe64_cswap(fe64 f, fe64 g, unsigned int b)
{
    int i;
    uint64_t mask = 0 - (uint64_t)b;

    for (i = 0; i < 4; i++) {
        uint64_t x = f[i] ^ g[i];
        x &= mask;
        f[i] ^= x;
        g[i] ^= x;
    }
}

static void fe64_invert(fe64 out, const fe64 z)
{
    fe64 t0;
    fe64 t1;
    fe64 t2;
    fe64 t3;
    int i;







    x25519_fe64_sqr(t0, z);


    x25519_fe64_sqr(t1, t0);
    x25519_fe64_sqr(t1, t1);


    x25519_fe64_mul(t1, z, t1);

    x25519_fe64_mul(t0, t0, t1);


    x25519_fe64_sqr(t2, t0);


    x25519_fe64_mul(t1, t1, t2);


    x25519_fe64_sqr(t2, t1);
    for (i = 1; i < 5; ++i)
        x25519_fe64_sqr(t2, t2);


    x25519_fe64_mul(t1, t2, t1);




    x25519_fe64_sqr(t2, t1);
    for (i = 1; i < 10; ++i)
        x25519_fe64_sqr(t2, t2);

    x25519_fe64_mul(t2, t2, t1);


    x25519_fe64_sqr(t3, t2);
    for (i = 1; i < 20; ++i)
        x25519_fe64_sqr(t3, t3);

    x25519_fe64_mul(t2, t3, t2);


    for (i = 0; i < 10; ++i)
        x25519_fe64_sqr(t2, t2);


    x25519_fe64_mul(t1, t2, t1);


    x25519_fe64_sqr(t2, t1);
    for (i = 1; i < 50; ++i)
        x25519_fe64_sqr(t2, t2);

    x25519_fe64_mul(t2, t2, t1);


    x25519_fe64_sqr(t3, t2);
    for (i = 1; i < 100; ++i)
        x25519_fe64_sqr(t3, t3);

    x25519_fe64_mul(t2, t3, t2);


    for (i = 0; i < 50; ++i)
        x25519_fe64_sqr(t2, t2);


    x25519_fe64_mul(t1, t2, t1);


    for (i = 0; i < 5; ++i)
        x25519_fe64_sqr(t1, t1);


    x25519_fe64_mul(out, t1, t0);
}





static void x25519_scalar_mulx(uint8_t out[32], const uint8_t scalar[32],
                               const uint8_t point[32])
{
    fe64 x1, x2, z2, x3, z3, tmp0, tmp1;
    uint8_t e[32];
    unsigned swap = 0;
    int pos;

    memcpy(e, scalar, 32);
    e[0] &= 0xf8;
    e[31] &= 0x7f;
    e[31] |= 0x40;
    fe64_frombytes(x1, point);
    fe64_1(x2);
    fe64_0(z2);
    fe64_copy(x3, x1);
    fe64_1(z3);

    for (pos = 254; pos >= 0; --pos) {
        unsigned int b = 1 & (e[pos / 8] >> (pos & 7));

        swap ^= b;
        fe64_cswap(x2, x3, swap);
        fe64_cswap(z2, z3, swap);
        swap = b;
        x25519_fe64_sub(tmp0, x3, z3);
        x25519_fe64_sub(tmp1, x2, z2);
        x25519_fe64_add(x2, x2, z2);
        x25519_fe64_add(z2, x3, z3);
        x25519_fe64_mul(z3, x2, tmp0);
        x25519_fe64_mul(z2, z2, tmp1);
        x25519_fe64_sqr(tmp0, tmp1);
        x25519_fe64_sqr(tmp1, x2);
        x25519_fe64_add(x3, z3, z2);
        x25519_fe64_sub(z2, z3, z2);
        x25519_fe64_mul(x2, tmp1, tmp0);
        x25519_fe64_sub(tmp1, tmp1, tmp0);
        x25519_fe64_sqr(z2, z2);
        x25519_fe64_mul121666(z3, tmp1);
        x25519_fe64_sqr(x3, x3);
        x25519_fe64_add(tmp0, tmp0, z3);
        x25519_fe64_mul(z3, x1, z2);
        x25519_fe64_mul(z2, tmp1, tmp0);
    }

    fe64_invert(z2, z2);
    x25519_fe64_mul(x2, x2, z2);
    x25519_fe64_tobytes(out, x2);

    OPENSSL_cleanse(e, sizeof(e));
}
# 277 "../crypto/ec/curve25519.c"
typedef uint64_t fe51[5];

static const uint64_t MASK51 = 0x7ffffffffffff;

static uint64_t load_7(const uint8_t *in)
{
    uint64_t result;

    result = in[0];
    result |= ((uint64_t)in[1]) << 8;
    result |= ((uint64_t)in[2]) << 16;
    result |= ((uint64_t)in[3]) << 24;
    result |= ((uint64_t)in[4]) << 32;
    result |= ((uint64_t)in[5]) << 40;
    result |= ((uint64_t)in[6]) << 48;

    return result;
}

static uint64_t load_6(const uint8_t *in)
{
    uint64_t result;

    result = in[0];
    result |= ((uint64_t)in[1]) << 8;
    result |= ((uint64_t)in[2]) << 16;
    result |= ((uint64_t)in[3]) << 24;
    result |= ((uint64_t)in[4]) << 32;
    result |= ((uint64_t)in[5]) << 40;

    return result;
}

static void fe51_frombytes(fe51 h, const uint8_t *s)
{
    uint64_t h0 = load_7(s);
    uint64_t h1 = load_6(s + 7) << 5;
    uint64_t h2 = load_7(s + 13) << 2;
    uint64_t h3 = load_6(s + 20) << 7;
    uint64_t h4 = (load_6(s + 26) & 0x7fffffffffff) << 4;

    h1 |= h0 >> 51; h0 &= MASK51;
    h2 |= h1 >> 51; h1 &= MASK51;
    h3 |= h2 >> 51; h2 &= MASK51;
    h4 |= h3 >> 51; h3 &= MASK51;

    h[0] = h0;
    h[1] = h1;
    h[2] = h2;
    h[3] = h3;
    h[4] = h4;
}

static void fe51_tobytes(uint8_t *s, const fe51 h)
{
    uint64_t h0 = h[0];
    uint64_t h1 = h[1];
    uint64_t h2 = h[2];
    uint64_t h3 = h[3];
    uint64_t h4 = h[4];
    uint64_t q;


    q = (h0 + 19) >> 51;
    q = (h1 + q) >> 51;
    q = (h2 + q) >> 51;
    q = (h3 + q) >> 51;
    q = (h4 + q) >> 51;


    h0 += 19 * q;
    h1 += h0 >> 51; h0 &= MASK51;
    h2 += h1 >> 51; h1 &= MASK51;
    h3 += h2 >> 51; h2 &= MASK51;
    h4 += h3 >> 51; h3 &= MASK51;
                    h4 &= MASK51;


    s[0] = (uint8_t)(h0 >> 0);
    s[1] = (uint8_t)(h0 >> 8);
    s[2] = (uint8_t)(h0 >> 16);
    s[3] = (uint8_t)(h0 >> 24);
    s[4] = (uint8_t)(h0 >> 32);
    s[5] = (uint8_t)(h0 >> 40);
    s[6] = (uint8_t)((h0 >> 48) | ((uint32_t)h1 << 3));
    s[7] = (uint8_t)(h1 >> 5);
    s[8] = (uint8_t)(h1 >> 13);
    s[9] = (uint8_t)(h1 >> 21);
    s[10] = (uint8_t)(h1 >> 29);
    s[11] = (uint8_t)(h1 >> 37);
    s[12] = (uint8_t)((h1 >> 45) | ((uint32_t)h2 << 6));
    s[13] = (uint8_t)(h2 >> 2);
    s[14] = (uint8_t)(h2 >> 10);
    s[15] = (uint8_t)(h2 >> 18);
    s[16] = (uint8_t)(h2 >> 26);
    s[17] = (uint8_t)(h2 >> 34);
    s[18] = (uint8_t)(h2 >> 42);
    s[19] = (uint8_t)((h2 >> 50) | ((uint32_t)h3 << 1));
    s[20] = (uint8_t)(h3 >> 7);
    s[21] = (uint8_t)(h3 >> 15);
    s[22] = (uint8_t)(h3 >> 23);
    s[23] = (uint8_t)(h3 >> 31);
    s[24] = (uint8_t)(h3 >> 39);
    s[25] = (uint8_t)((h3 >> 47) | ((uint32_t)h4 << 4));
    s[26] = (uint8_t)(h4 >> 4);
    s[27] = (uint8_t)(h4 >> 12);
    s[28] = (uint8_t)(h4 >> 20);
    s[29] = (uint8_t)(h4 >> 28);
    s[30] = (uint8_t)(h4 >> 36);
    s[31] = (uint8_t)(h4 >> 44);
}


void x25519_fe51_mul(fe51 h, const fe51 f, const fe51 g);
void x25519_fe51_sqr(fe51 h, const fe51 f);
void x25519_fe51_mul121666(fe51 h, fe51 f);
# 539 "../crypto/ec/curve25519.c"
static void fe51_add(fe51 h, const fe51 f, const fe51 g)
{
    h[0] = f[0] + g[0];
    h[1] = f[1] + g[1];
    h[2] = f[2] + g[2];
    h[3] = f[3] + g[3];
    h[4] = f[4] + g[4];
}

static void fe51_sub(fe51 h, const fe51 f, const fe51 g)
{




    h[0] = (f[0] + 0xfffffffffffda) - g[0];
    h[1] = (f[1] + 0xffffffffffffe) - g[1];
    h[2] = (f[2] + 0xffffffffffffe) - g[2];
    h[3] = (f[3] + 0xffffffffffffe) - g[3];
    h[4] = (f[4] + 0xffffffffffffe) - g[4];
}

static void fe51_0(fe51 h)
{
    h[0] = 0;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
    h[4] = 0;
}

static void fe51_1(fe51 h)
{
    h[0] = 1;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
    h[4] = 0;
}

static void fe51_copy(fe51 h, const fe51 f)
{
    h[0] = f[0];
    h[1] = f[1];
    h[2] = f[2];
    h[3] = f[3];
    h[4] = f[4];
}

static void fe51_cswap(fe51 f, fe51 g, unsigned int b)
{
    int i;
    uint64_t mask = 0 - (uint64_t)b;

    for (i = 0; i < 5; i++) {
        int64_t x = f[i] ^ g[i];
        x &= mask;
        f[i] ^= x;
        g[i] ^= x;
    }
}

static void fe51_invert(fe51 out, const fe51 z)
{
    fe51 t0;
    fe51 t1;
    fe51 t2;
    fe51 t3;
    int i;







    x25519_fe51_sqr(t0, z);


    x25519_fe51_sqr(t1, t0);
    x25519_fe51_sqr(t1, t1);


    x25519_fe51_mul(t1, z, t1);

    x25519_fe51_mul(t0, t0, t1);


    x25519_fe51_sqr(t2, t0);


    x25519_fe51_mul(t1, t1, t2);


    x25519_fe51_sqr(t2, t1);
    for (i = 1; i < 5; ++i)
        x25519_fe51_sqr(t2, t2);


    x25519_fe51_mul(t1, t2, t1);




    x25519_fe51_sqr(t2, t1);
    for (i = 1; i < 10; ++i)
        x25519_fe51_sqr(t2, t2);

    x25519_fe51_mul(t2, t2, t1);


    x25519_fe51_sqr(t3, t2);
    for (i = 1; i < 20; ++i)
        x25519_fe51_sqr(t3, t3);

    x25519_fe51_mul(t2, t3, t2);


    for (i = 0; i < 10; ++i)
        x25519_fe51_sqr(t2, t2);


    x25519_fe51_mul(t1, t2, t1);


    x25519_fe51_sqr(t2, t1);
    for (i = 1; i < 50; ++i)
        x25519_fe51_sqr(t2, t2);

    x25519_fe51_mul(t2, t2, t1);


    x25519_fe51_sqr(t3, t2);
    for (i = 1; i < 100; ++i)
        x25519_fe51_sqr(t3, t3);

    x25519_fe51_mul(t2, t3, t2);


    for (i = 0; i < 50; ++i)
        x25519_fe51_sqr(t2, t2);


    x25519_fe51_mul(t1, t2, t1);


    for (i = 0; i < 5; ++i)
        x25519_fe51_sqr(t1, t1);


    x25519_fe51_mul(out, t1, t0);
}





static void x25519_scalar_mult(uint8_t out[32], const uint8_t scalar[32],
                               const uint8_t point[32])
{
    fe51 x1, x2, z2, x3, z3, tmp0, tmp1;
    uint8_t e[32];
    unsigned swap = 0;
    int pos;


    if (x25519_fe64_eligible()) {
        x25519_scalar_mulx(out, scalar, point);
        return;
    }


    memcpy(e, scalar, 32);
    e[0] &= 0xf8;
    e[31] &= 0x7f;
    e[31] |= 0x40;
    fe51_frombytes(x1, point);
    fe51_1(x2);
    fe51_0(z2);
    fe51_copy(x3, x1);
    fe51_1(z3);

    for (pos = 254; pos >= 0; --pos) {
        unsigned int b = 1 & (e[pos / 8] >> (pos & 7));

        swap ^= b;
        fe51_cswap(x2, x3, swap);
        fe51_cswap(z2, z3, swap);
        swap = b;
        fe51_sub(tmp0, x3, z3);
        fe51_sub(tmp1, x2, z2);
        fe51_add(x2, x2, z2);
        fe51_add(z2, x3, z3);
        x25519_fe51_mul(z3, tmp0, x2);
        x25519_fe51_mul(z2, z2, tmp1);
        x25519_fe51_sqr(tmp0, tmp1);
        x25519_fe51_sqr(tmp1, x2);
        fe51_add(x3, z3, z2);
        fe51_sub(z2, z3, z2);
        x25519_fe51_mul(x2, tmp1, tmp0);
        fe51_sub(tmp1, tmp1, tmp0);
        x25519_fe51_sqr(z2, z2);
        x25519_fe51_mul121666(z3, tmp1);
        x25519_fe51_sqr(x3, x3);
        fe51_add(tmp0, tmp0, z3);
        x25519_fe51_mul(z3, x1, z2);
        x25519_fe51_mul(z2, tmp1, tmp0);
    }

    fe51_invert(z2, z2);
    x25519_fe51_mul(x2, x2, z2);
    fe51_tobytes(out, x2);

    OPENSSL_cleanse(e, sizeof(e));
}
# 771 "../crypto/ec/curve25519.c"
typedef int32_t fe[10];

static const int64_t kBottom21Bits = 0x1fffffLL;
static const int64_t kBottom25Bits = 0x1ffffffLL;
static const int64_t kBottom26Bits = 0x3ffffffLL;
static const int64_t kTop39Bits = 0xfffffffffe000000LL;
static const int64_t kTop38Bits = 0xfffffffffc000000LL;

static uint64_t load_3(const uint8_t *in)
{
    uint64_t result;

    result = ((uint64_t)in[0]);
    result |= ((uint64_t)in[1]) << 8;
    result |= ((uint64_t)in[2]) << 16;
    return result;
}

static uint64_t load_4(const uint8_t *in)
{
    uint64_t result;

    result = ((uint64_t)in[0]);
    result |= ((uint64_t)in[1]) << 8;
    result |= ((uint64_t)in[2]) << 16;
    result |= ((uint64_t)in[3]) << 24;
    return result;
}

static void fe_frombytes(fe h, const uint8_t *s)
{

    int64_t h0 = load_4(s);
    int64_t h1 = load_3(s + 4) << 6;
    int64_t h2 = load_3(s + 7) << 5;
    int64_t h3 = load_3(s + 10) << 3;
    int64_t h4 = load_3(s + 13) << 2;
    int64_t h5 = load_4(s + 16);
    int64_t h6 = load_3(s + 20) << 7;
    int64_t h7 = load_3(s + 23) << 5;
    int64_t h8 = load_3(s + 26) << 4;
    int64_t h9 = (load_3(s + 29) & 0x7fffff) << 2;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;

    carry9 = h9 + (1 << 24); h0 += (carry9 >> 25) * 19; h9 -= carry9 & kTop39Bits;
    carry1 = h1 + (1 << 24); h2 += carry1 >> 25; h1 -= carry1 & kTop39Bits;
    carry3 = h3 + (1 << 24); h4 += carry3 >> 25; h3 -= carry3 & kTop39Bits;
    carry5 = h5 + (1 << 24); h6 += carry5 >> 25; h5 -= carry5 & kTop39Bits;
    carry7 = h7 + (1 << 24); h8 += carry7 >> 25; h7 -= carry7 & kTop39Bits;

    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;
    carry2 = h2 + (1 << 25); h3 += carry2 >> 26; h2 -= carry2 & kTop38Bits;
    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;
    carry6 = h6 + (1 << 25); h7 += carry6 >> 26; h6 -= carry6 & kTop38Bits;
    carry8 = h8 + (1 << 25); h9 += carry8 >> 26; h8 -= carry8 & kTop38Bits;

    h[0] = (int32_t)h0;
    h[1] = (int32_t)h1;
    h[2] = (int32_t)h2;
    h[3] = (int32_t)h3;
    h[4] = (int32_t)h4;
    h[5] = (int32_t)h5;
    h[6] = (int32_t)h6;
    h[7] = (int32_t)h7;
    h[8] = (int32_t)h8;
    h[9] = (int32_t)h9;
}
# 872 "../crypto/ec/curve25519.c"
static void fe_tobytes(uint8_t *s, const fe h)
{
    int32_t h0 = h[0];
    int32_t h1 = h[1];
    int32_t h2 = h[2];
    int32_t h3 = h[3];
    int32_t h4 = h[4];
    int32_t h5 = h[5];
    int32_t h6 = h[6];
    int32_t h7 = h[7];
    int32_t h8 = h[8];
    int32_t h9 = h[9];
    int32_t q;

    q = (19 * h9 + (((int32_t) 1) << 24)) >> 25;
    q = (h0 + q) >> 26;
    q = (h1 + q) >> 25;
    q = (h2 + q) >> 26;
    q = (h3 + q) >> 25;
    q = (h4 + q) >> 26;
    q = (h5 + q) >> 25;
    q = (h6 + q) >> 26;
    q = (h7 + q) >> 25;
    q = (h8 + q) >> 26;
    q = (h9 + q) >> 25;


    h0 += 19 * q;


    h1 += h0 >> 26; h0 &= kBottom26Bits;
    h2 += h1 >> 25; h1 &= kBottom25Bits;
    h3 += h2 >> 26; h2 &= kBottom26Bits;
    h4 += h3 >> 25; h3 &= kBottom25Bits;
    h5 += h4 >> 26; h4 &= kBottom26Bits;
    h6 += h5 >> 25; h5 &= kBottom25Bits;
    h7 += h6 >> 26; h6 &= kBottom26Bits;
    h8 += h7 >> 25; h7 &= kBottom25Bits;
    h9 += h8 >> 26; h8 &= kBottom26Bits;
                    h9 &= kBottom25Bits;
# 920 "../crypto/ec/curve25519.c"
    s[ 0] = (uint8_t) (h0 >> 0);
    s[ 1] = (uint8_t) (h0 >> 8);
    s[ 2] = (uint8_t) (h0 >> 16);
    s[ 3] = (uint8_t)((h0 >> 24) | ((uint32_t)(h1) << 2));
    s[ 4] = (uint8_t) (h1 >> 6);
    s[ 5] = (uint8_t) (h1 >> 14);
    s[ 6] = (uint8_t)((h1 >> 22) | ((uint32_t)(h2) << 3));
    s[ 7] = (uint8_t) (h2 >> 5);
    s[ 8] = (uint8_t) (h2 >> 13);
    s[ 9] = (uint8_t)((h2 >> 21) | ((uint32_t)(h3) << 5));
    s[10] = (uint8_t) (h3 >> 3);
    s[11] = (uint8_t) (h3 >> 11);
    s[12] = (uint8_t)((h3 >> 19) | ((uint32_t)(h4) << 6));
    s[13] = (uint8_t) (h4 >> 2);
    s[14] = (uint8_t) (h4 >> 10);
    s[15] = (uint8_t) (h4 >> 18);
    s[16] = (uint8_t) (h5 >> 0);
    s[17] = (uint8_t) (h5 >> 8);
    s[18] = (uint8_t) (h5 >> 16);
    s[19] = (uint8_t)((h5 >> 24) | ((uint32_t)(h6) << 1));
    s[20] = (uint8_t) (h6 >> 7);
    s[21] = (uint8_t) (h6 >> 15);
    s[22] = (uint8_t)((h6 >> 23) | ((uint32_t)(h7) << 3));
    s[23] = (uint8_t) (h7 >> 5);
    s[24] = (uint8_t) (h7 >> 13);
    s[25] = (uint8_t)((h7 >> 21) | ((uint32_t)(h8) << 4));
    s[26] = (uint8_t) (h8 >> 4);
    s[27] = (uint8_t) (h8 >> 12);
    s[28] = (uint8_t)((h8 >> 20) | ((uint32_t)(h9) << 6));
    s[29] = (uint8_t) (h9 >> 2);
    s[30] = (uint8_t) (h9 >> 10);
    s[31] = (uint8_t) (h9 >> 18);
}


static void fe_copy(fe h, const fe f)
{
    memmove(h, f, sizeof(int32_t) * 10);
}


static void fe_0(fe h)
{
    memset(h, 0, sizeof(int32_t) * 10);
}


static void fe_1(fe h)
{
    memset(h, 0, sizeof(int32_t) * 10);
    h[0] = 1;
}
# 985 "../crypto/ec/curve25519.c"
static void fe_add(fe h, const fe f, const fe g)
{
    unsigned i;

    for (i = 0; i < 10; i++) {
        h[i] = f[i] + g[i];
    }
}
# 1006 "../crypto/ec/curve25519.c"
static void fe_sub(fe h, const fe f, const fe g)
{
    unsigned i;

    for (i = 0; i < 10; i++) {
        h[i] = f[i] - g[i];
    }
}
# 1045 "../crypto/ec/curve25519.c"
static void fe_mul(fe h, const fe f, const fe g)
{
    int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t g1_19 = 19 * g1;
    int32_t g2_19 = 19 * g2;
    int32_t g3_19 = 19 * g3;
    int32_t g4_19 = 19 * g4;
    int32_t g5_19 = 19 * g5;
    int32_t g6_19 = 19 * g6;
    int32_t g7_19 = 19 * g7;
    int32_t g8_19 = 19 * g8;
    int32_t g9_19 = 19 * g9;
    int32_t f1_2 = 2 * f1;
    int32_t f3_2 = 2 * f3;
    int32_t f5_2 = 2 * f5;
    int32_t f7_2 = 2 * f7;
    int32_t f9_2 = 2 * f9;
    int64_t f0g0 = f0 * (int64_t) g0;
    int64_t f0g1 = f0 * (int64_t) g1;
    int64_t f0g2 = f0 * (int64_t) g2;
    int64_t f0g3 = f0 * (int64_t) g3;
    int64_t f0g4 = f0 * (int64_t) g4;
    int64_t f0g5 = f0 * (int64_t) g5;
    int64_t f0g6 = f0 * (int64_t) g6;
    int64_t f0g7 = f0 * (int64_t) g7;
    int64_t f0g8 = f0 * (int64_t) g8;
    int64_t f0g9 = f0 * (int64_t) g9;
    int64_t f1g0 = f1 * (int64_t) g0;
    int64_t f1g1_2 = f1_2 * (int64_t) g1;
    int64_t f1g2 = f1 * (int64_t) g2;
    int64_t f1g3_2 = f1_2 * (int64_t) g3;
    int64_t f1g4 = f1 * (int64_t) g4;
    int64_t f1g5_2 = f1_2 * (int64_t) g5;
    int64_t f1g6 = f1 * (int64_t) g6;
    int64_t f1g7_2 = f1_2 * (int64_t) g7;
    int64_t f1g8 = f1 * (int64_t) g8;
    int64_t f1g9_38 = f1_2 * (int64_t) g9_19;
    int64_t f2g0 = f2 * (int64_t) g0;
    int64_t f2g1 = f2 * (int64_t) g1;
    int64_t f2g2 = f2 * (int64_t) g2;
    int64_t f2g3 = f2 * (int64_t) g3;
    int64_t f2g4 = f2 * (int64_t) g4;
    int64_t f2g5 = f2 * (int64_t) g5;
    int64_t f2g6 = f2 * (int64_t) g6;
    int64_t f2g7 = f2 * (int64_t) g7;
    int64_t f2g8_19 = f2 * (int64_t) g8_19;
    int64_t f2g9_19 = f2 * (int64_t) g9_19;
    int64_t f3g0 = f3 * (int64_t) g0;
    int64_t f3g1_2 = f3_2 * (int64_t) g1;
    int64_t f3g2 = f3 * (int64_t) g2;
    int64_t f3g3_2 = f3_2 * (int64_t) g3;
    int64_t f3g4 = f3 * (int64_t) g4;
    int64_t f3g5_2 = f3_2 * (int64_t) g5;
    int64_t f3g6 = f3 * (int64_t) g6;
    int64_t f3g7_38 = f3_2 * (int64_t) g7_19;
    int64_t f3g8_19 = f3 * (int64_t) g8_19;
    int64_t f3g9_38 = f3_2 * (int64_t) g9_19;
    int64_t f4g0 = f4 * (int64_t) g0;
    int64_t f4g1 = f4 * (int64_t) g1;
    int64_t f4g2 = f4 * (int64_t) g2;
    int64_t f4g3 = f4 * (int64_t) g3;
    int64_t f4g4 = f4 * (int64_t) g4;
    int64_t f4g5 = f4 * (int64_t) g5;
    int64_t f4g6_19 = f4 * (int64_t) g6_19;
    int64_t f4g7_19 = f4 * (int64_t) g7_19;
    int64_t f4g8_19 = f4 * (int64_t) g8_19;
    int64_t f4g9_19 = f4 * (int64_t) g9_19;
    int64_t f5g0 = f5 * (int64_t) g0;
    int64_t f5g1_2 = f5_2 * (int64_t) g1;
    int64_t f5g2 = f5 * (int64_t) g2;
    int64_t f5g3_2 = f5_2 * (int64_t) g3;
    int64_t f5g4 = f5 * (int64_t) g4;
    int64_t f5g5_38 = f5_2 * (int64_t) g5_19;
    int64_t f5g6_19 = f5 * (int64_t) g6_19;
    int64_t f5g7_38 = f5_2 * (int64_t) g7_19;
    int64_t f5g8_19 = f5 * (int64_t) g8_19;
    int64_t f5g9_38 = f5_2 * (int64_t) g9_19;
    int64_t f6g0 = f6 * (int64_t) g0;
    int64_t f6g1 = f6 * (int64_t) g1;
    int64_t f6g2 = f6 * (int64_t) g2;
    int64_t f6g3 = f6 * (int64_t) g3;
    int64_t f6g4_19 = f6 * (int64_t) g4_19;
    int64_t f6g5_19 = f6 * (int64_t) g5_19;
    int64_t f6g6_19 = f6 * (int64_t) g6_19;
    int64_t f6g7_19 = f6 * (int64_t) g7_19;
    int64_t f6g8_19 = f6 * (int64_t) g8_19;
    int64_t f6g9_19 = f6 * (int64_t) g9_19;
    int64_t f7g0 = f7 * (int64_t) g0;
    int64_t f7g1_2 = f7_2 * (int64_t) g1;
    int64_t f7g2 = f7 * (int64_t) g2;
    int64_t f7g3_38 = f7_2 * (int64_t) g3_19;
    int64_t f7g4_19 = f7 * (int64_t) g4_19;
    int64_t f7g5_38 = f7_2 * (int64_t) g5_19;
    int64_t f7g6_19 = f7 * (int64_t) g6_19;
    int64_t f7g7_38 = f7_2 * (int64_t) g7_19;
    int64_t f7g8_19 = f7 * (int64_t) g8_19;
    int64_t f7g9_38 = f7_2 * (int64_t) g9_19;
    int64_t f8g0 = f8 * (int64_t) g0;
    int64_t f8g1 = f8 * (int64_t) g1;
    int64_t f8g2_19 = f8 * (int64_t) g2_19;
    int64_t f8g3_19 = f8 * (int64_t) g3_19;
    int64_t f8g4_19 = f8 * (int64_t) g4_19;
    int64_t f8g5_19 = f8 * (int64_t) g5_19;
    int64_t f8g6_19 = f8 * (int64_t) g6_19;
    int64_t f8g7_19 = f8 * (int64_t) g7_19;
    int64_t f8g8_19 = f8 * (int64_t) g8_19;
    int64_t f8g9_19 = f8 * (int64_t) g9_19;
    int64_t f9g0 = f9 * (int64_t) g0;
    int64_t f9g1_38 = f9_2 * (int64_t) g1_19;
    int64_t f9g2_19 = f9 * (int64_t) g2_19;
    int64_t f9g3_38 = f9_2 * (int64_t) g3_19;
    int64_t f9g4_19 = f9 * (int64_t) g4_19;
    int64_t f9g5_38 = f9_2 * (int64_t) g5_19;
    int64_t f9g6_19 = f9 * (int64_t) g6_19;
    int64_t f9g7_38 = f9_2 * (int64_t) g7_19;
    int64_t f9g8_19 = f9 * (int64_t) g8_19;
    int64_t f9g9_38 = f9_2 * (int64_t) g9_19;
    int64_t h0 = f0g0 + f1g9_38 + f2g8_19 + f3g7_38 + f4g6_19 + f5g5_38 + f6g4_19 + f7g3_38 + f8g2_19 + f9g1_38;
    int64_t h1 = f0g1 + f1g0 + f2g9_19 + f3g8_19 + f4g7_19 + f5g6_19 + f6g5_19 + f7g4_19 + f8g3_19 + f9g2_19;
    int64_t h2 = f0g2 + f1g1_2 + f2g0 + f3g9_38 + f4g8_19 + f5g7_38 + f6g6_19 + f7g5_38 + f8g4_19 + f9g3_38;
    int64_t h3 = f0g3 + f1g2 + f2g1 + f3g0 + f4g9_19 + f5g8_19 + f6g7_19 + f7g6_19 + f8g5_19 + f9g4_19;
    int64_t h4 = f0g4 + f1g3_2 + f2g2 + f3g1_2 + f4g0 + f5g9_38 + f6g8_19 + f7g7_38 + f8g6_19 + f9g5_38;
    int64_t h5 = f0g5 + f1g4 + f2g3 + f3g2 + f4g1 + f5g0 + f6g9_19 + f7g8_19 + f8g7_19 + f9g6_19;
    int64_t h6 = f0g6 + f1g5_2 + f2g4 + f3g3_2 + f4g2 + f5g1_2 + f6g0 + f7g9_38 + f8g8_19 + f9g7_38;
    int64_t h7 = f0g7 + f1g6 + f2g5 + f3g4 + f4g3 + f5g2 + f6g1 + f7g0 + f8g9_19 + f9g8_19;
    int64_t h8 = f0g8 + f1g7_2 + f2g6 + f3g5_2 + f4g4 + f5g3_2 + f6g2 + f7g1_2 + f8g0 + f9g9_38;
    int64_t h9 = f0g9 + f1g8 + f2g7 + f3g6 + f4g5 + f5g4 + f6g3 + f7g2 + f8g1 + f9g0 ;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;






    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;
    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;





    carry1 = h1 + (1 << 24); h2 += carry1 >> 25; h1 -= carry1 & kTop39Bits;
    carry5 = h5 + (1 << 24); h6 += carry5 >> 25; h5 -= carry5 & kTop39Bits;





    carry2 = h2 + (1 << 25); h3 += carry2 >> 26; h2 -= carry2 & kTop38Bits;
    carry6 = h6 + (1 << 25); h7 += carry6 >> 26; h6 -= carry6 & kTop38Bits;





    carry3 = h3 + (1 << 24); h4 += carry3 >> 25; h3 -= carry3 & kTop39Bits;
    carry7 = h7 + (1 << 24); h8 += carry7 >> 25; h7 -= carry7 & kTop39Bits;





    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;
    carry8 = h8 + (1 << 25); h9 += carry8 >> 26; h8 -= carry8 & kTop38Bits;





    carry9 = h9 + (1 << 24); h0 += (carry9 >> 25) * 19; h9 -= carry9 & kTop39Bits;



    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;



    h[0] = (int32_t)h0;
    h[1] = (int32_t)h1;
    h[2] = (int32_t)h2;
    h[3] = (int32_t)h3;
    h[4] = (int32_t)h4;
    h[5] = (int32_t)h5;
    h[6] = (int32_t)h6;
    h[7] = (int32_t)h7;
    h[8] = (int32_t)h8;
    h[9] = (int32_t)h9;
}
# 1275 "../crypto/ec/curve25519.c"
static void fe_sq(fe h, const fe f)
{
    int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t f0_2 = 2 * f0;
    int32_t f1_2 = 2 * f1;
    int32_t f2_2 = 2 * f2;
    int32_t f3_2 = 2 * f3;
    int32_t f4_2 = 2 * f4;
    int32_t f5_2 = 2 * f5;
    int32_t f6_2 = 2 * f6;
    int32_t f7_2 = 2 * f7;
    int32_t f5_38 = 38 * f5;
    int32_t f6_19 = 19 * f6;
    int32_t f7_38 = 38 * f7;
    int32_t f8_19 = 19 * f8;
    int32_t f9_38 = 38 * f9;
    int64_t f0f0 = f0 * (int64_t) f0;
    int64_t f0f1_2 = f0_2 * (int64_t) f1;
    int64_t f0f2_2 = f0_2 * (int64_t) f2;
    int64_t f0f3_2 = f0_2 * (int64_t) f3;
    int64_t f0f4_2 = f0_2 * (int64_t) f4;
    int64_t f0f5_2 = f0_2 * (int64_t) f5;
    int64_t f0f6_2 = f0_2 * (int64_t) f6;
    int64_t f0f7_2 = f0_2 * (int64_t) f7;
    int64_t f0f8_2 = f0_2 * (int64_t) f8;
    int64_t f0f9_2 = f0_2 * (int64_t) f9;
    int64_t f1f1_2 = f1_2 * (int64_t) f1;
    int64_t f1f2_2 = f1_2 * (int64_t) f2;
    int64_t f1f3_4 = f1_2 * (int64_t) f3_2;
    int64_t f1f4_2 = f1_2 * (int64_t) f4;
    int64_t f1f5_4 = f1_2 * (int64_t) f5_2;
    int64_t f1f6_2 = f1_2 * (int64_t) f6;
    int64_t f1f7_4 = f1_2 * (int64_t) f7_2;
    int64_t f1f8_2 = f1_2 * (int64_t) f8;
    int64_t f1f9_76 = f1_2 * (int64_t) f9_38;
    int64_t f2f2 = f2 * (int64_t) f2;
    int64_t f2f3_2 = f2_2 * (int64_t) f3;
    int64_t f2f4_2 = f2_2 * (int64_t) f4;
    int64_t f2f5_2 = f2_2 * (int64_t) f5;
    int64_t f2f6_2 = f2_2 * (int64_t) f6;
    int64_t f2f7_2 = f2_2 * (int64_t) f7;
    int64_t f2f8_38 = f2_2 * (int64_t) f8_19;
    int64_t f2f9_38 = f2 * (int64_t) f9_38;
    int64_t f3f3_2 = f3_2 * (int64_t) f3;
    int64_t f3f4_2 = f3_2 * (int64_t) f4;
    int64_t f3f5_4 = f3_2 * (int64_t) f5_2;
    int64_t f3f6_2 = f3_2 * (int64_t) f6;
    int64_t f3f7_76 = f3_2 * (int64_t) f7_38;
    int64_t f3f8_38 = f3_2 * (int64_t) f8_19;
    int64_t f3f9_76 = f3_2 * (int64_t) f9_38;
    int64_t f4f4 = f4 * (int64_t) f4;
    int64_t f4f5_2 = f4_2 * (int64_t) f5;
    int64_t f4f6_38 = f4_2 * (int64_t) f6_19;
    int64_t f4f7_38 = f4 * (int64_t) f7_38;
    int64_t f4f8_38 = f4_2 * (int64_t) f8_19;
    int64_t f4f9_38 = f4 * (int64_t) f9_38;
    int64_t f5f5_38 = f5 * (int64_t) f5_38;
    int64_t f5f6_38 = f5_2 * (int64_t) f6_19;
    int64_t f5f7_76 = f5_2 * (int64_t) f7_38;
    int64_t f5f8_38 = f5_2 * (int64_t) f8_19;
    int64_t f5f9_76 = f5_2 * (int64_t) f9_38;
    int64_t f6f6_19 = f6 * (int64_t) f6_19;
    int64_t f6f7_38 = f6 * (int64_t) f7_38;
    int64_t f6f8_38 = f6_2 * (int64_t) f8_19;
    int64_t f6f9_38 = f6 * (int64_t) f9_38;
    int64_t f7f7_38 = f7 * (int64_t) f7_38;
    int64_t f7f8_38 = f7_2 * (int64_t) f8_19;
    int64_t f7f9_76 = f7_2 * (int64_t) f9_38;
    int64_t f8f8_19 = f8 * (int64_t) f8_19;
    int64_t f8f9_38 = f8 * (int64_t) f9_38;
    int64_t f9f9_38 = f9 * (int64_t) f9_38;
    int64_t h0 = f0f0 + f1f9_76 + f2f8_38 + f3f7_76 + f4f6_38 + f5f5_38;
    int64_t h1 = f0f1_2 + f2f9_38 + f3f8_38 + f4f7_38 + f5f6_38;
    int64_t h2 = f0f2_2 + f1f1_2 + f3f9_76 + f4f8_38 + f5f7_76 + f6f6_19;
    int64_t h3 = f0f3_2 + f1f2_2 + f4f9_38 + f5f8_38 + f6f7_38;
    int64_t h4 = f0f4_2 + f1f3_4 + f2f2 + f5f9_76 + f6f8_38 + f7f7_38;
    int64_t h5 = f0f5_2 + f1f4_2 + f2f3_2 + f6f9_38 + f7f8_38;
    int64_t h6 = f0f6_2 + f1f5_4 + f2f4_2 + f3f3_2 + f7f9_76 + f8f8_19;
    int64_t h7 = f0f7_2 + f1f6_2 + f2f5_2 + f3f4_2 + f8f9_38;
    int64_t h8 = f0f8_2 + f1f7_4 + f2f6_2 + f3f5_4 + f4f4 + f9f9_38;
    int64_t h9 = f0f9_2 + f1f8_2 + f2f7_2 + f3f6_2 + f4f5_2;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;

    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;
    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;

    carry1 = h1 + (1 << 24); h2 += carry1 >> 25; h1 -= carry1 & kTop39Bits;
    carry5 = h5 + (1 << 24); h6 += carry5 >> 25; h5 -= carry5 & kTop39Bits;

    carry2 = h2 + (1 << 25); h3 += carry2 >> 26; h2 -= carry2 & kTop38Bits;
    carry6 = h6 + (1 << 25); h7 += carry6 >> 26; h6 -= carry6 & kTop38Bits;

    carry3 = h3 + (1 << 24); h4 += carry3 >> 25; h3 -= carry3 & kTop39Bits;
    carry7 = h7 + (1 << 24); h8 += carry7 >> 25; h7 -= carry7 & kTop39Bits;

    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;
    carry8 = h8 + (1 << 25); h9 += carry8 >> 26; h8 -= carry8 & kTop38Bits;

    carry9 = h9 + (1 << 24); h0 += (carry9 >> 25) * 19; h9 -= carry9 & kTop39Bits;

    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;

    h[0] = (int32_t)h0;
    h[1] = (int32_t)h1;
    h[2] = (int32_t)h2;
    h[3] = (int32_t)h3;
    h[4] = (int32_t)h4;
    h[5] = (int32_t)h5;
    h[6] = (int32_t)h6;
    h[7] = (int32_t)h7;
    h[8] = (int32_t)h8;
    h[9] = (int32_t)h9;
}

static void fe_invert(fe out, const fe z)
{
    fe t0;
    fe t1;
    fe t2;
    fe t3;
    int i;







    fe_sq(t0, z);


    fe_sq(t1, t0);
    fe_sq(t1, t1);


    fe_mul(t1, z, t1);

    fe_mul(t0, t0, t1);


    fe_sq(t2, t0);


    fe_mul(t1, t1, t2);


    fe_sq(t2, t1);
    for (i = 1; i < 5; ++i) {
        fe_sq(t2, t2);
    }


    fe_mul(t1, t2, t1);




    fe_sq(t2, t1);
    for (i = 1; i < 10; ++i) {
        fe_sq(t2, t2);
    }
    fe_mul(t2, t2, t1);


    fe_sq(t3, t2);
    for (i = 1; i < 20; ++i) {
        fe_sq(t3, t3);
    }
    fe_mul(t2, t3, t2);


    for (i = 0; i < 10; ++i) {
        fe_sq(t2, t2);
    }

    fe_mul(t1, t2, t1);


    fe_sq(t2, t1);
    for (i = 1; i < 50; ++i) {
        fe_sq(t2, t2);
    }
    fe_mul(t2, t2, t1);


    fe_sq(t3, t2);
    for (i = 1; i < 100; ++i) {
        fe_sq(t3, t3);
    }
    fe_mul(t2, t3, t2);


    fe_sq(t2, t2);
    for (i = 1; i < 50; ++i) {
        fe_sq(t2, t2);
    }


    fe_mul(t1, t2, t1);


    fe_sq(t1, t1);
    for (i = 1; i < 5; ++i) {
        fe_sq(t1, t1);
    }


    fe_mul(out, t1, t0);
}
# 1512 "../crypto/ec/curve25519.c"
static void fe_neg(fe h, const fe f)
{
    unsigned i;

    for (i = 0; i < 10; i++) {
        h[i] = -f[i];
    }
}







static void fe_cmov(fe f, const fe g, unsigned b)
{
    size_t i;

    b = 0-b;
    for (i = 0; i < 10; i++) {
        int32_t x = f[i] ^ g[i];
        x &= b;
        f[i] ^= x;
    }
}
# 1546 "../crypto/ec/curve25519.c"
static int fe_isnonzero(const fe f)
{
    uint8_t s[32];
    static const uint8_t zero[32] = {0};

    fe_tobytes(s, f);

    return CRYPTO_memcmp(s, zero, sizeof(zero)) != 0;
}
# 1563 "../crypto/ec/curve25519.c"
static int fe_isnegative(const fe f)
{
    uint8_t s[32];

    fe_tobytes(s, f);
    return s[0] & 1;
}
# 1584 "../crypto/ec/curve25519.c"
static void fe_sq2(fe h, const fe f)
{
    int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t f0_2 = 2 * f0;
    int32_t f1_2 = 2 * f1;
    int32_t f2_2 = 2 * f2;
    int32_t f3_2 = 2 * f3;
    int32_t f4_2 = 2 * f4;
    int32_t f5_2 = 2 * f5;
    int32_t f6_2 = 2 * f6;
    int32_t f7_2 = 2 * f7;
    int32_t f5_38 = 38 * f5;
    int32_t f6_19 = 19 * f6;
    int32_t f7_38 = 38 * f7;
    int32_t f8_19 = 19 * f8;
    int32_t f9_38 = 38 * f9;
    int64_t f0f0 = f0 * (int64_t) f0;
    int64_t f0f1_2 = f0_2 * (int64_t) f1;
    int64_t f0f2_2 = f0_2 * (int64_t) f2;
    int64_t f0f3_2 = f0_2 * (int64_t) f3;
    int64_t f0f4_2 = f0_2 * (int64_t) f4;
    int64_t f0f5_2 = f0_2 * (int64_t) f5;
    int64_t f0f6_2 = f0_2 * (int64_t) f6;
    int64_t f0f7_2 = f0_2 * (int64_t) f7;
    int64_t f0f8_2 = f0_2 * (int64_t) f8;
    int64_t f0f9_2 = f0_2 * (int64_t) f9;
    int64_t f1f1_2 = f1_2 * (int64_t) f1;
    int64_t f1f2_2 = f1_2 * (int64_t) f2;
    int64_t f1f3_4 = f1_2 * (int64_t) f3_2;
    int64_t f1f4_2 = f1_2 * (int64_t) f4;
    int64_t f1f5_4 = f1_2 * (int64_t) f5_2;
    int64_t f1f6_2 = f1_2 * (int64_t) f6;
    int64_t f1f7_4 = f1_2 * (int64_t) f7_2;
    int64_t f1f8_2 = f1_2 * (int64_t) f8;
    int64_t f1f9_76 = f1_2 * (int64_t) f9_38;
    int64_t f2f2 = f2 * (int64_t) f2;
    int64_t f2f3_2 = f2_2 * (int64_t) f3;
    int64_t f2f4_2 = f2_2 * (int64_t) f4;
    int64_t f2f5_2 = f2_2 * (int64_t) f5;
    int64_t f2f6_2 = f2_2 * (int64_t) f6;
    int64_t f2f7_2 = f2_2 * (int64_t) f7;
    int64_t f2f8_38 = f2_2 * (int64_t) f8_19;
    int64_t f2f9_38 = f2 * (int64_t) f9_38;
    int64_t f3f3_2 = f3_2 * (int64_t) f3;
    int64_t f3f4_2 = f3_2 * (int64_t) f4;
    int64_t f3f5_4 = f3_2 * (int64_t) f5_2;
    int64_t f3f6_2 = f3_2 * (int64_t) f6;
    int64_t f3f7_76 = f3_2 * (int64_t) f7_38;
    int64_t f3f8_38 = f3_2 * (int64_t) f8_19;
    int64_t f3f9_76 = f3_2 * (int64_t) f9_38;
    int64_t f4f4 = f4 * (int64_t) f4;
    int64_t f4f5_2 = f4_2 * (int64_t) f5;
    int64_t f4f6_38 = f4_2 * (int64_t) f6_19;
    int64_t f4f7_38 = f4 * (int64_t) f7_38;
    int64_t f4f8_38 = f4_2 * (int64_t) f8_19;
    int64_t f4f9_38 = f4 * (int64_t) f9_38;
    int64_t f5f5_38 = f5 * (int64_t) f5_38;
    int64_t f5f6_38 = f5_2 * (int64_t) f6_19;
    int64_t f5f7_76 = f5_2 * (int64_t) f7_38;
    int64_t f5f8_38 = f5_2 * (int64_t) f8_19;
    int64_t f5f9_76 = f5_2 * (int64_t) f9_38;
    int64_t f6f6_19 = f6 * (int64_t) f6_19;
    int64_t f6f7_38 = f6 * (int64_t) f7_38;
    int64_t f6f8_38 = f6_2 * (int64_t) f8_19;
    int64_t f6f9_38 = f6 * (int64_t) f9_38;
    int64_t f7f7_38 = f7 * (int64_t) f7_38;
    int64_t f7f8_38 = f7_2 * (int64_t) f8_19;
    int64_t f7f9_76 = f7_2 * (int64_t) f9_38;
    int64_t f8f8_19 = f8 * (int64_t) f8_19;
    int64_t f8f9_38 = f8 * (int64_t) f9_38;
    int64_t f9f9_38 = f9 * (int64_t) f9_38;
    int64_t h0 = f0f0 + f1f9_76 + f2f8_38 + f3f7_76 + f4f6_38 + f5f5_38;
    int64_t h1 = f0f1_2 + f2f9_38 + f3f8_38 + f4f7_38 + f5f6_38;
    int64_t h2 = f0f2_2 + f1f1_2 + f3f9_76 + f4f8_38 + f5f7_76 + f6f6_19;
    int64_t h3 = f0f3_2 + f1f2_2 + f4f9_38 + f5f8_38 + f6f7_38;
    int64_t h4 = f0f4_2 + f1f3_4 + f2f2 + f5f9_76 + f6f8_38 + f7f7_38;
    int64_t h5 = f0f5_2 + f1f4_2 + f2f3_2 + f6f9_38 + f7f8_38;
    int64_t h6 = f0f6_2 + f1f5_4 + f2f4_2 + f3f3_2 + f7f9_76 + f8f8_19;
    int64_t h7 = f0f7_2 + f1f6_2 + f2f5_2 + f3f4_2 + f8f9_38;
    int64_t h8 = f0f8_2 + f1f7_4 + f2f6_2 + f3f5_4 + f4f4 + f9f9_38;
    int64_t h9 = f0f9_2 + f1f8_2 + f2f7_2 + f3f6_2 + f4f5_2;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;

    h0 += h0;
    h1 += h1;
    h2 += h2;
    h3 += h3;
    h4 += h4;
    h5 += h5;
    h6 += h6;
    h7 += h7;
    h8 += h8;
    h9 += h9;

    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;
    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;

    carry1 = h1 + (1 << 24); h2 += carry1 >> 25; h1 -= carry1 & kTop39Bits;
    carry5 = h5 + (1 << 24); h6 += carry5 >> 25; h5 -= carry5 & kTop39Bits;

    carry2 = h2 + (1 << 25); h3 += carry2 >> 26; h2 -= carry2 & kTop38Bits;
    carry6 = h6 + (1 << 25); h7 += carry6 >> 26; h6 -= carry6 & kTop38Bits;

    carry3 = h3 + (1 << 24); h4 += carry3 >> 25; h3 -= carry3 & kTop39Bits;
    carry7 = h7 + (1 << 24); h8 += carry7 >> 25; h7 -= carry7 & kTop39Bits;

    carry4 = h4 + (1 << 25); h5 += carry4 >> 26; h4 -= carry4 & kTop38Bits;
    carry8 = h8 + (1 << 25); h9 += carry8 >> 26; h8 -= carry8 & kTop38Bits;

    carry9 = h9 + (1 << 24); h0 += (carry9 >> 25) * 19; h9 -= carry9 & kTop39Bits;

    carry0 = h0 + (1 << 25); h1 += carry0 >> 26; h0 -= carry0 & kTop38Bits;

    h[0] = (int32_t)h0;
    h[1] = (int32_t)h1;
    h[2] = (int32_t)h2;
    h[3] = (int32_t)h3;
    h[4] = (int32_t)h4;
    h[5] = (int32_t)h5;
    h[6] = (int32_t)h6;
    h[7] = (int32_t)h7;
    h[8] = (int32_t)h8;
    h[9] = (int32_t)h9;
}

static void fe_pow22523(fe out, const fe z)
{
    fe t0;
    fe t1;
    fe t2;
    int i;

    fe_sq(t0, z);
    fe_sq(t1, t0);
    for (i = 1; i < 2; ++i) {
        fe_sq(t1, t1);
    }
    fe_mul(t1, z, t1);
    fe_mul(t0, t0, t1);
    fe_sq(t0, t0);
    fe_mul(t0, t1, t0);
    fe_sq(t1, t0);
    for (i = 1; i < 5; ++i) {
        fe_sq(t1, t1);
    }
    fe_mul(t0, t1, t0);
    fe_sq(t1, t0);
    for (i = 1; i < 10; ++i) {
        fe_sq(t1, t1);
    }
    fe_mul(t1, t1, t0);
    fe_sq(t2, t1);
    for (i = 1; i < 20; ++i) {
        fe_sq(t2, t2);
    }
    fe_mul(t1, t2, t1);
    fe_sq(t1, t1);
    for (i = 1; i < 10; ++i) {
        fe_sq(t1, t1);
    }
    fe_mul(t0, t1, t0);
    fe_sq(t1, t0);
    for (i = 1; i < 50; ++i) {
        fe_sq(t1, t1);
    }
    fe_mul(t1, t1, t0);
    fe_sq(t2, t1);
    for (i = 1; i < 100; ++i) {
        fe_sq(t2, t2);
    }
    fe_mul(t1, t2, t1);
    fe_sq(t1, t1);
    for (i = 1; i < 50; ++i) {
        fe_sq(t1, t1);
    }
    fe_mul(t0, t1, t0);
    fe_sq(t0, t0);
    for (i = 1; i < 2; ++i) {
        fe_sq(t0, t0);
    }
    fe_mul(out, t0, z);
}
# 1798 "../crypto/ec/curve25519.c"
typedef struct {
    fe X;
    fe Y;
    fe Z;
} ge_p2;

typedef struct {
    fe X;
    fe Y;
    fe Z;
    fe T;
} ge_p3;

typedef struct {
    fe X;
    fe Y;
    fe Z;
    fe T;
} ge_p1p1;

typedef struct {
    fe yplusx;
    fe yminusx;
    fe xy2d;
} ge_precomp;

typedef struct {
    fe YplusX;
    fe YminusX;
    fe Z;
    fe T2d;
} ge_cached;

static void ge_tobytes(uint8_t *s, const ge_p2 *h)
{
    fe recip;
    fe x;
    fe y;

    fe_invert(recip, h->Z);
    fe_mul(x, h->X, recip);
    fe_mul(y, h->Y, recip);
    fe_tobytes(s, y);
    s[31] ^= fe_isnegative(x) << 7;
}

static void ge_p3_tobytes(uint8_t *s, const ge_p3 *h)
{
    fe recip;
    fe x;
    fe y;

    fe_invert(recip, h->Z);
    fe_mul(x, h->X, recip);
    fe_mul(y, h->Y, recip);
    fe_tobytes(s, y);
    s[31] ^= fe_isnegative(x) << 7;
}

static const fe d = {
    -10913610, 13857413, -15372611, 6949391, 114729,
    -8787816, -6275908, -3247719, -18696448, -12055116
};

static const fe sqrtm1 = {
    -32595792, -7943725, 9377950, 3500415, 12389472,
    -272473, -25146209, -2005654, 326686, 11406482
};

static int ge_frombytes_vartime(ge_p3 *h, const uint8_t *s)
{
    fe u;
    fe v;
    fe w;
    fe vxx;
    fe check;

    fe_frombytes(h->Y, s);
    fe_1(h->Z);
    fe_sq(u, h->Y);
    fe_mul(v, u, d);
    fe_sub(u, u, h->Z);
    fe_add(v, v, h->Z);

    fe_mul(w, u, v);

    fe_pow22523(h->X, w);
    fe_mul(h->X, h->X, u);

    fe_sq(vxx, h->X);
    fe_mul(vxx, vxx, v);
    fe_sub(check, vxx, u);
    if (fe_isnonzero(check)) {
        fe_add(check, vxx, u);
        if (fe_isnonzero(check)) {
            return -1;
        }
        fe_mul(h->X, h->X, sqrtm1);
    }

    if (fe_isnegative(h->X) != (s[31] >> 7)) {
        fe_neg(h->X, h->X);
    }

    fe_mul(h->T, h->X, h->Y);
    return 0;
}

static void ge_p2_0(ge_p2 *h)
{
    fe_0(h->X);
    fe_1(h->Y);
    fe_1(h->Z);
}

static void ge_p3_0(ge_p3 *h)
{
    fe_0(h->X);
    fe_1(h->Y);
    fe_1(h->Z);
    fe_0(h->T);
}

static void ge_precomp_0(ge_precomp *h)
{
    fe_1(h->yplusx);
    fe_1(h->yminusx);
    fe_0(h->xy2d);
}


static void ge_p3_to_p2(ge_p2 *r, const ge_p3 *p)
{
    fe_copy(r->X, p->X);
    fe_copy(r->Y, p->Y);
    fe_copy(r->Z, p->Z);
}

static const fe d2 = {
    -21827239, -5839606, -30745221, 13898782, 229458,
    15978800, -12551817, -6495438, 29715968, 9444199
};


static void ge_p3_to_cached(ge_cached *r, const ge_p3 *p)
{
    fe_add(r->YplusX, p->Y, p->X);
    fe_sub(r->YminusX, p->Y, p->X);
    fe_copy(r->Z, p->Z);
    fe_mul(r->T2d, p->T, d2);
}


static void ge_p1p1_to_p2(ge_p2 *r, const ge_p1p1 *p)
{
    fe_mul(r->X, p->X, p->T);
    fe_mul(r->Y, p->Y, p->Z);
    fe_mul(r->Z, p->Z, p->T);
}


static void ge_p1p1_to_p3(ge_p3 *r, const ge_p1p1 *p)
{
    fe_mul(r->X, p->X, p->T);
    fe_mul(r->Y, p->Y, p->Z);
    fe_mul(r->Z, p->Z, p->T);
    fe_mul(r->T, p->X, p->Y);
}


static void ge_p2_dbl(ge_p1p1 *r, const ge_p2 *p)
{
    fe t0;

    fe_sq(r->X, p->X);
    fe_sq(r->Z, p->Y);
    fe_sq2(r->T, p->Z);
    fe_add(r->Y, p->X, p->Y);
    fe_sq(t0, r->Y);
    fe_add(r->Y, r->Z, r->X);
    fe_sub(r->Z, r->Z, r->X);
    fe_sub(r->X, t0, r->Y);
    fe_sub(r->T, r->T, r->Z);
}


static void ge_p3_dbl(ge_p1p1 *r, const ge_p3 *p)
{
    ge_p2 q;
    ge_p3_to_p2(&q, p);
    ge_p2_dbl(r, &q);
}


static void ge_madd(ge_p1p1 *r, const ge_p3 *p, const ge_precomp *q)
{
    fe t0;

    fe_add(r->X, p->Y, p->X);
    fe_sub(r->Y, p->Y, p->X);
    fe_mul(r->Z, r->X, q->yplusx);
    fe_mul(r->Y, r->Y, q->yminusx);
    fe_mul(r->T, q->xy2d, p->T);
    fe_add(t0, p->Z, p->Z);
    fe_sub(r->X, r->Z, r->Y);
    fe_add(r->Y, r->Z, r->Y);
    fe_add(r->Z, t0, r->T);
    fe_sub(r->T, t0, r->T);
}


static void ge_msub(ge_p1p1 *r, const ge_p3 *p, const ge_precomp *q)
{
    fe t0;

    fe_add(r->X, p->Y, p->X);
    fe_sub(r->Y, p->Y, p->X);
    fe_mul(r->Z, r->X, q->yminusx);
    fe_mul(r->Y, r->Y, q->yplusx);
    fe_mul(r->T, q->xy2d, p->T);
    fe_add(t0, p->Z, p->Z);
    fe_sub(r->X, r->Z, r->Y);
    fe_add(r->Y, r->Z, r->Y);
    fe_sub(r->Z, t0, r->T);
    fe_add(r->T, t0, r->T);
}


static void ge_add(ge_p1p1 *r, const ge_p3 *p, const ge_cached *q)
{
    fe t0;

    fe_add(r->X, p->Y, p->X);
    fe_sub(r->Y, p->Y, p->X);
    fe_mul(r->Z, r->X, q->YplusX);
    fe_mul(r->Y, r->Y, q->YminusX);
    fe_mul(r->T, q->T2d, p->T);
    fe_mul(r->X, p->Z, q->Z);
    fe_add(t0, r->X, r->X);
    fe_sub(r->X, r->Z, r->Y);
    fe_add(r->Y, r->Z, r->Y);
    fe_add(r->Z, t0, r->T);
    fe_sub(r->T, t0, r->T);
}


static void ge_sub(ge_p1p1 *r, const ge_p3 *p, const ge_cached *q)
{
    fe t0;

    fe_add(r->X, p->Y, p->X);
    fe_sub(r->Y, p->Y, p->X);
    fe_mul(r->Z, r->X, q->YminusX);
    fe_mul(r->Y, r->Y, q->YplusX);
    fe_mul(r->T, q->T2d, p->T);
    fe_mul(r->X, p->Z, q->Z);
    fe_add(t0, r->X, r->X);
    fe_sub(r->X, r->Z, r->Y);
    fe_add(r->Y, r->Z, r->Y);
    fe_sub(r->Z, t0, r->T);
    fe_add(r->T, t0, r->T);
}

static uint8_t equal(signed char b, signed char c)
{
    uint8_t ub = b;
    uint8_t uc = c;
    uint8_t x = ub ^ uc;
    uint32_t y = x;
    y -= 1;
    y >>= 31;
    return y;
}

static void cmov(ge_precomp *t, const ge_precomp *u, uint8_t b)
{
    fe_cmov(t->yplusx, u->yplusx, b);
    fe_cmov(t->yminusx, u->yminusx, b);
    fe_cmov(t->xy2d, u->xy2d, b);
}


static const ge_precomp k25519Precomp[32][8] = {
    {
        {
            {25967493, -14356035, 29566456, 3660896, -12694345, 4014787,
             27544626, -11754271, -6079156, 2047605},
            {-12545711, 934262, -2722910, 3049990, -727428, 9406986, 12720692,
             5043384, 19500929, -15469378},
            {-8738181, 4489570, 9688441, -14785194, 10184609, -12363380,
             29287919, 11864899, -24514362, -4438546},
        },
        {
            {-12815894, -12976347, -21581243, 11784320, -25355658, -2750717,
             -11717903, -3814571, -358445, -10211303},
            {-21703237, 6903825, 27185491, 6451973, -29577724, -9554005,
             -15616551, 11189268, -26829678, -5319081},
            {26966642, 11152617, 32442495, 15396054, 14353839, -12752335,
             -3128826, -9541118, -15472047, -4166697},
        },
        {
            {15636291, -9688557, 24204773, -7912398, 616977, -16685262,
             27787600, -14772189, 28944400, -1550024},
            {16568933, 4717097, -11556148, -1102322, 15682896, -11807043,
             16354577, -11775962, 7689662, 11199574},
            {30464156, -5976125, -11779434, -15670865, 23220365, 15915852,
             7512774, 10017326, -17749093, -9920357},
        },
        {
            {-17036878, 13921892, 10945806, -6033431, 27105052, -16084379,
             -28926210, 15006023, 3284568, -6276540},
            {23599295, -8306047, -11193664, -7687416, 13236774, 10506355,
             7464579, 9656445, 13059162, 10374397},
            {7798556, 16710257, 3033922, 2874086, 28997861, 2835604, 32406664,
             -3839045, -641708, -101325},
        },
        {
            {10861363, 11473154, 27284546, 1981175, -30064349, 12577861,
             32867885, 14515107, -15438304, 10819380},
            {4708026, 6336745, 20377586, 9066809, -11272109, 6594696, -25653668,
             12483688, -12668491, 5581306},
            {19563160, 16186464, -29386857, 4097519, 10237984, -4348115,
             28542350, 13850243, -23678021, -15815942},
        },
        {
            {-15371964, -12862754, 32573250, 4720197, -26436522, 5875511,
             -19188627, -15224819, -9818940, -12085777},
            {-8549212, 109983, 15149363, 2178705, 22900618, 4543417, 3044240,
             -15689887, 1762328, 14866737},
            {-18199695, -15951423, -10473290, 1707278, -17185920, 3916101,
             -28236412, 3959421, 27914454, 4383652},
        },
        {
            {5153746, 9909285, 1723747, -2777874, 30523605, 5516873, 19480852,
             5230134, -23952439, -15175766},
            {-30269007, -3463509, 7665486, 10083793, 28475525, 1649722,
             20654025, 16520125, 30598449, 7715701},
            {28881845, 14381568, 9657904, 3680757, -20181635, 7843316,
             -31400660, 1370708, 29794553, -1409300},
        },
        {
            {14499471, -2729599, -33191113, -4254652, 28494862, 14271267,
             30290735, 10876454, -33154098, 2381726},
            {-7195431, -2655363, -14730155, 462251, -27724326, 3941372,
             -6236617, 3696005, -32300832, 15351955},
            {27431194, 8222322, 16448760, -3907995, -18707002, 11938355,
             -32961401, -2970515, 29551813, 10109425},
        },
    },
    {
        {
            {-13657040, -13155431, -31283750, 11777098, 21447386, 6519384,
             -2378284, -1627556, 10092783, -4764171},
            {27939166, 14210322, 4677035, 16277044, -22964462, -12398139,
             -32508754, 12005538, -17810127, 12803510},
            {17228999, -15661624, -1233527, 300140, -1224870, -11714777,
             30364213, -9038194, 18016357, 4397660},
        },
        {
            {-10958843, -7690207, 4776341, -14954238, 27850028, -15602212,
             -26619106, 14544525, -17477504, 982639},
            {29253598, 15796703, -2863982, -9908884, 10057023, 3163536, 7332899,
             -4120128, -21047696, 9934963},
            {5793303, 16271923, -24131614, -10116404, 29188560, 1206517,
             -14747930, 4559895, -30123922, -10897950},
        },
        {
            {-27643952, -11493006, 16282657, -11036493, 28414021, -15012264,
             24191034, 4541697, -13338309, 5500568},
            {12650548, -1497113, 9052871, 11355358, -17680037, -8400164,
             -17430592, 12264343, 10874051, 13524335},
            {25556948, -3045990, 714651, 2510400, 23394682, -10415330, 33119038,
             5080568, -22528059, 5376628},
        },
        {
            {-26088264, -4011052, -17013699, -3537628, -6726793, 1920897,
             -22321305, -9447443, 4535768, 1569007},
            {-2255422, 14606630, -21692440, -8039818, 28430649, 8775819,
             -30494562, 3044290, 31848280, 12543772},
            {-22028579, 2943893, -31857513, 6777306, 13784462, -4292203,
             -27377195, -2062731, 7718482, 14474653},
        },
        {
            {2385315, 2454213, -22631320, 46603, -4437935, -15680415, 656965,
             -7236665, 24316168, -5253567},
            {13741529, 10911568, -33233417, -8603737, -20177830, -1033297,
             33040651, -13424532, -20729456, 8321686},
            {21060490, -2212744, 15712757, -4336099, 1639040, 10656336,
             23845965, -11874838, -9984458, 608372},
        },
        {
            {-13672732, -15087586, -10889693, -7557059, -6036909, 11305547,
             1123968, -6780577, 27229399, 23887},
            {-23244140, -294205, -11744728, 14712571, -29465699, -2029617,
             12797024, -6440308, -1633405, 16678954},
            {-29500620, 4770662, -16054387, 14001338, 7830047, 9564805,
             -1508144, -4795045, -17169265, 4904953},
        },
        {
            {24059557, 14617003, 19037157, -15039908, 19766093, -14906429,
             5169211, 16191880, 2128236, -4326833},
            {-16981152, 4124966, -8540610, -10653797, 30336522, -14105247,
             -29806336, 916033, -6882542, -2986532},
            {-22630907, 12419372, -7134229, -7473371, -16478904, 16739175,
             285431, 2763829, 15736322, 4143876},
        },
        {
            {2379352, 11839345, -4110402, -5988665, 11274298, 794957, 212801,
             -14594663, 23527084, -16458268},
            {33431127, -11130478, -17838966, -15626900, 8909499, 8376530,
             -32625340, 4087881, -15188911, -14416214},
            {1767683, 7197987, -13205226, -2022635, -13091350, 448826, 5799055,
             4357868, -4774191, -16323038},
        },
    },
    {
        {
            {6721966, 13833823, -23523388, -1551314, 26354293, -11863321,
             23365147, -3949732, 7390890, 2759800},
            {4409041, 2052381, 23373853, 10530217, 7676779, -12885954, 21302353,
             -4264057, 1244380, -12919645},
            {-4421239, 7169619, 4982368, -2957590, 30256825, -2777540, 14086413,
             9208236, 15886429, 16489664},
        },
        {
            {1996075, 10375649, 14346367, 13311202, -6874135, -16438411,
             -13693198, 398369, -30606455, -712933},
            {-25307465, 9795880, -2777414, 14878809, -33531835, 14780363,
             13348553, 12076947, -30836462, 5113182},
            {-17770784, 11797796, 31950843, 13929123, -25888302, 12288344,
             -30341101, -7336386, 13847711, 5387222},
        },
        {
            {-18582163, -3416217, 17824843, -2340966, 22744343, -10442611,
             8763061, 3617786, -19600662, 10370991},
            {20246567, -14369378, 22358229, -543712, 18507283, -10413996,
             14554437, -8746092, 32232924, 16763880},
            {9648505, 10094563, 26416693, 14745928, -30374318, -6472621,
             11094161, 15689506, 3140038, -16510092},
        },
        {
            {-16160072, 5472695, 31895588, 4744994, 8823515, 10365685,
             -27224800, 9448613, -28774454, 366295},
            {19153450, 11523972, -11096490, -6503142, -24647631, 5420647,
             28344573, 8041113, 719605, 11671788},
            {8678025, 2694440, -6808014, 2517372, 4964326, 11152271, -15432916,
             -15266516, 27000813, -10195553},
        },
        {
            {-15157904, 7134312, 8639287, -2814877, -7235688, 10421742, 564065,
             5336097, 6750977, -14521026},
            {11836410, -3979488, 26297894, 16080799, 23455045, 15735944,
             1695823, -8819122, 8169720, 16220347},
            {-18115838, 8653647, 17578566, -6092619, -8025777, -16012763,
             -11144307, -2627664, -5990708, -14166033},
        },
        {
            {-23308498, -10968312, 15213228, -10081214, -30853605, -11050004,
             27884329, 2847284, 2655861, 1738395},
            {-27537433, -14253021, -25336301, -8002780, -9370762, 8129821,
             21651608, -3239336, -19087449, -11005278},
            {1533110, 3437855, 23735889, 459276, 29970501, 11335377, 26030092,
             5821408, 10478196, 8544890},
        },
        {
            {32173121, -16129311, 24896207, 3921497, 22579056, -3410854,
             19270449, 12217473, 17789017, -3395995},
            {-30552961, -2228401, -15578829, -10147201, 13243889, 517024,
             15479401, -3853233, 30460520, 1052596},
            {-11614875, 13323618, 32618793, 8175907, -15230173, 12596687,
             27491595, -4612359, 3179268, -9478891},
        },
        {
            {31947069, -14366651, -4640583, -15339921, -15125977, -6039709,
             -14756777, -16411740, 19072640, -9511060},
            {11685058, 11822410, 3158003, -13952594, 33402194, -4165066,
             5977896, -5215017, 473099, 5040608},
            {-20290863, 8198642, -27410132, 11602123, 1290375, -2799760,
             28326862, 1721092, -19558642, -3131606},
        },
    },
    {
        {
            {7881532, 10687937, 7578723, 7738378, -18951012, -2553952, 21820786,
             8076149, -27868496, 11538389},
            {-19935666, 3899861, 18283497, -6801568, -15728660, -11249211,
             8754525, 7446702, -5676054, 5797016},
            {-11295600, -3793569, -15782110, -7964573, 12708869, -8456199,
             2014099, -9050574, -2369172, -5877341},
        },
        {
            {-22472376, -11568741, -27682020, 1146375, 18956691, 16640559,
             1192730, -3714199, 15123619, 10811505},
            {14352098, -3419715, -18942044, 10822655, 32750596, 4699007, -70363,
             15776356, -28886779, -11974553},
            {-28241164, -8072475, -4978962, -5315317, 29416931, 1847569,
             -20654173, -16484855, 4714547, -9600655},
        },
        {
            {15200332, 8368572, 19679101, 15970074, -31872674, 1959451,
             24611599, -4543832, -11745876, 12340220},
            {12876937, -10480056, 33134381, 6590940, -6307776, 14872440,
             9613953, 8241152, 15370987, 9608631},
            {-4143277, -12014408, 8446281, -391603, 4407738, 13629032, -7724868,
             15866074, -28210621, -8814099},
        },
        {
            {26660628, -15677655, 8393734, 358047, -7401291, 992988, -23904233,
             858697, 20571223, 8420556},
            {14620715, 13067227, -15447274, 8264467, 14106269, 15080814,
             33531827, 12516406, -21574435, -12476749},
            {236881, 10476226, 57258, -14677024, 6472998, 2466984, 17258519,
             7256740, 8791136, 15069930},
        },
        {
            {1276410, -9371918, 22949635, -16322807, -23493039, -5702186,
             14711875, 4874229, -30663140, -2331391},
            {5855666, 4990204, -13711848, 7294284, -7804282, 1924647, -1423175,
             -7912378, -33069337, 9234253},
            {20590503, -9018988, 31529744, -7352666, -2706834, 10650548,
             31559055, -11609587, 18979186, 13396066},
        },
        {
            {24474287, 4968103, 22267082, 4407354, 24063882, -8325180,
             -18816887, 13594782, 33514650, 7021958},
            {-11566906, -6565505, -21365085, 15928892, -26158305, 4315421,
             -25948728, -3916677, -21480480, 12868082},
            {-28635013, 13504661, 19988037, -2132761, 21078225, 6443208,
             -21446107, 2244500, -12455797, -8089383},
        },
        {
            {-30595528, 13793479, -5852820, 319136, -25723172, -6263899,
             33086546, 8957937, -15233648, 5540521},
            {-11630176, -11503902, -8119500, -7643073, 2620056, 1022908,
             -23710744, -1568984, -16128528, -14962807},
            {23152971, 775386, 27395463, 14006635, -9701118, 4649512, 1689819,
             892185, -11513277, -15205948},
        },
        {
            {9770129, 9586738, 26496094, 4324120, 1556511, -3550024, 27453819,
             4763127, -19179614, 5867134},
            {-32765025, 1927590, 31726409, -4753295, 23962434, -16019500,
             27846559, 5931263, -29749703, -16108455},
            {27461885, -2977536, 22380810, 1815854, -23033753, -3031938,
             7283490, -15148073, -19526700, 7734629},
        },
    },
    {
        {
            {-8010264, -9590817, -11120403, 6196038, 29344158, -13430885,
             7585295, -3176626, 18549497, 15302069},
            {-32658337, -6171222, -7672793, -11051681, 6258878, 13504381,
             10458790, -6418461, -8872242, 8424746},
            {24687205, 8613276, -30667046, -3233545, 1863892, -1830544,
             19206234, 7134917, -11284482, -828919},
        },
        {
            {11334899, -9218022, 8025293, 12707519, 17523892, -10476071,
             10243738, -14685461, -5066034, 16498837},
            {8911542, 6887158, -9584260, -6958590, 11145641, -9543680, 17303925,
             -14124238, 6536641, 10543906},
            {-28946384, 15479763, -17466835, 568876, -1497683, 11223454,
             -2669190, -16625574, -27235709, 8876771},
        },
        {
            {-25742899, -12566864, -15649966, -846607, -33026686, -796288,
             -33481822, 15824474, -604426, -9039817},
            {10330056, 70051, 7957388, -9002667, 9764902, 15609756, 27698697,
             -4890037, 1657394, 3084098},
            {10477963, -7470260, 12119566, -13250805, 29016247, -5365589,
             31280319, 14396151, -30233575, 15272409},
        },
        {
            {-12288309, 3169463, 28813183, 16658753, 25116432, -5630466,
             -25173957, -12636138, -25014757, 1950504},
            {-26180358, 9489187, 11053416, -14746161, -31053720, 5825630,
             -8384306, -8767532, 15341279, 8373727},
            {28685821, 7759505, -14378516, -12002860, -31971820, 4079242,
             298136, -10232602, -2878207, 15190420},
        },
        {
            {-32932876, 13806336, -14337485, -15794431, -24004620, 10940928,
             8669718, 2742393, -26033313, -6875003},
            {-1580388, -11729417, -25979658, -11445023, -17411874, -10912854,
             9291594, -16247779, -12154742, 6048605},
            {-30305315, 14843444, 1539301, 11864366, 20201677, 1900163,
             13934231, 5128323, 11213262, 9168384},
        },
        {
            {-26280513, 11007847, 19408960, -940758, -18592965, -4328580,
             -5088060, -11105150, 20470157, -16398701},
            {-23136053, 9282192, 14855179, -15390078, -7362815, -14408560,
             -22783952, 14461608, 14042978, 5230683},
            {29969567, -2741594, -16711867, -8552442, 9175486, -2468974,
             21556951, 3506042, -5933891, -12449708},
        },
        {
            {-3144746, 8744661, 19704003, 4581278, -20430686, 6830683,
             -21284170, 8971513, -28539189, 15326563},
            {-19464629, 10110288, -17262528, -3503892, -23500387, 1355669,
             -15523050, 15300988, -20514118, 9168260},
            {-5353335, 4488613, -23803248, 16314347, 7780487, -15638939,
             -28948358, 9601605, 33087103, -9011387},
        },
        {
            {-19443170, -15512900, -20797467, -12445323, -29824447, 10229461,
             -27444329, -15000531, -5996870, 15664672},
            {23294591, -16632613, -22650781, -8470978, 27844204, 11461195,
             13099750, -2460356, 18151676, 13417686},
            {-24722913, -4176517, -31150679, 5988919, -26858785, 6685065,
             1661597, -12551441, 15271676, -15452665},
        },
    },
    {
        {
            {11433042, -13228665, 8239631, -5279517, -1985436, -725718,
             -18698764, 2167544, -6921301, -13440182},
            {-31436171, 15575146, 30436815, 12192228, -22463353, 9395379,
             -9917708, -8638997, 12215110, 12028277},
            {14098400, 6555944, 23007258, 5757252, -15427832, -12950502,
             30123440, 4617780, -16900089, -655628},
        },
        {
            {-4026201, -15240835, 11893168, 13718664, -14809462, 1847385,
             -15819999, 10154009, 23973261, -12684474},
            {-26531820, -3695990, -1908898, 2534301, -31870557, -16550355,
             18341390, -11419951, 32013174, -10103539},
            {-25479301, 10876443, -11771086, -14625140, -12369567, 1838104,
             21911214, 6354752, 4425632, -837822},
        },
        {
            {-10433389, -14612966, 22229858, -3091047, -13191166, 776729,
             -17415375, -12020462, 4725005, 14044970},
            {19268650, -7304421, 1555349, 8692754, -21474059, -9910664, 6347390,
             -1411784, -19522291, -16109756},
            {-24864089, 12986008, -10898878, -5558584, -11312371, -148526,
             19541418, 8180106, 9282262, 10282508},
        },
        {
            {-26205082, 4428547, -8661196, -13194263, 4098402, -14165257,
             15522535, 8372215, 5542595, -10702683},
            {-10562541, 14895633, 26814552, -16673850, -17480754, -2489360,
             -2781891, 6993761, -18093885, 10114655},
            {-20107055, -929418, 31422704, 10427861, -7110749, 6150669,
             -29091755, -11529146, 25953725, -106158},
        },
        {
            {-4234397, -8039292, -9119125, 3046000, 2101609, -12607294,
             19390020, 6094296, -3315279, 12831125},
            {-15998678, 7578152, 5310217, 14408357, -33548620, -224739,
             31575954, 6326196, 7381791, -2421839},
            {-20902779, 3296811, 24736065, -16328389, 18374254, 7318640,
             6295303, 8082724, -15362489, 12339664},
        },
        {
            {27724736, 2291157, 6088201, -14184798, 1792727, 5857634, 13848414,
             15768922, 25091167, 14856294},
            {-18866652, 8331043, 24373479, 8541013, -701998, -9269457, 12927300,
             -12695493, -22182473, -9012899},
            {-11423429, -5421590, 11632845, 3405020, 30536730, -11674039,
             -27260765, 13866390, 30146206, 9142070},
        },
        {
            {3924129, -15307516, -13817122, -10054960, 12291820, -668366,
             -27702774, 9326384, -8237858, 4171294},
            {-15921940, 16037937, 6713787, 16606682, -21612135, 2790944,
             26396185, 3731949, 345228, -5462949},
            {-21327538, 13448259, 25284571, 1143661, 20614966, -8849387,
             2031539, -12391231, -16253183, -13582083},
        },
        {
            {31016211, -16722429, 26371392, -14451233, -5027349, 14854137,
             17477601, 3842657, 28012650, -16405420},
            {-5075835, 9368966, -8562079, -4600902, -15249953, 6970560,
             -9189873, 16292057, -8867157, 3507940},
            {29439664, 3537914, 23333589, 6997794, -17555561, -11018068,
             -15209202, -15051267, -9164929, 6580396},
        },
    },
    {
        {
            {-12185861, -7679788, 16438269, 10826160, -8696817, -6235611,
             17860444, -9273846, -2095802, 9304567},
            {20714564, -4336911, 29088195, 7406487, 11426967, -5095705,
             14792667, -14608617, 5289421, -477127},
            {-16665533, -10650790, -6160345, -13305760, 9192020, -1802462,
             17271490, 12349094, 26939669, -3752294},
        },
        {
            {-12889898, 9373458, 31595848, 16374215, 21471720, 13221525,
             -27283495, -12348559, -3698806, 117887},
            {22263325, -6560050, 3984570, -11174646, -15114008, -566785,
             28311253, 5358056, -23319780, 541964},
            {16259219, 3261970, 2309254, -15534474, -16885711, -4581916,
             24134070, -16705829, -13337066, -13552195},
        },
        {
            {9378160, -13140186, -22845982, -12745264, 28198281, -7244098,
             -2399684, -717351, 690426, 14876244},
            {24977353, -314384, -8223969, -13465086, 28432343, -1176353,
             -13068804, -12297348, -22380984, 6618999},
            {-1538174, 11685646, 12944378, 13682314, -24389511, -14413193,
             8044829, -13817328, 32239829, -5652762},
        },
        {
            {-18603066, 4762990, -926250, 8885304, -28412480, -3187315, 9781647,
             -10350059, 32779359, 5095274},
            {-33008130, -5214506, -32264887, -3685216, 9460461, -9327423,
             -24601656, 14506724, 21639561, -2630236},
            {-16400943, -13112215, 25239338, 15531969, 3987758, -4499318,
             -1289502, -6863535, 17874574, 558605},
        },
        {
            {-13600129, 10240081, 9171883, 16131053, -20869254, 9599700,
             33499487, 5080151, 2085892, 5119761},
            {-22205145, -2519528, -16381601, 414691, -25019550, 2170430,
             30634760, -8363614, -31999993, -5759884},
            {-6845704, 15791202, 8550074, -1312654, 29928809, -12092256,
             27534430, -7192145, -22351378, 12961482},
        },
        {
            {-24492060, -9570771, 10368194, 11582341, -23397293, -2245287,
             16533930, 8206996, -30194652, -5159638},
            {-11121496, -3382234, 2307366, 6362031, -135455, 8868177, -16835630,
             7031275, 7589640, 8945490},
            {-32152748, 8917967, 6661220, -11677616, -1192060, -15793393,
             7251489, -11182180, 24099109, -14456170},
        },
        {
            {5019558, -7907470, 4244127, -14714356, -26933272, 6453165,
             -19118182, -13289025, -6231896, -10280736},
            {10853594, 10721687, 26480089, 5861829, -22995819, 1972175,
             -1866647, -10557898, -3363451, -6441124},
            {-17002408, 5906790, 221599, -6563147, 7828208, -13248918, 24362661,
             -2008168, -13866408, 7421392},
        },
        {
            {8139927, -6546497, 32257646, -5890546, 30375719, 1886181,
             -21175108, 15441252, 28826358, -4123029},
            {6267086, 9695052, 7709135, -16603597, -32869068, -1886135,
             14795160, -7840124, 13746021, -1742048},
            {28584902, 7787108, -6732942, -15050729, 22846041, -7571236,
             -3181936, -363524, 4771362, -8419958},
        },
    },
    {
        {
            {24949256, 6376279, -27466481, -8174608, -18646154, -9930606,
             33543569, -12141695, 3569627, 11342593},
            {26514989, 4740088, 27912651, 3697550, 19331575, -11472339, 6809886,
             4608608, 7325975, -14801071},
            {-11618399, -14554430, -24321212, 7655128, -1369274, 5214312,
             -27400540, 10258390, -17646694, -8186692},
        },
        {
            {11431204, 15823007, 26570245, 14329124, 18029990, 4796082,
             -31446179, 15580664, 9280358, -3973687},
            {-160783, -10326257, -22855316, -4304997, -20861367, -13621002,
             -32810901, -11181622, -15545091, 4387441},
            {-20799378, 12194512, 3937617, -5805892, -27154820, 9340370,
             -24513992, 8548137, 20617071, -7482001},
        },
        {
            {-938825, -3930586, -8714311, 16124718, 24603125, -6225393,
             -13775352, -11875822, 24345683, 10325460},
            {-19855277, -1568885, -22202708, 8714034, 14007766, 6928528,
             16318175, -1010689, 4766743, 3552007},
            {-21751364, -16730916, 1351763, -803421, -4009670, 3950935, 3217514,
             14481909, 10988822, -3994762},
        },
        {
            {15564307, -14311570, 3101243, 5684148, 30446780, -8051356,
             12677127, -6505343, -8295852, 13296005},
            {-9442290, 6624296, -30298964, -11913677, -4670981, -2057379,
             31521204, 9614054, -30000824, 12074674},
            {4771191, -135239, 14290749, -13089852, 27992298, 14998318,
             -1413936, -1556716, 29832613, -16391035},
        },
        {
            {7064884, -7541174, -19161962, -5067537, -18891269, -2912736,
             25825242, 5293297, -27122660, 13101590},
            {-2298563, 2439670, -7466610, 1719965, -27267541, -16328445,
             32512469, -5317593, -30356070, -4190957},
            {-30006540, 10162316, -33180176, 3981723, -16482138, -13070044,
             14413974, 9515896, 19568978, 9628812},
        },
        {
            {33053803, 199357, 15894591, 1583059, 27380243, -4580435, -17838894,
             -6106839, -6291786, 3437740},
            {-18978877, 3884493, 19469877, 12726490, 15913552, 13614290,
             -22961733, 70104, 7463304, 4176122},
            {-27124001, 10659917, 11482427, -16070381, 12771467, -6635117,
             -32719404, -5322751, 24216882, 5944158},
        },
        {
            {8894125, 7450974, -2664149, -9765752, -28080517, -12389115,
             19345746, 14680796, 11632993, 5847885},
            {26942781, -2315317, 9129564, -4906607, 26024105, 11769399,
             -11518837, 6367194, -9727230, 4782140},
            {19916461, -4828410, -22910704, -11414391, 25606324, -5972441,
             33253853, 8220911, 6358847, -1873857},
        },
        {
            {801428, -2081702, 16569428, 11065167, 29875704, 96627, 7908388,
             -4480480, -13538503, 1387155},
            {19646058, 5720633, -11416706, 12814209, 11607948, 12749789,
             14147075, 15156355, -21866831, 11835260},
            {19299512, 1155910, 28703737, 14890794, 2925026, 7269399, 26121523,
             15467869, -26560550, 5052483},
        },
    },
    {
        {
            {-3017432, 10058206, 1980837, 3964243, 22160966, 12322533, -6431123,
             -12618185, 12228557, -7003677},
            {32944382, 14922211, -22844894, 5188528, 21913450, -8719943,
             4001465, 13238564, -6114803, 8653815},
            {22865569, -4652735, 27603668, -12545395, 14348958, 8234005,
             24808405, 5719875, 28483275, 2841751},
        },
        {
            {-16420968, -1113305, -327719, -12107856, 21886282, -15552774,
             -1887966, -315658, 19932058, -12739203},
            {-11656086, 10087521, -8864888, -5536143, -19278573, -3055912,
             3999228, 13239134, -4777469, -13910208},
            {1382174, -11694719, 17266790, 9194690, -13324356, 9720081,
             20403944, 11284705, -14013818, 3093230},
        },
        {
            {16650921, -11037932, -1064178, 1570629, -8329746, 7352753, -302424,
             16271225, -24049421, -6691850},
            {-21911077, -5927941, -4611316, -5560156, -31744103, -10785293,
             24123614, 15193618, -21652117, -16739389},
            {-9935934, -4289447, -25279823, 4372842, 2087473, 10399484,
             31870908, 14690798, 17361620, 11864968},
        },
        {
            {-11307610, 6210372, 13206574, 5806320, -29017692, -13967200,
             -12331205, -7486601, -25578460, -16240689},
            {14668462, -12270235, 26039039, 15305210, 25515617, 4542480,
             10453892, 6577524, 9145645, -6443880},
            {5974874, 3053895, -9433049, -10385191, -31865124, 3225009,
             -7972642, 3936128, -5652273, -3050304},
        },
        {
            {30625386, -4729400, -25555961, -12792866, -20484575, 7695099,
             17097188, -16303496, -27999779, 1803632},
            {-3553091, 9865099, -5228566, 4272701, -5673832, -16689700,
             14911344, 12196514, -21405489, 7047412},
            {20093277, 9920966, -11138194, -5343857, 13161587, 12044805,
             -32856851, 4124601, -32343828, -10257566},
        },
        {
            {-20788824, 14084654, -13531713, 7842147, 19119038, -13822605,
             4752377, -8714640, -21679658, 2288038},
            {-26819236, -3283715, 29965059, 3039786, -14473765, 2540457,
             29457502, 14625692, -24819617, 12570232},
            {-1063558, -11551823, 16920318, 12494842, 1278292, -5869109,
             -21159943, -3498680, -11974704, 4724943},
        },
        {
            {17960970, -11775534, -4140968, -9702530, -8876562, -1410617,
             -12907383, -8659932, -29576300, 1903856},
            {23134274, -14279132, -10681997, -1611936, 20684485, 15770816,
             -12989750, 3190296, 26955097, 14109738},
            {15308788, 5320727, -30113809, -14318877, 22902008, 7767164,
             29425325, -11277562, 31960942, 11934971},
        },
        {
            {-27395711, 8435796, 4109644, 12222639, -24627868, 14818669,
             20638173, 4875028, 10491392, 1379718},
            {-13159415, 9197841, 3875503, -8936108, -1383712, -5879801,
             33518459, 16176658, 21432314, 12180697},
            {-11787308, 11500838, 13787581, -13832590, -22430679, 10140205,
             1465425, 12689540, -10301319, -13872883},
        },
    },
    {
        {
            {5414091, -15386041, -21007664, 9643570, 12834970, 1186149,
             -2622916, -1342231, 26128231, 6032912},
            {-26337395, -13766162, 32496025, -13653919, 17847801, -12669156,
             3604025, 8316894, -25875034, -10437358},
            {3296484, 6223048, 24680646, -12246460, -23052020, 5903205,
             -8862297, -4639164, 12376617, 3188849},
        },
        {
            {29190488, -14659046, 27549113, -1183516, 3520066, -10697301,
             32049515, -7309113, -16109234, -9852307},
            {-14744486, -9309156, 735818, -598978, -20407687, -5057904,
             25246078, -15795669, 18640741, -960977},
            {-6928835, -16430795, 10361374, 5642961, 4910474, 12345252,
             -31638386, -494430, 10530747, 1053335},
        },
        {
            {-29265967, -14186805, -13538216, -12117373, -19457059, -10655384,
             -31462369, -2948985, 24018831, 15026644},
            {-22592535, -3145277, -2289276, 5953843, -13440189, 9425631,
             25310643, 13003497, -2314791, -15145616},
            {-27419985, -603321, -8043984, -1669117, -26092265, 13987819,
             -27297622, 187899, -23166419, -2531735},
        },
        {
            {-21744398, -13810475, 1844840, 5021428, -10434399, -15911473,
             9716667, 16266922, -5070217, 726099},
            {29370922, -6053998, 7334071, -15342259, 9385287, 2247707,
             -13661962, -4839461, 30007388, -15823341},
            {-936379, 16086691, 23751945, -543318, -1167538, -5189036, 9137109,
             730663, 9835848, 4555336},
        },
        {
            {-23376435, 1410446, -22253753, -12899614, 30867635, 15826977,
             17693930, 544696, -11985298, 12422646},
            {31117226, -12215734, -13502838, 6561947, -9876867, -12757670,
             -5118685, -4096706, 29120153, 13924425},
            {-17400879, -14233209, 19675799, -2734756, -11006962, -5858820,
             -9383939, -11317700, 7240931, -237388},
        },
        {
            {-31361739, -11346780, -15007447, -5856218, -22453340, -12152771,
             1222336, 4389483, 3293637, -15551743},
            {-16684801, -14444245, 11038544, 11054958, -13801175, -3338533,
             -24319580, 7733547, 12796905, -6335822},
            {-8759414, -10817836, -25418864, 10783769, -30615557, -9746811,
             -28253339, 3647836, 3222231, -11160462},
        },
        {
            {18606113, 1693100, -25448386, -15170272, 4112353, 10045021,
             23603893, -2048234, -7550776, 2484985},
            {9255317, -3131197, -12156162, -1004256, 13098013, -9214866,
             16377220, -2102812, -19802075, -3034702},
            {-22729289, 7496160, -5742199, 11329249, 19991973, -3347502,
             -31718148, 9936966, -30097688, -10618797},
        },
        {
            {21878590, -5001297, 4338336, 13643897, -3036865, 13160960,
             19708896, 5415497, -7360503, -4109293},
            {27736861, 10103576, 12500508, 8502413, -3413016, -9633558,
             10436918, -1550276, -23659143, -8132100},
            {19492550, -12104365, -29681976, -852630, -3208171, 12403437,
             30066266, 8367329, 13243957, 8709688},
        },
    },
    {
        {
            {12015105, 2801261, 28198131, 10151021, 24818120, -4743133,
             -11194191, -5645734, 5150968, 7274186},
            {2831366, -12492146, 1478975, 6122054, 23825128, -12733586,
             31097299, 6083058, 31021603, -9793610},
            {-2529932, -2229646, 445613, 10720828, -13849527, -11505937,
             -23507731, 16354465, 15067285, -14147707},
        },
        {
            {7840942, 14037873, -33364863, 15934016, -728213, -3642706,
             21403988, 1057586, -19379462, -12403220},
            {915865, -16469274, 15608285, -8789130, -24357026, 6060030,
             -17371319, 8410997, -7220461, 16527025},
            {32922597, -556987, 20336074, -16184568, 10903705, -5384487,
             16957574, 52992, 23834301, 6588044},
        },
        {
            {32752030, 11232950, 3381995, -8714866, 22652988, -10744103,
             17159699, 16689107, -20314580, -1305992},
            {-4689649, 9166776, -25710296, -10847306, 11576752, 12733943,
             7924251, -2752281, 1976123, -7249027},
            {21251222, 16309901, -2983015, -6783122, 30810597, 12967303, 156041,
             -3371252, 12331345, -8237197},
        },
        {
            {8651614, -4477032, -16085636, -4996994, 13002507, 2950805,
             29054427, -5106970, 10008136, -4667901},
            {31486080, 15114593, -14261250, 12951354, 14369431, -7387845,
             16347321, -13662089, 8684155, -10532952},
            {19443825, 11385320, 24468943, -9659068, -23919258, 2187569,
             -26263207, -6086921, 31316348, 14219878},
        },
        {
            {-28594490, 1193785, 32245219, 11392485, 31092169, 15722801,
             27146014, 6992409, 29126555, 9207390},
            {32382935, 1110093, 18477781, 11028262, -27411763, -7548111,
             -4980517, 10843782, -7957600, -14435730},
            {2814918, 7836403, 27519878, -7868156, -20894015, -11553689,
             -21494559, 8550130, 28346258, 1994730},
        },
        {
            {-19578299, 8085545, -14000519, -3948622, 2785838, -16231307,
             -19516951, 7174894, 22628102, 8115180},
            {-30405132, 955511, -11133838, -15078069, -32447087, -13278079,
             -25651578, 3317160, -9943017, 930272},
            {-15303681, -6833769, 28856490, 1357446, 23421993, 1057177,
             24091212, -1388970, -22765376, -10650715},
        },
        {
            {-22751231, -5303997, -12907607, -12768866, -15811511, -7797053,
             -14839018, -16554220, -1867018, 8398970},
            {-31969310, 2106403, -4736360, 1362501, 12813763, 16200670,
             22981545, -6291273, 18009408, -15772772},
            {-17220923, -9545221, -27784654, 14166835, 29815394, 7444469,
             29551787, -3727419, 19288549, 1325865},
        },
        {
            {15100157, -15835752, -23923978, -1005098, -26450192, 15509408,
             12376730, -3479146, 33166107, -8042750},
            {20909231, 13023121, -9209752, 16251778, -5778415, -8094914,
             12412151, 10018715, 2213263, -13878373},
            {32529814, -11074689, 30361439, -16689753, -9135940, 1513226,
             22922121, 6382134, -5766928, 8371348},
        },
    },
    {
        {
            {9923462, 11271500, 12616794, 3544722, -29998368, -1721626,
             12891687, -8193132, -26442943, 10486144},
            {-22597207, -7012665, 8587003, -8257861, 4084309, -12970062, 361726,
             2610596, -23921530, -11455195},
            {5408411, -1136691, -4969122, 10561668, 24145918, 14240566,
             31319731, -4235541, 19985175, -3436086},
        },
        {
            {-13994457, 16616821, 14549246, 3341099, 32155958, 13648976,
             -17577068, 8849297, 65030, 8370684},
            {-8320926, -12049626, 31204563, 5839400, -20627288, -1057277,
             -19442942, 6922164, 12743482, -9800518},
            {-2361371, 12678785, 28815050, 4759974, -23893047, 4884717,
             23783145, 11038569, 18800704, 255233},
        },
        {
            {-5269658, -1773886, 13957886, 7990715, 23132995, 728773, 13393847,
             9066957, 19258688, -14753793},
            {-2936654, -10827535, -10432089, 14516793, -3640786, 4372541,
             -31934921, 2209390, -1524053, 2055794},
            {580882, 16705327, 5468415, -2683018, -30926419, -14696000,
             -7203346, -8994389, -30021019, 7394435},
        },
        {
            {23838809, 1822728, -15738443, 15242727, 8318092, -3733104,
             -21672180, -3492205, -4821741, 14799921},
            {13345610, 9759151, 3371034, -16137791, 16353039, 8577942, 31129804,
             13496856, -9056018, 7402518},
            {2286874, -4435931, -20042458, -2008336, -13696227, 5038122,
             11006906, -15760352, 8205061, 1607563},
        },
        {
            {14414086, -8002132, 3331830, -3208217, 22249151, -5594188,
             18364661, -2906958, 30019587, -9029278},
            {-27688051, 1585953, -10775053, 931069, -29120221, -11002319,
             -14410829, 12029093, 9944378, 8024},
            {4368715, -3709630, 29874200, -15022983, -20230386, -11410704,
             -16114594, -999085, -8142388, 5640030},
        },
        {
            {10299610, 13746483, 11661824, 16234854, 7630238, 5998374, 9809887,
             -16694564, 15219798, -14327783},
            {27425505, -5719081, 3055006, 10660664, 23458024, 595578, -15398605,
             -1173195, -18342183, 9742717},
            {6744077, 2427284, 26042789, 2720740, -847906, 1118974, 32324614,
             7406442, 12420155, 1994844},
        },
        {
            {14012521, -5024720, -18384453, -9578469, -26485342, -3936439,
             -13033478, -10909803, 24319929, -6446333},
            {16412690, -4507367, 10772641, 15929391, -17068788, -4658621,
             10555945, -10484049, -30102368, -4739048},
            {22397382, -7767684, -9293161, -12792868, 17166287, -9755136,
             -27333065, 6199366, 21880021, -12250760},
        },
        {
            {-4283307, 5368523, -31117018, 8163389, -30323063, 3209128,
             16557151, 8890729, 8840445, 4957760},
            {-15447727, 709327, -6919446, -10870178, -29777922, 6522332,
             -21720181, 12130072, -14796503, 5005757},
            {-2114751, -14308128, 23019042, 15765735, -25269683, 6002752,
             10183197, -13239326, -16395286, -2176112},
        },
    },
    {
        {
            {-19025756, 1632005, 13466291, -7995100, -23640451, 16573537,
             -32013908, -3057104, 22208662, 2000468},
            {3065073, -1412761, -25598674, -361432, -17683065, -5703415,
             -8164212, 11248527, -3691214, -7414184},
            {10379208, -6045554, 8877319, 1473647, -29291284, -12507580,
             16690915, 2553332, -3132688, 16400289},
        },
        {
            {15716668, 1254266, -18472690, 7446274, -8448918, 6344164,
             -22097271, -7285580, 26894937, 9132066},
            {24158887, 12938817, 11085297, -8177598, -28063478, -4457083,
             -30576463, 64452, -6817084, -2692882},
            {13488534, 7794716, 22236231, 5989356, 25426474, -12578208, 2350710,
             -3418511, -4688006, 2364226},
        },
        {
            {16335052, 9132434, 25640582, 6678888, 1725628, 8517937, -11807024,
             -11697457, 15445875, -7798101},
            {29004207, -7867081, 28661402, -640412, -12794003, -7943086,
             31863255, -4135540, -278050, -15759279},
            {-6122061, -14866665, -28614905, 14569919, -10857999, -3591829,
             10343412, -6976290, -29828287, -10815811},
        },
        {
            {27081650, 3463984, 14099042, -4517604, 1616303, -6205604, 29542636,
             15372179, 17293797, 960709},
            {20263915, 11434237, -5765435, 11236810, 13505955, -10857102,
             -16111345, 6493122, -19384511, 7639714},
            {-2830798, -14839232, 25403038, -8215196, -8317012, -16173699,
             18006287, -16043750, 29994677, -15808121},
        },
        {
            {9769828, 5202651, -24157398, -13631392, -28051003, -11561624,
             -24613141, -13860782, -31184575, 709464},
            {12286395, 13076066, -21775189, -1176622, -25003198, 4057652,
             -32018128, -8890874, 16102007, 13205847},
            {13733362, 5599946, 10557076, 3195751, -5557991, 8536970, -25540170,
             8525972, 10151379, 10394400},
        },
        {
            {4024660, -16137551, 22436262, 12276534, -9099015, -2686099,
             19698229, 11743039, -33302334, 8934414},
            {-15879800, -4525240, -8580747, -2934061, 14634845, -698278,
             -9449077, 3137094, -11536886, 11721158},
            {17555939, -5013938, 8268606, 2331751, -22738815, 9761013, 9319229,
             8835153, -9205489, -1280045},
        },
        {
            {-461409, -7830014, 20614118, 16688288, -7514766, -4807119,
             22300304, 505429, 6108462, -6183415},
            {-5070281, 12367917, -30663534, 3234473, 32617080, -8422642,
             29880583, -13483331, -26898490, -7867459},
            {-31975283, 5726539, 26934134, 10237677, -3173717, -605053,
             24199304, 3795095, 7592688, -14992079},
        },
        {
            {21594432, -14964228, 17466408, -4077222, 32537084, 2739898,
             6407723, 12018833, -28256052, 4298412},
            {-20650503, -11961496, -27236275, 570498, 3767144, -1717540,
             13891942, -1569194, 13717174, 10805743},
            {-14676630, -15644296, 15287174, 11927123, 24177847, -8175568,
             -796431, 14860609, -26938930, -5863836},
        },
    },
    {
        {
            {12962541, 5311799, -10060768, 11658280, 18855286, -7954201,
             13286263, -12808704, -4381056, 9882022},
            {18512079, 11319350, -20123124, 15090309, 18818594, 5271736,
             -22727904, 3666879, -23967430, -3299429},
            {-6789020, -3146043, 16192429, 13241070, 15898607, -14206114,
             -10084880, -6661110, -2403099, 5276065},
        },
        {
            {30169808, -5317648, 26306206, -11750859, 27814964, 7069267,
             7152851, 3684982, 1449224, 13082861},
            {10342826, 3098505, 2119311, 193222, 25702612, 12233820, 23697382,
             15056736, -21016438, -8202000},
            {-33150110, 3261608, 22745853, 7948688, 19370557, -15177665,
             -26171976, 6482814, -10300080, -11060101},
        },
        {
            {32869458, -5408545, 25609743, 15678670, -10687769, -15471071,
             26112421, 2521008, -22664288, 6904815},
            {29506923, 4457497, 3377935, -9796444, -30510046, 12935080, 1561737,
             3841096, -29003639, -6657642},
            {10340844, -6630377, -18656632, -2278430, 12621151, -13339055,
             30878497, -11824370, -25584551, 5181966},
        },
        {
            {25940115, -12658025, 17324188, -10307374, -8671468, 15029094,
             24396252, -16450922, -2322852, -12388574},
            {-21765684, 9916823, -1300409, 4079498, -1028346, 11909559, 1782390,
             12641087, 20603771, -6561742},
            {-18882287, -11673380, 24849422, 11501709, 13161720, -4768874,
             1925523, 11914390, 4662781, 7820689},
        },
        {
            {12241050, -425982, 8132691, 9393934, 32846760, -1599620, 29749456,
             12172924, 16136752, 15264020},
            {-10349955, -14680563, -8211979, 2330220, -17662549, -14545780,
             10658213, 6671822, 19012087, 3772772},
            {3753511, -3421066, 10617074, 2028709, 14841030, -6721664, 28718732,
             -15762884, 20527771, 12988982},
        },
        {
            {-14822485, -5797269, -3707987, 12689773, -898983, -10914866,
             -24183046, -10564943, 3299665, -12424953},
            {-16777703, -15253301, -9642417, 4978983, 3308785, 8755439, 6943197,
             6461331, -25583147, 8991218},
            {-17226263, 1816362, -1673288, -6086439, 31783888, -8175991,
             -32948145, 7417950, -30242287, 1507265},
        },
        {
            {29692663, 6829891, -10498800, 4334896, 20945975, -11906496,
             -28887608, 8209391, 14606362, -10647073},
            {-3481570, 8707081, 32188102, 5672294, 22096700, 1711240, -33020695,
             9761487, 4170404, -2085325},
            {-11587470, 14855945, -4127778, -1531857, -26649089, 15084046,
             22186522, 16002000, -14276837, -8400798},
        },
        {
            {-4811456, 13761029, -31703877, -2483919, -3312471, 7869047,
             -7113572, -9620092, 13240845, 10965870},
            {-7742563, -8256762, -14768334, -13656260, -23232383, 12387166,
             4498947, 14147411, 29514390, 4302863},
            {-13413405, -12407859, 20757302, -13801832, 14785143, 8976368,
             -5061276, -2144373, 17846988, -13971927},
        },
    },
    {
        {
            {-2244452, -754728, -4597030, -1066309, -6247172, 1455299,
             -21647728, -9214789, -5222701, 12650267},
            {-9906797, -16070310, 21134160, 12198166, -27064575, 708126, 387813,
             13770293, -19134326, 10958663},
            {22470984, 12369526, 23446014, -5441109, -21520802, -9698723,
             -11772496, -11574455, -25083830, 4271862},
        },
        {
            {-25169565, -10053642, -19909332, 15361595, -5984358, 2159192,
             75375, -4278529, -32526221, 8469673},
            {15854970, 4148314, -8893890, 7259002, 11666551, 13824734,
             -30531198, 2697372, 24154791, -9460943},
            {15446137, -15806644, 29759747, 14019369, 30811221, -9610191,
             -31582008, 12840104, 24913809, 9815020},
        },
        {
            {-4709286, -5614269, -31841498, -12288893, -14443537, 10799414,
             -9103676, 13438769, 18735128, 9466238},
            {11933045, 9281483, 5081055, -5183824, -2628162, -4905629, -7727821,
             -10896103, -22728655, 16199064},
            {14576810, 379472, -26786533, -8317236, -29426508, -10812974,
             -102766, 1876699, 30801119, 2164795},
        },
        {
            {15995086, 3199873, 13672555, 13712240, -19378835, -4647646,
             -13081610, -15496269, -13492807, 1268052},
            {-10290614, -3659039, -3286592, 10948818, 23037027, 3794475,
             -3470338, -12600221, -17055369, 3565904},
            {29210088, -9419337, -5919792, -4952785, 10834811, -13327726,
             -16512102, -10820713, -27162222, -14030531},
        },
        {
            {-13161890, 15508588, 16663704, -8156150, -28349942, 9019123,
             -29183421, -3769423, 2244111, -14001979},
            {-5152875, -3800936, -9306475, -6071583, 16243069, 14684434,
             -25673088, -16180800, 13491506, 4641841},
            {10813417, 643330, -19188515, -728916, 30292062, -16600078,
             27548447, -7721242, 14476989, -12767431},
        },
        {
            {10292079, 9984945, 6481436, 8279905, -7251514, 7032743, 27282937,
             -1644259, -27912810, 12651324},
            {-31185513, -813383, 22271204, 11835308, 10201545, 15351028,
             17099662, 3988035, 21721536, -3148940},
            {10202177, -6545839, -31373232, -9574638, -32150642, -8119683,
             -12906320, 3852694, 13216206, 14842320},
        },
        {
            {-15815640, -10601066, -6538952, -7258995, -6984659, -6581778,
             -31500847, 13765824, -27434397, 9900184},
            {14465505, -13833331, -32133984, -14738873, -27443187, 12990492,
             33046193, 15796406, -7051866, -8040114},
            {30924417, -8279620, 6359016, -12816335, 16508377, 9071735,
             -25488601, 15413635, 9524356, -7018878},
        },
        {
            {12274201, -13175547, 32627641, -1785326, 6736625, 13267305,
             5237659, -5109483, 15663516, 4035784},
            {-2951309, 8903985, 17349946, 601635, -16432815, -4612556,
             -13732739, -15889334, -22258478, 4659091},
            {-16916263, -4952973, -30393711, -15158821, 20774812, 15897498,
             5736189, 15026997, -2178256, -13455585},
        },
    },
    {
        {
            {-8858980, -2219056, 28571666, -10155518, -474467, -10105698,
             -3801496, 278095, 23440562, -290208},
            {10226241, -5928702, 15139956, 120818, -14867693, 5218603, 32937275,
             11551483, -16571960, -7442864},
            {17932739, -12437276, -24039557, 10749060, 11316803, 7535897,
             22503767, 5561594, -3646624, 3898661},
        },
        {
            {7749907, -969567, -16339731, -16464, -25018111, 15122143, -1573531,
             7152530, 21831162, 1245233},
            {26958459, -14658026, 4314586, 8346991, -5677764, 11960072,
             -32589295, -620035, -30402091, -16716212},
            {-12165896, 9166947, 33491384, 13673479, 29787085, 13096535,
             6280834, 14587357, -22338025, 13987525},
        },
        {
            {-24349909, 7778775, 21116000, 15572597, -4833266, -5357778,
             -4300898, -5124639, -7469781, -2858068},
            {9681908, -6737123, -31951644, 13591838, -6883821, 386950, 31622781,
             6439245, -14581012, 4091397},
            {-8426427, 1470727, -28109679, -1596990, 3978627, -5123623,
             -19622683, 12092163, 29077877, -14741988},
        },
        {
            {5269168, -6859726, -13230211, -8020715, 25932563, 1763552,
             -5606110, -5505881, -20017847, 2357889},
            {32264008, -15407652, -5387735, -1160093, -2091322, -3946900,
             23104804, -12869908, 5727338, 189038},
            {14609123, -8954470, -6000566, -16622781, -14577387, -7743898,
             -26745169, 10942115, -25888931, -14884697},
        },
        {
            {20513500, 5557931, -15604613, 7829531, 26413943, -2019404,
             -21378968, 7471781, 13913677, -5137875},
            {-25574376, 11967826, 29233242, 12948236, -6754465, 4713227,
             -8940970, 14059180, 12878652, 8511905},
            {-25656801, 3393631, -2955415, -7075526, -2250709, 9366908,
             -30223418, 6812974, 5568676, -3127656},
        },
        {
            {11630004, 12144454, 2116339, 13606037, 27378885, 15676917,
             -17408753, -13504373, -14395196, 8070818},
            {27117696, -10007378, -31282771, -5570088, 1127282, 12772488,
             -29845906, 10483306, -11552749, -1028714},
            {10637467, -5688064, 5674781, 1072708, -26343588, -6982302,
             -1683975, 9177853, -27493162, 15431203},
        },
        {
            {20525145, 10892566, -12742472, 12779443, -29493034, 16150075,
             -28240519, 14943142, -15056790, -7935931},
            {-30024462, 5626926, -551567, -9981087, 753598, 11981191, 25244767,
             -3239766, -3356550, 9594024},
            {-23752644, 2636870, -5163910, -10103818, 585134, 7877383, 11345683,
             -6492290, 13352335, -10977084},
        },
        {
            {-1931799, -5407458, 3304649, -12884869, 17015806, -4877091,
             -29783850, -7752482, -13215537, -319204},
            {20239939, 6607058, 6203985, 3483793, -18386976, -779229, -20723742,
             15077870, -22750759, 14523817},
            {27406042, -6041657, 27423596, -4497394, 4996214, 10002360,
             -28842031, -4545494, -30172742, -4805667},
        },
    },
    {
        {
            {11374242, 12660715, 17861383, -12540833, 10935568, 1099227,
             -13886076, -9091740, -27727044, 11358504},
            {-12730809, 10311867, 1510375, 10778093, -2119455, -9145702,
             32676003, 11149336, -26123651, 4985768},
            {-19096303, 341147, -6197485, -239033, 15756973, -8796662, -983043,
             13794114, -19414307, -15621255},
        },
        {
            {6490081, 11940286, 25495923, -7726360, 8668373, -8751316, 3367603,
             6970005, -1691065, -9004790},
            {1656497, 13457317, 15370807, 6364910, 13605745, 8362338, -19174622,
             -5475723, -16796596, -5031438},
            {-22273315, -13524424, -64685, -4334223, -18605636, -10921968,
             -20571065, -7007978, -99853, -10237333},
        },
        {
            {17747465, 10039260, 19368299, -4050591, -20630635, -16041286,
             31992683, -15857976, -29260363, -5511971},
            {31932027, -4986141, -19612382, 16366580, 22023614, 88450, 11371999,
             -3744247, 4882242, -10626905},
            {29796507, 37186, 19818052, 10115756, -11829032, 3352736, 18551198,
             3272828, -5190932, -4162409},
        },
        {
            {12501286, 4044383, -8612957, -13392385, -32430052, 5136599,
             -19230378, -3529697, 330070, -3659409},
            {6384877, 2899513, 17807477, 7663917, -2358888, 12363165, 25366522,
             -8573892, -271295, 12071499},
            {-8365515, -4042521, 25133448, -4517355, -6211027, 2265927,
             -32769618, 1936675, -5159697, 3829363},
        },
        {
            {28425966, -5835433, -577090, -4697198, -14217555, 6870930, 7921550,
             -6567787, 26333140, 14267664},
            {-11067219, 11871231, 27385719, -10559544, -4585914, -11189312,
             10004786, -8709488, -21761224, 8930324},
            {-21197785, -16396035, 25654216, -1725397, 12282012, 11008919,
             1541940, 4757911, -26491501, -16408940},
        },
        {
            {13537262, -7759490, -20604840, 10961927, -5922820, -13218065,
             -13156584, 6217254, -15943699, 13814990},
            {-17422573, 15157790, 18705543, 29619, 24409717, -260476, 27361681,
             9257833, -1956526, -1776914},
            {-25045300, -10191966, 15366585, 15166509, -13105086, 8423556,
             -29171540, 12361135, -18685978, 4578290},
        },
        {
            {24579768, 3711570, 1342322, -11180126, -27005135, 14124956,
             -22544529, 14074919, 21964432, 8235257},
            {-6528613, -2411497, 9442966, -5925588, 12025640, -1487420,
             -2981514, -1669206, 13006806, 2355433},
            {-16304899, -13605259, -6632427, -5142349, 16974359, -10911083,
             27202044, 1719366, 1141648, -12796236},
        },
        {
            {-12863944, -13219986, -8318266, -11018091, -6810145, -4843894,
             13475066, -3133972, 32674895, 13715045},
            {11423335, -5468059, 32344216, 8962751, 24989809, 9241752,
             -13265253, 16086212, -28740881, -15642093},
            {-1409668, 12530728, -6368726, 10847387, 19531186, -14132160,
             -11709148, 7791794, -27245943, 4383347},
        },
    },
    {
        {
            {-28970898, 5271447, -1266009, -9736989, -12455236, 16732599,
             -4862407, -4906449, 27193557, 6245191},
            {-15193956, 5362278, -1783893, 2695834, 4960227, 12840725, 23061898,
             3260492, 22510453, 8577507},
            {-12632451, 11257346, -32692994, 13548177, -721004, 10879011,
             31168030, 13952092, -29571492, -3635906},
        },
        {
            {3877321, -9572739, 32416692, 5405324, -11004407, -13656635,
             3759769, 11935320, 5611860, 8164018},
            {-16275802, 14667797, 15906460, 12155291, -22111149, -9039718,
             32003002, -8832289, 5773085, -8422109},
            {-23788118, -8254300, 1950875, 8937633, 18686727, 16459170, -905725,
             12376320, 31632953, 190926},
        },
        {
            {-24593607, -16138885, -8423991, 13378746, 14162407, 6901328,
             -8288749, 4508564, -25341555, -3627528},
            {8884438, -5884009, 6023974, 10104341, -6881569, -4941533, 18722941,
             -14786005, -1672488, 827625},
            {-32720583, -16289296, -32503547, 7101210, 13354605, 2659080,
             -1800575, -14108036, -24878478, 1541286},
        },
        {
            {2901347, -1117687, 3880376, -10059388, -17620940, -3612781,
             -21802117, -3567481, 20456845, -1885033},
            {27019610, 12299467, -13658288, -1603234, -12861660, -4861471,
             -19540150, -5016058, 29439641, 15138866},
            {21536104, -6626420, -32447818, -10690208, -22408077, 5175814,
             -5420040, -16361163, 7779328, 109896},
        },
        {
            {30279744, 14648750, -8044871, 6425558, 13639621, -743509, 28698390,
             12180118, 23177719, -554075},
            {26572847, 3405927, -31701700, 12890905, -19265668, 5335866,
             -6493768, 2378492, 4439158, -13279347},
            {-22716706, 3489070, -9225266, -332753, 18875722, -1140095,
             14819434, -12731527, -17717757, -5461437},
        },
        {
            {-5056483, 16566551, 15953661, 3767752, -10436499, 15627060,
             -820954, 2177225, 8550082, -15114165},
            {-18473302, 16596775, -381660, 15663611, 22860960, 15585581,
             -27844109, -3582739, -23260460, -8428588},
            {-32480551, 15707275, -8205912, -5652081, 29464558, 2713815,
             -22725137, 15860482, -21902570, 1494193},
        },
        {
            {-19562091, -14087393, -25583872, -9299552, 13127842, 759709,
             21923482, 16529112, 8742704, 12967017},
            {-28464899, 1553205, 32536856, -10473729, -24691605, -406174,
             -8914625, -2933896, -29903758, 15553883},
            {21877909, 3230008, 9881174, 10539357, -4797115, 2841332, 11543572,
             14513274, 19375923, -12647961},
        },
        {
            {8832269, -14495485, 13253511, 5137575, 5037871, 4078777, 24880818,
             -6222716, 2862653, 9455043},
            {29306751, 5123106, 20245049, -14149889, 9592566, 8447059, -2077124,
             -2990080, 15511449, 4789663},
            {-20679756, 7004547, 8824831, -9434977, -4045704, -3750736,
             -5754762, 108893, 23513200, 16652362},
        },
    },
    {
        {
            {-33256173, 4144782, -4476029, -6579123, 10770039, -7155542,
             -6650416, -12936300, -18319198, 10212860},
            {2756081, 8598110, 7383731, -6859892, 22312759, -1105012, 21179801,
             2600940, -9988298, -12506466},
            {-24645692, 13317462, -30449259, -15653928, 21365574, -10869657,
             11344424, 864440, -2499677, -16710063},
        },
        {
            {-26432803, 6148329, -17184412, -14474154, 18782929, -275997,
             -22561534, 211300, 2719757, 4940997},
            {-1323882, 3911313, -6948744, 14759765, -30027150, 7851207,
             21690126, 8518463, 26699843, 5276295},
            {-13149873, -6429067, 9396249, 365013, 24703301, -10488939, 1321586,
             149635, -15452774, 7159369},
        },
        {
            {9987780, -3404759, 17507962, 9505530, 9731535, -2165514, 22356009,
             8312176, 22477218, -8403385},
            {18155857, -16504990, 19744716, 9006923, 15154154, -10538976,
             24256460, -4864995, -22548173, 9334109},
            {2986088, -4911893, 10776628, -3473844, 10620590, -7083203,
             -21413845, 14253545, -22587149, 536906},
        },
        {
            {4377756, 8115836, 24567078, 15495314, 11625074, 13064599, 7390551,
             10589625, 10838060, -15420424},
            {-19342404, 867880, 9277171, -3218459, -14431572, -1986443,
             19295826, -15796950, 6378260, 699185},
            {7895026, 4057113, -7081772, -13077756, -17886831, -323126, -716039,
             15693155, -5045064, -13373962},
        },
        {
            {-7737563, -5869402, -14566319, -7406919, 11385654, 13201616,
             31730678, -10962840, -3918636, -9669325},
            {10188286, -15770834, -7336361, 13427543, 22223443, 14896287,
             30743455, 7116568, -21786507, 5427593},
            {696102, 13206899, 27047647, -10632082, 15285305, -9853179,
             10798490, -4578720, 19236243, 12477404},
        },
        {
            {-11229439, 11243796, -17054270, -8040865, -788228, -8167967,
             -3897669, 11180504, -23169516, 7733644},
            {17800790, -14036179, -27000429, -11766671, 23887827, 3149671,
             23466177, -10538171, 10322027, 15313801},
            {26246234, 11968874, 32263343, -5468728, 6830755, -13323031,
             -15794704, -101982, -24449242, 10890804},
        },
        {
            {-31365647, 10271363, -12660625, -6267268, 16690207, -13062544,
             -14982212, 16484931, 25180797, -5334884},
            {-586574, 10376444, -32586414, -11286356, 19801893, 10997610,
             2276632, 9482883, 316878, 13820577},
            {-9882808, -4510367, -2115506, 16457136, -11100081, 11674996,
             30756178, -7515054, 30696930, -3712849},
        },
        {
            {32988917, -9603412, 12499366, 7910787, -10617257, -11931514,
             -7342816, -9985397, -32349517, 7392473},
            {-8855661, 15927861, 9866406, -3649411, -2396914, -16655781,
             -30409476, -9134995, 25112947, -2926644},
            {-2504044, -436966, 25621774, -5678772, 15085042, -5479877,
             -24884878, -13526194, 5537438, -13914319},
        },
    },
    {
        {
            {-11225584, 2320285, -9584280, 10149187, -33444663, 5808648,
             -14876251, -1729667, 31234590, 6090599},
            {-9633316, 116426, 26083934, 2897444, -6364437, -2688086, 609721,
             15878753, -6970405, -9034768},
            {-27757857, 247744, -15194774, -9002551, 23288161, -10011936,
             -23869595, 6503646, 20650474, 1804084},
        },
        {
            {-27589786, 15456424, 8972517, 8469608, 15640622, 4439847, 3121995,
             -10329713, 27842616, -202328},
            {-15306973, 2839644, 22530074, 10026331, 4602058, 5048462, 28248656,
             5031932, -11375082, 12714369},
            {20807691, -7270825, 29286141, 11421711, -27876523, -13868230,
             -21227475, 1035546, -19733229, 12796920},
        },
        {
            {12076899, -14301286, -8785001, -11848922, -25012791, 16400684,
             -17591495, -12899438, 3480665, -15182815},
            {-32361549, 5457597, 28548107, 7833186, 7303070, -11953545,
             -24363064, -15921875, -33374054, 2771025},
            {-21389266, 421932, 26597266, 6860826, 22486084, -6737172,
             -17137485, -4210226, -24552282, 15673397},
        },
        {
            {-20184622, 2338216, 19788685, -9620956, -4001265, -8740893,
             -20271184, 4733254, 3727144, -12934448},
            {6120119, 814863, -11794402, -622716, 6812205, -15747771, 2019594,
             7975683, 31123697, -10958981},
            {30069250, -11435332, 30434654, 2958439, 18399564, -976289,
             12296869, 9204260, -16432438, 9648165},
        },
        {
            {32705432, -1550977, 30705658, 7451065, -11805606, 9631813, 3305266,
             5248604, -26008332, -11377501},
            {17219865, 2375039, -31570947, -5575615, -19459679, 9219903, 294711,
             15298639, 2662509, -16297073},
            {-1172927, -7558695, -4366770, -4287744, -21346413, -8434326,
             32087529, -1222777, 32247248, -14389861},
        },
        {
            {14312628, 1221556, 17395390, -8700143, -4945741, -8684635,
             -28197744, -9637817, -16027623, -13378845},
            {-1428825, -9678990, -9235681, 6549687, -7383069, -468664, 23046502,
             9803137, 17597934, 2346211},
            {18510800, 15337574, 26171504, 981392, -22241552, 7827556,
             -23491134, -11323352, 3059833, -11782870},
        },
        {
            {10141598, 6082907, 17829293, -1947643, 9830092, 13613136,
             -25556636, -5544586, -33502212, 3592096},
            {33114168, -15889352, -26525686, -13343397, 33076705, 8716171,
             1151462, 1521897, -982665, -6837803},
            {-32939165, -4255815, 23947181, -324178, -33072974, -12305637,
             -16637686, 3891704, 26353178, 693168},
        },
        {
            {30374239, 1595580, -16884039, 13186931, 4600344, 406904, 9585294,
             -400668, 31375464, 14369965},
            {-14370654, -7772529, 1510301, 6434173, -18784789, -6262728,
             32732230, -13108839, 17901441, 16011505},
            {18171223, -11934626, -12500402, 15197122, -11038147, -15230035,
             -19172240, -16046376, 8764035, 12309598},
        },
    },
    {
        {
            {5975908, -5243188, -19459362, -9681747, -11541277, 14015782,
             -23665757, 1228319, 17544096, -10593782},
            {5811932, -1715293, 3442887, -2269310, -18367348, -8359541,
             -18044043, -15410127, -5565381, 12348900},
            {-31399660, 11407555, 25755363, 6891399, -3256938, 14872274,
             -24849353, 8141295, -10632534, -585479},
        },
        {
            {-12675304, 694026, -5076145, 13300344, 14015258, -14451394,
             -9698672, -11329050, 30944593, 1130208},
            {8247766, -6710942, -26562381, -7709309, -14401939, -14648910,
             4652152, 2488540, 23550156, -271232},
            {17294316, -3788438, 7026748, 15626851, 22990044, 113481, 2267737,
             -5908146, -408818, -137719},
        },
        {
            {16091085, -16253926, 18599252, 7340678, 2137637, -1221657,
             -3364161, 14550936, 3260525, -7166271},
            {-4910104, -13332887, 18550887, 10864893, -16459325, -7291596,
             -23028869, -13204905, -12748722, 2701326},
            {-8574695, 16099415, 4629974, -16340524, -20786213, -6005432,
             -10018363, 9276971, 11329923, 1862132},
        },
        {
            {14763076, -15903608, -30918270, 3689867, 3511892, 10313526,
             -21951088, 12219231, -9037963, -940300},
            {8894987, -3446094, 6150753, 3013931, 301220, 15693451, -31981216,
             -2909717, -15438168, 11595570},
            {15214962, 3537601, -26238722, -14058872, 4418657, -15230761,
             13947276, 10730794, -13489462, -4363670},
        },
        {
            {-2538306, 7682793, 32759013, 263109, -29984731, -7955452,
             -22332124, -10188635, 977108, 699994},
            {-12466472, 4195084, -9211532, 550904, -15565337, 12917920,
             19118110, -439841, -30534533, -14337913},
            {31788461, -14507657, 4799989, 7372237, 8808585, -14747943, 9408237,
             -10051775, 12493932, -5409317},
        },
        {
            {-25680606, 5260744, -19235809, -6284470, -3695942, 16566087,
             27218280, 2607121, 29375955, 6024730},
            {842132, -2794693, -4763381, -8722815, 26332018, -12405641,
             11831880, 6985184, -9940361, 2854096},
            {-4847262, -7969331, 2516242, -5847713, 9695691, -7221186, 16512645,
             960770, 12121869, 16648078},
        },
        {
            {-15218652, 14667096, -13336229, 2013717, 30598287, -464137,
             -31504922, -7882064, 20237806, 2838411},
            {-19288047, 4453152, 15298546, -16178388, 22115043, -15972604,
             12544294, -13470457, 1068881, -12499905},
            {-9558883, -16518835, 33238498, 13506958, 30505848, -1114596,
             -8486907, -2630053, 12521378, 4845654},
        },
        {
            {-28198521, 10744108, -2958380, 10199664, 7759311, -13088600,
             3409348, -873400, -6482306, -12885870},
            {-23561822, 6230156, -20382013, 10655314, -24040585, -11621172,
             10477734, -1240216, -3113227, 13974498},
            {12966261, 15550616, -32038948, -1615346, 21025980, -629444,
             5642325, 7188737, 18895762, 12629579},
        },
    },
    {
        {
            {14741879, -14946887, 22177208, -11721237, 1279741, 8058600,
             11758140, 789443, 32195181, 3895677},
            {10758205, 15755439, -4509950, 9243698, -4879422, 6879879, -2204575,
             -3566119, -8982069, 4429647},
            {-2453894, 15725973, -20436342, -10410672, -5803908, -11040220,
             -7135870, -11642895, 18047436, -15281743},
        },
        {
            {-25173001, -11307165, 29759956, 11776784, -22262383, -15820455,
             10993114, -12850837, -17620701, -9408468},
            {21987233, 700364, -24505048, 14972008, -7774265, -5718395,
             32155026, 2581431, -29958985, 8773375},
            {-25568350, 454463, -13211935, 16126715, 25240068, 8594567,
             20656846, 12017935, -7874389, -13920155},
        },
        {
            {6028182, 6263078, -31011806, -11301710, -818919, 2461772,
             -31841174, -5468042, -1721788, -2776725},
            {-12278994, 16624277, 987579, -5922598, 32908203, 1248608, 7719845,
             -4166698, 28408820, 6816612},
            {-10358094, -8237829, 19549651, -12169222, 22082623, 16147817,
             20613181, 13982702, -10339570, 5067943},
        },
        {
            {-30505967, -3821767, 12074681, 13582412, -19877972, 2443951,
             -19719286, 12746132, 5331210, -10105944},
            {30528811, 3601899, -1957090, 4619785, -27361822, -15436388,
             24180793, -12570394, 27679908, -1648928},
            {9402404, -13957065, 32834043, 10838634, -26580150, -13237195,
             26653274, -8685565, 22611444, -12715406},
        },
        {
            {22190590, 1118029, 22736441, 15130463, -30460692, -5991321,
             19189625, -4648942, 4854859, 6622139},
            {-8310738, -2953450, -8262579, -3388049, -10401731, -271929,
             13424426, -3567227, 26404409, 13001963},
            {-31241838, -15415700, -2994250, 8939346, 11562230, -12840670,
             -26064365, -11621720, -15405155, 11020693},
        },
        {
            {1866042, -7949489, -7898649, -10301010, 12483315, 13477547,
             3175636, -12424163, 28761762, 1406734},
            {-448555, -1777666, 13018551, 3194501, -9580420, -11161737,
             24760585, -4347088, 25577411, -13378680},
            {-24290378, 4759345, -690653, -1852816, 2066747, 10693769,
             -29595790, 9884936, -9368926, 4745410},
        },
        {
            {-9141284, 6049714, -19531061, -4341411, -31260798, 9944276,
             -15462008, -11311852, 10931924, -11931931},
            {-16561513, 14112680, -8012645, 4817318, -8040464, -11414606,
             -22853429, 10856641, -20470770, 13434654},
            {22759489, -10073434, -16766264, -1871422, 13637442, -10168091,
             1765144, -12654326, 28445307, -5364710},
        },
        {
            {29875063, 12493613, 2795536, -3786330, 1710620, 15181182,
             -10195717, -8788675, 9074234, 1167180},
            {-26205683, 11014233, -9842651, -2635485, -26908120, 7532294,
             -18716888, -9535498, 3843903, 9367684},
            {-10969595, -6403711, 9591134, 9582310, 11349256, 108879, 16235123,
             8601684, -139197, 4242895},
        },
    },
    {
        {
            {22092954, -13191123, -2042793, -11968512, 32186753, -11517388,
             -6574341, 2470660, -27417366, 16625501},
            {-11057722, 3042016, 13770083, -9257922, 584236, -544855, -7770857,
             2602725, -27351616, 14247413},
            {6314175, -10264892, -32772502, 15957557, -10157730, 168750,
             -8618807, 14290061, 27108877, -1180880},
        },
        {
            {-8586597, -7170966, 13241782, 10960156, -32991015, -13794596,
             33547976, -11058889, -27148451, 981874},
            {22833440, 9293594, -32649448, -13618667, -9136966, 14756819,
             -22928859, -13970780, -10479804, -16197962},
            {-7768587, 3326786, -28111797, 10783824, 19178761, 14905060,
             22680049, 13906969, -15933690, 3797899},
        },
        {
            {21721356, -4212746, -12206123, 9310182, -3882239, -13653110,
             23740224, -2709232, 20491983, -8042152},
            {9209270, -15135055, -13256557, -6167798, -731016, 15289673,
             25947805, 15286587, 30997318, -6703063},
            {7392032, 16618386, 23946583, -8039892, -13265164, -1533858,
             -14197445, -2321576, 17649998, -250080},
        },
        {
            {-9301088, -14193827, 30609526, -3049543, -25175069, -1283752,
             -15241566, -9525724, -2233253, 7662146},
            {-17558673, 1763594, -33114336, 15908610, -30040870, -12174295,
             7335080, -8472199, -3174674, 3440183},
            {-19889700, -5977008, -24111293, -9688870, 10799743, -16571957,
             40450, -4431835, 4862400, 1133},
        },
        {
            {-32856209, -7873957, -5422389, 14860950, -16319031, 7956142,
             7258061, 311861, -30594991, -7379421},
            {-3773428, -1565936, 28985340, 7499440, 24445838, 9325937, 29727763,
             16527196, 18278453, 15405622},
            {-4381906, 8508652, -19898366, -3674424, -5984453, 15149970,
             -13313598, 843523, -21875062, 13626197},
        },
        {
            {2281448, -13487055, -10915418, -2609910, 1879358, 16164207,
             -10783882, 3953792, 13340839, 15928663},
            {31727126, -7179855, -18437503, -8283652, 2875793, -16390330,
             -25269894, -7014826, -23452306, 5964753},
            {4100420, -5959452, -17179337, 6017714, -18705837, 12227141,
             -26684835, 11344144, 2538215, -7570755},
        },
        {
            {-9433605, 6123113, 11159803, -2156608, 30016280, 14966241,
             -20474983, 1485421, -629256, -15958862},
            {-26804558, 4260919, 11851389, 9658551, -32017107, 16367492,
             -20205425, -13191288, 11659922, -11115118},
            {26180396, 10015009, -30844224, -8581293, 5418197, 9480663, 2231568,
             -10170080, 33100372, -1306171},
        },
        {
            {15121113, -5201871, -10389905, 15427821, -27509937, -15992507,
             21670947, 4486675, -5931810, -14466380},
            {16166486, -9483733, -11104130, 6023908, -31926798, -1364923,
             2340060, -16254968, -10735770, -10039824},
            {28042865, -3557089, -12126526, 12259706, -3717498, -6945899,
             6766453, -8689599, 18036436, 5803270},
        },
    },
    {
        {
            {-817581, 6763912, 11803561, 1585585, 10958447, -2671165, 23855391,
             4598332, -6159431, -14117438},
            {-31031306, -14256194, 17332029, -2383520, 31312682, -5967183,
             696309, 50292, -20095739, 11763584},
            {-594563, -2514283, -32234153, 12643980, 12650761, 14811489, 665117,
             -12613632, -19773211, -10713562},
        },
        {
            {30464590, -11262872, -4127476, -12734478, 19835327, -7105613,
             -24396175, 2075773, -17020157, 992471},
            {18357185, -6994433, 7766382, 16342475, -29324918, 411174, 14578841,
             8080033, -11574335, -10601610},
            {19598397, 10334610, 12555054, 2555664, 18821899, -10339780,
             21873263, 16014234, 26224780, 16452269},
        },
        {
            {-30223925, 5145196, 5944548, 16385966, 3976735, 2009897, -11377804,
             -7618186, -20533829, 3698650},
            {14187449, 3448569, -10636236, -10810935, -22663880, -3433596,
             7268410, -10890444, 27394301, 12015369},
            {19695761, 16087646, 28032085, 12999827, 6817792, 11427614,
             20244189, -1312777, -13259127, -3402461},
        },
        {
            {30860103, 12735208, -1888245, -4699734, -16974906, 2256940,
             -8166013, 12298312, -8550524, -10393462},
            {-5719826, -11245325, -1910649, 15569035, 26642876, -7587760,
             -5789354, -15118654, -4976164, 12651793},
            {-2848395, 9953421, 11531313, -5282879, 26895123, -12697089,
             -13118820, -16517902, 9768698, -2533218},
        },
        {
            {-24719459, 1894651, -287698, -4704085, 15348719, -8156530,
             32767513, 12765450, 4940095, 10678226},
            {18860224, 15980149, -18987240, -1562570, -26233012, -11071856,
             -7843882, 13944024, -24372348, 16582019},
            {-15504260, 4970268, -29893044, 4175593, -20993212, -2199756,
             -11704054, 15444560, -11003761, 7989037},
        },
        {
            {31490452, 5568061, -2412803, 2182383, -32336847, 4531686,
             -32078269, 6200206, -19686113, -14800171},
            {-17308668, -15879940, -31522777, -2831, -32887382, 16375549,
             8680158, -16371713, 28550068, -6857132},
            {-28126887, -5688091, 16837845, -1820458, -6850681, 12700016,
             -30039981, 4364038, 1155602, 5988841},
        },
        {
            {21890435, -13272907, -12624011, 12154349, -7831873, 15300496,
             23148983, -4470481, 24618407, 8283181},
            {-33136107, -10512751, 9975416, 6841041, -31559793, 16356536,
             3070187, -7025928, 1466169, 10740210},
            {-1509399, -15488185, -13503385, -10655916, 32799044, 909394,
             -13938903, -5779719, -32164649, -15327040},
        },
        {
            {3960823, -14267803, -28026090, -15918051, -19404858, 13146868,
             15567327, 951507, -3260321, -573935},
            {24740841, 5052253, -30094131, 8961361, 25877428, 6165135,
             -24368180, 14397372, -7380369, -6144105},
            {-28888365, 3510803, -28103278, -1158478, -11238128, -10631454,
             -15441463, -14453128, -1625486, -6494814},
        },
    },
    {
        {
            {793299, -9230478, 8836302, -6235707, -27360908, -2369593, 33152843,
             -4885251, -9906200, -621852},
            {5666233, 525582, 20782575, -8038419, -24538499, 14657740, 16099374,
             1468826, -6171428, -15186581},
            {-4859255, -3779343, -2917758, -6748019, 7778750, 11688288,
             -30404353, -9871238, -1558923, -9863646},
        },
        {
            {10896332, -7719704, 824275, 472601, -19460308, 3009587, 25248958,
             14783338, -30581476, -15757844},
            {10566929, 12612572, -31944212, 11118703, -12633376, 12362879,
             21752402, 8822496, 24003793, 14264025},
            {27713862, -7355973, -11008240, 9227530, 27050101, 2504721,
             23886875, -13117525, 13958495, -5732453},
        },
        {
            {-23481610, 4867226, -27247128, 3900521, 29838369, -8212291,
             -31889399, -10041781, 7340521, -15410068},
            {4646514, -8011124, -22766023, -11532654, 23184553, 8566613,
             31366726, -1381061, -15066784, -10375192},
            {-17270517, 12723032, -16993061, 14878794, 21619651, -6197576,
             27584817, 3093888, -8843694, 3849921},
        },
        {
            {-9064912, 2103172, 25561640, -15125738, -5239824, 9582958,
             32477045, -9017955, 5002294, -15550259},
            {-12057553, -11177906, 21115585, -13365155, 8808712, -12030708,
             16489530, 13378448, -25845716, 12741426},
            {-5946367, 10645103, -30911586, 15390284, -3286982, -7118677,
             24306472, 15852464, 28834118, -7646072},
        },
        {
            {-17335748, -9107057, -24531279, 9434953, -8472084, -583362,
             -13090771, 455841, 20461858, 5491305},
            {13669248, -16095482, -12481974, -10203039, -14569770, -11893198,
             -24995986, 11293807, -28588204, -9421832},
            {28497928, 6272777, -33022994, 14470570, 8906179, -1225630,
             18504674, -14165166, 29867745, -8795943},
        },
        {
            {-16207023, 13517196, -27799630, -13697798, 24009064, -6373891,
             -6367600, -13175392, 22853429, -4012011},
            {24191378, 16712145, -13931797, 15217831, 14542237, 1646131,
             18603514, -11037887, 12876623, -2112447},
            {17902668, 4518229, -411702, -2829247, 26878217, 5258055, -12860753,
             608397, 16031844, 3723494},
        },
        {
            {-28632773, 12763728, -20446446, 7577504, 33001348, -13017745,
             17558842, -7872890, 23896954, -4314245},
            {-20005381, -12011952, 31520464, 605201, 2543521, 5991821, -2945064,
             7229064, -9919646, -8826859},
            {28816045, 298879, -28165016, -15920938, 19000928, -1665890,
             -12680833, -2949325, -18051778, -2082915},
        },
        {
            {16000882, -344896, 3493092, -11447198, -29504595, -13159789,
             12577740, 16041268, -19715240, 7847707},
            {10151868, 10572098, 27312476, 7922682, 14825339, 4723128,
             -32855931, -6519018, -10020567, 3852848},
            {-11430470, 15697596, -21121557, -4420647, 5386314, 15063598,
             16514493, -15932110, 29330899, -15076224},
        },
    },
    {
        {
            {-25499735, -4378794, -15222908, -6901211, 16615731, 2051784,
             3303702, 15490, -27548796, 12314391},
            {15683520, -6003043, 18109120, -9980648, 15337968, -5997823,
             -16717435, 15921866, 16103996, -3731215},
            {-23169824, -10781249, 13588192, -1628807, -3798557, -1074929,
             -19273607, 5402699, -29815713, -9841101},
        },
        {
            {23190676, 2384583, -32714340, 3462154, -29903655, -1529132,
             -11266856, 8911517, -25205859, 2739713},
            {21374101, -3554250, -33524649, 9874411, 15377179, 11831242,
             -33529904, 6134907, 4931255, 11987849},
            {-7732, -2978858, -16223486, 7277597, 105524, -322051, -31480539,
             13861388, -30076310, 10117930},
        },
        {
            {-29501170, -10744872, -26163768, 13051539, -25625564, 5089643,
             -6325503, 6704079, 12890019, 15728940},
            {-21972360, -11771379, -951059, -4418840, 14704840, 2695116, 903376,
             -10428139, 12885167, 8311031},
            {-17516482, 5352194, 10384213, -13811658, 7506451, 13453191,
             26423267, 4384730, 1888765, -5435404},
        },
        {
            {-25817338, -3107312, -13494599, -3182506, 30896459, -13921729,
             -32251644, -12707869, -19464434, -3340243},
            {-23607977, -2665774, -526091, 4651136, 5765089, 4618330, 6092245,
             14845197, 17151279, -9854116},
            {-24830458, -12733720, -15165978, 10367250, -29530908, -265356,
             22825805, -7087279, -16866484, 16176525},
        },
        {
            {-23583256, 6564961, 20063689, 3798228, -4740178, 7359225, 2006182,
             -10363426, -28746253, -10197509},
            {-10626600, -4486402, -13320562, -5125317, 3432136, -6393229,
             23632037, -1940610, 32808310, 1099883},
            {15030977, 5768825, -27451236, -2887299, -6427378, -15361371,
             -15277896, -6809350, 2051441, -15225865},
        },
        {
            {-3362323, -7239372, 7517890, 9824992, 23555850, 295369, 5148398,
             -14154188, -22686354, 16633660},
            {4577086, -16752288, 13249841, -15304328, 19958763, -14537274,
             18559670, -10759549, 8402478, -9864273},
            {-28406330, -1051581, -26790155, -907698, -17212414, -11030789,
             9453451, -14980072, 17983010, 9967138},
        },
        {
            {-25762494, 6524722, 26585488, 9969270, 24709298, 1220360, -1677990,
             7806337, 17507396, 3651560},
            {-10420457, -4118111, 14584639, 15971087, -15768321, 8861010,
             26556809, -5574557, -18553322, -11357135},
            {2839101, 14284142, 4029895, 3472686, 14402957, 12689363, -26642121,
             8459447, -5605463, -7621941},
        },
        {
            {-4839289, -3535444, 9744961, 2871048, 25113978, 3187018, -25110813,
             -849066, 17258084, -7977739},
            {18164541, -10595176, -17154882, -1542417, 19237078, -9745295,
             23357533, -15217008, 26908270, 12150756},
            {-30264870, -7647865, 5112249, -7036672, -1499807, -6974257, 43168,
             -5537701, -32302074, 16215819},
        },
    },
    {
        {
            {-6898905, 9824394, -12304779, -4401089, -31397141, -6276835,
             32574489, 12532905, -7503072, -8675347},
            {-27343522, -16515468, -27151524, -10722951, 946346, 16291093,
             254968, 7168080, 21676107, -1943028},
            {21260961, -8424752, -16831886, -11920822, -23677961, 3968121,
             -3651949, -6215466, -3556191, -7913075},
        },
        {
            {16544754, 13250366, -16804428, 15546242, -4583003, 12757258,
             -2462308, -8680336, -18907032, -9662799},
            {-2415239, -15577728, 18312303, 4964443, -15272530, -12653564,
             26820651, 16690659, 25459437, -4564609},
            {-25144690, 11425020, 28423002, -11020557, -6144921, -15826224,
             9142795, -2391602, -6432418, -1644817},
        },
        {
            {-23104652, 6253476, 16964147, -3768872, -25113972, -12296437,
             -27457225, -16344658, 6335692, 7249989},
            {-30333227, 13979675, 7503222, -12368314, -11956721, -4621693,
             -30272269, 2682242, 25993170, -12478523},
            {4364628, 5930691, 32304656, -10044554, -8054781, 15091131,
             22857016, -10598955, 31820368, 15075278},
        },
        {
            {31879134, -8918693, 17258761, 90626, -8041836, -4917709, 24162788,
             -9650886, -17970238, 12833045},
            {19073683, 14851414, -24403169, -11860168, 7625278, 11091125,
             -19619190, 2074449, -9413939, 14905377},
            {24483667, -11935567, -2518866, -11547418, -1553130, 15355506,
             -25282080, 9253129, 27628530, -7555480},
        },
        {
            {17597607, 8340603, 19355617, 552187, 26198470, -3176583, 4593324,
             -9157582, -14110875, 15297016},
            {510886, 14337390, -31785257, 16638632, 6328095, 2713355, -20217417,
             -11864220, 8683221, 2921426},
            {18606791, 11874196, 27155355, -5281482, -24031742, 6265446,
             -25178240, -1278924, 4674690, 13890525},
        },
        {
            {13609624, 13069022, -27372361, -13055908, 24360586, 9592974,
             14977157, 9835105, 4389687, 288396},
            {9922506, -519394, 13613107, 5883594, -18758345, -434263, -12304062,
             8317628, 23388070, 16052080},
            {12720016, 11937594, -31970060, -5028689, 26900120, 8561328,
             -20155687, -11632979, -14754271, -10812892},
        },
        {
            {15961858, 14150409, 26716931, -665832, -22794328, 13603569,
             11829573, 7467844, -28822128, 929275},
            {11038231, -11582396, -27310482, -7316562, -10498527, -16307831,
             -23479533, -9371869, -21393143, 2465074},
            {20017163, -4323226, 27915242, 1529148, 12396362, 15675764,
             13817261, -9658066, 2463391, -4622140},
        },
        {
            {-16358878, -12663911, -12065183, 4996454, -1256422, 1073572,
             9583558, 12851107, 4003896, 12673717},
            {-1731589, -15155870, -3262930, 16143082, 19294135, 13385325,
             14741514, -9103726, 7903886, 2348101},
            {24536016, -16515207, 12715592, -3862155, 1511293, 10047386,
             -3842346, -7129159, -28377538, 10048127},
        },
    },
    {
        {
            {-12622226, -6204820, 30718825, 2591312, -10617028, 12192840,
             18873298, -7297090, -32297756, 15221632},
            {-26478122, -11103864, 11546244, -1852483, 9180880, 7656409,
             -21343950, 2095755, 29769758, 6593415},
            {-31994208, -2907461, 4176912, 3264766, 12538965, -868111, 26312345,
             -6118678, 30958054, 8292160},
        },
        {
            {31429822, -13959116, 29173532, 15632448, 12174511, -2760094,
             32808831, 3977186, 26143136, -3148876},
            {22648901, 1402143, -22799984, 13746059, 7936347, 365344, -8668633,
             -1674433, -3758243, -2304625},
            {-15491917, 8012313, -2514730, -12702462, -23965846, -10254029,
             -1612713, -1535569, -16664475, 8194478},
        },
        {
            {27338066, -7507420, -7414224, 10140405, -19026427, -6589889,
             27277191, 8855376, 28572286, 3005164},
            {26287124, 4821776, 25476601, -4145903, -3764513, -15788984,
             -18008582, 1182479, -26094821, -13079595},
            {-7171154, 3178080, 23970071, 6201893, -17195577, -4489192,
             -21876275, -13982627, 32208683, -1198248},
        },
        {
            {-16657702, 2817643, -10286362, 14811298, 6024667, 13349505,
             -27315504, -10497842, -27672585, -11539858},
            {15941029, -9405932, -21367050, 8062055, 31876073, -238629,
             -15278393, -1444429, 15397331, -4130193},
            {8934485, -13485467, -23286397, -13423241, -32446090, 14047986,
             31170398, -1441021, -27505566, 15087184},
        },
        {
            {-18357243, -2156491, 24524913, -16677868, 15520427, -6360776,
             -15502406, 11461896, 16788528, -5868942},
            {-1947386, 16013773, 21750665, 3714552, -17401782, -16055433,
             -3770287, -10323320, 31322514, -11615635},
            {21426655, -5650218, -13648287, -5347537, -28812189, -4920970,
             -18275391, -14621414, 13040862, -12112948},
        },
        {
            {11293895, 12478086, -27136401, 15083750, -29307421, 14748872,
             14555558, -13417103, 1613711, 4896935},
            {-25894883, 15323294, -8489791, -8057900, 25967126, -13425460,
             2825960, -4897045, -23971776, -11267415},
            {-15924766, -5229880, -17443532, 6410664, 3622847, 10243618,
             20615400, 12405433, -23753030, -8436416},
        },
        {
            {-7091295, 12556208, -20191352, 9025187, -17072479, 4333801,
             4378436, 2432030, 23097949, -566018},
            {4565804, -16025654, 20084412, -7842817, 1724999, 189254, 24767264,
             10103221, -18512313, 2424778},
            {366633, -11976806, 8173090, -6890119, 30788634, 5745705, -7168678,
             1344109, -3642553, 12412659},
        },
        {
            {-24001791, 7690286, 14929416, -168257, -32210835, -13412986,
             24162697, -15326504, -3141501, 11179385},
            {18289522, -14724954, 8056945, 16430056, -21729724, 7842514,
             -6001441, -1486897, -18684645, -11443503},
            {476239, 6601091, -6152790, -9723375, 17503545, -4863900, 27672959,
             13403813, 11052904, 5219329},
        },
    },
    {
        {
            {20678546, -8375738, -32671898, 8849123, -5009758, 14574752,
             31186971, -3973730, 9014762, -8579056},
            {-13644050, -10350239, -15962508, 5075808, -1514661, -11534600,
             -33102500, 9160280, 8473550, -3256838},
            {24900749, 14435722, 17209120, -15292541, -22592275, 9878983,
             -7689309, -16335821, -24568481, 11788948},
        },
        {
            {-3118155, -11395194, -13802089, 14797441, 9652448, -6845904,
             -20037437, 10410733, -24568470, -1458691},
            {-15659161, 16736706, -22467150, 10215878, -9097177, 7563911,
             11871841, -12505194, -18513325, 8464118},
            {-23400612, 8348507, -14585951, -861714, -3950205, -6373419,
             14325289, 8628612, 33313881, -8370517},
        },
        {
            {-20186973, -4967935, 22367356, 5271547, -1097117, -4788838,
             -24805667, -10236854, -8940735, -5818269},
            {-6948785, -1795212, -32625683, -16021179, 32635414, -7374245,
             15989197, -12838188, 28358192, -4253904},
            {-23561781, -2799059, -32351682, -1661963, -9147719, 10429267,
             -16637684, 4072016, -5351664, 5596589},
        },
        {
            {-28236598, -3390048, 12312896, 6213178, 3117142, 16078565,
             29266239, 2557221, 1768301, 15373193},
            {-7243358, -3246960, -4593467, -7553353, -127927, -912245, -1090902,
             -4504991, -24660491, 3442910},
            {-30210571, 5124043, 14181784, 8197961, 18964734, -11939093,
             22597931, 7176455, -18585478, 13365930},
        },
        {
            {-7877390, -1499958, 8324673, 4690079, 6261860, 890446, 24538107,
             -8570186, -9689599, -3031667},
            {25008904, -10771599, -4305031, -9638010, 16265036, 15721635,
             683793, -11823784, 15723479, -15163481},
            {-9660625, 12374379, -27006999, -7026148, -7724114, -12314514,
             11879682, 5400171, 519526, -1235876},
        },
        {
            {22258397, -16332233, -7869817, 14613016, -22520255, -2950923,
             -20353881, 7315967, 16648397, 7605640},
            {-8081308, -8464597, -8223311, 9719710, 19259459, -15348212,
             23994942, -5281555, -9468848, 4763278},
            {-21699244, 9220969, -15730624, 1084137, -25476107, -2852390,
             31088447, -7764523, -11356529, 728112},
        },
        {
            {26047220, -11751471, -6900323, -16521798, 24092068, 9158119,
             -4273545, -12555558, -29365436, -5498272},
            {17510331, -322857, 5854289, 8403524, 17133918, -3112612, -28111007,
             12327945, 10750447, 10014012},
            {-10312768, 3936952, 9156313, -8897683, 16498692, -994647,
             -27481051, -666732, 3424691, 7540221},
        },
        {
            {30322361, -6964110, 11361005, -4143317, 7433304, 4989748, -7071422,
             -16317219, -9244265, 15258046},
            {13054562, -2779497, 19155474, 469045, -12482797, 4566042, 5631406,
             2711395, 1062915, -5136345},
            {-19240248, -11254599, -29509029, -7499965, -5835763, 13005411,
             -6066489, 12194497, 32960380, 1459310},
        },
    },
    {
        {
            {19852034, 7027924, 23669353, 10020366, 8586503, -6657907, 394197,
             -6101885, 18638003, -11174937},
            {31395534, 15098109, 26581030, 8030562, -16527914, -5007134,
             9012486, -7584354, -6643087, -5442636},
            {-9192165, -2347377, -1997099, 4529534, 25766844, 607986, -13222,
             9677543, -32294889, -6456008},
        },
        {
            {-2444496, -149937, 29348902, 8186665, 1873760, 12489863, -30934579,
             -7839692, -7852844, -8138429},
            {-15236356, -15433509, 7766470, 746860, 26346930, -10221762,
             -27333451, 10754588, -9431476, 5203576},
            {31834314, 14135496, -770007, 5159118, 20917671, -16768096,
             -7467973, -7337524, 31809243, 7347066},
        },
        {
            {-9606723, -11874240, 20414459, 13033986, 13716524, -11691881,
             19797970, -12211255, 15192876, -2087490},
            {-12663563, -2181719, 1168162, -3804809, 26747877, -14138091,
             10609330, 12694420, 33473243, -13382104},
            {33184999, 11180355, 15832085, -11385430, -1633671, 225884,
             15089336, -11023903, -6135662, 14480053},
        },
        {
            {31308717, -5619998, 31030840, -1897099, 15674547, -6582883,
             5496208, 13685227, 27595050, 8737275},
            {-20318852, -15150239, 10933843, -16178022, 8335352, -7546022,
             -31008351, -12610604, 26498114, 66511},
            {22644454, -8761729, -16671776, 4884562, -3105614, -13559366,
             30540766, -4286747, -13327787, -7515095},
        },
        {
            {-28017847, 9834845, 18617207, -2681312, -3401956, -13307506,
             8205540, 13585437, -17127465, 15115439},
            {23711543, -672915, 31206561, -8362711, 6164647, -9709987,
             -33535882, -1426096, 8236921, 16492939},
            {-23910559, -13515526, -26299483, -4503841, 25005590, -7687270,
             19574902, 10071562, 6708380, -6222424},
        },
        {
            {2101391, -4930054, 19702731, 2367575, -15427167, 1047675, 5301017,
             9328700, 29955601, -11678310},
            {3096359, 9271816, -21620864, -15521844, -14847996, -7592937,
             -25892142, -12635595, -9917575, 6216608},
            {-32615849, 338663, -25195611, 2510422, -29213566, -13820213,
             24822830, -6146567, -26767480, 7525079},
        },
        {
            {-23066649, -13985623, 16133487, -7896178, -3389565, 778788,
             -910336, -2782495, -19386633, 11994101},
            {21691500, -13624626, -641331, -14367021, 3285881, -3483596,
             -25064666, 9718258, -7477437, 13381418},
            {18445390, -4202236, 14979846, 11622458, -1727110, -3582980,
             23111648, -6375247, 28535282, 15779576},
        },
        {
            {30098053, 3089662, -9234387, 16662135, -21306940, 11308411,
             -14068454, 12021730, 9955285, -16303356},
            {9734894, -14576830, -7473633, -9138735, 2060392, 11313496,
             -18426029, 9924399, 20194861, 13380996},
            {-26378102, -7965207, -22167821, 15789297, -18055342, -6168792,
             -1984914, 15707771, 26342023, 10146099},
        },
    },
    {
        {
            {-26016874, -219943, 21339191, -41388, 19745256, -2878700,
             -29637280, 2227040, 21612326, -545728},
            {-13077387, 1184228, 23562814, -5970442, -20351244, -6348714,
             25764461, 12243797, -20856566, 11649658},
            {-10031494, 11262626, 27384172, 2271902, 26947504, -15997771, 39944,
             6114064, 33514190, 2333242},
        },
        {
            {-21433588, -12421821, 8119782, 7219913, -21830522, -9016134,
             -6679750, -12670638, 24350578, -13450001},
            {-4116307, -11271533, -23886186, 4843615, -30088339, 690623,
             -31536088, -10406836, 8317860, 12352766},
            {18200138, -14475911, -33087759, -2696619, -23702521, -9102511,
             -23552096, -2287550, 20712163, 6719373},
        },
        {
            {26656208, 6075253, -7858556, 1886072, -28344043, 4262326, 11117530,
             -3763210, 26224235, -3297458},
            {-17168938, -14854097, -3395676, -16369877, -19954045, 14050420,
             21728352, 9493610, 18620611, -16428628},
            {-13323321, 13325349, 11432106, 5964811, 18609221, 6062965,
             -5269471, -9725556, -30701573, -16479657},
        },
        {
            {-23860538, -11233159, 26961357, 1640861, -32413112, -16737940,
             12248509, -5240639, 13735342, 1934062},
            {25089769, 6742589, 17081145, -13406266, 21909293, -16067981,
             -15136294, -3765346, -21277997, 5473616},
            {31883677, -7961101, 1083432, -11572403, 22828471, 13290673,
             -7125085, 12469656, 29111212, -5451014},
        },
        {
            {24244947, -15050407, -26262976, 2791540, -14997599, 16666678,
             24367466, 6388839, -10295587, 452383},
            {-25640782, -3417841, 5217916, 16224624, 19987036, -4082269,
             -24236251, -5915248, 15766062, 8407814},
            {-20406999, 13990231, 15495425, 16395525, 5377168, 15166495,
             -8917023, -4388953, -8067909, 2276718},
        },
        {
            {30157918, 12924066, -17712050, 9245753, 19895028, 3368142,
             -23827587, 5096219, 22740376, -7303417},
            {2041139, -14256350, 7783687, 13876377, -25946985, -13352459,
             24051124, 13742383, -15637599, 13295222},
            {33338237, -8505733, 12532113, 7977527, 9106186, -1715251,
             -17720195, -4612972, -4451357, -14669444},
        },
        {
            {-20045281, 5454097, -14346548, 6447146, 28862071, 1883651,
             -2469266, -4141880, 7770569, 9620597},
            {23208068, 7979712, 33071466, 8149229, 1758231, -10834995, 30945528,
             -1694323, -33502340, -14767970},
            {1439958, -16270480, -1079989, -793782, 4625402, 10647766, -5043801,
             1220118, 30494170, -11440799},
        },
        {
            {-5037580, -13028295, -2970559, -3061767, 15640974, -6701666,
             -26739026, 926050, -1684339, -13333647},
            {13908495, -3549272, 30919928, -6273825, -21521863, 7989039,
             9021034, 9078865, 3353509, 4033511},
            {-29663431, -15113610, 32259991, -344482, 24295849, -12912123,
             23161163, 8839127, 27485041, 7356032},
        },
    },
    {
        {
            {9661027, 705443, 11980065, -5370154, -1628543, 14661173, -6346142,
             2625015, 28431036, -16771834},
            {-23839233, -8311415, -25945511, 7480958, -17681669, -8354183,
             -22545972, 14150565, 15970762, 4099461},
            {29262576, 16756590, 26350592, -8793563, 8529671, -11208050,
             13617293, -9937143, 11465739, 8317062},
        },
        {
            {-25493081, -6962928, 32500200, -9419051, -23038724, -2302222,
             14898637, 3848455, 20969334, -5157516},
            {-20384450, -14347713, -18336405, 13884722, -33039454, 2842114,
             -21610826, -3649888, 11177095, 14989547},
            {-24496721, -11716016, 16959896, 2278463, 12066309, 10137771,
             13515641, 2581286, -28487508, 9930240},
        },
        {
            {-17751622, -2097826, 16544300, -13009300, -15914807, -14949081,
             18345767, -13403753, 16291481, -5314038},
            {-33229194, 2553288, 32678213, 9875984, 8534129, 6889387, -9676774,
             6957617, 4368891, 9788741},
            {16660756, 7281060, -10830758, 12911820, 20108584, -8101676,
             -21722536, -8613148, 16250552, -11111103},
        },
        {
            {-19765507, 2390526, -16551031, 14161980, 1905286, 6414907, 4689584,
             10604807, -30190403, 4782747},
            {-1354539, 14736941, -7367442, -13292886, 7710542, -14155590,
             -9981571, 4383045, 22546403, 437323},
            {31665577, -12180464, -16186830, 1491339, -18368625, 3294682,
             27343084, 2786261, -30633590, -14097016},
        },
        {
            {-14467279, -683715, -33374107, 7448552, 19294360, 14334329,
             -19690631, 2355319, -19284671, -6114373},
            {15121312, -15796162, 6377020, -6031361, -10798111, -12957845,
             18952177, 15496498, -29380133, 11754228},
            {-2637277, -13483075, 8488727, -14303896, 12728761, -1622493,
             7141596, 11724556, 22761615, -10134141},
        },
        {
            {16918416, 11729663, -18083579, 3022987, -31015732, -13339659,
             -28741185, -12227393, 32851222, 11717399},
            {11166634, 7338049, -6722523, 4531520, -29468672, -7302055,
             31474879, 3483633, -1193175, -4030831},
            {-185635, 9921305, 31456609, -13536438, -12013818, 13348923,
             33142652, 6546660, -19985279, -3948376},
        },
        {
            {-32460596, 11266712, -11197107, -7899103, 31703694, 3855903,
             -8537131, -12833048, -30772034, -15486313},
            {-18006477, 12709068, 3991746, -6479188, -21491523, -10550425,
             -31135347, -16049879, 10928917, 3011958},
            {-6957757, -15594337, 31696059, 334240, 29576716, 14796075,
             -30831056, -12805180, 18008031, 10258577},
        },
        {
            {-22448644, 15655569, 7018479, -4410003, -30314266, -1201591,
             -1853465, 1367120, 25127874, 6671743},
            {29701166, -14373934, -10878120, 9279288, -17568, 13127210,
             21382910, 11042292, 25838796, 4642684},
            {-20430234, 14955537, -24126347, 8124619, -5369288, -5990470,
             30468147, -13900640, 18423289, 4177476},
        },
    },
};

static uint8_t negative(signed char b)
{
    uint32_t x = b;

    x >>= 31;
    return x;
}

static void table_select(ge_precomp *t, int pos, signed char b)
{
    ge_precomp minust;
    uint8_t bnegative = negative(b);
    uint8_t babs = b - ((uint8_t)((-bnegative) & b) << 1);

    ge_precomp_0(t);
    cmov(t, &k25519Precomp[pos][0], equal(babs, 1));
    cmov(t, &k25519Precomp[pos][1], equal(babs, 2));
    cmov(t, &k25519Precomp[pos][2], equal(babs, 3));
    cmov(t, &k25519Precomp[pos][3], equal(babs, 4));
    cmov(t, &k25519Precomp[pos][4], equal(babs, 5));
    cmov(t, &k25519Precomp[pos][5], equal(babs, 6));
    cmov(t, &k25519Precomp[pos][6], equal(babs, 7));
    cmov(t, &k25519Precomp[pos][7], equal(babs, 8));
    fe_copy(minust.yplusx, t->yminusx);
    fe_copy(minust.yminusx, t->yplusx);
    fe_neg(minust.xy2d, t->xy2d);
    cmov(t, &minust, bnegative);
}
# 4233 "../crypto/ec/curve25519.c"
static void ge_scalarmult_base(ge_p3 *h, const uint8_t *a)
{
    signed char e[64];
    signed char carry;
    ge_p1p1 r;
    ge_p2 s;
    ge_precomp t;
    int i;

    for (i = 0; i < 32; ++i) {
        e[2 * i + 0] = (a[i] >> 0) & 15;
        e[2 * i + 1] = (a[i] >> 4) & 15;
    }



    carry = 0;
    for (i = 0; i < 63; ++i) {
        e[i] += carry;
        carry = e[i] + 8;
        carry >>= 4;
        e[i] -= carry << 4;
    }
    e[63] += carry;


    ge_p3_0(h);
    for (i = 1; i < 64; i += 2) {
        table_select(&t, i / 2, e[i]);
        ge_madd(&r, h, &t);
        ge_p1p1_to_p3(h, &r);
    }

    ge_p3_dbl(&r, h);
    ge_p1p1_to_p2(&s, &r);
    ge_p2_dbl(&r, &s);
    ge_p1p1_to_p2(&s, &r);
    ge_p2_dbl(&r, &s);
    ge_p1p1_to_p2(&s, &r);
    ge_p2_dbl(&r, &s);
    ge_p1p1_to_p3(h, &r);

    for (i = 0; i < 64; i += 2) {
        table_select(&t, i / 2, e[i]);
        ge_madd(&r, h, &t);
        ge_p1p1_to_p3(h, &r);
    }

    OPENSSL_cleanse(e, sizeof(e));
}
# 4429 "../crypto/ec/curve25519.c"
static void slide(signed char *r, const uint8_t *a)
{
    int i;
    int b;
    int k;

    for (i = 0; i < 256; ++i) {
        r[i] = 1 & (a[i >> 3] >> (i & 7));
    }

    for (i = 0; i < 256; ++i) {
        if (r[i]) {
            for (b = 1; b <= 6 && i + b < 256; ++b) {
                if (r[i + b]) {
                    if (r[i] + (r[i + b] << b) <= 15) {
                        r[i] += r[i + b] << b;
                        r[i + b] = 0;
                    } else if (r[i] - (r[i + b] << b) >= -15) {
                        r[i] -= r[i + b] << b;
                        for (k = i + b; k < 256; ++k) {
                            if (!r[k]) {
                                r[k] = 1;
                                break;
                            }
                            r[k] = 0;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
    }
}

static const ge_precomp Bi[8] = {
    {
        {25967493, -14356035, 29566456, 3660896, -12694345, 4014787, 27544626,
         -11754271, -6079156, 2047605},
        {-12545711, 934262, -2722910, 3049990, -727428, 9406986, 12720692,
         5043384, 19500929, -15469378},
        {-8738181, 4489570, 9688441, -14785194, 10184609, -12363380, 29287919,
         11864899, -24514362, -4438546},
    },
    {
        {15636291, -9688557, 24204773, -7912398, 616977, -16685262, 27787600,
         -14772189, 28944400, -1550024},
        {16568933, 4717097, -11556148, -1102322, 15682896, -11807043, 16354577,
         -11775962, 7689662, 11199574},
        {30464156, -5976125, -11779434, -15670865, 23220365, 15915852, 7512774,
         10017326, -17749093, -9920357},
    },
    {
        {10861363, 11473154, 27284546, 1981175, -30064349, 12577861, 32867885,
         14515107, -15438304, 10819380},
        {4708026, 6336745, 20377586, 9066809, -11272109, 6594696, -25653668,
         12483688, -12668491, 5581306},
        {19563160, 16186464, -29386857, 4097519, 10237984, -4348115, 28542350,
         13850243, -23678021, -15815942},
    },
    {
        {5153746, 9909285, 1723747, -2777874, 30523605, 5516873, 19480852,
         5230134, -23952439, -15175766},
        {-30269007, -3463509, 7665486, 10083793, 28475525, 1649722, 20654025,
         16520125, 30598449, 7715701},
        {28881845, 14381568, 9657904, 3680757, -20181635, 7843316, -31400660,
         1370708, 29794553, -1409300},
    },
    {
        {-22518993, -6692182, 14201702, -8745502, -23510406, 8844726, 18474211,
         -1361450, -13062696, 13821877},
        {-6455177, -7839871, 3374702, -4740862, -27098617, -10571707, 31655028,
         -7212327, 18853322, -14220951},
        {4566830, -12963868, -28974889, -12240689, -7602672, -2830569, -8514358,
         -10431137, 2207753, -3209784},
    },
    {
        {-25154831, -4185821, 29681144, 7868801, -6854661, -9423865, -12437364,
         -663000, -31111463, -16132436},
        {25576264, -2703214, 7349804, -11814844, 16472782, 9300885, 3844789,
         15725684, 171356, 6466918},
        {23103977, 13316479, 9739013, -16149481, 817875, -15038942, 8965339,
         -14088058, -30714912, 16193877},
    },
    {
        {-33521811, 3180713, -2394130, 14003687, -16903474, -16270840, 17238398,
         4729455, -18074513, 9256800},
        {-25182317, -4174131, 32336398, 5036987, -21236817, 11360617, 22616405,
         9761698, -19827198, 630305},
        {-13720693, 2639453, -24237460, -7406481, 9494427, -5774029, -6554551,
         -15960994, -2449256, -14291300},
    },
    {
        {-3151181, -5046075, 9282714, 6866145, -31907062, -863023, -18940575,
         15033784, 25105118, -7894876},
        {-24326370, 15950226, -31801215, -14592823, -11662737, -5090925,
         1573892, -2625887, 2198790, -15804619},
        {-3099351, 10324967, -2241613, 7453183, -5446979, -2735503, -13812022,
         -16236442, -32461234, -12290683},
    },
};
# 4538 "../crypto/ec/curve25519.c"
static void ge_double_scalarmult_vartime(ge_p2 *r, const uint8_t *a,
                                         const ge_p3 *A, const uint8_t *b)
{
    signed char aslide[256];
    signed char bslide[256];
    ge_cached Ai[8];
    ge_p1p1 t;
    ge_p3 u;
    ge_p3 A2;
    int i;

    slide(aslide, a);
    slide(bslide, b);

    ge_p3_to_cached(&Ai[0], A);
    ge_p3_dbl(&t, A);
    ge_p1p1_to_p3(&A2, &t);
    ge_add(&t, &A2, &Ai[0]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[1], &u);
    ge_add(&t, &A2, &Ai[1]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[2], &u);
    ge_add(&t, &A2, &Ai[2]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[3], &u);
    ge_add(&t, &A2, &Ai[3]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[4], &u);
    ge_add(&t, &A2, &Ai[4]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[5], &u);
    ge_add(&t, &A2, &Ai[5]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[6], &u);
    ge_add(&t, &A2, &Ai[6]);
    ge_p1p1_to_p3(&u, &t);
    ge_p3_to_cached(&Ai[7], &u);

    ge_p2_0(r);

    for (i = 255; i >= 0; --i) {
        if (aslide[i] || bslide[i]) {
            break;
        }
    }

    for (; i >= 0; --i) {
        ge_p2_dbl(&t, r);

        if (aslide[i] > 0) {
            ge_p1p1_to_p3(&u, &t);
            ge_add(&t, &u, &Ai[aslide[i] / 2]);
        } else if (aslide[i] < 0) {
            ge_p1p1_to_p3(&u, &t);
            ge_sub(&t, &u, &Ai[(-aslide[i]) / 2]);
        }

        if (bslide[i] > 0) {
            ge_p1p1_to_p3(&u, &t);
            ge_madd(&t, &u, &Bi[bslide[i] / 2]);
        } else if (bslide[i] < 0) {
            ge_p1p1_to_p3(&u, &t);
            ge_msub(&t, &u, &Bi[(-bslide[i]) / 2]);
        }

        ge_p1p1_to_p2(r, &t);
    }
}
# 4620 "../crypto/ec/curve25519.c"
static void x25519_sc_reduce(uint8_t *s)
{
    int64_t s0 = kBottom21Bits & load_3(s);
    int64_t s1 = kBottom21Bits & (load_4(s + 2) >> 5);
    int64_t s2 = kBottom21Bits & (load_3(s + 5) >> 2);
    int64_t s3 = kBottom21Bits & (load_4(s + 7) >> 7);
    int64_t s4 = kBottom21Bits & (load_4(s + 10) >> 4);
    int64_t s5 = kBottom21Bits & (load_3(s + 13) >> 1);
    int64_t s6 = kBottom21Bits & (load_4(s + 15) >> 6);
    int64_t s7 = kBottom21Bits & (load_3(s + 18) >> 3);
    int64_t s8 = kBottom21Bits & load_3(s + 21);
    int64_t s9 = kBottom21Bits & (load_4(s + 23) >> 5);
    int64_t s10 = kBottom21Bits & (load_3(s + 26) >> 2);
    int64_t s11 = kBottom21Bits & (load_4(s + 28) >> 7);
    int64_t s12 = kBottom21Bits & (load_4(s + 31) >> 4);
    int64_t s13 = kBottom21Bits & (load_3(s + 34) >> 1);
    int64_t s14 = kBottom21Bits & (load_4(s + 36) >> 6);
    int64_t s15 = kBottom21Bits & (load_3(s + 39) >> 3);
    int64_t s16 = kBottom21Bits & load_3(s + 42);
    int64_t s17 = kBottom21Bits & (load_4(s + 44) >> 5);
    int64_t s18 = kBottom21Bits & (load_3(s + 47) >> 2);
    int64_t s19 = kBottom21Bits & (load_4(s + 49) >> 7);
    int64_t s20 = kBottom21Bits & (load_4(s + 52) >> 4);
    int64_t s21 = kBottom21Bits & (load_3(s + 55) >> 1);
    int64_t s22 = kBottom21Bits & (load_4(s + 57) >> 6);
    int64_t s23 = (load_4(s + 60) >> 3);
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
    int64_t carry10;
    int64_t carry11;
    int64_t carry12;
    int64_t carry13;
    int64_t carry14;
    int64_t carry15;
    int64_t carry16;

    s11 += s23 * 666643;
    s12 += s23 * 470296;
    s13 += s23 * 654183;
    s14 -= s23 * 997805;
    s15 += s23 * 136657;
    s16 -= s23 * 683901;
    s23 = 0;

    s10 += s22 * 666643;
    s11 += s22 * 470296;
    s12 += s22 * 654183;
    s13 -= s22 * 997805;
    s14 += s22 * 136657;
    s15 -= s22 * 683901;
    s22 = 0;

    s9 += s21 * 666643;
    s10 += s21 * 470296;
    s11 += s21 * 654183;
    s12 -= s21 * 997805;
    s13 += s21 * 136657;
    s14 -= s21 * 683901;
    s21 = 0;

    s8 += s20 * 666643;
    s9 += s20 * 470296;
    s10 += s20 * 654183;
    s11 -= s20 * 997805;
    s12 += s20 * 136657;
    s13 -= s20 * 683901;
    s20 = 0;

    s7 += s19 * 666643;
    s8 += s19 * 470296;
    s9 += s19 * 654183;
    s10 -= s19 * 997805;
    s11 += s19 * 136657;
    s12 -= s19 * 683901;
    s19 = 0;

    s6 += s18 * 666643;
    s7 += s18 * 470296;
    s8 += s18 * 654183;
    s9 -= s18 * 997805;
    s10 += s18 * 136657;
    s11 -= s18 * 683901;
    s18 = 0;

    carry6 = (s6 + (1 << 20)) >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry8 = (s8 + (1 << 20)) >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry10 = (s10 + (1 << 20)) >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);
    carry12 = (s12 + (1 << 20)) >> 21;
    s13 += carry12;
    s12 -= carry12 * (1 << 21);
    carry14 = (s14 + (1 << 20)) >> 21;
    s15 += carry14;
    s14 -= carry14 * (1 << 21);
    carry16 = (s16 + (1 << 20)) >> 21;
    s17 += carry16;
    s16 -= carry16 * (1 << 21);

    carry7 = (s7 + (1 << 20)) >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry9 = (s9 + (1 << 20)) >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry11 = (s11 + (1 << 20)) >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);
    carry13 = (s13 + (1 << 20)) >> 21;
    s14 += carry13;
    s13 -= carry13 * (1 << 21);
    carry15 = (s15 + (1 << 20)) >> 21;
    s16 += carry15;
    s15 -= carry15 * (1 << 21);

    s5 += s17 * 666643;
    s6 += s17 * 470296;
    s7 += s17 * 654183;
    s8 -= s17 * 997805;
    s9 += s17 * 136657;
    s10 -= s17 * 683901;
    s17 = 0;

    s4 += s16 * 666643;
    s5 += s16 * 470296;
    s6 += s16 * 654183;
    s7 -= s16 * 997805;
    s8 += s16 * 136657;
    s9 -= s16 * 683901;
    s16 = 0;

    s3 += s15 * 666643;
    s4 += s15 * 470296;
    s5 += s15 * 654183;
    s6 -= s15 * 997805;
    s7 += s15 * 136657;
    s8 -= s15 * 683901;
    s15 = 0;

    s2 += s14 * 666643;
    s3 += s14 * 470296;
    s4 += s14 * 654183;
    s5 -= s14 * 997805;
    s6 += s14 * 136657;
    s7 -= s14 * 683901;
    s14 = 0;

    s1 += s13 * 666643;
    s2 += s13 * 470296;
    s3 += s13 * 654183;
    s4 -= s13 * 997805;
    s5 += s13 * 136657;
    s6 -= s13 * 683901;
    s13 = 0;

    s0 += s12 * 666643;
    s1 += s12 * 470296;
    s2 += s12 * 654183;
    s3 -= s12 * 997805;
    s4 += s12 * 136657;
    s5 -= s12 * 683901;
    s12 = 0;

    carry0 = (s0 + (1 << 20)) >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry2 = (s2 + (1 << 20)) >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry4 = (s4 + (1 << 20)) >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry6 = (s6 + (1 << 20)) >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry8 = (s8 + (1 << 20)) >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry10 = (s10 + (1 << 20)) >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);

    carry1 = (s1 + (1 << 20)) >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry3 = (s3 + (1 << 20)) >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry5 = (s5 + (1 << 20)) >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry7 = (s7 + (1 << 20)) >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry9 = (s9 + (1 << 20)) >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry11 = (s11 + (1 << 20)) >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);

    s0 += s12 * 666643;
    s1 += s12 * 470296;
    s2 += s12 * 654183;
    s3 -= s12 * 997805;
    s4 += s12 * 136657;
    s5 -= s12 * 683901;
    s12 = 0;

    carry0 = s0 >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry1 = s1 >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry2 = s2 >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry3 = s3 >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry4 = s4 >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry5 = s5 >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry6 = s6 >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry7 = s7 >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry8 = s8 >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry9 = s9 >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry10 = s10 >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);
    carry11 = s11 >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);

    s0 += s12 * 666643;
    s1 += s12 * 470296;
    s2 += s12 * 654183;
    s3 -= s12 * 997805;
    s4 += s12 * 136657;
    s5 -= s12 * 683901;
    s12 = 0;

    carry0 = s0 >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry1 = s1 >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry2 = s2 >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry3 = s3 >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry4 = s4 >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry5 = s5 >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry6 = s6 >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry7 = s7 >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry8 = s8 >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry9 = s9 >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry10 = s10 >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);

    s[ 0] = (uint8_t) (s0 >> 0);
    s[ 1] = (uint8_t) (s0 >> 8);
    s[ 2] = (uint8_t)((s0 >> 16) | (s1 << 5));
    s[ 3] = (uint8_t) (s1 >> 3);
    s[ 4] = (uint8_t) (s1 >> 11);
    s[ 5] = (uint8_t)((s1 >> 19) | (s2 << 2));
    s[ 6] = (uint8_t) (s2 >> 6);
    s[ 7] = (uint8_t)((s2 >> 14) | (s3 << 7));
    s[ 8] = (uint8_t) (s3 >> 1);
    s[ 9] = (uint8_t) (s3 >> 9);
    s[10] = (uint8_t)((s3 >> 17) | (s4 << 4));
    s[11] = (uint8_t) (s4 >> 4);
    s[12] = (uint8_t) (s4 >> 12);
    s[13] = (uint8_t)((s4 >> 20) | (s5 << 1));
    s[14] = (uint8_t) (s5 >> 7);
    s[15] = (uint8_t)((s5 >> 15) | (s6 << 6));
    s[16] = (uint8_t) (s6 >> 2);
    s[17] = (uint8_t) (s6 >> 10);
    s[18] = (uint8_t)((s6 >> 18) | (s7 << 3));
    s[19] = (uint8_t) (s7 >> 5);
    s[20] = (uint8_t) (s7 >> 13);
    s[21] = (uint8_t) (s8 >> 0);
    s[22] = (uint8_t) (s8 >> 8);
    s[23] = (uint8_t)((s8 >> 16) | (s9 << 5));
    s[24] = (uint8_t) (s9 >> 3);
    s[25] = (uint8_t) (s9 >> 11);
    s[26] = (uint8_t)((s9 >> 19) | (s10 << 2));
    s[27] = (uint8_t) (s10 >> 6);
    s[28] = (uint8_t)((s10 >> 14) | (s11 << 7));
    s[29] = (uint8_t) (s11 >> 1);
    s[30] = (uint8_t) (s11 >> 9);
    s[31] = (uint8_t) (s11 >> 17);
}
# 4964 "../crypto/ec/curve25519.c"
static void sc_muladd(uint8_t *s, const uint8_t *a, const uint8_t *b,
                      const uint8_t *c)
{
    int64_t a0 = kBottom21Bits & load_3(a);
    int64_t a1 = kBottom21Bits & (load_4(a + 2) >> 5);
    int64_t a2 = kBottom21Bits & (load_3(a + 5) >> 2);
    int64_t a3 = kBottom21Bits & (load_4(a + 7) >> 7);
    int64_t a4 = kBottom21Bits & (load_4(a + 10) >> 4);
    int64_t a5 = kBottom21Bits & (load_3(a + 13) >> 1);
    int64_t a6 = kBottom21Bits & (load_4(a + 15) >> 6);
    int64_t a7 = kBottom21Bits & (load_3(a + 18) >> 3);
    int64_t a8 = kBottom21Bits & load_3(a + 21);
    int64_t a9 = kBottom21Bits & (load_4(a + 23) >> 5);
    int64_t a10 = kBottom21Bits & (load_3(a + 26) >> 2);
    int64_t a11 = (load_4(a + 28) >> 7);
    int64_t b0 = kBottom21Bits & load_3(b);
    int64_t b1 = kBottom21Bits & (load_4(b + 2) >> 5);
    int64_t b2 = kBottom21Bits & (load_3(b + 5) >> 2);
    int64_t b3 = kBottom21Bits & (load_4(b + 7) >> 7);
    int64_t b4 = kBottom21Bits & (load_4(b + 10) >> 4);
    int64_t b5 = kBottom21Bits & (load_3(b + 13) >> 1);
    int64_t b6 = kBottom21Bits & (load_4(b + 15) >> 6);
    int64_t b7 = kBottom21Bits & (load_3(b + 18) >> 3);
    int64_t b8 = kBottom21Bits & load_3(b + 21);
    int64_t b9 = kBottom21Bits & (load_4(b + 23) >> 5);
    int64_t b10 = kBottom21Bits & (load_3(b + 26) >> 2);
    int64_t b11 = (load_4(b + 28) >> 7);
    int64_t c0 = kBottom21Bits & load_3(c);
    int64_t c1 = kBottom21Bits & (load_4(c + 2) >> 5);
    int64_t c2 = kBottom21Bits & (load_3(c + 5) >> 2);
    int64_t c3 = kBottom21Bits & (load_4(c + 7) >> 7);
    int64_t c4 = kBottom21Bits & (load_4(c + 10) >> 4);
    int64_t c5 = kBottom21Bits & (load_3(c + 13) >> 1);
    int64_t c6 = kBottom21Bits & (load_4(c + 15) >> 6);
    int64_t c7 = kBottom21Bits & (load_3(c + 18) >> 3);
    int64_t c8 = kBottom21Bits & load_3(c + 21);
    int64_t c9 = kBottom21Bits & (load_4(c + 23) >> 5);
    int64_t c10 = kBottom21Bits & (load_3(c + 26) >> 2);
    int64_t c11 = (load_4(c + 28) >> 7);
    int64_t s0;
    int64_t s1;
    int64_t s2;
    int64_t s3;
    int64_t s4;
    int64_t s5;
    int64_t s6;
    int64_t s7;
    int64_t s8;
    int64_t s9;
    int64_t s10;
    int64_t s11;
    int64_t s12;
    int64_t s13;
    int64_t s14;
    int64_t s15;
    int64_t s16;
    int64_t s17;
    int64_t s18;
    int64_t s19;
    int64_t s20;
    int64_t s21;
    int64_t s22;
    int64_t s23;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
    int64_t carry10;
    int64_t carry11;
    int64_t carry12;
    int64_t carry13;
    int64_t carry14;
    int64_t carry15;
    int64_t carry16;
    int64_t carry17;
    int64_t carry18;
    int64_t carry19;
    int64_t carry20;
    int64_t carry21;
    int64_t carry22;

    s0 = c0 + a0 * b0;
    s1 = c1 + a0 * b1 + a1 * b0;
    s2 = c2 + a0 * b2 + a1 * b1 + a2 * b0;
    s3 = c3 + a0 * b3 + a1 * b2 + a2 * b1 + a3 * b0;
    s4 = c4 + a0 * b4 + a1 * b3 + a2 * b2 + a3 * b1 + a4 * b0;
    s5 = c5 + a0 * b5 + a1 * b4 + a2 * b3 + a3 * b2 + a4 * b1 + a5 * b0;
    s6 = c6 + a0 * b6 + a1 * b5 + a2 * b4 + a3 * b3 + a4 * b2 + a5 * b1 + a6 * b0;
    s7 = c7 + a0 * b7 + a1 * b6 + a2 * b5 + a3 * b4 + a4 * b3 + a5 * b2 + a6 * b1 + a7 * b0;
    s8 = c8 + a0 * b8 + a1 * b7 + a2 * b6 + a3 * b5 + a4 * b4 + a5 * b3 + a6 * b2 + a7 * b1 + a8 * b0;
    s9 = c9 + a0 * b9 + a1 * b8 + a2 * b7 + a3 * b6 + a4 * b5 + a5 * b4 + a6 * b3 + a7 * b2 + a8 * b1 + a9 * b0;
    s10 = c10 + a0 * b10 + a1 * b9 + a2 * b8 + a3 * b7 + a4 * b6 + a5 * b5 + a6 * b4 + a7 * b3 + a8 * b2 + a9 * b1 + a10 * b0;
    s11 = c11 + a0 * b11 + a1 * b10 + a2 * b9 + a3 * b8 + a4 * b7 + a5 * b6 + a6 * b5 + a7 * b4 + a8 * b3 + a9 * b2 + a10 * b1 + a11 * b0;
    s12 = a1 * b11 + a2 * b10 + a3 * b9 + a4 * b8 + a5 * b7 + a6 * b6 + a7 * b5 + a8 * b4 + a9 * b3 + a10 * b2 + a11 * b1;
    s13 = a2 * b11 + a3 * b10 + a4 * b9 + a5 * b8 + a6 * b7 + a7 * b6 + a8 * b5 + a9 * b4 + a10 * b3 + a11 * b2;
    s14 = a3 * b11 + a4 * b10 + a5 * b9 + a6 * b8 + a7 * b7 + a8 * b6 + a9 * b5 + a10 * b4 + a11 * b3;
    s15 = a4 * b11 + a5 * b10 + a6 * b9 + a7 * b8 + a8 * b7 + a9 * b6 + a10 * b5 + a11 * b4;
    s16 = a5 * b11 + a6 * b10 + a7 * b9 + a8 * b8 + a9 * b7 + a10 * b6 + a11 * b5;
    s17 = a6 * b11 + a7 * b10 + a8 * b9 + a9 * b8 + a10 * b7 + a11 * b6;
    s18 = a7 * b11 + a8 * b10 + a9 * b9 + a10 * b8 + a11 * b7;
    s19 = a8 * b11 + a9 * b10 + a10 * b9 + a11 * b8;
    s20 = a9 * b11 + a10 * b10 + a11 * b9;
    s21 = a10 * b11 + a11 * b10;
    s22 = a11 * b11;
    s23 = 0;

    carry0 = (s0 + (1 << 20)) >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry2 = (s2 + (1 << 20)) >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry4 = (s4 + (1 << 20)) >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry6 = (s6 + (1 << 20)) >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry8 = (s8 + (1 << 20)) >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry10 = (s10 + (1 << 20)) >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);
    carry12 = (s12 + (1 << 20)) >> 21;
    s13 += carry12;
    s12 -= carry12 * (1 << 21);
    carry14 = (s14 + (1 << 20)) >> 21;
    s15 += carry14;
    s14 -= carry14 * (1 << 21);
    carry16 = (s16 + (1 << 20)) >> 21;
    s17 += carry16;
    s16 -= carry16 * (1 << 21);
    carry18 = (s18 + (1 << 20)) >> 21;
    s19 += carry18;
    s18 -= carry18 * (1 << 21);
    carry20 = (s20 + (1 << 20)) >> 21;
    s21 += carry20;
    s20 -= carry20 * (1 << 21);
    carry22 = (s22 + (1 << 20)) >> 21;
    s23 += carry22;
    s22 -= carry22 * (1 << 21);

    carry1 = (s1 + (1 << 20)) >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry3 = (s3 + (1 << 20)) >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry5 = (s5 + (1 << 20)) >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry7 = (s7 + (1 << 20)) >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry9 = (s9 + (1 << 20)) >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry11 = (s11 + (1 << 20)) >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);
    carry13 = (s13 + (1 << 20)) >> 21;
    s14 += carry13;
    s13 -= carry13 * (1 << 21);
    carry15 = (s15 + (1 << 20)) >> 21;
    s16 += carry15;
    s15 -= carry15 * (1 << 21);
    carry17 = (s17 + (1 << 20)) >> 21;
    s18 += carry17;
    s17 -= carry17 * (1 << 21);
    carry19 = (s19 + (1 << 20)) >> 21;
    s20 += carry19;
    s19 -= carry19 * (1 << 21);
    carry21 = (s21 + (1 << 20)) >> 21;
    s22 += carry21;
    s21 -= carry21 * (1 << 21);

    s11 += s23 * 666643;
    s12 += s23 * 470296;
    s13 += s23 * 654183;
    s14 -= s23 * 997805;
    s15 += s23 * 136657;
    s16 -= s23 * 683901;
    s23 = 0;

    s10 += s22 * 666643;
    s11 += s22 * 470296;
    s12 += s22 * 654183;
    s13 -= s22 * 997805;
    s14 += s22 * 136657;
    s15 -= s22 * 683901;
    s22 = 0;

    s9 += s21 * 666643;
    s10 += s21 * 470296;
    s11 += s21 * 654183;
    s12 -= s21 * 997805;
    s13 += s21 * 136657;
    s14 -= s21 * 683901;
    s21 = 0;

    s8 += s20 * 666643;
    s9 += s20 * 470296;
    s10 += s20 * 654183;
    s11 -= s20 * 997805;
    s12 += s20 * 136657;
    s13 -= s20 * 683901;
    s20 = 0;

    s7 += s19 * 666643;
    s8 += s19 * 470296;
    s9 += s19 * 654183;
    s10 -= s19 * 997805;
    s11 += s19 * 136657;
    s12 -= s19 * 683901;
    s19 = 0;

    s6 += s18 * 666643;
    s7 += s18 * 470296;
    s8 += s18 * 654183;
    s9 -= s18 * 997805;
    s10 += s18 * 136657;
    s11 -= s18 * 683901;
    s18 = 0;

    carry6 = (s6 + (1 << 20)) >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry8 = (s8 + (1 << 20)) >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry10 = (s10 + (1 << 20)) >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);
    carry12 = (s12 + (1 << 20)) >> 21;
    s13 += carry12;
    s12 -= carry12 * (1 << 21);
    carry14 = (s14 + (1 << 20)) >> 21;
    s15 += carry14;
    s14 -= carry14 * (1 << 21);
    carry16 = (s16 + (1 << 20)) >> 21;
    s17 += carry16;
    s16 -= carry16 * (1 << 21);

    carry7 = (s7 + (1 << 20)) >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry9 = (s9 + (1 << 20)) >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry11 = (s11 + (1 << 20)) >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);
    carry13 = (s13 + (1 << 20)) >> 21;
    s14 += carry13;
    s13 -= carry13 * (1 << 21);
    carry15 = (s15 + (1 << 20)) >> 21;
    s16 += carry15;
    s15 -= carry15 * (1 << 21);

    s5 += s17 * 666643;
    s6 += s17 * 470296;
    s7 += s17 * 654183;
    s8 -= s17 * 997805;
    s9 += s17 * 136657;
    s10 -= s17 * 683901;
    s17 = 0;

    s4 += s16 * 666643;
    s5 += s16 * 470296;
    s6 += s16 * 654183;
    s7 -= s16 * 997805;
    s8 += s16 * 136657;
    s9 -= s16 * 683901;
    s16 = 0;

    s3 += s15 * 666643;
    s4 += s15 * 470296;
    s5 += s15 * 654183;
    s6 -= s15 * 997805;
    s7 += s15 * 136657;
    s8 -= s15 * 683901;
    s15 = 0;

    s2 += s14 * 666643;
    s3 += s14 * 470296;
    s4 += s14 * 654183;
    s5 -= s14 * 997805;
    s6 += s14 * 136657;
    s7 -= s14 * 683901;
    s14 = 0;

    s1 += s13 * 666643;
    s2 += s13 * 470296;
    s3 += s13 * 654183;
    s4 -= s13 * 997805;
    s5 += s13 * 136657;
    s6 -= s13 * 683901;
    s13 = 0;

    s0 += s12 * 666643;
    s1 += s12 * 470296;
    s2 += s12 * 654183;
    s3 -= s12 * 997805;
    s4 += s12 * 136657;
    s5 -= s12 * 683901;
    s12 = 0;

    carry0 = (s0 + (1 << 20)) >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry2 = (s2 + (1 << 20)) >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry4 = (s4 + (1 << 20)) >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry6 = (s6 + (1 << 20)) >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry8 = (s8 + (1 << 20)) >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry10 = (s10 + (1 << 20)) >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);

    carry1 = (s1 + (1 << 20)) >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry3 = (s3 + (1 << 20)) >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry5 = (s5 + (1 << 20)) >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry7 = (s7 + (1 << 20)) >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry9 = (s9 + (1 << 20)) >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry11 = (s11 + (1 << 20)) >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);

    s0 += s12 * 666643;
    s1 += s12 * 470296;
    s2 += s12 * 654183;
    s3 -= s12 * 997805;
    s4 += s12 * 136657;
    s5 -= s12 * 683901;
    s12 = 0;

    carry0 = s0 >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry1 = s1 >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry2 = s2 >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry3 = s3 >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry4 = s4 >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry5 = s5 >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry6 = s6 >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry7 = s7 >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry8 = s8 >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry9 = s9 >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry10 = s10 >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);
    carry11 = s11 >> 21;
    s12 += carry11;
    s11 -= carry11 * (1 << 21);

    s0 += s12 * 666643;
    s1 += s12 * 470296;
    s2 += s12 * 654183;
    s3 -= s12 * 997805;
    s4 += s12 * 136657;
    s5 -= s12 * 683901;
    s12 = 0;

    carry0 = s0 >> 21;
    s1 += carry0;
    s0 -= carry0 * (1 << 21);
    carry1 = s1 >> 21;
    s2 += carry1;
    s1 -= carry1 * (1 << 21);
    carry2 = s2 >> 21;
    s3 += carry2;
    s2 -= carry2 * (1 << 21);
    carry3 = s3 >> 21;
    s4 += carry3;
    s3 -= carry3 * (1 << 21);
    carry4 = s4 >> 21;
    s5 += carry4;
    s4 -= carry4 * (1 << 21);
    carry5 = s5 >> 21;
    s6 += carry5;
    s5 -= carry5 * (1 << 21);
    carry6 = s6 >> 21;
    s7 += carry6;
    s6 -= carry6 * (1 << 21);
    carry7 = s7 >> 21;
    s8 += carry7;
    s7 -= carry7 * (1 << 21);
    carry8 = s8 >> 21;
    s9 += carry8;
    s8 -= carry8 * (1 << 21);
    carry9 = s9 >> 21;
    s10 += carry9;
    s9 -= carry9 * (1 << 21);
    carry10 = s10 >> 21;
    s11 += carry10;
    s10 -= carry10 * (1 << 21);

    s[ 0] = (uint8_t) (s0 >> 0);
    s[ 1] = (uint8_t) (s0 >> 8);
    s[ 2] = (uint8_t)((s0 >> 16) | (s1 << 5));
    s[ 3] = (uint8_t) (s1 >> 3);
    s[ 4] = (uint8_t) (s1 >> 11);
    s[ 5] = (uint8_t)((s1 >> 19) | (s2 << 2));
    s[ 6] = (uint8_t) (s2 >> 6);
    s[ 7] = (uint8_t)((s2 >> 14) | (s3 << 7));
    s[ 8] = (uint8_t) (s3 >> 1);
    s[ 9] = (uint8_t) (s3 >> 9);
    s[10] = (uint8_t)((s3 >> 17) | (s4 << 4));
    s[11] = (uint8_t) (s4 >> 4);
    s[12] = (uint8_t) (s4 >> 12);
    s[13] = (uint8_t)((s4 >> 20) | (s5 << 1));
    s[14] = (uint8_t) (s5 >> 7);
    s[15] = (uint8_t)((s5 >> 15) | (s6 << 6));
    s[16] = (uint8_t) (s6 >> 2);
    s[17] = (uint8_t) (s6 >> 10);
    s[18] = (uint8_t)((s6 >> 18) | (s7 << 3));
    s[19] = (uint8_t) (s7 >> 5);
    s[20] = (uint8_t) (s7 >> 13);
    s[21] = (uint8_t) (s8 >> 0);
    s[22] = (uint8_t) (s8 >> 8);
    s[23] = (uint8_t)((s8 >> 16) | (s9 << 5));
    s[24] = (uint8_t) (s9 >> 3);
    s[25] = (uint8_t) (s9 >> 11);
    s[26] = (uint8_t)((s9 >> 19) | (s10 << 2));
    s[27] = (uint8_t) (s10 >> 6);
    s[28] = (uint8_t)((s10 >> 14) | (s11 << 7));
    s[29] = (uint8_t) (s11 >> 1);
    s[30] = (uint8_t) (s11 >> 9);
    s[31] = (uint8_t) (s11 >> 17);
}

static int hash_init_with_dom(EVP_MD_CTX *hash_ctx,
                              EVP_MD *sha512,
                              const uint8_t dom2flag,
                              const uint8_t phflag,
                              const uint8_t *context,
                              const size_t context_len)
{

    const char dom_s[] =
            "\x53\x69\x67\x45\x64\x32\x35\x35\x31\x39\x20\x6e"
            "\x6f\x20\x45\x64\x32\x35\x35\x31\x39\x20\x63\x6f"
            "\x6c\x6c\x69\x73\x69\x6f\x6e\x73";
    uint8_t dom[2];

    if (!EVP_DigestInit_ex(hash_ctx, sha512, 
# 5451 "../crypto/ec/curve25519.c" 3 4
                                            ((void *)0)
# 5451 "../crypto/ec/curve25519.c"
                                                ))
        return 0;


    if (!dom2flag)
        return 1;

    if (context_len > 
# 5458 "../crypto/ec/curve25519.c" 3 4
                     (255)
# 5458 "../crypto/ec/curve25519.c"
                              )
        return 0;

    dom[0] = (uint8_t)(phflag >= 1 ? 1 : 0);
    dom[1] = (uint8_t)context_len;

    if (!EVP_DigestUpdate(hash_ctx, dom_s, sizeof(dom_s)-1)
        || !EVP_DigestUpdate(hash_ctx, dom, sizeof(dom))
        || !EVP_DigestUpdate(hash_ctx, context, context_len)) {
        return 0;
    }

    return 1;
}

int
ossl_ed25519_sign(uint8_t *out_sig, const uint8_t *tbs, size_t tbs_len,
                  const uint8_t public_key[32], const uint8_t private_key[32],
                  const uint8_t dom2flag, const uint8_t phflag, const uint8_t csflag,
                  const uint8_t *context, size_t context_len,
                  OSSL_LIB_CTX *libctx, const char *propq)
{
    uint8_t az[64];
    uint8_t nonce[64];
    ge_p3 R;
    uint8_t hram[64];
    EVP_MD *sha512 = EVP_MD_fetch(libctx, "SHA512", propq);
    EVP_MD_CTX *hash_ctx = EVP_MD_CTX_new();
    unsigned int sz;
    int res = 0;

    if (context == 
# 5489 "../crypto/ec/curve25519.c" 3 4
                  ((void *)0)
# 5489 "../crypto/ec/curve25519.c"
                      )
        context_len = 0;


    if (csflag && context_len == 0)
        goto err;


    if (!dom2flag && context_len > 0)
        goto err;

    if (sha512 == 
# 5500 "../crypto/ec/curve25519.c" 3 4
                 ((void *)0) 
# 5500 "../crypto/ec/curve25519.c"
                      || hash_ctx == 
# 5500 "../crypto/ec/curve25519.c" 3 4
                                     ((void *)0)
# 5500 "../crypto/ec/curve25519.c"
                                         )
        goto err;

    if (!EVP_DigestInit_ex(hash_ctx, sha512, 
# 5503 "../crypto/ec/curve25519.c" 3 4
                                            ((void *)0)
# 5503 "../crypto/ec/curve25519.c"
                                                )
        || !EVP_DigestUpdate(hash_ctx, private_key, 32)
        || !EVP_DigestFinal_ex(hash_ctx, az, &sz))
        goto err;

    az[0] &= 248;
    az[31] &= 63;
    az[31] |= 64;

    if (!hash_init_with_dom(hash_ctx, sha512, dom2flag, phflag, context, context_len)
        || !EVP_DigestUpdate(hash_ctx, az + 32, 32)
        || !EVP_DigestUpdate(hash_ctx, tbs, tbs_len)
        || !EVP_DigestFinal_ex(hash_ctx, nonce, &sz))
        goto err;

    x25519_sc_reduce(nonce);
    ge_scalarmult_base(&R, nonce);
    ge_p3_tobytes(out_sig, &R);

    if (!hash_init_with_dom(hash_ctx, sha512, dom2flag, phflag, context, context_len)
        || !EVP_DigestUpdate(hash_ctx, out_sig, 32)
        || !EVP_DigestUpdate(hash_ctx, public_key, 32)
        || !EVP_DigestUpdate(hash_ctx, tbs, tbs_len)
        || !EVP_DigestFinal_ex(hash_ctx, hram, &sz))
        goto err;

    x25519_sc_reduce(hram);
    sc_muladd(out_sig + 32, hram, az, nonce);

    res = 1;
err:
    OPENSSL_cleanse(nonce, sizeof(nonce));
    OPENSSL_cleanse(az, sizeof(az));
    EVP_MD_free(sha512);
    EVP_MD_CTX_free(hash_ctx);
    return res;
}

static const char allzeroes[15];

int
ossl_ed25519_verify(const uint8_t *tbs, size_t tbs_len,
                    const uint8_t signature[64], const uint8_t public_key[32],
                    const uint8_t dom2flag, const uint8_t phflag, const uint8_t csflag,
                    const uint8_t *context, size_t context_len,
                    OSSL_LIB_CTX *libctx, const char *propq)
{
    int i;
    ge_p3 A;
    const uint8_t *r, *s;
    EVP_MD *sha512;
    EVP_MD_CTX *hash_ctx = 
# 5554 "../crypto/ec/curve25519.c" 3 4
                          ((void *)0)
# 5554 "../crypto/ec/curve25519.c"
                              ;
    unsigned int sz;
    int res = 0;
    ge_p2 R;
    uint8_t rcheck[32];
    uint8_t h[64];

    const uint8_t l_low[16] = {
        0xED, 0xD3, 0xF5, 0x5C, 0x1A, 0x63, 0x12, 0x58, 0xD6, 0x9C, 0xF7, 0xA2,
        0xDE, 0xF9, 0xDE, 0x14
    };

    if (context == 
# 5566 "../crypto/ec/curve25519.c" 3 4
                  ((void *)0)
# 5566 "../crypto/ec/curve25519.c"
                      )
        context_len = 0;


    if (csflag && context_len == 0)
        return 0;


    if (!dom2flag && context_len > 0)
        return 0;

    r = signature;
    s = signature + 32;
# 5588 "../crypto/ec/curve25519.c"
    if (s[31] > 0x10)
        return 0;
    if (s[31] == 0x10) {




        if (memcmp(s + 16, allzeroes, sizeof(allzeroes)) != 0)
            return 0;
        for (i = 15; i >= 0; i--) {
            if (s[i] < l_low[i])
                break;
            if (s[i] > l_low[i])
                return 0;
        }
        if (i < 0)
            return 0;
    }

    if (ge_frombytes_vartime(&A, public_key) != 0) {
        return 0;
    }

    fe_neg(A.X, A.X);
    fe_neg(A.T, A.T);

    sha512 = EVP_MD_fetch(libctx, "SHA512", propq);
    if (sha512 == 
# 5615 "../crypto/ec/curve25519.c" 3 4
                 ((void *)0)
# 5615 "../crypto/ec/curve25519.c"
                     )
        return 0;
    hash_ctx = EVP_MD_CTX_new();
    if (hash_ctx == 
# 5618 "../crypto/ec/curve25519.c" 3 4
                   ((void *)0)
# 5618 "../crypto/ec/curve25519.c"
                       )
        goto err;

    if (!hash_init_with_dom(hash_ctx, sha512, dom2flag, phflag, context, context_len)
        || !EVP_DigestUpdate(hash_ctx, r, 32)
        || !EVP_DigestUpdate(hash_ctx, public_key, 32)
        || !EVP_DigestUpdate(hash_ctx, tbs, tbs_len)
        || !EVP_DigestFinal_ex(hash_ctx, h, &sz))
        goto err;

    x25519_sc_reduce(h);

    ge_double_scalarmult_vartime(&R, h, &A, s);

    ge_tobytes(rcheck, &R);

    res = CRYPTO_memcmp(rcheck, r, sizeof(rcheck)) == 0;
# 5643 "../crypto/ec/curve25519.c"
err:
    EVP_MD_free(sha512);
    EVP_MD_CTX_free(hash_ctx);
    return res;
}

int
ossl_ed25519_public_from_private(OSSL_LIB_CTX *ctx, uint8_t out_public_key[32],
                                 const uint8_t private_key[32],
                                 const char *propq)
{
    uint8_t az[64];
    ge_p3 A;
    int r;
    EVP_MD *sha512 = 
# 5657 "../crypto/ec/curve25519.c" 3 4
                    ((void *)0)
# 5657 "../crypto/ec/curve25519.c"
                        ;

    sha512 = EVP_MD_fetch(ctx, "SHA512", propq);
    if (sha512 == 
# 5660 "../crypto/ec/curve25519.c" 3 4
                 ((void *)0)
# 5660 "../crypto/ec/curve25519.c"
                     )
        return 0;
    r = EVP_Digest(private_key, 32, az, 
# 5662 "../crypto/ec/curve25519.c" 3 4
                                       ((void *)0)
# 5662 "../crypto/ec/curve25519.c"
                                           , sha512, 
# 5662 "../crypto/ec/curve25519.c" 3 4
                                                     ((void *)0)
# 5662 "../crypto/ec/curve25519.c"
                                                         );
    EVP_MD_free(sha512);
    if (!r) {
        OPENSSL_cleanse(az, sizeof(az));
        return 0;
    }

    az[0] &= 248;
    az[31] &= 63;
    az[31] |= 64;

    ge_scalarmult_base(&A, az);
    ge_p3_tobytes(out_public_key, &A);

    OPENSSL_cleanse(az, sizeof(az));
    return 1;
}

int
ossl_x25519(uint8_t out_shared_key[32], const uint8_t private_key[32],
            const uint8_t peer_public_value[32])
{
    static const uint8_t kZeros[32] = {0};
    x25519_scalar_mult(out_shared_key, private_key, peer_public_value);

    return CRYPTO_memcmp(kZeros, out_shared_key, 32) != 0;
}

void
ossl_x25519_public_from_private(uint8_t out_public_value[32],
                                const uint8_t private_key[32])
{
    uint8_t e[32];
    ge_p3 A;
    fe zplusy, zminusy, zminusy_inv;

    memcpy(e, private_key, 32);
    e[0] &= 248;
    e[31] &= 127;
    e[31] |= 64;

    ge_scalarmult_base(&A, e);






    fe_add(zplusy, A.Z, A.Y);
    fe_sub(zminusy, A.Z, A.Y);
    fe_invert(zminusy_inv, zminusy);
    fe_mul(zplusy, zplusy, zminusy_inv);
    fe_tobytes(out_public_value, zplusy);

    OPENSSL_cleanse(e, sizeof(e));
}

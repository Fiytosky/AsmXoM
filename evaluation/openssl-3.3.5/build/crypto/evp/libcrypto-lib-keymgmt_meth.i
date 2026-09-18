# 0 "../crypto/evp/keymgmt_meth.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/evp/keymgmt_meth.c"
# 10 "../crypto/evp/keymgmt_meth.c"
# 1 "include/openssl/crypto.h" 1
# 18 "include/openssl/crypto.h"
        

# 1 "../include/openssl/macros.h" 1
# 12 "../include/openssl/macros.h"
        

# 1 "../include/openssl/opensslconf.h" 1
# 12 "../include/openssl/opensslconf.h"
        

# 1 "include/openssl/configuration.h" 1
# 16 "include/openssl/configuration.h"
        
# 15 "../include/openssl/opensslconf.h" 2
# 15 "../include/openssl/macros.h" 2
# 1 "include/openssl/opensslv.h" 1
# 15 "include/openssl/opensslv.h"
        
# 16 "../include/openssl/macros.h" 2
# 21 "include/openssl/crypto.h" 2




# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
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
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 229 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4

# 229 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 344 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 32 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
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
# 30 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



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




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


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
# 60 "/usr/include/time.h" 3 4
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
# 61 "/usr/include/time.h" 2 3 4











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

# 1 "../include/openssl/e_os2.h" 1
# 12 "../include/openssl/e_os2.h"
        
# 235 "../include/openssl/e_os2.h"
# 1 "/usr/include/inttypes.h" 1 3 4
# 27 "/usr/include/inttypes.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdint.h" 1 3 4
# 9 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdint.h" 3 4
 
# 9 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdint.h" 3 4
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4







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
# 29 "include/openssl/crypto.h" 2


# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 1 3 4
# 40 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 3 4

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


# 1 "include/openssl/safestack.h" 1
# 17 "include/openssl/safestack.h"
        






# 1 "../include/openssl/stack.h" 1
# 12 "../include/openssl/stack.h"
        
# 23 "../include/openssl/stack.h"

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
# 35 "include/openssl/crypto.h" 2

# 1 "../include/openssl/types.h" 1
# 26 "../include/openssl/types.h"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 34 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/syslimits.h" 1 3 4






 
# 7 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/syslimits.h" 3 4
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
# 36 "../include/openssl/types.h"

# 36 "../include/openssl/types.h"
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
# 37 "include/openssl/crypto.h" 2

# 1 "../include/openssl/cryptoerr.h" 1
# 13 "../include/openssl/cryptoerr.h"
        


# 1 "../include/openssl/symhacks.h" 1
# 12 "../include/openssl/symhacks.h"
        
# 17 "../include/openssl/cryptoerr.h" 2
# 1 "../include/openssl/cryptoerr_legacy.h" 1
# 19 "../include/openssl/cryptoerr_legacy.h"
        
# 29 "../include/openssl/cryptoerr_legacy.h"
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ASN1_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ASYNC_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_BIO_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_BN_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_BUF_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CMS_strings(void);


__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_COMP_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CONF_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CRYPTO_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CT_strings(void);


__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_DH_strings(void);


__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_DSA_strings(void);


__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_EC_strings(void);


__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ENGINE_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ERR_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_EVP_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_KDF_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_OBJ_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_OCSP_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_PEM_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_PKCS12_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_PKCS7_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_RAND_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_RSA_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_OSSL_STORE_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_TS_strings(void);

__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_UI_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_X509_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_X509V3_strings(void);
# 18 "../include/openssl/cryptoerr.h" 2
# 39 "include/openssl/crypto.h" 2
# 1 "../include/openssl/core.h" 1
# 12 "../include/openssl/core.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 160 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4

# 160 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef long int ptrdiff_t;
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
# 16 "../include/openssl/core.h" 2
# 30 "../include/openssl/core.h"

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
# 40 "include/openssl/crypto.h" 2
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


__attribute__((deprecated("Since OpenSSL " "3.0"))) void OPENSSL_fork_prepare(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void OPENSSL_fork_parent(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void OPENSSL_fork_child(void);



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
# 11 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../include/openssl/core_dispatch.h" 1
# 12 "../include/openssl/core_dispatch.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 1 3 4
# 15 "../include/openssl/core_dispatch.h" 2
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
# 12 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../include/openssl/evp.h" 1
# 12 "../include/openssl/evp.h"
        
# 26 "../include/openssl/evp.h"
# 1 "../include/openssl/types.h" 1
# 27 "../include/openssl/evp.h" 2



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
__attribute__((deprecated("Since OpenSSL " "3.0"))) BIO_callback_fn BIO_get_callback(const BIO *b);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void BIO_set_callback(BIO *b, BIO_callback_fn callback);
__attribute__((deprecated("Since OpenSSL " "3.0"))) long BIO_debug_callback(BIO *bio, int cmd,
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

__attribute__((deprecated("Since OpenSSL " "1.1.0"))) struct hostent *BIO_gethostbyname(const char *name);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_get_port(const char *str, unsigned short *port_ptr);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_get_host_ip(const char *str, unsigned char *ip);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_get_accept_socket(char *host_port, int mode);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_accept(int sock, char **ip_port);


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
# 31 "../include/openssl/evp.h" 2
# 1 "../include/openssl/evperr.h" 1
# 13 "../include/openssl/evperr.h"
        
# 32 "../include/openssl/evp.h" 2
# 1 "../include/openssl/params.h" 1
# 13 "../include/openssl/params.h"
        


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

__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_pseudo_rand(BIGNUM *rnd, int bits, int top, int bottom);
__attribute__((deprecated("Since OpenSSL " "3.0")))
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



__attribute__((deprecated("Since OpenSSL " "0.9.8")))
BIGNUM *BN_generate_prime(BIGNUM *ret, int bits, int safe,
                          const BIGNUM *add, const BIGNUM *rem,
                          void (*callback) (int, int, void *),
                          void *cb_arg);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
int BN_is_prime(const BIGNUM *p, int nchecks,
                void (*callback) (int, int, void *),
                BN_CTX *ctx, void *cb_arg);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
int BN_is_prime_fasttest(const BIGNUM *p, int nchecks,
                         void (*callback) (int, int, void *),
                         BN_CTX *ctx, void *cb_arg,
                         int do_trial_division);


__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_is_prime_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx, BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_is_prime_fasttest_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx,
                            int do_trial_division, BN_GENCB *cb);


int BN_generate_prime_ex2(BIGNUM *ret, int bits, int safe,
                          const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb,
                          BN_CTX *ctx);
int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe, const BIGNUM *add,
                         const BIGNUM *rem, BN_GENCB *cb);
int BN_check_prime(const BIGNUM *p, BN_CTX *ctx, BN_GENCB *cb);


__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_X931_generate_Xpq(BIGNUM *Xp, BIGNUM *Xq, int nbits, BN_CTX *ctx);

__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_X931_derive_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
                            const BIGNUM *Xp, const BIGNUM *Xp1,
                            const BIGNUM *Xp2, const BIGNUM *e, BN_CTX *ctx,
                            BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
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

__attribute__((deprecated("Since OpenSSL " "0.9.8")))
void BN_set_params(int mul, int high, int low, int mont);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
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
# 17 "../include/openssl/params.h" 2
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
# 33 "../include/openssl/evp.h" 2
# 44 "../include/openssl/evp.h"
# 1 "../include/openssl/objects.h" 1
# 12 "../include/openssl/objects.h"
        






# 1 "../include/openssl/obj_mac.h" 1
# 14 "../include/openssl/obj_mac.h"
        
# 20 "../include/openssl/objects.h" 2

# 1 "include/openssl/asn1.h" 1
# 17 "include/openssl/asn1.h"
        
# 32 "include/openssl/asn1.h"
# 1 "../include/openssl/asn1err.h" 1
# 13 "../include/openssl/asn1err.h"
        
# 33 "include/openssl/asn1.h" 2


# 1 "../include/openssl/types.h" 1
# 36 "include/openssl/asn1.h" 2
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

__attribute__((deprecated("Since OpenSSL " "3.0"))) void ASN1_STRING_length_set(ASN1_STRING *x, int n);

int ASN1_STRING_type(const ASN1_STRING *x);

__attribute__((deprecated("Since OpenSSL " "1.1.0"))) unsigned char *ASN1_STRING_data(ASN1_STRING *x);

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
# 22 "../include/openssl/objects.h" 2
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
__attribute__((deprecated("Since OpenSSL " "3.0"))) EVP_MD *EVP_MD_meth_new(int md_type, int pkey_type);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EVP_MD *EVP_MD_meth_dup(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_MD_meth_free(EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_input_blocksize(EVP_MD *md, int blocksize);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_result_size(EVP_MD *md, int resultsize);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_app_datasize(EVP_MD *md, int datasize);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_flags(EVP_MD *md, unsigned long flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_init(EVP_MD *md, int (*init)(EVP_MD_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_update(EVP_MD *md, int (*update)(EVP_MD_CTX *ctx,
                                                     const void *data,
                                                     size_t count));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_final(EVP_MD *md, int (*final)(EVP_MD_CTX *ctx,
                                                   unsigned char *md));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_copy(EVP_MD *md, int (*copy)(EVP_MD_CTX *to,
                                                 const EVP_MD_CTX *from));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_cleanup(EVP_MD *md, int (*cleanup)(EVP_MD_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_ctrl(EVP_MD *md, int (*ctrl)(EVP_MD_CTX *ctx, int cmd,
                                                 int p1, void *p2));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_MD_meth_get_input_blocksize(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_MD_meth_get_result_size(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_MD_meth_get_app_datasize(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) unsigned long EVP_MD_meth_get_flags(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_init(const EVP_MD *md))(EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_update(const EVP_MD *md))(EVP_MD_CTX *ctx,
                                                const void *data, size_t count);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_final(const EVP_MD *md))(EVP_MD_CTX *ctx,
                                               unsigned char *md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_copy(const EVP_MD *md))(EVP_MD_CTX *to,
                                              const EVP_MD_CTX *from);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_cleanup(const EVP_MD *md))(EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_ctrl(const EVP_MD *md))(EVP_MD_CTX *ctx, int cmd,
                                              int p1, void *p2);
# 235 "../include/openssl/evp.h"
__attribute__((deprecated("Since OpenSSL " "3.0")))
EVP_CIPHER *EVP_CIPHER_meth_new(int cipher_type, int block_size, int key_len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
EVP_CIPHER *EVP_CIPHER_meth_dup(const EVP_CIPHER *cipher);
__attribute__((deprecated("Since OpenSSL " "3.0")))
void EVP_CIPHER_meth_free(EVP_CIPHER *cipher);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_iv_length(EVP_CIPHER *cipher, int iv_len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_flags(EVP_CIPHER *cipher, unsigned long flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_impl_ctx_size(EVP_CIPHER *cipher, int ctx_size);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_init(EVP_CIPHER *cipher,
                             int (*init) (EVP_CIPHER_CTX *ctx,
                                          const unsigned char *key,
                                          const unsigned char *iv,
                                          int enc));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_do_cipher(EVP_CIPHER *cipher,
                                  int (*do_cipher) (EVP_CIPHER_CTX *ctx,
                                                    unsigned char *out,
                                                    const unsigned char *in,
                                                    size_t inl));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_cleanup(EVP_CIPHER *cipher,
                                int (*cleanup) (EVP_CIPHER_CTX *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_set_asn1_params(EVP_CIPHER *cipher,
                                        int (*set_asn1_parameters) (EVP_CIPHER_CTX *,
                                                                    ASN1_TYPE *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_get_asn1_params(EVP_CIPHER *cipher,
                                        int (*get_asn1_parameters) (EVP_CIPHER_CTX *,
                                                                    ASN1_TYPE *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_ctrl(EVP_CIPHER *cipher,
                             int (*ctrl) (EVP_CIPHER_CTX *, int type,
                                          int arg, void *ptr));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int
(*EVP_CIPHER_meth_get_init(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *ctx,
                                                      const unsigned char *key,
                                                      const unsigned char *iv,
                                                      int enc);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int
(*EVP_CIPHER_meth_get_do_cipher(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *ctx,
                                                           unsigned char *out,
                                                           const unsigned char *in,
                                                           size_t inl);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int
(*EVP_CIPHER_meth_get_cleanup(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int
(*EVP_CIPHER_meth_get_set_asn1_params(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *,
                                                                 ASN1_TYPE *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int
(*EVP_CIPHER_meth_get_get_asn1_params(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *,
                                                                 ASN1_TYPE *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int
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

__attribute__((deprecated("Since OpenSSL " "3.0")))
const EVP_MD *EVP_MD_CTX_md(const EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_CTX_update_fn(EVP_MD_CTX *ctx))(EVP_MD_CTX *ctx,
                                             const void *data, size_t count);
__attribute__((deprecated("Since OpenSSL " "3.0")))
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


__attribute__((deprecated("Since OpenSSL " "3.0")))
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
__attribute__((deprecated("Since OpenSSL " "3.0"))) const unsigned char *EVP_CIPHER_CTX_iv(const EVP_CIPHER_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const unsigned char *EVP_CIPHER_CTX_original_iv(const EVP_CIPHER_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) unsigned char *EVP_CIPHER_CTX_iv_noconst(EVP_CIPHER_CTX *ctx);

int EVP_CIPHER_CTX_get_updated_iv(EVP_CIPHER_CTX *ctx, void *buf, size_t len);
int EVP_CIPHER_CTX_get_original_iv(EVP_CIPHER_CTX *ctx, void *buf, size_t len);

__attribute__((deprecated("Since OpenSSL " "3.0")))
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







__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_decrypt_old(unsigned char *dec_key,
                                          const unsigned char *enc_key,
                                          int enc_key_len,
                                          EVP_PKEY *private_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_encrypt_old(unsigned char *enc_key,
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


__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_engine(EVP_PKEY *pkey, ENGINE *e);
__attribute__((deprecated("Since OpenSSL " "3.0")))
ENGINE *EVP_PKEY_get0_engine(const EVP_PKEY *pkey);

__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_assign(EVP_PKEY *pkey, int type, void *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
void *EVP_PKEY_get0(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const unsigned char *EVP_PKEY_get0_hmac(const EVP_PKEY *pkey, size_t *len);

__attribute__((deprecated("Since OpenSSL " "3.0")))
const unsigned char *EVP_PKEY_get0_poly1305(const EVP_PKEY *pkey, size_t *len);


__attribute__((deprecated("Since OpenSSL " "3.0")))
const unsigned char *EVP_PKEY_get0_siphash(const EVP_PKEY *pkey, size_t *len);


struct rsa_st;
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_RSA(EVP_PKEY *pkey, struct rsa_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const struct rsa_st *EVP_PKEY_get0_RSA(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
struct rsa_st *EVP_PKEY_get1_RSA(EVP_PKEY *pkey);


struct dsa_st;
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_DSA(EVP_PKEY *pkey, struct dsa_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const struct dsa_st *EVP_PKEY_get0_DSA(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
struct dsa_st *EVP_PKEY_get1_DSA(EVP_PKEY *pkey);



struct dh_st;
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_set1_DH(EVP_PKEY *pkey, struct dh_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const struct dh_st *EVP_PKEY_get0_DH(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) struct dh_st *EVP_PKEY_get1_DH(EVP_PKEY *pkey);



struct ec_key_st;
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_EC_KEY(EVP_PKEY *pkey, struct ec_key_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const struct ec_key_st *EVP_PKEY_get0_EC_KEY(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
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


__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b);
__attribute__((deprecated("Since OpenSSL " "3.0")))
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
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EVP_PKEY_METHOD *EVP_PKEY_meth_find(int type);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EVP_PKEY_METHOD *EVP_PKEY_meth_new(int id, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get0_info(int *ppkey_id, int *pflags,
                                              const EVP_PKEY_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_copy(EVP_PKEY_METHOD *dst,
                                         const EVP_PKEY_METHOD *src);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_free(EVP_PKEY_METHOD *pmeth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_meth_add0(const EVP_PKEY_METHOD *pmeth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_meth_remove(const EVP_PKEY_METHOD *pmeth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) size_t EVP_PKEY_meth_get_count(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EVP_PKEY_METHOD *EVP_PKEY_meth_get0(size_t idx);


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


__attribute__((deprecated("Since OpenSSL " "3.0")))
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

__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_init(EVP_PKEY_METHOD *pmeth,
                                             int (*init) (EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_copy
    (EVP_PKEY_METHOD *pmeth, int (*copy) (EVP_PKEY_CTX *dst,
                                          const EVP_PKEY_CTX *src));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_cleanup
    (EVP_PKEY_METHOD *pmeth, void (*cleanup) (EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_paramgen
    (EVP_PKEY_METHOD *pmeth, int (*paramgen_init) (EVP_PKEY_CTX *ctx),
     int (*paramgen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_keygen
    (EVP_PKEY_METHOD *pmeth, int (*keygen_init) (EVP_PKEY_CTX *ctx),
     int (*keygen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_sign
    (EVP_PKEY_METHOD *pmeth, int (*sign_init) (EVP_PKEY_CTX *ctx),
     int (*sign) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                  const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_verify
    (EVP_PKEY_METHOD *pmeth, int (*verify_init) (EVP_PKEY_CTX *ctx),
     int (*verify) (EVP_PKEY_CTX *ctx, const unsigned char *sig, size_t siglen,
                    const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_verify_recover
    (EVP_PKEY_METHOD *pmeth, int (*verify_recover_init) (EVP_PKEY_CTX *ctx),
     int (*verify_recover) (EVP_PKEY_CTX *ctx, unsigned char *sig,
                            size_t *siglen, const unsigned char *tbs,
                            size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_signctx
    (EVP_PKEY_METHOD *pmeth, int (*signctx_init) (EVP_PKEY_CTX *ctx,
                                                  EVP_MD_CTX *mctx),
     int (*signctx) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                     EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_verifyctx
    (EVP_PKEY_METHOD *pmeth, int (*verifyctx_init) (EVP_PKEY_CTX *ctx,
                                                    EVP_MD_CTX *mctx),
     int (*verifyctx) (EVP_PKEY_CTX *ctx, const unsigned char *sig, int siglen,
                       EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_encrypt
    (EVP_PKEY_METHOD *pmeth, int (*encrypt_init) (EVP_PKEY_CTX *ctx),
     int (*encryptfn) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                       const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_decrypt
    (EVP_PKEY_METHOD *pmeth, int (*decrypt_init) (EVP_PKEY_CTX *ctx),
     int (*decrypt) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                     const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_derive
    (EVP_PKEY_METHOD *pmeth, int (*derive_init) (EVP_PKEY_CTX *ctx),
     int (*derive) (EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_ctrl
    (EVP_PKEY_METHOD *pmeth, int (*ctrl) (EVP_PKEY_CTX *ctx, int type, int p1,
                                          void *p2),
     int (*ctrl_str) (EVP_PKEY_CTX *ctx, const char *type, const char *value));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_digestsign
    (EVP_PKEY_METHOD *pmeth,
     int (*digestsign) (EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
                        const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_digestverify
    (EVP_PKEY_METHOD *pmeth,
     int (*digestverify) (EVP_MD_CTX *ctx, const unsigned char *sig,
                          size_t siglen, const unsigned char *tbs,
                          size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_check
    (EVP_PKEY_METHOD *pmeth, int (*check) (EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_public_check
    (EVP_PKEY_METHOD *pmeth, int (*check) (EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_param_check
    (EVP_PKEY_METHOD *pmeth, int (*check) (EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_digest_custom
    (EVP_PKEY_METHOD *pmeth, int (*digest_custom) (EVP_PKEY_CTX *ctx,
                                                   EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_init
    (const EVP_PKEY_METHOD *pmeth, int (**pinit) (EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_copy
    (const EVP_PKEY_METHOD *pmeth, int (**pcopy) (EVP_PKEY_CTX *dst,
                                                  const EVP_PKEY_CTX *src));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_cleanup
    (const EVP_PKEY_METHOD *pmeth, void (**pcleanup) (EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_paramgen
    (const EVP_PKEY_METHOD *pmeth, int (**pparamgen_init) (EVP_PKEY_CTX *ctx),
     int (**pparamgen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_keygen
    (const EVP_PKEY_METHOD *pmeth, int (**pkeygen_init) (EVP_PKEY_CTX *ctx),
     int (**pkeygen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_sign
    (const EVP_PKEY_METHOD *pmeth, int (**psign_init) (EVP_PKEY_CTX *ctx),
     int (**psign) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                    const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_verify
    (const EVP_PKEY_METHOD *pmeth, int (**pverify_init) (EVP_PKEY_CTX *ctx),
     int (**pverify) (EVP_PKEY_CTX *ctx, const unsigned char *sig,
                      size_t siglen, const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_verify_recover
    (const EVP_PKEY_METHOD *pmeth,
     int (**pverify_recover_init) (EVP_PKEY_CTX *ctx),
     int (**pverify_recover) (EVP_PKEY_CTX *ctx, unsigned char *sig,
                              size_t *siglen, const unsigned char *tbs,
                              size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_signctx
    (const EVP_PKEY_METHOD *pmeth,
     int (**psignctx_init) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
     int (**psignctx) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                       EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_verifyctx
    (const EVP_PKEY_METHOD *pmeth,
     int (**pverifyctx_init) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
     int (**pverifyctx) (EVP_PKEY_CTX *ctx, const unsigned char *sig,
                          int siglen, EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_encrypt
    (const EVP_PKEY_METHOD *pmeth, int (**pencrypt_init) (EVP_PKEY_CTX *ctx),
     int (**pencryptfn) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                         const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_decrypt
    (const EVP_PKEY_METHOD *pmeth, int (**pdecrypt_init) (EVP_PKEY_CTX *ctx),
     int (**pdecrypt) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                       const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_derive
    (const EVP_PKEY_METHOD *pmeth, int (**pderive_init) (EVP_PKEY_CTX *ctx),
     int (**pderive) (EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_ctrl
    (const EVP_PKEY_METHOD *pmeth,
     int (**pctrl) (EVP_PKEY_CTX *ctx, int type, int p1, void *p2),
     int (**pctrl_str) (EVP_PKEY_CTX *ctx, const char *type,
                        const char *value));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_digestsign
    (const EVP_PKEY_METHOD *pmeth,
     int (**digestsign) (EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
                         const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_digestverify
    (const EVP_PKEY_METHOD *pmeth,
     int (**digestverify) (EVP_MD_CTX *ctx, const unsigned char *sig,
                           size_t siglen, const unsigned char *tbs,
                           size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_check
    (const EVP_PKEY_METHOD *pmeth, int (**pcheck) (EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_public_check
    (const EVP_PKEY_METHOD *pmeth, int (**pcheck) (EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_param_check
    (const EVP_PKEY_METHOD *pmeth, int (**pcheck) (EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_digest_custom
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
# 13 "../crypto/evp/keymgmt_meth.c" 2
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



__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_stats(const OPENSSL_LHASH *lh, FILE *fp);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_stats(const OPENSSL_LHASH *lh, FILE *fp);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_usage_stats(const OPENSSL_LHASH *lh, FILE *fp);



__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_usage_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
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

__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_get_error_line(const char **file, int *line);
__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_get_error_line_data(const char **file, int *line,
                                      const char **data, int *flags);

unsigned long ERR_peek_error(void);
unsigned long ERR_peek_error_line(const char **file, int *line);
unsigned long ERR_peek_error_func(const char **func);
unsigned long ERR_peek_error_data(const char **data, int *flags);
unsigned long ERR_peek_error_all(const char **file, int *line,
                                 const char **func,
                                 const char **data, int *flags);

__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_peek_error_line_data(const char **file, int *line,
                                       const char **data, int *flags);

unsigned long ERR_peek_last_error(void);
unsigned long ERR_peek_last_error_line(const char **file, int *line);
unsigned long ERR_peek_last_error_func(const char **func);
unsigned long ERR_peek_last_error_data(const char **data, int *flags);
unsigned long ERR_peek_last_error_all(const char **file, int *line,
                                      const char **func,
                                      const char **data, int *flags);

__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_peek_last_error_line_data(const char **file, int *line,
                                            const char **data, int *flags);


void ERR_clear_error(void);

char *ERR_error_string(unsigned long e, char *buf);
void ERR_error_string_n(unsigned long e, char *buf, size_t len);
const char *ERR_lib_error_string(unsigned long e);

__attribute__((deprecated("Since OpenSSL " "3.0"))) const char *ERR_func_error_string(unsigned long e);

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







__attribute__((deprecated("Since OpenSSL " "1.1.0"))) void ERR_remove_thread_state(void *);


__attribute__((deprecated("Since OpenSSL " "1.0.0"))) void ERR_remove_state(unsigned long pid);


__attribute__((deprecated("Since OpenSSL " "3.0"))) ERR_STATE *ERR_get_state(void);


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
# 14 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../include/internal/provider.h" 1
# 12 "../include/internal/provider.h"
        



# 1 "../include/internal/dso.h" 1
# 12 "../include/internal/dso.h"
        


# 1 "../include/internal/dsoerr.h" 1
# 13 "../include/internal/dsoerr.h"
        
# 22 "../include/internal/dsoerr.h"
int ossl_err_load_DSO_strings(void);
# 16 "../include/internal/dso.h" 2
# 55 "../include/internal/dso.h"
typedef void (*DSO_FUNC_TYPE) (void);

typedef struct dso_st DSO;
typedef struct dso_meth_st DSO_METHOD;
# 68 "../include/internal/dso.h"
typedef char *(*DSO_NAME_CONVERTER_FUNC)(DSO *, const char *);
# 84 "../include/internal/dso.h"
typedef char *(*DSO_MERGER_FUNC)(DSO *, const char *, const char *);

DSO *DSO_new(void);
int DSO_free(DSO *dso);
int DSO_flags(DSO *dso);
int DSO_up_ref(DSO *dso);
long DSO_ctrl(DSO *dso, int cmd, long larg, void *parg);





const char *DSO_get_filename(DSO *dso);
int DSO_set_filename(DSO *dso, const char *filename);
# 108 "../include/internal/dso.h"
char *DSO_convert_filename(DSO *dso, const char *filename);






char *DSO_merge(DSO *dso, const char *filespec1, const char *filespec2);
# 124 "../include/internal/dso.h"
DSO *DSO_load(DSO *dso, const char *filename, DSO_METHOD *meth, int flags);


DSO_FUNC_TYPE DSO_bind_func(DSO *dso, const char *symname);






DSO_METHOD *DSO_METHOD_openssl(void);
# 145 "../include/internal/dso.h"
int DSO_pathbyaddr(void *addr, char *path, int sz);





DSO *DSO_dsobyaddr(void *addr, int flags);
# 162 "../include/internal/dso.h"
void *DSO_global_lookup(const char *name);
# 17 "../include/internal/provider.h" 2
# 1 "../include/internal/symhacks.h" 1
# 12 "../include/internal/symhacks.h"
        
# 18 "../include/internal/provider.h" 2
# 31 "../include/internal/provider.h"
OSSL_PROVIDER *ossl_provider_find(OSSL_LIB_CTX *libctx, const char *name,
                                  int noconfig);
OSSL_PROVIDER *ossl_provider_new(OSSL_LIB_CTX *libctx, const char *name,
                                 OSSL_provider_init_fn *init_function,
                                 OSSL_PARAM *params, int noconfig);
int ossl_provider_up_ref(OSSL_PROVIDER *prov);
void ossl_provider_free(OSSL_PROVIDER *prov);


int ossl_provider_set_module_path(OSSL_PROVIDER *prov, const char *module_path);
int ossl_provider_add_parameter(OSSL_PROVIDER *prov, const char *name,
                                const char *value);

int ossl_provider_is_child(const OSSL_PROVIDER *prov);
int ossl_provider_set_child(OSSL_PROVIDER *prov, const OSSL_CORE_HANDLE *handle);
const OSSL_CORE_HANDLE *ossl_provider_get_parent(OSSL_PROVIDER *prov);
int ossl_provider_up_ref_parent(OSSL_PROVIDER *prov, int activate);
int ossl_provider_free_parent(OSSL_PROVIDER *prov, int deactivate);
int ossl_provider_default_props_update(OSSL_LIB_CTX *libctx, const char *props);


int ossl_provider_disable_fallback_loading(OSSL_LIB_CTX *libctx);





int ossl_provider_activate(OSSL_PROVIDER *prov, int upcalls, int aschild);
int ossl_provider_deactivate(OSSL_PROVIDER *prov, int removechildren);
int ossl_provider_add_to_store(OSSL_PROVIDER *prov, OSSL_PROVIDER **actualprov,
                               int retain_fallbacks);


void *ossl_provider_ctx(const OSSL_PROVIDER *prov);


int ossl_provider_doall_activated(OSSL_LIB_CTX *,
                                  int (*cb)(OSSL_PROVIDER *provider,
                                            void *cbdata),
                                  void *cbdata);


const char *ossl_provider_name(const OSSL_PROVIDER *prov);
const DSO *ossl_provider_dso(const OSSL_PROVIDER *prov);
const char *ossl_provider_module_name(const OSSL_PROVIDER *prov);
const char *ossl_provider_module_path(const OSSL_PROVIDER *prov);
void *ossl_provider_prov_ctx(const OSSL_PROVIDER *prov);
const OSSL_DISPATCH *ossl_provider_get0_dispatch(const OSSL_PROVIDER *prov);
OSSL_LIB_CTX *ossl_provider_libctx(const OSSL_PROVIDER *prov);


void ossl_provider_teardown(const OSSL_PROVIDER *prov);
const OSSL_PARAM *ossl_provider_gettable_params(const OSSL_PROVIDER *prov);
int ossl_provider_get_params(const OSSL_PROVIDER *prov, OSSL_PARAM params[]);
int ossl_provider_get_capabilities(const OSSL_PROVIDER *prov,
                                   const char *capability,
                                   OSSL_CALLBACK *cb,
                                   void *arg);
int ossl_provider_self_test(const OSSL_PROVIDER *prov);
const OSSL_ALGORITHM *ossl_provider_query_operation(const OSSL_PROVIDER *prov,
                                                    int operation_id,
                                                    int *no_cache);
void ossl_provider_unquery_operation(const OSSL_PROVIDER *prov,
                                     int operation_id,
                                     const OSSL_ALGORITHM *algs);






int ossl_provider_set_operation_bit(OSSL_PROVIDER *provider, size_t bitnum);
int ossl_provider_test_operation_bit(OSSL_PROVIDER *provider, size_t bitnum,
                                     int *result);


void ossl_provider_add_conf_module(void);


int ossl_provider_init_as_child(OSSL_LIB_CTX *ctx,
                                const OSSL_CORE_HANDLE *handle,
                                const OSSL_DISPATCH *in);
void ossl_provider_deinit_child(OSSL_LIB_CTX *ctx);
# 15 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../include/internal/refcount.h" 1
# 11 "../include/internal/refcount.h"
        


# 1 "../include/openssl/trace.h" 1
# 12 "../include/openssl/trace.h"
        
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
# 16 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../include/internal/core.h" 1
# 12 "../include/internal/core.h"
        
# 30 "../include/internal/core.h"
typedef struct ossl_method_construct_method_st {

    void *(*get_tmp_store)(void *data);

    int (*lock_store)(void *store, void *data);

    int (*unlock_store)(void *store, void *data);

    void *(*get)(void *store, const OSSL_PROVIDER **prov, void *data);

    int (*put)(void *store, void *method, const OSSL_PROVIDER *prov,
               const char *name, const char *propdef, void *data);

    void *(*construct)(const OSSL_ALGORITHM *algodef, OSSL_PROVIDER *prov,
                       void *data);

    void (*destruct)(void *method, void *data);
} OSSL_METHOD_CONSTRUCT_METHOD;

void *ossl_method_construct(OSSL_LIB_CTX *ctx, int operation_id,
                            OSSL_PROVIDER **provider_rw, int force_cache,
                            OSSL_METHOD_CONSTRUCT_METHOD *mcm, void *mcm_data);

void ossl_algorithm_do_all(OSSL_LIB_CTX *libctx, int operation_id,
                           OSSL_PROVIDER *provider,
                           int (*pre)(OSSL_PROVIDER *, int operation_id,
                                      int no_store, void *data, int *result),
                           int (*reserve_store)(int no_store, void *data),
                           void (*fn)(OSSL_PROVIDER *provider,
                                      const OSSL_ALGORITHM *algo,
                                      int no_store, void *data),
                           int (*unreserve_store)(void *data),
                           int (*post)(OSSL_PROVIDER *, int operation_id,
                                       int no_store, void *data, int *result),
                           void *data);
char *ossl_algorithm_get1_first_name(const OSSL_ALGORITHM *algo);

 int ossl_lib_ctx_write_lock(OSSL_LIB_CTX *ctx);
 int ossl_lib_ctx_read_lock(OSSL_LIB_CTX *ctx);
int ossl_lib_ctx_unlock(OSSL_LIB_CTX *ctx);
int ossl_lib_ctx_is_child(OSSL_LIB_CTX *ctx);
# 17 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../include/crypto/evp.h" 1
# 12 "../include/crypto/evp.h"
        




# 1 "../include/crypto/ecx.h" 1
# 14 "../include/crypto/ecx.h"
        
# 24 "../include/crypto/ecx.h"
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
# 18 "../include/crypto/evp.h" 2
# 40 "../include/crypto/evp.h"
struct evp_pkey_ctx_st {

    int operation;





    OSSL_LIB_CTX *libctx;
    char *propquery;
    const char *keytype;

    EVP_KEYMGMT *keymgmt;

    union {
        struct {
            void *genctx;
        } keymgmt;

        struct {
            EVP_KEYEXCH *exchange;




            void *algctx;
        } kex;

        struct {
            EVP_SIGNATURE *signature;




            void *algctx;
        } sig;

        struct {
            EVP_ASYM_CIPHER *cipher;




            void *algctx;
        } ciph;
        struct {
            EVP_KEM *kem;




            void *algctx;
        } encap;
    } op;






    struct {

        char *dist_id_name;
        void *dist_id;
        size_t dist_id_len;


        unsigned int dist_id_set : 1;
    } cached_parameters;


    void *app_data;

    EVP_PKEY_gen_cb *pkey_gencb;

    int *keygen_info;
    int keygen_info_count;




    int legacy_keytype;

    const EVP_PKEY_METHOD *pmeth;

    ENGINE *engine;

    EVP_PKEY *pkey;

    EVP_PKEY *peerkey;

    void *data;

    unsigned int flag_call_digest_custom:1;






    BIGNUM *rsa_pubexp;
} ;



struct evp_pkey_method_st {
    int pkey_id;
    int flags;
    int (*init) (EVP_PKEY_CTX *ctx);
    int (*copy) (EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src);
    void (*cleanup) (EVP_PKEY_CTX *ctx);
    int (*paramgen_init) (EVP_PKEY_CTX *ctx);
    int (*paramgen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey);
    int (*keygen_init) (EVP_PKEY_CTX *ctx);
    int (*keygen) (EVP_PKEY_CTX *ctx, EVP_PKEY *pkey);
    int (*sign_init) (EVP_PKEY_CTX *ctx);
    int (*sign) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                 const unsigned char *tbs, size_t tbslen);
    int (*verify_init) (EVP_PKEY_CTX *ctx);
    int (*verify) (EVP_PKEY_CTX *ctx,
                   const unsigned char *sig, size_t siglen,
                   const unsigned char *tbs, size_t tbslen);
    int (*verify_recover_init) (EVP_PKEY_CTX *ctx);
    int (*verify_recover) (EVP_PKEY_CTX *ctx,
                           unsigned char *rout, size_t *routlen,
                           const unsigned char *sig, size_t siglen);
    int (*signctx_init) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx);
    int (*signctx) (EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                    EVP_MD_CTX *mctx);
    int (*verifyctx_init) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx);
    int (*verifyctx) (EVP_PKEY_CTX *ctx, const unsigned char *sig, int siglen,
                      EVP_MD_CTX *mctx);
    int (*encrypt_init) (EVP_PKEY_CTX *ctx);
    int (*encrypt) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                    const unsigned char *in, size_t inlen);
    int (*decrypt_init) (EVP_PKEY_CTX *ctx);
    int (*decrypt) (EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
                    const unsigned char *in, size_t inlen);
    int (*derive_init) (EVP_PKEY_CTX *ctx);
    int (*derive) (EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen);
    int (*ctrl) (EVP_PKEY_CTX *ctx, int type, int p1, void *p2);
    int (*ctrl_str) (EVP_PKEY_CTX *ctx, const char *type, const char *value);
    int (*digestsign) (EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
                       const unsigned char *tbs, size_t tbslen);
    int (*digestverify) (EVP_MD_CTX *ctx, const unsigned char *sig,
                         size_t siglen, const unsigned char *tbs,
                         size_t tbslen);
    int (*check) (EVP_PKEY *pkey);
    int (*public_check) (EVP_PKEY *pkey);
    int (*param_check) (EVP_PKEY *pkey);

    int (*digest_custom) (EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx);
} ;

struct stack_st_EVP_PKEY_METHOD; typedef int (*sk_EVP_PKEY_METHOD_compfunc)(const EVP_PKEY_METHOD * const *a, const EVP_PKEY_METHOD *const *b); typedef void (*sk_EVP_PKEY_METHOD_freefunc)(EVP_PKEY_METHOD *a); typedef EVP_PKEY_METHOD * (*sk_EVP_PKEY_METHOD_copyfunc)(const EVP_PKEY_METHOD *a); static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_num(const struct stack_st_EVP_PKEY_METHOD *sk) { return OPENSSL_sk_num((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline const EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_value(const struct stack_st_EVP_PKEY_METHOD *sk, int idx) { return (const EVP_PKEY_METHOD *)OPENSSL_sk_value((const OPENSSL_STACK *)sk, idx); } static __attribute__((unused)) inline struct stack_st_EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_new(sk_EVP_PKEY_METHOD_compfunc compare) { return (struct stack_st_EVP_PKEY_METHOD *)OPENSSL_sk_new((OPENSSL_sk_compfunc)compare); } static __attribute__((unused)) inline struct stack_st_EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_new_null(void) { return (struct stack_st_EVP_PKEY_METHOD *)OPENSSL_sk_new_null(); } static __attribute__((unused)) inline struct stack_st_EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_new_reserve(sk_EVP_PKEY_METHOD_compfunc compare, int n) { return (struct stack_st_EVP_PKEY_METHOD *)OPENSSL_sk_new_reserve((OPENSSL_sk_compfunc)compare, n); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_reserve(struct stack_st_EVP_PKEY_METHOD *sk, int n) { return OPENSSL_sk_reserve((OPENSSL_STACK *)sk, n); } static __attribute__((unused)) inline void sk_EVP_PKEY_METHOD_free(struct stack_st_EVP_PKEY_METHOD *sk) { OPENSSL_sk_free((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_EVP_PKEY_METHOD_zero(struct stack_st_EVP_PKEY_METHOD *sk) { OPENSSL_sk_zero((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline const EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_delete(struct stack_st_EVP_PKEY_METHOD *sk, int i) { return (const EVP_PKEY_METHOD *)OPENSSL_sk_delete((OPENSSL_STACK *)sk, i); } static __attribute__((unused)) inline const EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_delete_ptr(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr) { return (const EVP_PKEY_METHOD *)OPENSSL_sk_delete_ptr((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_push(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr) { return OPENSSL_sk_push((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_unshift(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr) { return OPENSSL_sk_unshift((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline const EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_pop(struct stack_st_EVP_PKEY_METHOD *sk) { return (const EVP_PKEY_METHOD *)OPENSSL_sk_pop((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline const EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_shift(struct stack_st_EVP_PKEY_METHOD *sk) { return (const EVP_PKEY_METHOD *)OPENSSL_sk_shift((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_EVP_PKEY_METHOD_pop_free(struct stack_st_EVP_PKEY_METHOD *sk, sk_EVP_PKEY_METHOD_freefunc freefunc) { OPENSSL_sk_pop_free((OPENSSL_STACK *)sk, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_insert(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr, int idx) { return OPENSSL_sk_insert((OPENSSL_STACK *)sk, (const void *)ptr, idx); } static __attribute__((unused)) inline const EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_set(struct stack_st_EVP_PKEY_METHOD *sk, int idx, const EVP_PKEY_METHOD *ptr) { return (const EVP_PKEY_METHOD *)OPENSSL_sk_set((OPENSSL_STACK *)sk, idx, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_find(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr) { return OPENSSL_sk_find((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_find_ex(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr) { return OPENSSL_sk_find_ex((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_find_all(struct stack_st_EVP_PKEY_METHOD *sk, const EVP_PKEY_METHOD *ptr, int *pnum) { return OPENSSL_sk_find_all((OPENSSL_STACK *)sk, (const void *)ptr, pnum); } static __attribute__((unused)) inline void sk_EVP_PKEY_METHOD_sort(struct stack_st_EVP_PKEY_METHOD *sk) { OPENSSL_sk_sort((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline int sk_EVP_PKEY_METHOD_is_sorted(const struct stack_st_EVP_PKEY_METHOD *sk) { return OPENSSL_sk_is_sorted((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_EVP_PKEY_METHOD * sk_EVP_PKEY_METHOD_dup(const struct stack_st_EVP_PKEY_METHOD *sk) { return (struct stack_st_EVP_PKEY_METHOD *)OPENSSL_sk_dup((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_EVP_PKEY_METHOD *sk_EVP_PKEY_METHOD_deep_copy(const struct stack_st_EVP_PKEY_METHOD *sk, sk_EVP_PKEY_METHOD_copyfunc copyfunc, sk_EVP_PKEY_METHOD_freefunc freefunc) { return (struct stack_st_EVP_PKEY_METHOD *)OPENSSL_sk_deep_copy((const OPENSSL_STACK *)sk, (OPENSSL_sk_copyfunc)copyfunc, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline sk_EVP_PKEY_METHOD_compfunc sk_EVP_PKEY_METHOD_set_cmp_func(struct stack_st_EVP_PKEY_METHOD *sk, sk_EVP_PKEY_METHOD_compfunc compare) { return (sk_EVP_PKEY_METHOD_compfunc)OPENSSL_sk_set_cmp_func((OPENSSL_STACK *)sk, (OPENSSL_sk_compfunc)compare); }

void evp_pkey_set_cb_translate(BN_GENCB *cb, EVP_PKEY_CTX *ctx);

const EVP_PKEY_METHOD *ossl_dh_pkey_method(void);
const EVP_PKEY_METHOD *ossl_dhx_pkey_method(void);
const EVP_PKEY_METHOD *ossl_dsa_pkey_method(void);
const EVP_PKEY_METHOD *ossl_ec_pkey_method(void);
const EVP_PKEY_METHOD *ossl_ecx25519_pkey_method(void);
const EVP_PKEY_METHOD *ossl_ecx448_pkey_method(void);
const EVP_PKEY_METHOD *ossl_ed25519_pkey_method(void);
const EVP_PKEY_METHOD *ossl_ed448_pkey_method(void);
const EVP_PKEY_METHOD *ossl_rsa_pkey_method(void);
const EVP_PKEY_METHOD *ossl_rsa_pss_pkey_method(void);

struct evp_mac_st {
    OSSL_PROVIDER *prov;
    int name_id;
    char *type_name;
    const char *description;

    CRYPTO_REF_COUNT refcnt;

    OSSL_FUNC_mac_newctx_fn *newctx;
    OSSL_FUNC_mac_dupctx_fn *dupctx;
    OSSL_FUNC_mac_freectx_fn *freectx;
    OSSL_FUNC_mac_init_fn *init;
    OSSL_FUNC_mac_update_fn *update;
    OSSL_FUNC_mac_final_fn *final;
    OSSL_FUNC_mac_gettable_params_fn *gettable_params;
    OSSL_FUNC_mac_gettable_ctx_params_fn *gettable_ctx_params;
    OSSL_FUNC_mac_settable_ctx_params_fn *settable_ctx_params;
    OSSL_FUNC_mac_get_params_fn *get_params;
    OSSL_FUNC_mac_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_mac_set_ctx_params_fn *set_ctx_params;
};

struct evp_kdf_st {
    OSSL_PROVIDER *prov;
    int name_id;
    char *type_name;
    const char *description;
    CRYPTO_REF_COUNT refcnt;

    OSSL_FUNC_kdf_newctx_fn *newctx;
    OSSL_FUNC_kdf_dupctx_fn *dupctx;
    OSSL_FUNC_kdf_freectx_fn *freectx;
    OSSL_FUNC_kdf_reset_fn *reset;
    OSSL_FUNC_kdf_derive_fn *derive;
    OSSL_FUNC_kdf_gettable_params_fn *gettable_params;
    OSSL_FUNC_kdf_gettable_ctx_params_fn *gettable_ctx_params;
    OSSL_FUNC_kdf_settable_ctx_params_fn *settable_ctx_params;
    OSSL_FUNC_kdf_get_params_fn *get_params;
    OSSL_FUNC_kdf_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_kdf_set_ctx_params_fn *set_ctx_params;
};





struct evp_md_st {

    int type;


    int pkey_type;
    int md_size;
    unsigned long flags;
    int origin;
    int (*init) (EVP_MD_CTX *ctx);
    int (*update) (EVP_MD_CTX *ctx, const void *data, size_t count);
    int (*final) (EVP_MD_CTX *ctx, unsigned char *md);
    int (*copy) (EVP_MD_CTX *to, const EVP_MD_CTX *from);
    int (*cleanup) (EVP_MD_CTX *ctx);
    int block_size;
    int ctx_size;

    int (*md_ctrl) (EVP_MD_CTX *ctx, int cmd, int p1, void *p2);



    int name_id;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;
    OSSL_FUNC_digest_newctx_fn *newctx;
    OSSL_FUNC_digest_init_fn *dinit;
    OSSL_FUNC_digest_update_fn *dupdate;
    OSSL_FUNC_digest_final_fn *dfinal;
    OSSL_FUNC_digest_squeeze_fn *dsqueeze;
    OSSL_FUNC_digest_digest_fn *digest;
    OSSL_FUNC_digest_freectx_fn *freectx;
    OSSL_FUNC_digest_dupctx_fn *dupctx;
    OSSL_FUNC_digest_get_params_fn *get_params;
    OSSL_FUNC_digest_set_ctx_params_fn *set_ctx_params;
    OSSL_FUNC_digest_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_digest_gettable_params_fn *gettable_params;
    OSSL_FUNC_digest_settable_ctx_params_fn *settable_ctx_params;
    OSSL_FUNC_digest_gettable_ctx_params_fn *gettable_ctx_params;

} ;

struct evp_cipher_st {
    int nid;

    int block_size;

    int key_len;
    int iv_len;



    unsigned long flags;

    int origin;

    int (*init) (EVP_CIPHER_CTX *ctx, const unsigned char *key,
                 const unsigned char *iv, int enc);

    int (*do_cipher) (EVP_CIPHER_CTX *ctx, unsigned char *out,
                      const unsigned char *in, size_t inl);

    int (*cleanup) (EVP_CIPHER_CTX *);

    int ctx_size;

    int (*set_asn1_parameters) (EVP_CIPHER_CTX *, ASN1_TYPE *);

    int (*get_asn1_parameters) (EVP_CIPHER_CTX *, ASN1_TYPE *);

    int (*ctrl) (EVP_CIPHER_CTX *, int type, int arg, void *ptr);

    void *app_data;



    int name_id;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;
    OSSL_FUNC_cipher_newctx_fn *newctx;
    OSSL_FUNC_cipher_encrypt_init_fn *einit;
    OSSL_FUNC_cipher_decrypt_init_fn *dinit;
    OSSL_FUNC_cipher_update_fn *cupdate;
    OSSL_FUNC_cipher_final_fn *cfinal;
    OSSL_FUNC_cipher_cipher_fn *ccipher;
    OSSL_FUNC_cipher_freectx_fn *freectx;
    OSSL_FUNC_cipher_dupctx_fn *dupctx;
    OSSL_FUNC_cipher_get_params_fn *get_params;
    OSSL_FUNC_cipher_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_cipher_set_ctx_params_fn *set_ctx_params;
    OSSL_FUNC_cipher_gettable_params_fn *gettable_params;
    OSSL_FUNC_cipher_gettable_ctx_params_fn *gettable_ctx_params;
    OSSL_FUNC_cipher_settable_ctx_params_fn *settable_ctx_params;
} ;
# 574 "../include/crypto/evp.h"
typedef struct {
    unsigned char iv[16];
    unsigned int iv_len;
    unsigned int tag_len;
} evp_cipher_aead_asn1_params;

int evp_cipher_param_to_asn1_ex(EVP_CIPHER_CTX *c, ASN1_TYPE *type,
                                evp_cipher_aead_asn1_params *params);

int evp_cipher_asn1_to_param_ex(EVP_CIPHER_CTX *c, ASN1_TYPE *type,
                                evp_cipher_aead_asn1_params *params);
# 596 "../include/crypto/evp.h"
typedef struct {
    EVP_KEYMGMT *keymgmt;
    void *keydata;
    int selection;
} OP_CACHE_ELEM;

struct stack_st_OP_CACHE_ELEM; typedef int (*sk_OP_CACHE_ELEM_compfunc)(const OP_CACHE_ELEM * const *a, const OP_CACHE_ELEM *const *b); typedef void (*sk_OP_CACHE_ELEM_freefunc)(OP_CACHE_ELEM *a); typedef OP_CACHE_ELEM * (*sk_OP_CACHE_ELEM_copyfunc)(const OP_CACHE_ELEM *a); static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_num(const struct stack_st_OP_CACHE_ELEM *sk) { return OPENSSL_sk_num((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline OP_CACHE_ELEM *sk_OP_CACHE_ELEM_value(const struct stack_st_OP_CACHE_ELEM *sk, int idx) { return (OP_CACHE_ELEM *)OPENSSL_sk_value((const OPENSSL_STACK *)sk, idx); } static __attribute__((unused)) inline struct stack_st_OP_CACHE_ELEM *sk_OP_CACHE_ELEM_new(sk_OP_CACHE_ELEM_compfunc compare) { return (struct stack_st_OP_CACHE_ELEM *)OPENSSL_sk_new((OPENSSL_sk_compfunc)compare); } static __attribute__((unused)) inline struct stack_st_OP_CACHE_ELEM *sk_OP_CACHE_ELEM_new_null(void) { return (struct stack_st_OP_CACHE_ELEM *)OPENSSL_sk_new_null(); } static __attribute__((unused)) inline struct stack_st_OP_CACHE_ELEM *sk_OP_CACHE_ELEM_new_reserve(sk_OP_CACHE_ELEM_compfunc compare, int n) { return (struct stack_st_OP_CACHE_ELEM *)OPENSSL_sk_new_reserve((OPENSSL_sk_compfunc)compare, n); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_reserve(struct stack_st_OP_CACHE_ELEM *sk, int n) { return OPENSSL_sk_reserve((OPENSSL_STACK *)sk, n); } static __attribute__((unused)) inline void sk_OP_CACHE_ELEM_free(struct stack_st_OP_CACHE_ELEM *sk) { OPENSSL_sk_free((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_OP_CACHE_ELEM_zero(struct stack_st_OP_CACHE_ELEM *sk) { OPENSSL_sk_zero((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline OP_CACHE_ELEM *sk_OP_CACHE_ELEM_delete(struct stack_st_OP_CACHE_ELEM *sk, int i) { return (OP_CACHE_ELEM *)OPENSSL_sk_delete((OPENSSL_STACK *)sk, i); } static __attribute__((unused)) inline OP_CACHE_ELEM *sk_OP_CACHE_ELEM_delete_ptr(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr) { return (OP_CACHE_ELEM *)OPENSSL_sk_delete_ptr((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_push(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr) { return OPENSSL_sk_push((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_unshift(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr) { return OPENSSL_sk_unshift((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline OP_CACHE_ELEM *sk_OP_CACHE_ELEM_pop(struct stack_st_OP_CACHE_ELEM *sk) { return (OP_CACHE_ELEM *)OPENSSL_sk_pop((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline OP_CACHE_ELEM *sk_OP_CACHE_ELEM_shift(struct stack_st_OP_CACHE_ELEM *sk) { return (OP_CACHE_ELEM *)OPENSSL_sk_shift((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_OP_CACHE_ELEM_pop_free(struct stack_st_OP_CACHE_ELEM *sk, sk_OP_CACHE_ELEM_freefunc freefunc) { OPENSSL_sk_pop_free((OPENSSL_STACK *)sk, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_insert(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr, int idx) { return OPENSSL_sk_insert((OPENSSL_STACK *)sk, (const void *)ptr, idx); } static __attribute__((unused)) inline OP_CACHE_ELEM *sk_OP_CACHE_ELEM_set(struct stack_st_OP_CACHE_ELEM *sk, int idx, OP_CACHE_ELEM *ptr) { return (OP_CACHE_ELEM *)OPENSSL_sk_set((OPENSSL_STACK *)sk, idx, (const void *)ptr); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_find(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr) { return OPENSSL_sk_find((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_find_ex(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr) { return OPENSSL_sk_find_ex((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_find_all(struct stack_st_OP_CACHE_ELEM *sk, OP_CACHE_ELEM *ptr, int *pnum) { return OPENSSL_sk_find_all((OPENSSL_STACK *)sk, (const void *)ptr, pnum); } static __attribute__((unused)) inline void sk_OP_CACHE_ELEM_sort(struct stack_st_OP_CACHE_ELEM *sk) { OPENSSL_sk_sort((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline int sk_OP_CACHE_ELEM_is_sorted(const struct stack_st_OP_CACHE_ELEM *sk) { return OPENSSL_sk_is_sorted((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_OP_CACHE_ELEM * sk_OP_CACHE_ELEM_dup(const struct stack_st_OP_CACHE_ELEM *sk) { return (struct stack_st_OP_CACHE_ELEM *)OPENSSL_sk_dup((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_OP_CACHE_ELEM *sk_OP_CACHE_ELEM_deep_copy(const struct stack_st_OP_CACHE_ELEM *sk, sk_OP_CACHE_ELEM_copyfunc copyfunc, sk_OP_CACHE_ELEM_freefunc freefunc) { return (struct stack_st_OP_CACHE_ELEM *)OPENSSL_sk_deep_copy((const OPENSSL_STACK *)sk, (OPENSSL_sk_copyfunc)copyfunc, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline sk_OP_CACHE_ELEM_compfunc sk_OP_CACHE_ELEM_set_cmp_func(struct stack_st_OP_CACHE_ELEM *sk, sk_OP_CACHE_ELEM_compfunc compare) { return (sk_OP_CACHE_ELEM_compfunc)OPENSSL_sk_set_cmp_func((OPENSSL_STACK *)sk, (OPENSSL_sk_compfunc)compare); }
# 645 "../include/crypto/evp.h"
union legacy_pkey_st {
    void *ptr;
    struct rsa_st *rsa;

    struct dsa_st *dsa;


    struct dh_st *dh;


    struct ec_key_st *ec;

    ECX_KEY *ecx;


};

struct evp_pkey_st {

    int type;
    int save_type;






    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE *engine;
    ENGINE *pmeth_engine;


    union legacy_pkey_st pkey;


    union legacy_pkey_st legacy_cache_pkey;



    CRYPTO_REF_COUNT references;
    CRYPTO_RWLOCK *lock;

    struct stack_st_X509_ATTRIBUTE *attributes;
    int save_parameters;
    unsigned int foreign:1;
    CRYPTO_EX_DATA ex_data;
# 700 "../include/crypto/evp.h"
    EVP_KEYMGMT *keymgmt;
    void *keydata;




    size_t dirty_cnt;
# 715 "../include/crypto/evp.h"
    struct stack_st_OP_CACHE_ELEM *operation_cache;





    size_t dirty_cnt_copy;


    struct {
        int bits;
        int security_bits;
        int size;
    } cache;
} ;
# 756 "../include/crypto/evp.h"
void openssl_add_all_ciphers_int(void);
void openssl_add_all_digests_int(void);
void evp_cleanup_int(void);
void evp_app_cleanup_int(void);
void *evp_pkey_export_to_provider(EVP_PKEY *pk, OSSL_LIB_CTX *libctx,
                                  EVP_KEYMGMT **keymgmt,
                                  const char *propquery);

int evp_pkey_copy_downgraded(EVP_PKEY **dest, const EVP_PKEY *src);
void *evp_pkey_get_legacy(EVP_PKEY *pk);
void evp_pkey_free_legacy(EVP_PKEY *x);
EVP_PKEY *evp_pkcs82pkey_legacy(const PKCS8_PRIV_KEY_INFO *p8inf,
                                OSSL_LIB_CTX *libctx, const char *propq);
# 778 "../include/crypto/evp.h"
struct evp_keymgmt_util_try_import_data_st {
    EVP_KEYMGMT *keymgmt;
    void *keydata;

    int selection;
};
int evp_keymgmt_util_try_import(const OSSL_PARAM params[], void *arg);
int evp_keymgmt_util_assign_pkey(EVP_PKEY *pkey, EVP_KEYMGMT *keymgmt,
                                 void *keydata);
EVP_PKEY *evp_keymgmt_util_make_pkey(EVP_KEYMGMT *keymgmt, void *keydata);

int evp_keymgmt_util_export(const EVP_PKEY *pk, int selection,
                            OSSL_CALLBACK *export_cb, void *export_cbarg);
void *evp_keymgmt_util_export_to_provider(EVP_PKEY *pk, EVP_KEYMGMT *keymgmt,
                                          int selection);
OP_CACHE_ELEM *evp_keymgmt_util_find_operation_cache(EVP_PKEY *pk,
                                                     EVP_KEYMGMT *keymgmt,
                                                     int selection);
int evp_keymgmt_util_clear_operation_cache(EVP_PKEY *pk);
int evp_keymgmt_util_cache_keydata(EVP_PKEY *pk, EVP_KEYMGMT *keymgmt,
                                   void *keydata, int selection);
void evp_keymgmt_util_cache_keyinfo(EVP_PKEY *pk);
void *evp_keymgmt_util_fromdata(EVP_PKEY *target, EVP_KEYMGMT *keymgmt,
                                int selection, const OSSL_PARAM params[]);
int evp_keymgmt_util_has(EVP_PKEY *pk, int selection);
int evp_keymgmt_util_match(EVP_PKEY *pk1, EVP_PKEY *pk2, int selection);
int evp_keymgmt_util_copy(EVP_PKEY *to, EVP_PKEY *from, int selection);
void *evp_keymgmt_util_gen(EVP_PKEY *target, EVP_KEYMGMT *keymgmt,
                           void *genctx, OSSL_CALLBACK *cb, void *cbarg);
int evp_keymgmt_util_get_deflt_digest_name(EVP_KEYMGMT *keymgmt,
                                           void *keydata,
                                           char *mdname, size_t mdname_sz);
const char *evp_keymgmt_util_query_operation_name(EVP_KEYMGMT *keymgmt,
                                                  int op_id);




void *evp_keymgmt_newdata(const EVP_KEYMGMT *keymgmt);
void evp_keymgmt_freedata(const EVP_KEYMGMT *keymgmt, void *keyddata);
int evp_keymgmt_get_params(const EVP_KEYMGMT *keymgmt,
                           void *keydata, OSSL_PARAM params[]);
int evp_keymgmt_set_params(const EVP_KEYMGMT *keymgmt,
                           void *keydata, const OSSL_PARAM params[]);
void *evp_keymgmt_gen_init(const EVP_KEYMGMT *keymgmt, int selection,
                           const OSSL_PARAM params[]);
int evp_keymgmt_gen_set_template(const EVP_KEYMGMT *keymgmt, void *genctx,
                                 void *templ);
int evp_keymgmt_gen_set_params(const EVP_KEYMGMT *keymgmt, void *genctx,
                               const OSSL_PARAM params[]);
void *evp_keymgmt_gen(const EVP_KEYMGMT *keymgmt, void *genctx,
                      OSSL_CALLBACK *cb, void *cbarg);
void evp_keymgmt_gen_cleanup(const EVP_KEYMGMT *keymgmt, void *genctx);

int evp_keymgmt_has_load(const EVP_KEYMGMT *keymgmt);
void *evp_keymgmt_load(const EVP_KEYMGMT *keymgmt,
                       const void *objref, size_t objref_sz);

int evp_keymgmt_has(const EVP_KEYMGMT *keymgmt, void *keyddata, int selection);
int evp_keymgmt_validate(const EVP_KEYMGMT *keymgmt, void *keydata,
                         int selection, int checktype);
int evp_keymgmt_match(const EVP_KEYMGMT *keymgmt,
                      const void *keydata1, const void *keydata2,
                      int selection);

int evp_keymgmt_import(const EVP_KEYMGMT *keymgmt, void *keydata,
                       int selection, const OSSL_PARAM params[]);
const OSSL_PARAM *evp_keymgmt_import_types(const EVP_KEYMGMT *keymgmt,
                                           int selection);
int evp_keymgmt_export(const EVP_KEYMGMT *keymgmt, void *keydata,
                       int selection, OSSL_CALLBACK *param_cb, void *cbarg);
const OSSL_PARAM *evp_keymgmt_export_types(const EVP_KEYMGMT *keymgmt,
                                           int selection);
void *evp_keymgmt_dup(const EVP_KEYMGMT *keymgmt,
                      const void *keydata_from, int selection);
EVP_KEYMGMT *evp_keymgmt_fetch_from_prov(OSSL_PROVIDER *prov,
                                         const char *name,
                                         const char *properties);
# 864 "../include/crypto/evp.h"
void evp_encode_ctx_set_flags(EVP_ENCODE_CTX *ctx, unsigned int flags);







const EVP_CIPHER *evp_get_cipherbyname_ex(OSSL_LIB_CTX *libctx,
                                          const char *name);
const EVP_MD *evp_get_digestbyname_ex(OSSL_LIB_CTX *libctx,
                                      const char *name);

int ossl_pkcs5_pbkdf2_hmac_ex(const char *pass, int passlen,
                              const unsigned char *salt, int saltlen, int iter,
                              const EVP_MD *digest, int keylen,
                              unsigned char *out,
                              OSSL_LIB_CTX *libctx, const char *propq);
# 896 "../include/crypto/evp.h"
int evp_pkey_ctx_set_params_strict(EVP_PKEY_CTX *ctx, OSSL_PARAM *params);
int evp_pkey_ctx_get_params_strict(EVP_PKEY_CTX *ctx, OSSL_PARAM *params);

EVP_MD_CTX *evp_md_ctx_new_ex(EVP_PKEY *pkey, const ASN1_OCTET_STRING *id,
                              OSSL_LIB_CTX *libctx, const char *propq);
int evp_pkey_name2type(const char *name);
const char *evp_pkey_type2name(int type);

int evp_pkey_ctx_use_cached_data(EVP_PKEY_CTX *ctx);


int evp_method_store_cache_flush(OSSL_LIB_CTX *libctx);
int evp_method_store_remove_all_provided(const OSSL_PROVIDER *prov);

int evp_default_properties_enable_fips_int(OSSL_LIB_CTX *libctx, int enable,
                                           int loadconfig);
int evp_set_default_properties_int(OSSL_LIB_CTX *libctx, const char *propq,
                                   int loadconfig, int mirrored);
char *evp_get_global_properties_str(OSSL_LIB_CTX *libctx, int loadconfig);

void evp_md_ctx_clear_digest(EVP_MD_CTX *ctx, int force, int keep_digest);

int evp_md_ctx_free_algctx(EVP_MD_CTX *ctx);





int evp_pkey_ctx_state(const EVP_PKEY_CTX *ctx);


int evp_pkey_ctx_ctrl_to_param(EVP_PKEY_CTX *ctx,
                               int keytype, int optype,
                               int cmd, int p1, void *p2);
int evp_pkey_ctx_ctrl_str_to_param(EVP_PKEY_CTX *ctx,
                                   const char *name, const char *value);


int evp_pkey_ctx_set_params_to_ctrl(EVP_PKEY_CTX *ctx, const OSSL_PARAM *params);
int evp_pkey_ctx_get_params_to_ctrl(EVP_PKEY_CTX *ctx, OSSL_PARAM *params);


int evp_pkey_get_params_to_ctrl(const EVP_PKEY *pkey, OSSL_PARAM *params);



DH *evp_pkey_get0_DH_int(const EVP_PKEY *pkey);
EC_KEY *evp_pkey_get0_EC_KEY_int(const EVP_PKEY *pkey);
RSA *evp_pkey_get0_RSA_int(const EVP_PKEY *pkey);



int evp_asym_cipher_get_number(const EVP_ASYM_CIPHER *cipher);
int evp_cipher_get_number(const EVP_CIPHER *cipher);
int evp_kdf_get_number(const EVP_KDF *kdf);
int evp_kem_get_number(const EVP_KEM *wrap);
int evp_keyexch_get_number(const EVP_KEYEXCH *keyexch);
int evp_keymgmt_get_number(const EVP_KEYMGMT *keymgmt);
int evp_keymgmt_get_legacy_alg(const EVP_KEYMGMT *keymgmt);
int evp_mac_get_number(const EVP_MAC *mac);
int evp_md_get_number(const EVP_MD *md);
int evp_rand_get_number(const EVP_RAND *rand);
int evp_rand_can_seed(EVP_RAND_CTX *ctx);
size_t evp_rand_get_seed(EVP_RAND_CTX *ctx,
                         unsigned char **buffer,
                         int entropy, size_t min_len, size_t max_len,
                         int prediction_resistance,
                         const unsigned char *adin, size_t adin_len);
void evp_rand_clear_seed(EVP_RAND_CTX *ctx,
                         unsigned char *buffer, size_t b_len);
int evp_signature_get_number(const EVP_SIGNATURE *signature);

int evp_pkey_decrypt_alloc(EVP_PKEY_CTX *ctx, unsigned char **outp,
                           size_t *outlenp, size_t expected_outlen,
                           const unsigned char *in, size_t inlen);
# 18 "../crypto/evp/keymgmt_meth.c" 2
# 1 "../crypto/evp/evp_local.h" 1
# 16 "../crypto/evp/evp_local.h"
struct evp_md_ctx_st {
    const EVP_MD *reqdigest;
    const EVP_MD *digest;
    ENGINE *engine;

    unsigned long flags;
    void *md_data;

    EVP_PKEY_CTX *pctx;

    int (*update) (EVP_MD_CTX *ctx, const void *data, size_t count);





    void *algctx;
    EVP_MD *fetched_digest;
} ;

struct evp_cipher_ctx_st {
    const EVP_CIPHER *cipher;
    ENGINE *engine;

    int encrypt;
    int buf_len;
    unsigned char oiv[16];
    unsigned char iv[16];
    unsigned char buf[32];
    int num;

    void *app_data;
    int key_len;
    int iv_len;
    unsigned long flags;
    void *cipher_data;
    int final_used;
    int block_mask;
    unsigned char final[32];





    void *algctx;
    EVP_CIPHER *fetched_cipher;
} ;

struct evp_mac_ctx_st {
    EVP_MAC *meth;




    void *algctx;
} ;

struct evp_kdf_ctx_st {
    EVP_KDF *meth;




    void *algctx;
} ;

struct evp_rand_ctx_st {
    EVP_RAND *meth;




    void *algctx;
    EVP_RAND_CTX *parent;
    CRYPTO_REF_COUNT refcnt;
    CRYPTO_RWLOCK *refcnt_lock;
} ;

struct evp_keymgmt_st {
    int id;

    int name_id;

    int legacy_alg;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;


    OSSL_FUNC_keymgmt_new_fn *new;
    OSSL_FUNC_keymgmt_free_fn *free;
    OSSL_FUNC_keymgmt_get_params_fn *get_params;
    OSSL_FUNC_keymgmt_gettable_params_fn *gettable_params;
    OSSL_FUNC_keymgmt_set_params_fn *set_params;
    OSSL_FUNC_keymgmt_settable_params_fn *settable_params;


    OSSL_FUNC_keymgmt_gen_init_fn *gen_init;
    OSSL_FUNC_keymgmt_gen_set_template_fn *gen_set_template;
    OSSL_FUNC_keymgmt_gen_set_params_fn *gen_set_params;
    OSSL_FUNC_keymgmt_gen_settable_params_fn *gen_settable_params;
    OSSL_FUNC_keymgmt_gen_fn *gen;
    OSSL_FUNC_keymgmt_gen_cleanup_fn *gen_cleanup;

    OSSL_FUNC_keymgmt_load_fn *load;


    OSSL_FUNC_keymgmt_query_operation_name_fn *query_operation_name;
    OSSL_FUNC_keymgmt_has_fn *has;
    OSSL_FUNC_keymgmt_validate_fn *validate;
    OSSL_FUNC_keymgmt_match_fn *match;


    OSSL_FUNC_keymgmt_import_fn *import;
    OSSL_FUNC_keymgmt_import_types_fn *import_types;
    OSSL_FUNC_keymgmt_import_types_ex_fn *import_types_ex;
    OSSL_FUNC_keymgmt_export_fn *export;
    OSSL_FUNC_keymgmt_export_types_fn *export_types;
    OSSL_FUNC_keymgmt_export_types_ex_fn *export_types_ex;
    OSSL_FUNC_keymgmt_dup_fn *dup;
} ;

struct evp_keyexch_st {
    int name_id;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;

    OSSL_FUNC_keyexch_newctx_fn *newctx;
    OSSL_FUNC_keyexch_init_fn *init;
    OSSL_FUNC_keyexch_set_peer_fn *set_peer;
    OSSL_FUNC_keyexch_derive_fn *derive;
    OSSL_FUNC_keyexch_freectx_fn *freectx;
    OSSL_FUNC_keyexch_dupctx_fn *dupctx;
    OSSL_FUNC_keyexch_set_ctx_params_fn *set_ctx_params;
    OSSL_FUNC_keyexch_settable_ctx_params_fn *settable_ctx_params;
    OSSL_FUNC_keyexch_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_keyexch_gettable_ctx_params_fn *gettable_ctx_params;
} ;

struct evp_signature_st {
    int name_id;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;

    OSSL_FUNC_signature_newctx_fn *newctx;
    OSSL_FUNC_signature_sign_init_fn *sign_init;
    OSSL_FUNC_signature_sign_fn *sign;
    OSSL_FUNC_signature_verify_init_fn *verify_init;
    OSSL_FUNC_signature_verify_fn *verify;
    OSSL_FUNC_signature_verify_recover_init_fn *verify_recover_init;
    OSSL_FUNC_signature_verify_recover_fn *verify_recover;
    OSSL_FUNC_signature_digest_sign_init_fn *digest_sign_init;
    OSSL_FUNC_signature_digest_sign_update_fn *digest_sign_update;
    OSSL_FUNC_signature_digest_sign_final_fn *digest_sign_final;
    OSSL_FUNC_signature_digest_sign_fn *digest_sign;
    OSSL_FUNC_signature_digest_verify_init_fn *digest_verify_init;
    OSSL_FUNC_signature_digest_verify_update_fn *digest_verify_update;
    OSSL_FUNC_signature_digest_verify_final_fn *digest_verify_final;
    OSSL_FUNC_signature_digest_verify_fn *digest_verify;
    OSSL_FUNC_signature_freectx_fn *freectx;
    OSSL_FUNC_signature_dupctx_fn *dupctx;
    OSSL_FUNC_signature_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_signature_gettable_ctx_params_fn *gettable_ctx_params;
    OSSL_FUNC_signature_set_ctx_params_fn *set_ctx_params;
    OSSL_FUNC_signature_settable_ctx_params_fn *settable_ctx_params;
    OSSL_FUNC_signature_get_ctx_md_params_fn *get_ctx_md_params;
    OSSL_FUNC_signature_gettable_ctx_md_params_fn *gettable_ctx_md_params;
    OSSL_FUNC_signature_set_ctx_md_params_fn *set_ctx_md_params;
    OSSL_FUNC_signature_settable_ctx_md_params_fn *settable_ctx_md_params;
} ;

struct evp_asym_cipher_st {
    int name_id;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;

    OSSL_FUNC_asym_cipher_newctx_fn *newctx;
    OSSL_FUNC_asym_cipher_encrypt_init_fn *encrypt_init;
    OSSL_FUNC_asym_cipher_encrypt_fn *encrypt;
    OSSL_FUNC_asym_cipher_decrypt_init_fn *decrypt_init;
    OSSL_FUNC_asym_cipher_decrypt_fn *decrypt;
    OSSL_FUNC_asym_cipher_freectx_fn *freectx;
    OSSL_FUNC_asym_cipher_dupctx_fn *dupctx;
    OSSL_FUNC_asym_cipher_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_asym_cipher_gettable_ctx_params_fn *gettable_ctx_params;
    OSSL_FUNC_asym_cipher_set_ctx_params_fn *set_ctx_params;
    OSSL_FUNC_asym_cipher_settable_ctx_params_fn *settable_ctx_params;
} ;

struct evp_kem_st {
    int name_id;
    char *type_name;
    const char *description;
    OSSL_PROVIDER *prov;
    CRYPTO_REF_COUNT refcnt;

    OSSL_FUNC_kem_newctx_fn *newctx;
    OSSL_FUNC_kem_encapsulate_init_fn *encapsulate_init;
    OSSL_FUNC_kem_encapsulate_fn *encapsulate;
    OSSL_FUNC_kem_decapsulate_init_fn *decapsulate_init;
    OSSL_FUNC_kem_decapsulate_fn *decapsulate;
    OSSL_FUNC_kem_freectx_fn *freectx;
    OSSL_FUNC_kem_dupctx_fn *dupctx;
    OSSL_FUNC_kem_get_ctx_params_fn *get_ctx_params;
    OSSL_FUNC_kem_gettable_ctx_params_fn *gettable_ctx_params;
    OSSL_FUNC_kem_set_ctx_params_fn *set_ctx_params;
    OSSL_FUNC_kem_settable_ctx_params_fn *settable_ctx_params;
    OSSL_FUNC_kem_auth_encapsulate_init_fn *auth_encapsulate_init;
    OSSL_FUNC_kem_auth_decapsulate_init_fn *auth_decapsulate_init;
} ;

int PKCS5_v2_PBKDF2_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass,
                             int passlen, ASN1_TYPE *param,
                             const EVP_CIPHER *c, const EVP_MD *md,
                             int en_de);
int PKCS5_v2_PBKDF2_keyivgen_ex(EVP_CIPHER_CTX *ctx, const char *pass,
                                int passlen, ASN1_TYPE *param,
                                const EVP_CIPHER *c, const EVP_MD *md,
                                int en_de, OSSL_LIB_CTX *libctx, const char *propq);

struct evp_Encode_Ctx_st {

    int num;





    int length;

    unsigned char enc_data[80];

    int line_num;
    unsigned int flags;
};

typedef struct evp_pbe_st EVP_PBE_CTL;
struct stack_st_EVP_PBE_CTL; typedef int (*sk_EVP_PBE_CTL_compfunc)(const EVP_PBE_CTL * const *a, const EVP_PBE_CTL *const *b); typedef void (*sk_EVP_PBE_CTL_freefunc)(EVP_PBE_CTL *a); typedef EVP_PBE_CTL * (*sk_EVP_PBE_CTL_copyfunc)(const EVP_PBE_CTL *a); static __attribute__((unused)) inline int sk_EVP_PBE_CTL_num(const struct stack_st_EVP_PBE_CTL *sk) { return OPENSSL_sk_num((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline EVP_PBE_CTL *sk_EVP_PBE_CTL_value(const struct stack_st_EVP_PBE_CTL *sk, int idx) { return (EVP_PBE_CTL *)OPENSSL_sk_value((const OPENSSL_STACK *)sk, idx); } static __attribute__((unused)) inline struct stack_st_EVP_PBE_CTL *sk_EVP_PBE_CTL_new(sk_EVP_PBE_CTL_compfunc compare) { return (struct stack_st_EVP_PBE_CTL *)OPENSSL_sk_new((OPENSSL_sk_compfunc)compare); } static __attribute__((unused)) inline struct stack_st_EVP_PBE_CTL *sk_EVP_PBE_CTL_new_null(void) { return (struct stack_st_EVP_PBE_CTL *)OPENSSL_sk_new_null(); } static __attribute__((unused)) inline struct stack_st_EVP_PBE_CTL *sk_EVP_PBE_CTL_new_reserve(sk_EVP_PBE_CTL_compfunc compare, int n) { return (struct stack_st_EVP_PBE_CTL *)OPENSSL_sk_new_reserve((OPENSSL_sk_compfunc)compare, n); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_reserve(struct stack_st_EVP_PBE_CTL *sk, int n) { return OPENSSL_sk_reserve((OPENSSL_STACK *)sk, n); } static __attribute__((unused)) inline void sk_EVP_PBE_CTL_free(struct stack_st_EVP_PBE_CTL *sk) { OPENSSL_sk_free((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_EVP_PBE_CTL_zero(struct stack_st_EVP_PBE_CTL *sk) { OPENSSL_sk_zero((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline EVP_PBE_CTL *sk_EVP_PBE_CTL_delete(struct stack_st_EVP_PBE_CTL *sk, int i) { return (EVP_PBE_CTL *)OPENSSL_sk_delete((OPENSSL_STACK *)sk, i); } static __attribute__((unused)) inline EVP_PBE_CTL *sk_EVP_PBE_CTL_delete_ptr(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr) { return (EVP_PBE_CTL *)OPENSSL_sk_delete_ptr((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_push(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr) { return OPENSSL_sk_push((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_unshift(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr) { return OPENSSL_sk_unshift((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline EVP_PBE_CTL *sk_EVP_PBE_CTL_pop(struct stack_st_EVP_PBE_CTL *sk) { return (EVP_PBE_CTL *)OPENSSL_sk_pop((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline EVP_PBE_CTL *sk_EVP_PBE_CTL_shift(struct stack_st_EVP_PBE_CTL *sk) { return (EVP_PBE_CTL *)OPENSSL_sk_shift((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_EVP_PBE_CTL_pop_free(struct stack_st_EVP_PBE_CTL *sk, sk_EVP_PBE_CTL_freefunc freefunc) { OPENSSL_sk_pop_free((OPENSSL_STACK *)sk, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_insert(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr, int idx) { return OPENSSL_sk_insert((OPENSSL_STACK *)sk, (const void *)ptr, idx); } static __attribute__((unused)) inline EVP_PBE_CTL *sk_EVP_PBE_CTL_set(struct stack_st_EVP_PBE_CTL *sk, int idx, EVP_PBE_CTL *ptr) { return (EVP_PBE_CTL *)OPENSSL_sk_set((OPENSSL_STACK *)sk, idx, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_find(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr) { return OPENSSL_sk_find((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_find_ex(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr) { return OPENSSL_sk_find_ex((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_find_all(struct stack_st_EVP_PBE_CTL *sk, EVP_PBE_CTL *ptr, int *pnum) { return OPENSSL_sk_find_all((OPENSSL_STACK *)sk, (const void *)ptr, pnum); } static __attribute__((unused)) inline void sk_EVP_PBE_CTL_sort(struct stack_st_EVP_PBE_CTL *sk) { OPENSSL_sk_sort((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline int sk_EVP_PBE_CTL_is_sorted(const struct stack_st_EVP_PBE_CTL *sk) { return OPENSSL_sk_is_sorted((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_EVP_PBE_CTL * sk_EVP_PBE_CTL_dup(const struct stack_st_EVP_PBE_CTL *sk) { return (struct stack_st_EVP_PBE_CTL *)OPENSSL_sk_dup((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_EVP_PBE_CTL *sk_EVP_PBE_CTL_deep_copy(const struct stack_st_EVP_PBE_CTL *sk, sk_EVP_PBE_CTL_copyfunc copyfunc, sk_EVP_PBE_CTL_freefunc freefunc) { return (struct stack_st_EVP_PBE_CTL *)OPENSSL_sk_deep_copy((const OPENSSL_STACK *)sk, (OPENSSL_sk_copyfunc)copyfunc, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline sk_EVP_PBE_CTL_compfunc sk_EVP_PBE_CTL_set_cmp_func(struct stack_st_EVP_PBE_CTL *sk, sk_EVP_PBE_CTL_compfunc compare) { return (sk_EVP_PBE_CTL_compfunc)OPENSSL_sk_set_cmp_func((OPENSSL_STACK *)sk, (OPENSSL_sk_compfunc)compare); }

int ossl_is_partially_overlapping(const void *ptr1, const void *ptr2, int len);

# 1 "../include/openssl/types.h" 1
# 265 "../crypto/evp/evp_local.h" 2


void *evp_generic_fetch(OSSL_LIB_CTX *ctx, int operation_id,
                        const char *name, const char *properties,
                        void *(*new_method)(int name_id,
                                            const OSSL_ALGORITHM *algodef,
                                            OSSL_PROVIDER *prov),
                        int (*up_ref_method)(void *),
                        void (*free_method)(void *));
void *evp_generic_fetch_from_prov(OSSL_PROVIDER *prov, int operation_id,
                                  const char *name, const char *properties,
                                  void *(*new_method)(int name_id,
                                                      const OSSL_ALGORITHM *algodef,
                                                      OSSL_PROVIDER *prov),
                                  int (*up_ref_method)(void *),
                                  void (*free_method)(void *));
void evp_generic_do_all_prefetched(OSSL_LIB_CTX *libctx, int operation_id,
                                   void (*user_fn)(void *method, void *arg),
                                   void *user_arg);
void evp_generic_do_all(OSSL_LIB_CTX *libctx, int operation_id,
                        void (*user_fn)(void *method, void *arg),
                        void *user_arg,
                        void *(*new_method)(int name_id,
                                            const OSSL_ALGORITHM *algodef,
                                            OSSL_PROVIDER *prov),
                        int (*up_ref_method)(void *),
                        void (*free_method)(void *));


EVP_KEYMGMT *evp_keymgmt_fetch_by_number(OSSL_LIB_CTX *ctx, int name_id,
                                         const char *properties);
EVP_SIGNATURE *evp_signature_fetch_from_prov(OSSL_PROVIDER *prov,
                                             const char *name,
                                             const char *properties);
EVP_ASYM_CIPHER *evp_asym_cipher_fetch_from_prov(OSSL_PROVIDER *prov,
                                                 const char *name,
                                                 const char *properties);
EVP_KEYEXCH *evp_keyexch_fetch_from_prov(OSSL_PROVIDER *prov,
                                         const char *name,
                                         const char *properties);
EVP_KEM *evp_kem_fetch_from_prov(OSSL_PROVIDER *prov,
                                 const char *name,
                                 const char *properties);


EVP_MD *evp_md_new(void);
EVP_CIPHER *evp_cipher_new(void);

int evp_cipher_get_asn1_aead_params(EVP_CIPHER_CTX *c, ASN1_TYPE *type,
                                    evp_cipher_aead_asn1_params *asn1_params);
int evp_cipher_set_asn1_aead_params(EVP_CIPHER_CTX *c, ASN1_TYPE *type,
                                    evp_cipher_aead_asn1_params *asn1_params);
# 331 "../crypto/evp/evp_local.h"
int evp_do_ciph_getparams(const EVP_CIPHER *ciph, OSSL_PARAM params[]);
int evp_do_ciph_ctx_getparams(const EVP_CIPHER *ciph, void *provctx,
                              OSSL_PARAM params[]);
int evp_do_ciph_ctx_setparams(const EVP_CIPHER *ciph, void *provctx,
                              OSSL_PARAM params[]);
int evp_do_md_getparams(const EVP_MD *md, OSSL_PARAM params[]);
int evp_do_md_ctx_getparams(const EVP_MD *md, void *provctx,
                            OSSL_PARAM params[]);
int evp_do_md_ctx_setparams(const EVP_MD *md, void *provctx,
                            OSSL_PARAM params[]);

OSSL_PARAM *evp_pkey_to_param(EVP_PKEY *pkey, size_t *sz);
# 362 "../crypto/evp/evp_local.h"
void evp_pkey_ctx_free_old_ops(EVP_PKEY_CTX *ctx);
void evp_cipher_free_int(EVP_CIPHER *md);
void evp_md_free_int(EVP_MD *md);


int evp_is_a(OSSL_PROVIDER *prov, int number,
             const char *legacy_name, const char *name);
int evp_names_do_all(OSSL_PROVIDER *prov, int number,
                     void (*fn)(const char *name, void *data),
                     void *data);
int evp_cipher_cache_constants(EVP_CIPHER *cipher);
# 19 "../crypto/evp/keymgmt_meth.c" 2

static void *keymgmt_new(void)
{
    EVP_KEYMGMT *keymgmt = 
# 22 "../crypto/evp/keymgmt_meth.c" 3 4
                          ((void *)0)
# 22 "../crypto/evp/keymgmt_meth.c"
                              ;

    if ((keymgmt = CRYPTO_zalloc(sizeof(*keymgmt), "../crypto/evp/keymgmt_meth.c", 24)) == 
# 24 "../crypto/evp/keymgmt_meth.c" 3 4
                                                       ((void *)0)
# 24 "../crypto/evp/keymgmt_meth.c"
                                                           )
        return 
# 25 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 25 "../crypto/evp/keymgmt_meth.c"
                  ;
    if (!CRYPTO_NEW_REF(&keymgmt->refcnt, 1)) {
        EVP_KEYMGMT_free(keymgmt);
        return 
# 28 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 28 "../crypto/evp/keymgmt_meth.c"
                  ;
    }
    return keymgmt;
}


static void help_get_legacy_alg_type_from_keymgmt(const char *keytype,
                                                  void *arg)
{
    int *type = arg;

    if (*type == 0)
        *type = evp_pkey_name2type(keytype);
}

static int get_legacy_alg_type_from_keymgmt(const EVP_KEYMGMT *keymgmt)
{
    int type = 0;

    EVP_KEYMGMT_names_do_all(keymgmt, help_get_legacy_alg_type_from_keymgmt,
                             &type);
    return type;
}


static void *keymgmt_from_algorithm(int name_id,
                                    const OSSL_ALGORITHM *algodef,
                                    OSSL_PROVIDER *prov)
{
    const OSSL_DISPATCH *fns = algodef->implementation;
    EVP_KEYMGMT *keymgmt = 
# 58 "../crypto/evp/keymgmt_meth.c" 3 4
                          ((void *)0)
# 58 "../crypto/evp/keymgmt_meth.c"
                              ;
    int setparamfncnt = 0, getparamfncnt = 0;
    int setgenparamfncnt = 0;
    int importfncnt = 0, exportfncnt = 0;
    int importtypesfncnt = 0, exporttypesfncnt = 0;

    if ((keymgmt = keymgmt_new()) == 
# 64 "../crypto/evp/keymgmt_meth.c" 3 4
                                    ((void *)0)
# 64 "../crypto/evp/keymgmt_meth.c"
                                        )
        return 
# 65 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 65 "../crypto/evp/keymgmt_meth.c"
                  ;

    keymgmt->name_id = name_id;
    if ((keymgmt->type_name = ossl_algorithm_get1_first_name(algodef)) == 
# 68 "../crypto/evp/keymgmt_meth.c" 3 4
                                                                         ((void *)0)
# 68 "../crypto/evp/keymgmt_meth.c"
                                                                             ) {
        EVP_KEYMGMT_free(keymgmt);
        return 
# 70 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 70 "../crypto/evp/keymgmt_meth.c"
                  ;
    }
    keymgmt->description = algodef->algorithm_description;

    for (; fns->function_id != 0; fns++) {
        switch (fns->function_id) {
        case 1:
            if (keymgmt->new == 
# 77 "../crypto/evp/keymgmt_meth.c" 3 4
                               ((void *)0)
# 77 "../crypto/evp/keymgmt_meth.c"
                                   )
                keymgmt->new = OSSL_FUNC_keymgmt_new(fns);
            break;
        case 2:
            if (keymgmt->gen_init == 
# 81 "../crypto/evp/keymgmt_meth.c" 3 4
                                    ((void *)0)
# 81 "../crypto/evp/keymgmt_meth.c"
                                        )
                keymgmt->gen_init = OSSL_FUNC_keymgmt_gen_init(fns);
            break;
        case 3:
            if (keymgmt->gen_set_template == 
# 85 "../crypto/evp/keymgmt_meth.c" 3 4
                                            ((void *)0)
# 85 "../crypto/evp/keymgmt_meth.c"
                                                )
                keymgmt->gen_set_template =
                    OSSL_FUNC_keymgmt_gen_set_template(fns);
            break;
        case 4:
            if (keymgmt->gen_set_params == 
# 90 "../crypto/evp/keymgmt_meth.c" 3 4
                                          ((void *)0)
# 90 "../crypto/evp/keymgmt_meth.c"
                                              ) {
                setgenparamfncnt++;
                keymgmt->gen_set_params =
                    OSSL_FUNC_keymgmt_gen_set_params(fns);
            }
            break;
        case 5:
            if (keymgmt->gen_settable_params == 
# 97 "../crypto/evp/keymgmt_meth.c" 3 4
                                               ((void *)0)
# 97 "../crypto/evp/keymgmt_meth.c"
                                                   ) {
                setgenparamfncnt++;
                keymgmt->gen_settable_params =
                    OSSL_FUNC_keymgmt_gen_settable_params(fns);
            }
            break;
        case 6:
            if (keymgmt->gen == 
# 104 "../crypto/evp/keymgmt_meth.c" 3 4
                               ((void *)0)
# 104 "../crypto/evp/keymgmt_meth.c"
                                   )
                keymgmt->gen = OSSL_FUNC_keymgmt_gen(fns);
            break;
        case 7:
            if (keymgmt->gen_cleanup == 
# 108 "../crypto/evp/keymgmt_meth.c" 3 4
                                       ((void *)0)
# 108 "../crypto/evp/keymgmt_meth.c"
                                           )
                keymgmt->gen_cleanup = OSSL_FUNC_keymgmt_gen_cleanup(fns);
            break;
        case 10:
            if (keymgmt->free == 
# 112 "../crypto/evp/keymgmt_meth.c" 3 4
                                ((void *)0)
# 112 "../crypto/evp/keymgmt_meth.c"
                                    )
                keymgmt->free = OSSL_FUNC_keymgmt_free(fns);
            break;
        case 8:
            if (keymgmt->load == 
# 116 "../crypto/evp/keymgmt_meth.c" 3 4
                                ((void *)0)
# 116 "../crypto/evp/keymgmt_meth.c"
                                    )
                keymgmt->load = OSSL_FUNC_keymgmt_load(fns);
            break;
        case 11:
            if (keymgmt->get_params == 
# 120 "../crypto/evp/keymgmt_meth.c" 3 4
                                      ((void *)0)
# 120 "../crypto/evp/keymgmt_meth.c"
                                          ) {
                getparamfncnt++;
                keymgmt->get_params = OSSL_FUNC_keymgmt_get_params(fns);
            }
            break;
        case 12:
            if (keymgmt->gettable_params == 
# 126 "../crypto/evp/keymgmt_meth.c" 3 4
                                           ((void *)0)
# 126 "../crypto/evp/keymgmt_meth.c"
                                               ) {
                getparamfncnt++;
                keymgmt->gettable_params =
                    OSSL_FUNC_keymgmt_gettable_params(fns);
            }
            break;
         case 13:
            if (keymgmt->set_params == 
# 133 "../crypto/evp/keymgmt_meth.c" 3 4
                                      ((void *)0)
# 133 "../crypto/evp/keymgmt_meth.c"
                                          ) {
                setparamfncnt++;
                keymgmt->set_params = OSSL_FUNC_keymgmt_set_params(fns);
            }
            break;
        case 14:
            if (keymgmt->settable_params == 
# 139 "../crypto/evp/keymgmt_meth.c" 3 4
                                           ((void *)0)
# 139 "../crypto/evp/keymgmt_meth.c"
                                               ) {
                setparamfncnt++;
                keymgmt->settable_params =
                    OSSL_FUNC_keymgmt_settable_params(fns);
            }
            break;
        case 20:
            if (keymgmt->query_operation_name == 
# 146 "../crypto/evp/keymgmt_meth.c" 3 4
                                                ((void *)0)
# 146 "../crypto/evp/keymgmt_meth.c"
                                                    )
                keymgmt->query_operation_name =
                    OSSL_FUNC_keymgmt_query_operation_name(fns);
            break;
        case 21:
            if (keymgmt->has == 
# 151 "../crypto/evp/keymgmt_meth.c" 3 4
                               ((void *)0)
# 151 "../crypto/evp/keymgmt_meth.c"
                                   )
                keymgmt->has = OSSL_FUNC_keymgmt_has(fns);
            break;
        case 44:
            if (keymgmt->dup == 
# 155 "../crypto/evp/keymgmt_meth.c" 3 4
                               ((void *)0)
# 155 "../crypto/evp/keymgmt_meth.c"
                                   )
                keymgmt->dup = OSSL_FUNC_keymgmt_dup(fns);
            break;
        case 22:
            if (keymgmt->validate == 
# 159 "../crypto/evp/keymgmt_meth.c" 3 4
                                    ((void *)0)
# 159 "../crypto/evp/keymgmt_meth.c"
                                        )
                keymgmt->validate = OSSL_FUNC_keymgmt_validate(fns);
            break;
        case 23:
            if (keymgmt->match == 
# 163 "../crypto/evp/keymgmt_meth.c" 3 4
                                 ((void *)0)
# 163 "../crypto/evp/keymgmt_meth.c"
                                     )
                keymgmt->match = OSSL_FUNC_keymgmt_match(fns);
            break;
        case 40:
            if (keymgmt->import == 
# 167 "../crypto/evp/keymgmt_meth.c" 3 4
                                  ((void *)0)
# 167 "../crypto/evp/keymgmt_meth.c"
                                      ) {
                importfncnt++;
                keymgmt->import = OSSL_FUNC_keymgmt_import(fns);
            }
            break;
        case 41:
            if (keymgmt->import_types == 
# 173 "../crypto/evp/keymgmt_meth.c" 3 4
                                        ((void *)0)
# 173 "../crypto/evp/keymgmt_meth.c"
                                            ) {
                if (importtypesfncnt == 0)
                    importfncnt++;
                importtypesfncnt++;
                keymgmt->import_types = OSSL_FUNC_keymgmt_import_types(fns);
            }
            break;
        case 45:
            if (keymgmt->import_types_ex == 
# 181 "../crypto/evp/keymgmt_meth.c" 3 4
                                           ((void *)0)
# 181 "../crypto/evp/keymgmt_meth.c"
                                               ) {
                if (importtypesfncnt == 0)
                    importfncnt++;
                importtypesfncnt++;
                keymgmt->import_types_ex = OSSL_FUNC_keymgmt_import_types_ex(fns);
            }
            break;
        case 42:
            if (keymgmt->export == 
# 189 "../crypto/evp/keymgmt_meth.c" 3 4
                                  ((void *)0)
# 189 "../crypto/evp/keymgmt_meth.c"
                                      ) {
                exportfncnt++;
                keymgmt->export = OSSL_FUNC_keymgmt_export(fns);
            }
            break;
        case 43:
            if (keymgmt->export_types == 
# 195 "../crypto/evp/keymgmt_meth.c" 3 4
                                        ((void *)0)
# 195 "../crypto/evp/keymgmt_meth.c"
                                            ) {
                if (exporttypesfncnt == 0)
                    exportfncnt++;
                exporttypesfncnt++;
                keymgmt->export_types = OSSL_FUNC_keymgmt_export_types(fns);
            }
            break;
        case 46:
            if (keymgmt->export_types_ex == 
# 203 "../crypto/evp/keymgmt_meth.c" 3 4
                                           ((void *)0)
# 203 "../crypto/evp/keymgmt_meth.c"
                                               ) {
                if (exporttypesfncnt == 0)
                    exportfncnt++;
                exporttypesfncnt++;
                keymgmt->export_types_ex = OSSL_FUNC_keymgmt_export_types_ex(fns);
            }
            break;
        }
    }
# 220 "../crypto/evp/keymgmt_meth.c"
    if (keymgmt->free == 
# 220 "../crypto/evp/keymgmt_meth.c" 3 4
                        ((void *)0)
        
# 221 "../crypto/evp/keymgmt_meth.c"
       || (keymgmt->new == 
# 221 "../crypto/evp/keymgmt_meth.c" 3 4
                           ((void *)0)
            
# 222 "../crypto/evp/keymgmt_meth.c"
           && keymgmt->gen == 
# 222 "../crypto/evp/keymgmt_meth.c" 3 4
                              ((void *)0)
            
# 223 "../crypto/evp/keymgmt_meth.c"
           && keymgmt->load == 
# 223 "../crypto/evp/keymgmt_meth.c" 3 4
                               ((void *)0)
# 223 "../crypto/evp/keymgmt_meth.c"
                                   )
        || keymgmt->has == 
# 224 "../crypto/evp/keymgmt_meth.c" 3 4
                          ((void *)0)
        
# 225 "../crypto/evp/keymgmt_meth.c"
       || (getparamfncnt != 0 && getparamfncnt != 2)
        || (setparamfncnt != 0 && setparamfncnt != 2)
        || (setgenparamfncnt != 0 && setgenparamfncnt != 2)
        || (importfncnt != 0 && importfncnt != 2)
        || (exportfncnt != 0 && exportfncnt != 2)
        || (keymgmt->gen != 
# 230 "../crypto/evp/keymgmt_meth.c" 3 4
                           ((void *)0)
            
# 231 "../crypto/evp/keymgmt_meth.c"
           && (keymgmt->gen_init == 
# 231 "../crypto/evp/keymgmt_meth.c" 3 4
                                    ((void *)0)
                
# 232 "../crypto/evp/keymgmt_meth.c"
               || keymgmt->gen_cleanup == 
# 232 "../crypto/evp/keymgmt_meth.c" 3 4
                                          ((void *)0)
# 232 "../crypto/evp/keymgmt_meth.c"
                                              ))) {
        EVP_KEYMGMT_free(keymgmt);
        (ERR_new(), ERR_set_debug("../crypto/evp/keymgmt_meth.c",234,__func__), ERR_set_error)((6),(193),
# 234 "../crypto/evp/keymgmt_meth.c" 3 4
       ((void *)0)
# 234 "../crypto/evp/keymgmt_meth.c"
       );
        return 
# 235 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 235 "../crypto/evp/keymgmt_meth.c"
                  ;
    }
    keymgmt->prov = prov;
    if (prov != 
# 238 "../crypto/evp/keymgmt_meth.c" 3 4
               ((void *)0)
# 238 "../crypto/evp/keymgmt_meth.c"
                   )
        ossl_provider_up_ref(prov);


    keymgmt->legacy_alg = get_legacy_alg_type_from_keymgmt(keymgmt);


    return keymgmt;
}

EVP_KEYMGMT *evp_keymgmt_fetch_from_prov(OSSL_PROVIDER *prov,
                                         const char *name,
                                         const char *properties)
{
    return evp_generic_fetch_from_prov(prov, 10,
                                       name, properties,
                                       keymgmt_from_algorithm,
                                       (int (*)(void *))EVP_KEYMGMT_up_ref,
                                       (void (*)(void *))EVP_KEYMGMT_free);
}

EVP_KEYMGMT *EVP_KEYMGMT_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
                               const char *properties)
{
    return evp_generic_fetch(ctx, 10, algorithm, properties,
                             keymgmt_from_algorithm,
                             (int (*)(void *))EVP_KEYMGMT_up_ref,
                             (void (*)(void *))EVP_KEYMGMT_free);
}

int EVP_KEYMGMT_up_ref(EVP_KEYMGMT *keymgmt)
{
    int ref = 0;

    CRYPTO_UP_REF(&keymgmt->refcnt, &ref);
    return 1;
}

void EVP_KEYMGMT_free(EVP_KEYMGMT *keymgmt)
{
    int ref = 0;

    if (keymgmt == 
# 280 "../crypto/evp/keymgmt_meth.c" 3 4
                  ((void *)0)
# 280 "../crypto/evp/keymgmt_meth.c"
                      )
        return;

    CRYPTO_DOWN_REF(&keymgmt->refcnt, &ref);
    if (ref > 0)
        return;
    CRYPTO_free(keymgmt->type_name, "../crypto/evp/keymgmt_meth.c", 286);
    ossl_provider_free(keymgmt->prov);
    CRYPTO_FREE_REF(&keymgmt->refcnt);
    CRYPTO_free(keymgmt, "../crypto/evp/keymgmt_meth.c", 289);
}

const OSSL_PROVIDER *EVP_KEYMGMT_get0_provider(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt->prov;
}

int evp_keymgmt_get_number(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt->name_id;
}

int evp_keymgmt_get_legacy_alg(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt->legacy_alg;
}

const char *EVP_KEYMGMT_get0_description(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt->description;
}

const char *EVP_KEYMGMT_get0_name(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt->type_name;
}

int EVP_KEYMGMT_is_a(const EVP_KEYMGMT *keymgmt, const char *name)
{
    return keymgmt != 
# 319 "../crypto/evp/keymgmt_meth.c" 3 4
                     ((void *)0)
           
# 320 "../crypto/evp/keymgmt_meth.c"
          && evp_is_a(keymgmt->prov, keymgmt->name_id, 
# 320 "../crypto/evp/keymgmt_meth.c" 3 4
                                                       ((void *)0)
# 320 "../crypto/evp/keymgmt_meth.c"
                                                           , name);
}

void EVP_KEYMGMT_do_all_provided(OSSL_LIB_CTX *libctx,
                                 void (*fn)(EVP_KEYMGMT *keymgmt, void *arg),
                                 void *arg)
{
    evp_generic_do_all(libctx, 10,
                       (void (*)(void *, void *))fn, arg,
                       keymgmt_from_algorithm,
                       (int (*)(void *))EVP_KEYMGMT_up_ref,
                       (void (*)(void *))EVP_KEYMGMT_free);
}

int EVP_KEYMGMT_names_do_all(const EVP_KEYMGMT *keymgmt,
                             void (*fn)(const char *name, void *data),
                             void *data)
{
    if (keymgmt->prov != 
# 338 "../crypto/evp/keymgmt_meth.c" 3 4
                        ((void *)0)
# 338 "../crypto/evp/keymgmt_meth.c"
                            )
        return evp_names_do_all(keymgmt->prov, keymgmt->name_id, fn, data);

    return 1;
}




void *evp_keymgmt_newdata(const EVP_KEYMGMT *keymgmt)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));






    if (keymgmt->new == 
# 356 "../crypto/evp/keymgmt_meth.c" 3 4
                       ((void *)0)
# 356 "../crypto/evp/keymgmt_meth.c"
                           )
        return 
# 357 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 357 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->new(provctx);
}

void evp_keymgmt_freedata(const EVP_KEYMGMT *keymgmt, void *keydata)
{

    keymgmt->free(keydata);
}

void *evp_keymgmt_gen_init(const EVP_KEYMGMT *keymgmt, int selection,
                           const OSSL_PARAM params[])
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));

    if (keymgmt->gen_init == 
# 372 "../crypto/evp/keymgmt_meth.c" 3 4
                            ((void *)0)
# 372 "../crypto/evp/keymgmt_meth.c"
                                )
        return 
# 373 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 373 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->gen_init(provctx, selection, params);
}

int evp_keymgmt_gen_set_template(const EVP_KEYMGMT *keymgmt, void *genctx,
                                 void *templ)
{






    if (keymgmt->gen_set_template == 
# 386 "../crypto/evp/keymgmt_meth.c" 3 4
                                    ((void *)0)
# 386 "../crypto/evp/keymgmt_meth.c"
                                        )
        return 1;
    return keymgmt->gen_set_template(genctx, templ);
}

int evp_keymgmt_gen_set_params(const EVP_KEYMGMT *keymgmt, void *genctx,
                               const OSSL_PARAM params[])
{
    if (keymgmt->gen_set_params == 
# 394 "../crypto/evp/keymgmt_meth.c" 3 4
                                  ((void *)0)
# 394 "../crypto/evp/keymgmt_meth.c"
                                      )
        return 0;
    return keymgmt->gen_set_params(genctx, params);
}

const OSSL_PARAM *EVP_KEYMGMT_gen_settable_params(const EVP_KEYMGMT *keymgmt)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));

    if (keymgmt->gen_settable_params == 
# 403 "../crypto/evp/keymgmt_meth.c" 3 4
                                       ((void *)0)
# 403 "../crypto/evp/keymgmt_meth.c"
                                           )
        return 
# 404 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 404 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->gen_settable_params(
# 405 "../crypto/evp/keymgmt_meth.c" 3 4
                                       ((void *)0)
# 405 "../crypto/evp/keymgmt_meth.c"
                                           , provctx);
}

void *evp_keymgmt_gen(const EVP_KEYMGMT *keymgmt, void *genctx,
                      OSSL_CALLBACK *cb, void *cbarg)
{
    if (keymgmt->gen == 
# 411 "../crypto/evp/keymgmt_meth.c" 3 4
                       ((void *)0)
# 411 "../crypto/evp/keymgmt_meth.c"
                           )
        return 
# 412 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 412 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->gen(genctx, cb, cbarg);
}

void evp_keymgmt_gen_cleanup(const EVP_KEYMGMT *keymgmt, void *genctx)
{
    if (keymgmt->gen_cleanup != 
# 418 "../crypto/evp/keymgmt_meth.c" 3 4
                               ((void *)0)
# 418 "../crypto/evp/keymgmt_meth.c"
                                   )
        keymgmt->gen_cleanup(genctx);
}

int evp_keymgmt_has_load(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt != 
# 424 "../crypto/evp/keymgmt_meth.c" 3 4
                     ((void *)0) 
# 424 "../crypto/evp/keymgmt_meth.c"
                          && keymgmt->load != 
# 424 "../crypto/evp/keymgmt_meth.c" 3 4
                                              ((void *)0)
# 424 "../crypto/evp/keymgmt_meth.c"
                                                  ;
}

void *evp_keymgmt_load(const EVP_KEYMGMT *keymgmt,
                       const void *objref, size_t objref_sz)
{
    if (evp_keymgmt_has_load(keymgmt))
        return keymgmt->load(objref, objref_sz);
    return 
# 432 "../crypto/evp/keymgmt_meth.c" 3 4
          ((void *)0)
# 432 "../crypto/evp/keymgmt_meth.c"
              ;
}

int evp_keymgmt_get_params(const EVP_KEYMGMT *keymgmt, void *keydata,
                           OSSL_PARAM params[])
{
    if (keymgmt->get_params == 
# 438 "../crypto/evp/keymgmt_meth.c" 3 4
                              ((void *)0)
# 438 "../crypto/evp/keymgmt_meth.c"
                                  )
        return 1;
    return keymgmt->get_params(keydata, params);
}

const OSSL_PARAM *EVP_KEYMGMT_gettable_params(const EVP_KEYMGMT *keymgmt)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));

    if (keymgmt->gettable_params == 
# 447 "../crypto/evp/keymgmt_meth.c" 3 4
                                   ((void *)0)
# 447 "../crypto/evp/keymgmt_meth.c"
                                       )
        return 
# 448 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 448 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->gettable_params(provctx);
}

int evp_keymgmt_set_params(const EVP_KEYMGMT *keymgmt, void *keydata,
                           const OSSL_PARAM params[])
{
    if (keymgmt->set_params == 
# 455 "../crypto/evp/keymgmt_meth.c" 3 4
                              ((void *)0)
# 455 "../crypto/evp/keymgmt_meth.c"
                                  )
        return 1;
    return keymgmt->set_params(keydata, params);
}

const OSSL_PARAM *EVP_KEYMGMT_settable_params(const EVP_KEYMGMT *keymgmt)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));

    if (keymgmt->settable_params == 
# 464 "../crypto/evp/keymgmt_meth.c" 3 4
                                   ((void *)0)
# 464 "../crypto/evp/keymgmt_meth.c"
                                       )
        return 
# 465 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 465 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->settable_params(provctx);
}

int evp_keymgmt_has(const EVP_KEYMGMT *keymgmt, void *keydata, int selection)
{

    return keymgmt->has(keydata, selection);
}

int evp_keymgmt_validate(const EVP_KEYMGMT *keymgmt, void *keydata,
                         int selection, int checktype)
{

    if (keymgmt->validate == 
# 479 "../crypto/evp/keymgmt_meth.c" 3 4
                            ((void *)0)
# 479 "../crypto/evp/keymgmt_meth.c"
                                )
        return 1;
    return keymgmt->validate(keydata, selection, checktype);
}

int evp_keymgmt_match(const EVP_KEYMGMT *keymgmt,
                      const void *keydata1, const void *keydata2,
                      int selection)
{

    if (keymgmt->match == 
# 489 "../crypto/evp/keymgmt_meth.c" 3 4
                         ((void *)0)
# 489 "../crypto/evp/keymgmt_meth.c"
                             )
        return 0;
    return keymgmt->match(keydata1, keydata2, selection);
}

int evp_keymgmt_import(const EVP_KEYMGMT *keymgmt, void *keydata,
                       int selection, const OSSL_PARAM params[])
{
    if (keymgmt->import == 
# 497 "../crypto/evp/keymgmt_meth.c" 3 4
                          ((void *)0)
# 497 "../crypto/evp/keymgmt_meth.c"
                              )
        return 0;
    return keymgmt->import(keydata, selection, params);
}

const OSSL_PARAM *evp_keymgmt_import_types(const EVP_KEYMGMT *keymgmt,
                                           int selection)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));

    if (keymgmt->import_types_ex != 
# 507 "../crypto/evp/keymgmt_meth.c" 3 4
                                   ((void *)0)
# 507 "../crypto/evp/keymgmt_meth.c"
                                       )
        return keymgmt->import_types_ex(provctx, selection);
    if (keymgmt->import_types == 
# 509 "../crypto/evp/keymgmt_meth.c" 3 4
                                ((void *)0)
# 509 "../crypto/evp/keymgmt_meth.c"
                                    )
        return 
# 510 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 510 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->import_types(selection);
}

int evp_keymgmt_export(const EVP_KEYMGMT *keymgmt, void *keydata,
                       int selection, OSSL_CALLBACK *param_cb, void *cbarg)
{
    if (keymgmt->export == 
# 517 "../crypto/evp/keymgmt_meth.c" 3 4
                          ((void *)0)
# 517 "../crypto/evp/keymgmt_meth.c"
                              )
        return 0;
    return keymgmt->export(keydata, selection, param_cb, cbarg);
}

const OSSL_PARAM *evp_keymgmt_export_types(const EVP_KEYMGMT *keymgmt,
                                           int selection)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_get0_provider(keymgmt));

    if (keymgmt->export_types_ex != 
# 527 "../crypto/evp/keymgmt_meth.c" 3 4
                                   ((void *)0)
# 527 "../crypto/evp/keymgmt_meth.c"
                                       )
        return keymgmt->export_types_ex(provctx, selection);
    if (keymgmt->export_types == 
# 529 "../crypto/evp/keymgmt_meth.c" 3 4
                                ((void *)0)
# 529 "../crypto/evp/keymgmt_meth.c"
                                    )
        return 
# 530 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 530 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->export_types(selection);
}

void *evp_keymgmt_dup(const EVP_KEYMGMT *keymgmt, const void *keydata_from,
                      int selection)
{

    if (keymgmt->dup == 
# 538 "../crypto/evp/keymgmt_meth.c" 3 4
                       ((void *)0)
# 538 "../crypto/evp/keymgmt_meth.c"
                           )
        return 
# 539 "../crypto/evp/keymgmt_meth.c" 3 4
              ((void *)0)
# 539 "../crypto/evp/keymgmt_meth.c"
                  ;
    return keymgmt->dup(keydata_from, selection);
}

# 0 "../crypto/ec/curve448/curve448.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/ec/curve448/curve448.c"
# 12 "../crypto/ec/curve448/curve448.c"
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
# 13 "../crypto/ec/curve448/curve448.c" 2
# 1 "../crypto/ec/curve448/word.h" 1
# 16 "../crypto/ec/curve448/word.h"
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4

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

# 17 "../crypto/ec/curve448/word.h" 2
# 1 "/usr/include/assert.h" 1 3 4
# 18 "../crypto/ec/curve448/word.h" 2


# 1 "../crypto/ec/curve448/curve448utils.h" 1
# 18 "../crypto/ec/curve448/curve448utils.h"
# 1 "../include/internal/numbers.h" 1
# 12 "../include/internal/numbers.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 15 "../include/internal/numbers.h" 2
# 91 "../include/internal/numbers.h"

# 91 "../include/internal/numbers.h"
typedef __int128_t int128_t;
typedef __uint128_t uint128_t;
# 19 "../crypto/ec/curve448/curve448utils.h" 2
# 40 "../crypto/ec/curve448/curve448utils.h"
typedef uint64_t c448_word_t;

typedef int64_t c448_sword_t;

typedef uint64_t c448_bool_t;

typedef uint128_t c448_dword_t;

typedef int128_t c448_dsword_t;
# 71 "../crypto/ec/curve448/curve448utils.h"
typedef enum {
    C448_SUCCESS = -1,
    C448_FAILURE = 0
} c448_error_t;


static inline c448_error_t c448_succeed_if(c448_bool_t x)
{
    return (c448_error_t) x;
}
# 21 "../crypto/ec/curve448/word.h" 2


# 1 "../crypto/ec/curve448/arch_64/arch_intrinsics.h" 1
# 16 "../crypto/ec/curve448/arch_64/arch_intrinsics.h"
# 1 "../include/internal/constant_time.h" 1
# 12 "../include/internal/constant_time.h"
        
# 33 "../include/internal/constant_time.h"
static inline unsigned int constant_time_msb(unsigned int a);

static inline uint32_t constant_time_msb_32(uint32_t a);

static inline uint64_t constant_time_msb_64(uint64_t a);


static inline unsigned int constant_time_lt(unsigned int a,
                                                 unsigned int b);

static inline unsigned char constant_time_lt_8(unsigned int a,
                                                    unsigned int b);

static inline uint64_t constant_time_lt_64(uint64_t a, uint64_t b);


static inline unsigned int constant_time_ge(unsigned int a,
                                                 unsigned int b);

static inline unsigned char constant_time_ge_8(unsigned int a,
                                                    unsigned int b);


static inline unsigned int constant_time_is_zero(unsigned int a);

static inline unsigned char constant_time_is_zero_8(unsigned int a);

static inline uint32_t constant_time_is_zero_32(uint32_t a);


static inline unsigned int constant_time_eq(unsigned int a,
                                                 unsigned int b);

static inline unsigned char constant_time_eq_8(unsigned int a,
                                                    unsigned int b);

static inline unsigned int constant_time_eq_int(int a, int b);

static inline unsigned char constant_time_eq_int_8(int a, int b);
# 80 "../include/internal/constant_time.h"
static inline unsigned int constant_time_select(unsigned int mask,
                                                     unsigned int a,
                                                     unsigned int b);

static inline unsigned char constant_time_select_8(unsigned char mask,
                                                        unsigned char a,
                                                        unsigned char b);


static inline uint32_t constant_time_select_32(uint32_t mask, uint32_t a,
                                                    uint32_t b);


static inline uint64_t constant_time_select_64(uint64_t mask, uint64_t a,
                                                    uint64_t b);

static inline int constant_time_select_int(unsigned int mask, int a,
                                                int b);


static inline unsigned int constant_time_msb(unsigned int a)
{
    return 0 - (a >> (sizeof(a) * 8 - 1));
}


static inline uint32_t constant_time_msb_32(uint32_t a)
{
    return 0 - (a >> 31);
}

static inline uint64_t constant_time_msb_64(uint64_t a)
{
    return 0 - (a >> 63);
}

static inline size_t constant_time_msb_s(size_t a)
{
    return 0 - (a >> (sizeof(a) * 8 - 1));
}

static inline unsigned int constant_time_lt(unsigned int a,
                                                 unsigned int b)
{
    return constant_time_msb(a ^ ((a ^ b) | ((a - b) ^ b)));
}

static inline size_t constant_time_lt_s(size_t a, size_t b)
{
    return constant_time_msb_s(a ^ ((a ^ b) | ((a - b) ^ b)));
}

static inline unsigned char constant_time_lt_8(unsigned int a,
                                                    unsigned int b)
{
    return (unsigned char)constant_time_lt(a, b);
}

static inline uint64_t constant_time_lt_64(uint64_t a, uint64_t b)
{
    return constant_time_msb_64(a ^ ((a ^ b) | ((a - b) ^ b)));
}
# 166 "../include/internal/constant_time.h"
static inline unsigned int constant_time_ge(unsigned int a,
                                                 unsigned int b)
{
    return ~constant_time_lt(a, b);
}

static inline size_t constant_time_ge_s(size_t a, size_t b)
{
    return ~constant_time_lt_s(a, b);
}

static inline unsigned char constant_time_ge_8(unsigned int a,
                                                    unsigned int b)
{
    return (unsigned char)constant_time_ge(a, b);
}

static inline unsigned char constant_time_ge_8_s(size_t a, size_t b)
{
    return (unsigned char)constant_time_ge_s(a, b);
}

static inline unsigned int constant_time_is_zero(unsigned int a)
{
    return constant_time_msb(~a & (a - 1));
}

static inline size_t constant_time_is_zero_s(size_t a)
{
    return constant_time_msb_s(~a & (a - 1));
}

static inline unsigned char constant_time_is_zero_8(unsigned int a)
{
    return (unsigned char)constant_time_is_zero(a);
}

static inline uint32_t constant_time_is_zero_32(uint32_t a)
{
    return constant_time_msb_32(~a & (a - 1));
}

static inline uint64_t constant_time_is_zero_64(uint64_t a)
{
    return constant_time_msb_64(~a & (a - 1));
}

static inline unsigned int constant_time_eq(unsigned int a,
                                                 unsigned int b)
{
    return constant_time_is_zero(a ^ b);
}

static inline size_t constant_time_eq_s(size_t a, size_t b)
{
    return constant_time_is_zero_s(a ^ b);
}

static inline unsigned char constant_time_eq_8(unsigned int a,
                                                    unsigned int b)
{
    return (unsigned char)constant_time_eq(a, b);
}

static inline unsigned char constant_time_eq_8_s(size_t a, size_t b)
{
    return (unsigned char)constant_time_eq_s(a, b);
}

static inline unsigned int constant_time_eq_int(int a, int b)
{
    return constant_time_eq((unsigned)(a), (unsigned)(b));
}

static inline unsigned char constant_time_eq_int_8(int a, int b)
{
    return constant_time_eq_8((unsigned)(a), (unsigned)(b));
}
# 252 "../include/internal/constant_time.h"
static inline unsigned int value_barrier(unsigned int a)
{

    unsigned int r;
    __asm__("" : "=r"(r) : "0"(a));



    return r;
}


static inline uint32_t value_barrier_32(uint32_t a)
{

    uint32_t r;
    __asm__("" : "=r"(r) : "0"(a));



    return r;
}


static inline uint64_t value_barrier_64(uint64_t a)
{

    uint64_t r;
    __asm__("" : "=r"(r) : "0"(a));



    return r;
}


static inline size_t value_barrier_s(size_t a)
{

    size_t r;
    __asm__("" : "=r"(r) : "0"(a));



    return r;
}


static inline unsigned char value_barrier_8(unsigned char a)
{

    unsigned char r;
    __asm__("" : "=r"(r) : "0"(a));



    return r;
}

static inline unsigned int constant_time_select(unsigned int mask,
                                                     unsigned int a,
                                                     unsigned int b)
{
    return (value_barrier(mask) & a) | (value_barrier(~mask) & b);
}

static inline size_t constant_time_select_s(size_t mask,
                                                 size_t a,
                                                 size_t b)
{
    return (value_barrier_s(mask) & a) | (value_barrier_s(~mask) & b);
}

static inline unsigned char constant_time_select_8(unsigned char mask,
                                                        unsigned char a,
                                                        unsigned char b)
{
    return (unsigned char)constant_time_select(mask, a, b);
}

static inline int constant_time_select_int(unsigned int mask, int a,
                                                int b)
{
    return (int)constant_time_select(mask, (unsigned)(a), (unsigned)(b));
}

static inline int constant_time_select_int_s(size_t mask, int a, int b)
{
    return (int)constant_time_select((unsigned)mask, (unsigned)(a),
                                      (unsigned)(b));
}

static inline uint32_t constant_time_select_32(uint32_t mask, uint32_t a,
                                                    uint32_t b)
{
    return (value_barrier_32(mask) & a) | (value_barrier_32(~mask) & b);
}

static inline uint64_t constant_time_select_64(uint64_t mask, uint64_t a,
                                                    uint64_t b)
{
    return (value_barrier_64(mask) & a) | (value_barrier_64(~mask) & b);
}
# 366 "../include/internal/constant_time.h"
static inline void constant_time_cond_swap_32(uint32_t mask, uint32_t *a,
                                                   uint32_t *b)
{
    uint32_t xor = *a ^ *b;

    xor &= value_barrier_32(mask);
    *a ^= xor;
    *b ^= xor;
}
# 386 "../include/internal/constant_time.h"
static inline void constant_time_cond_swap_64(uint64_t mask, uint64_t *a,
                                                   uint64_t *b)
{
    uint64_t xor = *a ^ *b;

    xor &= value_barrier_64(mask);
    *a ^= xor;
    *b ^= xor;
}
# 408 "../include/internal/constant_time.h"
static inline void constant_time_cond_swap_buff(unsigned char mask,
                                                     unsigned char *a,
                                                     unsigned char *b,
                                                     size_t len)
{
    size_t i;
    unsigned char tmp;

    for (i = 0; i < len; i++) {
        tmp = a[i] ^ b[i];
        tmp &= value_barrier_8(mask);
        a[i] ^= tmp;
        b[i] ^= tmp;
    }
}






static inline void constant_time_lookup(void *out,
                                             const void *table,
                                             size_t rowsize,
                                             size_t numrows,
                                             size_t idx)
{
    size_t i, j;
    const unsigned char *tablec = (const unsigned char *)table;
    unsigned char *outc = (unsigned char *)out;
    unsigned char mask;

    memset(out, 0, rowsize);


    for (i = 0; i < numrows; i++, idx--) {
        mask = (unsigned char)constant_time_is_zero_s(idx);
        for (j = 0; j < rowsize; j++)
            *(outc + j) |= constant_time_select_8(mask, *(tablec++), 0);
    }
}





void err_clear_last_constant_time(int clear);
# 17 "../crypto/ec/curve448/arch_64/arch_intrinsics.h" 2





static inline uint128_t widemul(uint64_t a, uint64_t b)
{
    return ((uint128_t) a) * b;
}
# 24 "../crypto/ec/curve448/word.h" 2





typedef uint64_t word_t, mask_t;
typedef uint128_t dword_t;
typedef int32_t hsword_t;
typedef int64_t sword_t;
typedef int128_t dsword_t;
# 66 "../crypto/ec/curve448/word.h"
static inline c448_bool_t mask_to_bool(mask_t m)
{
    return (c448_sword_t)(sword_t)m;
}

static inline mask_t bool_to_mask(c448_bool_t m)
{

    mask_t ret = 0;
    unsigned int i;
    unsigned int limit = sizeof(c448_bool_t) / sizeof(mask_t);

    if (limit < 1)
        limit = 1;
    for (i = 0; i < limit; i++)
        ret |= ~constant_time_is_zero_64(m >> (i * 8 * sizeof(word_t)));

    return ret;
}
# 14 "../crypto/ec/curve448/curve448.c" 2
# 1 "../crypto/ec/curve448/field.h" 1
# 18 "../crypto/ec/curve448/field.h"
# 1 "/usr/include/assert.h" 1 3 4
# 19 "../crypto/ec/curve448/field.h" 2
# 35 "../crypto/ec/curve448/field.h"
typedef struct gf_s {
    word_t limb[(64/sizeof(word_t))];
} __attribute__((__aligned__(16))) gf_s, gf[1];






static __inline__ __attribute__((__unused__,__always_inline__)) void gf_copy(gf out, const gf a)
{
    *out = *a;
}

static __inline__ __attribute__((__unused__,__always_inline__)) void gf_add_RAW(gf out, const gf a, const gf b);
static __inline__ __attribute__((__unused__,__always_inline__)) void gf_sub_RAW(gf out, const gf a, const gf b);
static __inline__ __attribute__((__unused__,__always_inline__)) void gf_bias(gf inout, int amount);
static __inline__ __attribute__((__unused__,__always_inline__)) void gf_weak_reduce(gf inout);

void gf_strong_reduce(gf inout);
void gf_add(gf out, const gf a, const gf b);
void gf_sub(gf out, const gf a, const gf b);
void ossl_gf_mul(gf_s * __restrict__ out, const gf a, const gf b);
void ossl_gf_mulw_unsigned(gf_s * __restrict__ out, const gf a, uint32_t b);
void ossl_gf_sqr(gf_s * __restrict__ out, const gf a);
mask_t gf_isr(gf a, const gf x);
mask_t gf_eq(const gf x, const gf y);
mask_t gf_lobit(const gf x);
mask_t gf_hibit(const gf x);

void gf_serialize(uint8_t serial[56], const gf x, int with_highbit);
mask_t gf_deserialize(gf x, const uint8_t serial[56], int with_hibit,
                      uint8_t hi_nmask);







# 1 "../crypto/ec/curve448/arch_64/f_impl.h" 1
# 21 "../crypto/ec/curve448/arch_64/f_impl.h"
void gf_add_RAW(gf out, const gf a, const gf b)
{
    unsigned int i;

    for (i = 0; i < (64/sizeof(word_t)); i++)
        out->limb[i] = a->limb[i] + b->limb[i];

    gf_weak_reduce(out);
}

void gf_sub_RAW(gf out, const gf a, const gf b)
{
    uint64_t co1 = ((1ULL << 56) - 1) * 2, co2 = co1 - 2;
    unsigned int i;

    for (i = 0; i < (64/sizeof(word_t)); i++)
        out->limb[i] = a->limb[i] - b->limb[i] + ((i == (64/sizeof(word_t)) / 2) ? co2 : co1);

    gf_weak_reduce(out);
}

void gf_bias(gf a, int amt)
{
}

void gf_weak_reduce(gf a)
{
    uint64_t mask = (1ULL << 56) - 1;
    uint64_t tmp = a->limb[(64/sizeof(word_t)) - 1] >> 56;
    unsigned int i;

    a->limb[(64/sizeof(word_t)) / 2] += tmp;
    for (i = (64/sizeof(word_t)) - 1; i > 0; i--)
        a->limb[i] = (a->limb[i] & mask) + (a->limb[i - 1] >> 56);
    a->limb[0] = (a->limb[0] & mask) + tmp;
}
# 76 "../crypto/ec/curve448/field.h" 2



static const gf ZERO = {{{0}}}, ONE = {{{1}}};


static inline void gf_sqrn(gf_s * __restrict__ y, const gf x, int n)
{
    gf tmp;

    
# 86 "../crypto/ec/curve448/field.h" 3 4
   ((void) (0))
# 86 "../crypto/ec/curve448/field.h"
                ;
    if (n & 1) {
        ossl_gf_sqr(y, x);
        n--;
    } else {
        ossl_gf_sqr(tmp, x);
        ossl_gf_sqr(y, tmp);
        n -= 2;
    }
    for (; n; n -= 2) {
        ossl_gf_sqr(tmp, y);
        ossl_gf_sqr(y, tmp);
    }
}




static inline void gf_sub_nr(gf c, const gf a, const gf b)
{
    gf_sub_RAW(c, a, b);
    gf_bias(c, 2);
    if (9999 < 3)
        gf_weak_reduce(c);
}


static inline void gf_subx_nr(gf c, const gf a, const gf b, int amt)
{
    gf_sub_RAW(c, a, b);
    gf_bias(c, amt);
    if (9999 < amt + 1)
        gf_weak_reduce(c);
}


static inline void gf_mulw(gf c, const gf a, int32_t w)
{
    if (w > 0) {
        ossl_gf_mulw_unsigned(c, a, w);
    } else {
        ossl_gf_mulw_unsigned(c, a, -w);
        gf_sub(c, ZERO, c);
    }
}


static inline void gf_cond_sel(gf x, const gf y, const gf z, mask_t is_z)
{
    size_t i;

    for (i = 0; i < (64/sizeof(word_t)); i++) {





        x[0].limb[i] = constant_time_select_64(is_z, z[0].limb[i],
                                               y[0].limb[i]);

    }
}


static inline void gf_cond_neg(gf x, mask_t neg)
{
    gf y;

    gf_sub(y, ZERO, x);
    gf_cond_sel(x, x, y, neg);
}


static inline void gf_cond_swap(gf x, gf_s * __restrict__ y, mask_t swap)
{
    size_t i;

    for (i = 0; i < (64/sizeof(word_t)); i++) {




        constant_time_cond_swap_64(swap, &(x[0].limb[i]), &(y->limb[i]));

    }
}
# 15 "../crypto/ec/curve448/curve448.c" 2

# 1 "../crypto/ec/curve448/point_448.h" 1
# 25 "../crypto/ec/curve448/point_448.h"
typedef struct {
    gf a, b, c;
} niels_s, niels_t[1];
typedef struct {
    niels_t n;
    gf z;
} pniels_t[1];


struct curve448_precomputed_s {
    niels_t table[5 << (5 - 1)];
};
# 56 "../crypto/ec/curve448/point_448.h"
typedef struct curve448_point_s {
    gf x, y, z, t;
} curve448_point_t[1];


struct curve448_precomputed_s;


typedef struct curve448_precomputed_s curve448_precomputed_s;


typedef struct curve448_scalar_s {
    c448_word_t limb[((446-1)/64 +1)];
} curve448_scalar_t[1];


extern const curve448_scalar_t ossl_curve448_scalar_one;


extern const curve448_scalar_t ossl_curve448_scalar_zero;


extern const curve448_point_t ossl_curve448_point_identity;


extern const struct curve448_precomputed_s *ossl_curve448_precomputed_base;
extern const niels_t *ossl_curve448_wnaf_base;
# 95 "../crypto/ec/curve448/point_448.h"
c448_error_t
ossl_curve448_scalar_decode(curve448_scalar_t out,
                            const unsigned char ser[56]);
# 106 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_scalar_decode_long(curve448_scalar_t out,
                                 const unsigned char *ser, size_t ser_len);







void
ossl_curve448_scalar_encode(unsigned char ser[56],
                            const curve448_scalar_t s);
# 127 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_scalar_add(curve448_scalar_t out,
                         const curve448_scalar_t a, const curve448_scalar_t b);







void
ossl_curve448_scalar_sub(curve448_scalar_t out,
                         const curve448_scalar_t a, const curve448_scalar_t b);
# 148 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_scalar_mul(curve448_scalar_t out,
                         const curve448_scalar_t a, const curve448_scalar_t b);







void
ossl_curve448_scalar_halve(curve448_scalar_t out, const curve448_scalar_t a);
# 168 "../crypto/ec/curve448/point_448.h"
static inline void curve448_scalar_copy(curve448_scalar_t out,
                                             const curve448_scalar_t a)
{
    *out = *a;
}
# 181 "../crypto/ec/curve448/point_448.h"
static inline void curve448_point_copy(curve448_point_t a,
                                            const curve448_point_t b)
{
    *a = *b;
}
# 198 "../crypto/ec/curve448/point_448.h"
 c448_bool_t
ossl_curve448_point_eq(const curve448_point_t a,
                       const curve448_point_t b);
# 209 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_point_double(curve448_point_t two_a, const curve448_point_t a);
# 225 "../crypto/ec/curve448/point_448.h"
 c448_error_t
ossl_x448_int(uint8_t out[56],
              const uint8_t base[56],
              const uint8_t scalar[56]);
# 249 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_point_mul_by_ratio_and_encode_like_x448(
                                        uint8_t out[56],
                                        const curve448_point_t p);
# 261 "../crypto/ec/curve448/point_448.h"
void
ossl_x448_derive_public_key(uint8_t out[56],
                            const uint8_t scalar[56]);
# 272 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_precomputed_scalarmul(curve448_point_t scaled,
                                    const curve448_precomputed_s *base,
                                    const curve448_scalar_t scalar);
# 292 "../crypto/ec/curve448/point_448.h"
void
ossl_curve448_base_double_scalarmul_non_secret(curve448_point_t combo,
                                               const curve448_scalar_t scalar1,
                                               const curve448_point_t base2,
                                               const curve448_scalar_t scalar2);
# 307 "../crypto/ec/curve448/point_448.h"
 c448_bool_t
ossl_curve448_point_valid(const curve448_point_t to_test);


void ossl_curve448_scalar_destroy(curve448_scalar_t scalar);


void ossl_curve448_point_destroy(curve448_point_t point);
# 17 "../crypto/ec/curve448/curve448.c" 2
# 1 "../crypto/ec/curve448/ed448.h" 1
# 40 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_c448_ed448_derive_public_key(
                              OSSL_LIB_CTX *ctx,
                              uint8_t pubkey [57],
                              const uint8_t privkey [57],
                              const char *propq);
# 64 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_c448_ed448_sign(OSSL_LIB_CTX *ctx,
                     uint8_t signature[(57 + 57)],
                     const uint8_t privkey[57],
                     const uint8_t pubkey[57],
                     const uint8_t *message, size_t message_len,
                     uint8_t prehashed, const uint8_t *context,
                     size_t context_len,
                     const char *propq);
# 90 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_c448_ed448_sign_prehash(OSSL_LIB_CTX *ctx,
                             uint8_t signature[(57 + 57)],
                             const uint8_t privkey[57],
                             const uint8_t pubkey[57],
                             const uint8_t hash[64],
                             const uint8_t *context,
                             size_t context_len,
                             const char *propq);
# 118 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_c448_ed448_verify(OSSL_LIB_CTX *ctx,
                       const uint8_t
                       signature[(57 + 57)],
                       const uint8_t
                       pubkey[57],
                       const uint8_t *message, size_t message_len,
                       uint8_t prehashed, const uint8_t *context,
                       uint8_t context_len,
                       const char *propq);
# 146 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_c448_ed448_verify_prehash(
                            OSSL_LIB_CTX *ctx,
                            const uint8_t signature[(57 + 57)],
                            const uint8_t pubkey[57],
                            const uint8_t hash[64],
                            const uint8_t *context,
                            uint8_t context_len,
                            const char *propq);
# 179 "../crypto/ec/curve448/ed448.h"
void
ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(
                                    uint8_t enc [57],
                                    const curve448_point_t p);
# 193 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(
                            curve448_point_t p,
                            const uint8_t enc[57]);
# 206 "../crypto/ec/curve448/ed448.h"
c448_error_t
ossl_c448_ed448_convert_private_key_to_x448(
                                    OSSL_LIB_CTX *ctx,
                                    uint8_t x[56],
                                    const uint8_t ed[57],
                                    const char *propq);
# 18 "../crypto/ec/curve448/curve448.c" 2
# 1 "../include/crypto/ecx.h" 1
# 14 "../include/crypto/ecx.h"
        
# 23 "../include/crypto/ecx.h"
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
# 19 "../crypto/ec/curve448/curve448.c" 2
# 1 "../crypto/ec/curve448/curve448_local.h" 1
# 20 "../crypto/ec/curve448/curve448.c" 2
# 28 "../crypto/ec/curve448/curve448.c"
static const curve448_scalar_t precomputed_scalarmul_adjustment = {
    {
        {
            (0xc873d6d54a7bb0cfULL), (0xe933d8d723a70aadULL),
            (0xbb124b65129c96fdULL), (0x00000008335dc163ULL)
        }
    }
};






static void gf_invert(gf y, const gf x, int assert_nonzero)
{
    mask_t ret;
    gf t1, t2;

    ossl_gf_sqr(t1, x);
    ret = gf_isr(t2, t1);
    (void)ret;
    if (assert_nonzero)
        
# 51 "../crypto/ec/curve448/curve448.c" 3 4
       ((void) (0))
# 51 "../crypto/ec/curve448/curve448.c"
                  ;
    ossl_gf_sqr(t1, t2);
    ossl_gf_mul(t2, t1, x);
    gf_copy(y, t2);
}


const curve448_point_t ossl_curve448_point_identity =
    { {{{{0}}}, {{{1}}}, {{{1}}}, {{{0}}}} };

static void point_double_internal(curve448_point_t p, const curve448_point_t q,
                                  int before_double)
{
    gf a, b, c, d;

    ossl_gf_sqr(c, q->x);
    ossl_gf_sqr(a, q->y);
    gf_add_RAW(d, c, a);
    gf_add_RAW(p->t, q->y, q->x);
    ossl_gf_sqr(b, p->t);
    gf_subx_nr(b, b, d, 3);
    gf_sub_nr(p->t, a, c);
    ossl_gf_sqr(p->x, q->z);
    gf_add_RAW(p->z, p->x, p->x);
    gf_subx_nr(a, p->z, p->t, 4);
    if (9999 == 5)
        gf_weak_reduce(a);
    ossl_gf_mul(p->x, a, b);
    ossl_gf_mul(p->z, p->t, a);
    ossl_gf_mul(p->y, p->t, d);
    if (!before_double)
        ossl_gf_mul(p->t, b, d);
}

void ossl_curve448_point_double(curve448_point_t p, const curve448_point_t q)
{
    point_double_internal(p, q, 0);
}


static inline void cond_neg_niels(niels_t n, mask_t neg)
{
    gf_cond_swap(n->a, n->b, neg);
    gf_cond_neg(n->c, neg);
}

static void pt_to_pniels(pniels_t b, const curve448_point_t a)
{
    gf_sub(b->n->a, a->y, a->x);
    gf_add(b->n->b, a->x, a->y);
    gf_mulw(b->n->c, a->t, 2 * ((-39081) - 1));
    gf_add(b->z, a->z, a->z);
}

static void pniels_to_pt(curve448_point_t e, const pniels_t d)
{
    gf eu;

    gf_add(eu, d->n->b, d->n->a);
    gf_sub(e->y, d->n->b, d->n->a);
    ossl_gf_mul(e->t, e->y, eu);
    ossl_gf_mul(e->x, d->z, e->y);
    ossl_gf_mul(e->y, d->z, eu);
    ossl_gf_sqr(e->z, d->z);
}

static void niels_to_pt(curve448_point_t e, const niels_t n)
{
    gf_add(e->y, n->b, n->a);
    gf_sub(e->x, n->b, n->a);
    ossl_gf_mul(e->t, e->y, e->x);
    gf_copy(e->z, ONE);
}

static void add_niels_to_pt(curve448_point_t d, const niels_t e,
                            int before_double)
{
    gf a, b, c;

    gf_sub_nr(b, d->y, d->x);
    ossl_gf_mul(a, e->a, b);
    gf_add_RAW(b, d->x, d->y);
    ossl_gf_mul(d->y, e->b, b);
    ossl_gf_mul(d->x, e->c, d->t);
    gf_add_RAW(c, a, d->y);
    gf_sub_nr(b, d->y, a);
    gf_sub_nr(d->y, d->z, d->x);
    gf_add_RAW(a, d->x, d->z);
    ossl_gf_mul(d->z, a, d->y);
    ossl_gf_mul(d->x, d->y, b);
    ossl_gf_mul(d->y, a, c);
    if (!before_double)
        ossl_gf_mul(d->t, b, c);
}

static void sub_niels_from_pt(curve448_point_t d, const niels_t e,
                              int before_double)
{
    gf a, b, c;

    gf_sub_nr(b, d->y, d->x);
    ossl_gf_mul(a, e->b, b);
    gf_add_RAW(b, d->x, d->y);
    ossl_gf_mul(d->y, e->a, b);
    ossl_gf_mul(d->x, e->c, d->t);
    gf_add_RAW(c, a, d->y);
    gf_sub_nr(b, d->y, a);
    gf_add_RAW(d->y, d->z, d->x);
    gf_sub_nr(a, d->z, d->x);
    ossl_gf_mul(d->z, a, d->y);
    ossl_gf_mul(d->x, d->y, b);
    ossl_gf_mul(d->y, a, c);
    if (!before_double)
        ossl_gf_mul(d->t, b, c);
}

static void add_pniels_to_pt(curve448_point_t p, const pniels_t pn,
                             int before_double)
{
    gf L0;

    ossl_gf_mul(L0, p->z, pn->z);
    gf_copy(p->z, L0);
    add_niels_to_pt(p, pn->n, before_double);
}

static void sub_pniels_from_pt(curve448_point_t p, const pniels_t pn,
                               int before_double)
{
    gf L0;

    ossl_gf_mul(L0, p->z, pn->z);
    gf_copy(p->z, L0);
    sub_niels_from_pt(p, pn->n, before_double);
}

c448_bool_t
ossl_curve448_point_eq(const curve448_point_t p,
                       const curve448_point_t q)
{
    mask_t succ;
    gf a, b;


    ossl_gf_mul(a, p->y, q->x);
    ossl_gf_mul(b, q->y, p->x);
    succ = gf_eq(a, b);

    return mask_to_bool(succ);
}

c448_bool_t
ossl_curve448_point_valid(const curve448_point_t p)
{
    mask_t out;
    gf a, b, c;

    ossl_gf_mul(a, p->x, p->y);
    ossl_gf_mul(b, p->z, p->t);
    out = gf_eq(a, b);
    ossl_gf_sqr(a, p->x);
    ossl_gf_sqr(b, p->y);
    gf_sub(a, b, a);
    ossl_gf_sqr(b, p->t);
    gf_mulw(c, b, ((-39081) - 1));
    ossl_gf_sqr(b, p->z);
    gf_add(b, b, c);
    out &= gf_eq(a, b);
    out &= ~gf_eq(p->z, ZERO);
    return mask_to_bool(out);
}

static inline void constant_time_lookup_niels(niels_s * __restrict__ ni,
                                                   const niels_t *table,
                                                   int nelts, int idx)
{
    constant_time_lookup(ni, table, sizeof(niels_s), nelts, idx);
}

void
ossl_curve448_precomputed_scalarmul(curve448_point_t out,
                                    const curve448_precomputed_s *table,
                                    const curve448_scalar_t scalar)
{
    unsigned int i, j, k;
    const unsigned int n = 5, t = 5, s = 18;
    niels_t ni;
    curve448_scalar_t scalar1x;

    ossl_curve448_scalar_add(scalar1x, scalar, precomputed_scalarmul_adjustment);
    ossl_curve448_scalar_halve(scalar1x, scalar1x);

    for (i = s; i > 0; i--) {
        if (i != s)
            point_double_internal(out, out, 0);

        for (j = 0; j < n; j++) {
            int tab = 0;
            mask_t invert;

            for (k = 0; k < t; k++) {
                unsigned int bit = (i - 1) + s * (k + j * t);

                if (bit < 446)
                    tab |=
                        (scalar1x->limb[bit / 64] >> (bit % 64) & 1) << k;
            }

            invert = (tab >> (t - 1)) - 1;
            tab ^= invert;
            tab &= (1 << (t - 1)) - 1;

            constant_time_lookup_niels(ni, &table->table[j << (t - 1)],
                                       1 << (t - 1), tab);

            cond_neg_niels(ni, invert);
            if ((i != s) || j != 0)
                add_niels_to_pt(out, ni, j == n - 1 && i != 1);
            else
                niels_to_pt(out, ni);
        }
    }

    OPENSSL_cleanse(ni, sizeof(ni));
    OPENSSL_cleanse(scalar1x, sizeof(scalar1x));
}

void
ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(
                                    uint8_t enc[57],
                                    const curve448_point_t p)
{
    gf x, y, z, t;
    curve448_point_t q;


    curve448_point_copy(q, p);

    {

        gf u;

        ossl_gf_sqr(x, q->x);
        ossl_gf_sqr(t, q->y);
        gf_add(u, x, t);
        gf_add(z, q->y, q->x);
        ossl_gf_sqr(y, z);
        gf_sub(y, y, u);
        gf_sub(z, t, x);
        ossl_gf_sqr(x, q->z);
        gf_add(t, x, x);
        gf_sub(t, t, z);
        ossl_gf_mul(x, t, y);
        ossl_gf_mul(y, z, u);
        ossl_gf_mul(z, u, t);
        OPENSSL_cleanse(u, sizeof(u));
    }


    gf_invert(z, z, 1);
    ossl_gf_mul(t, x, z);
    ossl_gf_mul(x, y, z);


    enc[57 - 1] = 0;
    gf_serialize(enc, x, 1);
    enc[57 - 1] |= 0x80 & gf_lobit(t);

    OPENSSL_cleanse(x, sizeof(x));
    OPENSSL_cleanse(y, sizeof(y));
    OPENSSL_cleanse(z, sizeof(z));
    OPENSSL_cleanse(t, sizeof(t));
    ossl_curve448_point_destroy(q);
}

c448_error_t
ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(
                                curve448_point_t p,
                                const uint8_t enc[57])
{
    uint8_t enc2[57];
    mask_t low;
    mask_t succ;

    memcpy(enc2, enc, sizeof(enc2));

    low = ~constant_time_is_zero_64(enc2[57 - 1] & 0x80);
    enc2[57 - 1] &= ~0x80;

    succ = gf_deserialize(p->y, enc2, 1, 0);
    succ &= constant_time_is_zero_64(enc2[57 - 1]);

    ossl_gf_sqr(p->x, p->y);
    gf_sub(p->z, ONE, p->x);
    gf_mulw(p->t, p->x, (-39081));
    gf_sub(p->t, ONE, p->t);

    ossl_gf_mul(p->x, p->z, p->t);
    succ &= gf_isr(p->t, p->x);

    ossl_gf_mul(p->x, p->t, p->z);
    gf_cond_neg(p->x, gf_lobit(p->x) ^ low);
    gf_copy(p->z, ONE);

    {
        gf a, b, c, d;


        ossl_gf_sqr(c, p->x);
        ossl_gf_sqr(a, p->y);
        gf_add(d, c, a);
        gf_add(p->t, p->y, p->x);
        ossl_gf_sqr(b, p->t);
        gf_sub(b, b, d);
        gf_sub(p->t, a, c);
        ossl_gf_sqr(p->x, p->z);
        gf_add(p->z, p->x, p->x);
        gf_sub(a, p->z, d);
        ossl_gf_mul(p->x, a, b);
        ossl_gf_mul(p->z, p->t, a);
        ossl_gf_mul(p->y, p->t, d);
        ossl_gf_mul(p->t, b, d);
        OPENSSL_cleanse(a, sizeof(a));
        OPENSSL_cleanse(b, sizeof(b));
        OPENSSL_cleanse(c, sizeof(c));
        OPENSSL_cleanse(d, sizeof(d));
    }

    OPENSSL_cleanse(enc2, sizeof(enc2));
    
# 380 "../crypto/ec/curve448/curve448.c" 3 4
   ((void) (0))
# 380 "../crypto/ec/curve448/curve448.c"
                                                ;

    return c448_succeed_if(mask_to_bool(succ));
}

c448_error_t
ossl_x448_int(uint8_t out[56],
              const uint8_t base[56],
              const uint8_t scalar[56])
{
    gf x1, x2, z2, x3, z3, t1, t2;
    int t;
    mask_t swap = 0;
    mask_t nz;

    (void)gf_deserialize(x1, base, 1, 0);
    gf_copy(x2, ONE);
    gf_copy(z2, ZERO);
    gf_copy(x3, x1);
    gf_copy(z3, ONE);

    for (t = 448 - 1; t >= 0; t--) {
        uint8_t sb = scalar[t / 8];
        mask_t k_t;


        if (t / 8 == 0)
            sb &= -(uint8_t)4;
        else if (t == 448 - 1)
            sb = -1;

        k_t = (sb >> (t % 8)) & 1;
        k_t = 0 - k_t;

        swap ^= k_t;
        gf_cond_swap(x2, x3, swap);
        gf_cond_swap(z2, z3, swap);
        swap = k_t;






        gf_add_RAW(t1, x2, z2);
        gf_sub_nr(t2, x2, z2);
        gf_sub_nr(z2, x3, z3);
        ossl_gf_mul(x2, t1, z2);
        gf_add_RAW(z2, z3, x3);
        ossl_gf_mul(x3, t2, z2);
        gf_sub_nr(z3, x2, x3);
        ossl_gf_sqr(z2, z3);
        ossl_gf_mul(z3, x1, z2);
        gf_add_RAW(z2, x2, x3);
        ossl_gf_sqr(x3, z2);

        ossl_gf_sqr(z2, t1);
        ossl_gf_sqr(t1, t2);
        ossl_gf_mul(x2, z2, t1);
        gf_sub_nr(t2, z2, t1);

        gf_mulw(t1, t2, -(-39081));
        gf_add_RAW(t1, t1, z2);
        ossl_gf_mul(z2, t2, t1);
    }


    gf_cond_swap(x2, x3, swap);
    gf_cond_swap(z2, z3, swap);
    gf_invert(z2, z2, 0);
    ossl_gf_mul(x1, x2, z2);
    gf_serialize(out, x1, 1);
    nz = ~gf_eq(x1, ZERO);

    OPENSSL_cleanse(x1, sizeof(x1));
    OPENSSL_cleanse(x2, sizeof(x2));
    OPENSSL_cleanse(z2, sizeof(z2));
    OPENSSL_cleanse(x3, sizeof(x3));
    OPENSSL_cleanse(z3, sizeof(z3));
    OPENSSL_cleanse(t1, sizeof(t1));
    OPENSSL_cleanse(t2, sizeof(t2));

    return c448_succeed_if(mask_to_bool(nz));
}

void
ossl_curve448_point_mul_by_ratio_and_encode_like_x448(uint8_t
                                                      out[56],
                                                      const curve448_point_t p)
{
    curve448_point_t q;

    curve448_point_copy(q, p);
    gf_invert(q->t, q->x, 0);
    ossl_gf_mul(q->z, q->t, q->y);
    ossl_gf_sqr(q->y, q->z);
    gf_serialize(out, q->y, 1);
    ossl_curve448_point_destroy(q);
}

void ossl_x448_derive_public_key(uint8_t out[56],
                                 const uint8_t scalar[56])
{

    uint8_t scalar2[56];
    curve448_scalar_t the_scalar;
    curve448_point_t p;
    unsigned int i;

    memcpy(scalar2, scalar, sizeof(scalar2));
    scalar2[0] &= -(uint8_t)4;

    scalar2[56 - 1] &= ~((0u - 1u) << ((448 + 7) % 8));
    scalar2[56 - 1] |= 1 << ((448 + 7) % 8);

    ossl_curve448_scalar_decode_long(the_scalar, scalar2, sizeof(scalar2));


    for (i = 1; i < 2; i <<= 1)
        ossl_curve448_scalar_halve(the_scalar, the_scalar);

    ossl_curve448_precomputed_scalarmul(p, ossl_curve448_precomputed_base,
                                        the_scalar);
    ossl_curve448_point_mul_by_ratio_and_encode_like_x448(out, p);
    ossl_curve448_point_destroy(p);
}


struct smvt_control {
    int power, addend;
};
# 552 "../crypto/ec/curve448/curve448.c"
static int recode_wnaf(struct smvt_control *control,

                       const curve448_scalar_t scalar,
                       unsigned int table_bits)
{
    unsigned int table_size = 446 / (table_bits + 1) + 3;
    int position = table_size - 1;
    uint64_t current = scalar->limb[0] & 0xFFFF;
    uint32_t mask = (1 << (table_bits + 1)) - 1;
    unsigned int w;
    const unsigned int B_OVER_16 = sizeof(scalar->limb[0]) / 2;
    unsigned int n, i;


    control[position].power = -1;
    control[position].addend = 0;
    position--;







    for (w = 1; w < (446 - 1) / 16 + 3; w++) {
        if (w < (446 - 1) / 16 + 1) {

            current += (uint32_t)((scalar->limb[w / B_OVER_16]
                       >> (16 * (w % B_OVER_16))) << 16);
        }

        while (current & 0xFFFF) {
            uint32_t pos = __builtin_ctz((uint32_t)current);
            uint32_t odd = (uint32_t)current >> pos;
            int32_t delta = odd & mask;

            
# 588 "../crypto/ec/curve448/curve448.c" 3 4
           ((void) (0))
# 588 "../crypto/ec/curve448/curve448.c"
                                ;
            if (odd & (1 << (table_bits + 1)))
                delta -= (1 << (table_bits + 1));







            current -= delta * (1 << pos);
            control[position].power = pos + 16 * (w - 1);
            control[position].addend = delta;
            position--;
        }
        current >>= 16;
    }
    
# 605 "../crypto/ec/curve448/curve448.c" 3 4
   ((void) (0))
# 605 "../crypto/ec/curve448/curve448.c"
                       ;

    position++;
    n = table_size - position;
    for (i = 0; i < n; i++)
        control[i] = control[i + position];

    return n - 1;
}

static void prepare_wnaf_table(pniels_t *output,
                               const curve448_point_t working,
                               unsigned int tbits)
{
    curve448_point_t tmp;
    int i;
    pniels_t twop;

    pt_to_pniels(output[0], working);

    if (tbits == 0)
        return;

    ossl_curve448_point_double(tmp, working);
    pt_to_pniels(twop, tmp);

    add_pniels_to_pt(tmp, output[0], 0);
    pt_to_pniels(output[1], tmp);

    for (i = 2; i < 1 << tbits; i++) {
        add_pniels_to_pt(tmp, twop, 0);
        pt_to_pniels(output[i], tmp);
    }

    ossl_curve448_point_destroy(tmp);
    OPENSSL_cleanse(twop, sizeof(twop));
}

void
ossl_curve448_base_double_scalarmul_non_secret(curve448_point_t combo,
                                               const curve448_scalar_t scalar1,
                                               const curve448_point_t base2,
                                               const curve448_scalar_t scalar2)
{
    const int table_bits_var = 3;
    const int table_bits_pre = 5;
    struct smvt_control control_var[446 /
                                    (3 + 1) + 3];
    struct smvt_control control_pre[446 /
                                    (5 + 1) + 3];
    int ncb_pre = recode_wnaf(control_pre, scalar1, table_bits_pre);
    int ncb_var = recode_wnaf(control_var, scalar2, table_bits_var);
    pniels_t precmp_var[1 << 3];
    int contp = 0, contv = 0, i;

    prepare_wnaf_table(precmp_var, base2, table_bits_var);
    i = control_var[0].power;

    if (i < 0) {
        curve448_point_copy(combo, ossl_curve448_point_identity);
        return;
    }
    if (i > control_pre[0].power) {
        pniels_to_pt(combo, precmp_var[control_var[0].addend >> 1]);
        contv++;
    } else if (i == control_pre[0].power && i >= 0) {
        pniels_to_pt(combo, precmp_var[control_var[0].addend >> 1]);
        add_niels_to_pt(combo,
                        ossl_curve448_wnaf_base[control_pre[0].addend >> 1],
                        i);
        contv++;
        contp++;
    } else {
        i = control_pre[0].power;
        niels_to_pt(combo, ossl_curve448_wnaf_base[control_pre[0].addend >> 1]);
        contp++;
    }

    for (i--; i >= 0; i--) {
        int cv = (i == control_var[contv].power);
        int cp = (i == control_pre[contp].power);

        point_double_internal(combo, combo, i && !(cv || cp));

        if (cv) {
            
# 690 "../crypto/ec/curve448/curve448.c" 3 4
           ((void) (0))
# 690 "../crypto/ec/curve448/curve448.c"
                                            ;

            if (control_var[contv].addend > 0)
                add_pniels_to_pt(combo,
                                 precmp_var[control_var[contv].addend >> 1],
                                 i && !cp);
            else
                sub_pniels_from_pt(combo,
                                   precmp_var[(-control_var[contv].addend)
                                              >> 1], i && !cp);
            contv++;
        }

        if (cp) {
            
# 704 "../crypto/ec/curve448/curve448.c" 3 4
           ((void) (0))
# 704 "../crypto/ec/curve448/curve448.c"
                                            ;

            if (control_pre[contp].addend > 0)
                add_niels_to_pt(combo,
                                ossl_curve448_wnaf_base[control_pre[contp].addend
                                                   >> 1], i);
            else
                sub_niels_from_pt(combo,
                                  ossl_curve448_wnaf_base[(-control_pre
                                                      [contp].addend) >> 1], i);
            contp++;
        }
    }


    OPENSSL_cleanse(control_var, sizeof(control_var));
    OPENSSL_cleanse(control_pre, sizeof(control_pre));
    OPENSSL_cleanse(precmp_var, sizeof(precmp_var));

    
# 723 "../crypto/ec/curve448/curve448.c" 3 4
   ((void) (0))
# 723 "../crypto/ec/curve448/curve448.c"
                           ;
    (void)ncb_var;
    
# 725 "../crypto/ec/curve448/curve448.c" 3 4
   ((void) (0))
# 725 "../crypto/ec/curve448/curve448.c"
                           ;
    (void)ncb_pre;
}

void ossl_curve448_point_destroy(curve448_point_t point)
{
    OPENSSL_cleanse(point, sizeof(curve448_point_t));
}

int ossl_x448(uint8_t out_shared_key[56], const uint8_t private_key[56],
              const uint8_t peer_public_value[56])
{
    return ossl_x448_int(out_shared_key, peer_public_value, private_key)
           == C448_SUCCESS;
}

void ossl_x448_public_from_private(uint8_t out_public_value[56],
                                   const uint8_t private_key[56])
{
    ossl_x448_derive_public_key(out_public_value, private_key);
}

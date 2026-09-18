# 0 "../crypto/packet.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/packet.c"
# 10 "../crypto/packet.c"
# 1 "../include/internal/cryptlib.h" 1
# 12 "../include/internal/cryptlib.h"
        
# 21 "../include/internal/cryptlib.h"
# 1 "../include/internal/common.h" 1
# 12 "../include/internal/common.h"
        

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

# 15 "../include/internal/common.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
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

# 16 "../include/internal/common.h" 2
# 1 "include/openssl/configuration.h" 1
# 16 "include/openssl/configuration.h"
        
# 17 "../include/internal/common.h" 2

# 1 "../include/internal/e_os.h" 1
# 13 "../include/internal/e_os.h"
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
# 14 "../include/internal/e_os.h" 2
# 1 "../include/openssl/opensslconf.h" 1
# 12 "../include/openssl/opensslconf.h"
        


# 1 "../include/openssl/macros.h" 1
# 12 "../include/openssl/macros.h"
        


# 1 "include/openssl/opensslv.h" 1
# 15 "include/openssl/opensslv.h"
        
# 16 "../include/openssl/macros.h" 2
# 16 "../include/openssl/opensslconf.h" 2
# 15 "../include/internal/e_os.h" 2

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
# 17 "../include/internal/e_os.h" 2
# 1 "include/openssl/crypto.h" 1
# 18 "include/openssl/crypto.h"
        







# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 30 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 34 "/usr/include/time.h" 2 3 4





# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h" 1 3 4







# 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h" 3 4
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
# 27 "../include/openssl/types.h" 2
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
# 18 "../include/internal/e_os.h" 2
# 1 "../include/internal/numbers.h" 1
# 12 "../include/internal/numbers.h"
        

# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/limits.h" 1 3 4
# 15 "../include/internal/numbers.h" 2
# 91 "../include/internal/numbers.h"
typedef __int128_t int128_t;
typedef __uint128_t uint128_t;
# 19 "../include/internal/e_os.h" 2
# 177 "../include/internal/e_os.h"
# 1 "/usr/include/x86_64-linux-gnu/sys/time.h" 1 3 4
# 34 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 52 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 52 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };
# 66 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    void *__restrict __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
# 187 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 178 "../include/internal/e_os.h" 2
# 225 "../include/internal/e_os.h"
# 1 "/usr/include/unistd.h" 1 3 4
# 27 "/usr/include/unistd.h" 3 4

# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;
# 274 "/usr/include/unistd.h" 3 4
typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 304 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
# 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 353 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 417 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 525 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 543 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 598 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 660 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));






extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 700 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 756 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));




extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







# 1 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4








extern char *optarg;
# 50 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 91 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


# 28 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 2 3 4


# 49 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4

# 870 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 967 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 991 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1014 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1035 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1056 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1079 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1115 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 1124 "/usr/include/unistd.h" 3 4
extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 1161 "/usr/include/unistd.h" 3 4
int getentropy (void *__buffer, size_t __length) ;
# 1170 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/unistd_ext.h" 1 3 4
# 1171 "/usr/include/unistd.h" 2 3 4


# 226 "../include/internal/e_os.h" 2
# 19 "../include/internal/common.h" 2
# 1 "../include/internal/nelem.h" 1
# 12 "../include/internal/nelem.h"
        
# 20 "../include/internal/common.h" 2
# 187 "../include/internal/common.h"

# 187 "../include/internal/common.h"
static inline int ossl_ends_with_dirsep(const char *path)
{
    if (*path != '\0')
        path += strlen(path) - 1;







    return *path == '/';
}

static inline char ossl_determine_dirsep(const char *path)
{
    if (ossl_ends_with_dirsep(path))
        return '\0';






    return '/';

}

static inline int ossl_is_absolute_path(const char *path)
{
# 228 "../include/internal/common.h"
    return path[0] == '/';
}
# 22 "../include/internal/cryptlib.h" 2


# 1 "../include/openssl/buffer.h" 1
# 12 "../include/openssl/buffer.h"
        






# 1 "../include/openssl/types.h" 1
# 20 "../include/openssl/buffer.h" 2



# 1 "../include/openssl/buffererr.h" 1
# 13 "../include/openssl/buffererr.h"
        
# 24 "../include/openssl/buffer.h" 2






# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 31 "../include/openssl/buffer.h" 2
# 42 "../include/openssl/buffer.h"
struct buf_mem_st {
    size_t length;
    char *data;
    size_t max;
    unsigned long flags;
};



BUF_MEM *BUF_MEM_new(void);
BUF_MEM *BUF_MEM_new_ex(unsigned long flags);
void BUF_MEM_free(BUF_MEM *a);
size_t BUF_MEM_grow(BUF_MEM *str, size_t len);
size_t BUF_MEM_grow_clean(BUF_MEM *str, size_t len);
void BUF_reverse(unsigned char *out, const unsigned char *in, size_t siz);
# 25 "../include/internal/cryptlib.h" 2
# 1 "include/openssl/bio.h" 1
# 16 "include/openssl/bio.h"
        
# 28 "include/openssl/bio.h"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 1 3 4
# 29 "include/openssl/bio.h" 2


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
# 26 "../include/internal/cryptlib.h" 2
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
# 27 "../include/internal/cryptlib.h" 2
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
# 28 "../include/internal/cryptlib.h" 2

typedef struct ex_callback_st EX_CALLBACK;
struct stack_st_EX_CALLBACK; typedef int (*sk_EX_CALLBACK_compfunc)(const EX_CALLBACK * const *a, const EX_CALLBACK *const *b); typedef void (*sk_EX_CALLBACK_freefunc)(EX_CALLBACK *a); typedef EX_CALLBACK * (*sk_EX_CALLBACK_copyfunc)(const EX_CALLBACK *a); static __attribute__((unused)) inline int sk_EX_CALLBACK_num(const struct stack_st_EX_CALLBACK *sk) { return OPENSSL_sk_num((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline EX_CALLBACK *sk_EX_CALLBACK_value(const struct stack_st_EX_CALLBACK *sk, int idx) { return (EX_CALLBACK *)OPENSSL_sk_value((const OPENSSL_STACK *)sk, idx); } static __attribute__((unused)) inline struct stack_st_EX_CALLBACK *sk_EX_CALLBACK_new(sk_EX_CALLBACK_compfunc compare) { return (struct stack_st_EX_CALLBACK *)OPENSSL_sk_new((OPENSSL_sk_compfunc)compare); } static __attribute__((unused)) inline struct stack_st_EX_CALLBACK *sk_EX_CALLBACK_new_null(void) { return (struct stack_st_EX_CALLBACK *)OPENSSL_sk_new_null(); } static __attribute__((unused)) inline struct stack_st_EX_CALLBACK *sk_EX_CALLBACK_new_reserve(sk_EX_CALLBACK_compfunc compare, int n) { return (struct stack_st_EX_CALLBACK *)OPENSSL_sk_new_reserve((OPENSSL_sk_compfunc)compare, n); } static __attribute__((unused)) inline int sk_EX_CALLBACK_reserve(struct stack_st_EX_CALLBACK *sk, int n) { return OPENSSL_sk_reserve((OPENSSL_STACK *)sk, n); } static __attribute__((unused)) inline void sk_EX_CALLBACK_free(struct stack_st_EX_CALLBACK *sk) { OPENSSL_sk_free((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_EX_CALLBACK_zero(struct stack_st_EX_CALLBACK *sk) { OPENSSL_sk_zero((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline EX_CALLBACK *sk_EX_CALLBACK_delete(struct stack_st_EX_CALLBACK *sk, int i) { return (EX_CALLBACK *)OPENSSL_sk_delete((OPENSSL_STACK *)sk, i); } static __attribute__((unused)) inline EX_CALLBACK *sk_EX_CALLBACK_delete_ptr(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr) { return (EX_CALLBACK *)OPENSSL_sk_delete_ptr((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EX_CALLBACK_push(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr) { return OPENSSL_sk_push((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EX_CALLBACK_unshift(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr) { return OPENSSL_sk_unshift((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline EX_CALLBACK *sk_EX_CALLBACK_pop(struct stack_st_EX_CALLBACK *sk) { return (EX_CALLBACK *)OPENSSL_sk_pop((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline EX_CALLBACK *sk_EX_CALLBACK_shift(struct stack_st_EX_CALLBACK *sk) { return (EX_CALLBACK *)OPENSSL_sk_shift((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline void sk_EX_CALLBACK_pop_free(struct stack_st_EX_CALLBACK *sk, sk_EX_CALLBACK_freefunc freefunc) { OPENSSL_sk_pop_free((OPENSSL_STACK *)sk, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline int sk_EX_CALLBACK_insert(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr, int idx) { return OPENSSL_sk_insert((OPENSSL_STACK *)sk, (const void *)ptr, idx); } static __attribute__((unused)) inline EX_CALLBACK *sk_EX_CALLBACK_set(struct stack_st_EX_CALLBACK *sk, int idx, EX_CALLBACK *ptr) { return (EX_CALLBACK *)OPENSSL_sk_set((OPENSSL_STACK *)sk, idx, (const void *)ptr); } static __attribute__((unused)) inline int sk_EX_CALLBACK_find(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr) { return OPENSSL_sk_find((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EX_CALLBACK_find_ex(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr) { return OPENSSL_sk_find_ex((OPENSSL_STACK *)sk, (const void *)ptr); } static __attribute__((unused)) inline int sk_EX_CALLBACK_find_all(struct stack_st_EX_CALLBACK *sk, EX_CALLBACK *ptr, int *pnum) { return OPENSSL_sk_find_all((OPENSSL_STACK *)sk, (const void *)ptr, pnum); } static __attribute__((unused)) inline void sk_EX_CALLBACK_sort(struct stack_st_EX_CALLBACK *sk) { OPENSSL_sk_sort((OPENSSL_STACK *)sk); } static __attribute__((unused)) inline int sk_EX_CALLBACK_is_sorted(const struct stack_st_EX_CALLBACK *sk) { return OPENSSL_sk_is_sorted((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_EX_CALLBACK * sk_EX_CALLBACK_dup(const struct stack_st_EX_CALLBACK *sk) { return (struct stack_st_EX_CALLBACK *)OPENSSL_sk_dup((const OPENSSL_STACK *)sk); } static __attribute__((unused)) inline struct stack_st_EX_CALLBACK *sk_EX_CALLBACK_deep_copy(const struct stack_st_EX_CALLBACK *sk, sk_EX_CALLBACK_copyfunc copyfunc, sk_EX_CALLBACK_freefunc freefunc) { return (struct stack_st_EX_CALLBACK *)OPENSSL_sk_deep_copy((const OPENSSL_STACK *)sk, (OPENSSL_sk_copyfunc)copyfunc, (OPENSSL_sk_freefunc)freefunc); } static __attribute__((unused)) inline sk_EX_CALLBACK_compfunc sk_EX_CALLBACK_set_cmp_func(struct stack_st_EX_CALLBACK *sk, sk_EX_CALLBACK_compfunc compare) { return (sk_EX_CALLBACK_compfunc)OPENSSL_sk_set_cmp_func((OPENSSL_STACK *)sk, (OPENSSL_sk_compfunc)compare); }

typedef struct mem_st MEM;
struct lhash_st_MEM { union lh_MEM_dummy { void* d1; unsigned long d2; int d3; } dummy; }; static unsigned long lh_MEM_hfn_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const MEM *) = (unsigned long (*)(const MEM *))hfn; return hfn_conv((const MEM *)data); } static int lh_MEM_cfn_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const MEM *, const MEM *) = (int (*)(const MEM *, const MEM *))cfn; return cfn_conv((const MEM *)da, (const MEM *)db); } static __attribute__((unused)) inline void lh_MEM_free(struct lhash_st_MEM *lh) { OPENSSL_LH_free((OPENSSL_LHASH *)lh); } static __attribute__((unused)) inline void lh_MEM_flush(struct lhash_st_MEM *lh) { OPENSSL_LH_flush((OPENSSL_LHASH *)lh); } static __attribute__((unused)) inline MEM * lh_MEM_insert(struct lhash_st_MEM *lh, MEM *d) { return (MEM *)OPENSSL_LH_insert((OPENSSL_LHASH *)lh, d); } static __attribute__((unused)) inline MEM * lh_MEM_delete(struct lhash_st_MEM *lh, const MEM *d) { return (MEM *)OPENSSL_LH_delete((OPENSSL_LHASH *)lh, d); } static __attribute__((unused)) inline MEM * lh_MEM_retrieve(struct lhash_st_MEM *lh, const MEM *d) { return (MEM *)OPENSSL_LH_retrieve((OPENSSL_LHASH *)lh, d); } static __attribute__((unused)) inline int lh_MEM_error(struct lhash_st_MEM *lh) { return OPENSSL_LH_error((OPENSSL_LHASH *)lh); } static __attribute__((unused)) inline unsigned long lh_MEM_num_items(struct lhash_st_MEM *lh) { return OPENSSL_LH_num_items((OPENSSL_LHASH *)lh); } static __attribute__((unused)) inline unsigned long lh_MEM_get_down_load(struct lhash_st_MEM *lh) { return OPENSSL_LH_get_down_load((OPENSSL_LHASH *)lh); } static __attribute__((unused)) inline void lh_MEM_set_down_load(struct lhash_st_MEM *lh, unsigned long dl) { OPENSSL_LH_set_down_load((OPENSSL_LHASH *)lh, dl); } static __attribute__((unused)) inline void lh_MEM_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(MEM *) = (void (*)(MEM *))doall; doall_conv((MEM *)node); } static __attribute__((unused)) inline void lh_MEM_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(MEM *, void *) = (void (*)(MEM *, void *))doall; doall_conv((MEM *)node, arg); } static __attribute__((unused)) inline void lh_MEM_doall(struct lhash_st_MEM *lh, void (*doall)(MEM *)) { OPENSSL_LH_doall((OPENSSL_LHASH *)lh, (OPENSSL_LH_DOALL_FUNC)doall); } static __attribute__((unused)) inline struct lhash_st_MEM * lh_MEM_new(unsigned long (*hfn)(const MEM *), int (*cfn)(const MEM *, const MEM *)) { return (struct lhash_st_MEM *)OPENSSL_LH_set_thunks(OPENSSL_LH_new((OPENSSL_LH_HASHFUNC)hfn, (OPENSSL_LH_COMPFUNC)cfn), lh_MEM_hfn_thunk, lh_MEM_cfn_thunk, lh_MEM_doall_thunk, lh_MEM_doall_arg_thunk); } static __attribute__((unused)) inline void lh_MEM_doall_arg(struct lhash_st_MEM *lh, void (*doallarg)(MEM *, void *), void *arg) { OPENSSL_LH_doall_arg((OPENSSL_LHASH *)lh, (OPENSSL_LH_DOALL_FUNCARG)doallarg, arg); } struct lhash_st_MEM;

void OPENSSL_cpuid_setup(void);



extern unsigned int OPENSSL_ia32cap_P[];

void OPENSSL_showfatal(const char *fmta, ...);
int ossl_do_ex_data_init(OSSL_LIB_CTX *ctx);
void ossl_crypto_cleanup_all_ex_data_int(OSSL_LIB_CTX *ctx);
int openssl_init_fork_handlers(void);
int openssl_get_fork_id(void);

char *ossl_safe_getenv(const char *name);

extern CRYPTO_RWLOCK *memdbg_lock;
int openssl_strerror_r(int errnum, char *buf, size_t buflen);

FILE *openssl_fopen(const char *filename, const char *mode);




uint32_t OPENSSL_rdtsc(void);
size_t OPENSSL_instrument_bus(unsigned int *, size_t);
size_t OPENSSL_instrument_bus2(unsigned int *, size_t, size_t);







struct ex_callback_st {
    long argl;
    void *argp;
    int priority;
    CRYPTO_EX_new *new_func;
    CRYPTO_EX_free *free_func;
    CRYPTO_EX_dup *dup_func;
};





typedef struct ex_callbacks_st {
    struct stack_st_EX_CALLBACK *meth;
} EX_CALLBACKS;

typedef struct ossl_ex_data_global_st {
    CRYPTO_RWLOCK *ex_data_lock;
    EX_CALLBACKS ex_data[18];
} OSSL_EX_DATA_GLOBAL;
# 122 "../include/internal/cryptlib.h"
OSSL_LIB_CTX *ossl_lib_ctx_get_concrete(OSSL_LIB_CTX *ctx);
int ossl_lib_ctx_is_default(OSSL_LIB_CTX *ctx);
int ossl_lib_ctx_is_global_default(OSSL_LIB_CTX *ctx);


void *ossl_lib_ctx_get_data(OSSL_LIB_CTX *, int );

void ossl_lib_ctx_default_deinit(void);
OSSL_EX_DATA_GLOBAL *ossl_lib_ctx_get_ex_data_global(OSSL_LIB_CTX *ctx);

const char *ossl_lib_ctx_get_descriptor(OSSL_LIB_CTX *libctx);
CRYPTO_THREAD_LOCAL *ossl_lib_ctx_get_rcukey(OSSL_LIB_CTX *libctx);

OSSL_LIB_CTX *ossl_crypto_ex_data_get_ossl_lib_ctx(const CRYPTO_EX_DATA *ad);
int ossl_crypto_new_ex_data_ex(OSSL_LIB_CTX *ctx, int class_index, void *obj,
                               CRYPTO_EX_DATA *ad);
int ossl_crypto_get_ex_new_index_ex(OSSL_LIB_CTX *ctx, int class_index,
                                    long argl, void *argp,
                                    CRYPTO_EX_new *new_func,
                                    CRYPTO_EX_dup *dup_func,
                                    CRYPTO_EX_free *free_func,
                                    int priority);
int ossl_crypto_free_ex_index_ex(OSSL_LIB_CTX *ctx, int class_index, int idx);







const void *ossl_bsearch(const void *key, const void *base, int num,
                         int size, int (*cmp) (const void *, const void *),
                         int flags);

char *ossl_sk_ASN1_UTF8STRING2text(struct stack_st_ASN1_UTF8STRING *text,
                                   const char *sep, size_t max_len);
char *ossl_ipaddr_to_asc(unsigned char *p, int len);

char *ossl_buf2hexstr_sep(const unsigned char *buf, long buflen, char sep);
unsigned char *ossl_hexstr2buf_sep(const char *str, long *buflen,
                                   const char sep);
# 11 "../crypto/packet.c" 2
# 1 "../include/internal/packet.h" 1
# 12 "../include/internal/packet.h"
        
# 22 "../include/internal/packet.h"
typedef struct {

    const unsigned char *curr;

    size_t remaining;
} PACKET;


static inline void packet_forward(PACKET *pkt, size_t len)
{
    pkt->curr += len;
    pkt->remaining -= len;
}




static inline size_t PACKET_remaining(const PACKET *pkt)
{
    return pkt->remaining;
}







static inline const unsigned char *PACKET_end(const PACKET *pkt)
{
    return pkt->curr + pkt->remaining;
}





static inline const unsigned char *PACKET_data(const PACKET *pkt)
{
    return pkt->curr;
}






 static inline int PACKET_buf_init(PACKET *pkt,
                                              const unsigned char *buf,
                                              size_t len)
{

    if (len > (size_t)(
# 74 "../include/internal/packet.h" 3 4
                      (18446744073709551615UL) 
# 74 "../include/internal/packet.h"
                               / 2))
        return 0;

    pkt->curr = buf;
    pkt->remaining = len;
    return 1;
}


static inline void PACKET_null_init(PACKET *pkt)
{
    pkt->curr = 
# 85 "../include/internal/packet.h" 3 4
               ((void *)0)
# 85 "../include/internal/packet.h"
                   ;
    pkt->remaining = 0;
}






 static inline int PACKET_equal(const PACKET *pkt, const void *ptr,
                                           size_t num)
{
    if (PACKET_remaining(pkt) != num)
        return 0;
    return CRYPTO_memcmp(pkt->curr, ptr, num) == 0;
}






 static inline int PACKET_peek_sub_packet(const PACKET *pkt,
                                                     PACKET *subpkt, size_t len)
{
    if (PACKET_remaining(pkt) < len)
        return 0;

    return PACKET_buf_init(subpkt, pkt->curr, len);
}






 static inline int PACKET_get_sub_packet(PACKET *pkt,
                                                    PACKET *subpkt, size_t len)
{
    if (!PACKET_peek_sub_packet(pkt, subpkt, len))
        return 0;

    packet_forward(pkt, len);

    return 1;
}





 static inline int PACKET_peek_net_2(const PACKET *pkt,
                                                unsigned int *data)
{
    if (PACKET_remaining(pkt) < 2)
        return 0;

    *data = ((unsigned int)(*pkt->curr)) << 8;
    *data |= *(pkt->curr + 1);

    return 1;
}



 static inline int PACKET_get_net_2(PACKET *pkt, unsigned int *data)
{
    if (!PACKET_peek_net_2(pkt, data))
        return 0;

    packet_forward(pkt, 2);

    return 1;
}


 static inline int PACKET_get_net_2_len(PACKET *pkt, size_t *data)
{
    unsigned int i;
    int ret = PACKET_get_net_2(pkt, &i);

    if (ret)
        *data = (size_t)i;

    return ret;
}





 static inline int PACKET_peek_net_3(const PACKET *pkt,
                                                unsigned long *data)
{
    if (PACKET_remaining(pkt) < 3)
        return 0;

    *data = ((unsigned long)(*pkt->curr)) << 16;
    *data |= ((unsigned long)(*(pkt->curr + 1))) << 8;
    *data |= *(pkt->curr + 2);

    return 1;
}



 static inline int PACKET_get_net_3(PACKET *pkt, unsigned long *data)
{
    if (!PACKET_peek_net_3(pkt, data))
        return 0;

    packet_forward(pkt, 3);

    return 1;
}


 static inline int PACKET_get_net_3_len(PACKET *pkt, size_t *data)
{
    unsigned long i;
    int ret = PACKET_get_net_3(pkt, &i);

    if (ret)
        *data = (size_t)i;

    return ret;
}





 static inline int PACKET_peek_net_4(const PACKET *pkt,
                                                unsigned long *data)
{
    if (PACKET_remaining(pkt) < 4)
        return 0;

    *data = ((unsigned long)(*pkt->curr)) << 24;
    *data |= ((unsigned long)(*(pkt->curr + 1))) << 16;
    *data |= ((unsigned long)(*(pkt->curr + 2))) << 8;
    *data |= *(pkt->curr + 3);

    return 1;
}





 static inline int PACKET_peek_net_8(const PACKET *pkt,
                                                uint64_t *data)
{
    if (PACKET_remaining(pkt) < 8)
        return 0;

    *data = ((uint64_t)(*pkt->curr)) << 56;
    *data |= ((uint64_t)(*(pkt->curr + 1))) << 48;
    *data |= ((uint64_t)(*(pkt->curr + 2))) << 40;
    *data |= ((uint64_t)(*(pkt->curr + 3))) << 32;
    *data |= ((uint64_t)(*(pkt->curr + 4))) << 24;
    *data |= ((uint64_t)(*(pkt->curr + 5))) << 16;
    *data |= ((uint64_t)(*(pkt->curr + 6))) << 8;
    *data |= *(pkt->curr + 7);

    return 1;
}



 static inline int PACKET_get_net_4(PACKET *pkt, unsigned long *data)
{
    if (!PACKET_peek_net_4(pkt, data))
        return 0;

    packet_forward(pkt, 4);

    return 1;
}


 static inline int PACKET_get_net_4_len(PACKET *pkt, size_t *data)
{
    unsigned long i;
    int ret = PACKET_get_net_4(pkt, &i);

    if (ret)
        *data = (size_t)i;

    return ret;
}


 static inline int PACKET_get_net_8(PACKET *pkt, uint64_t *data)
{
    if (!PACKET_peek_net_8(pkt, data))
        return 0;

    packet_forward(pkt, 8);

    return 1;
}


 static inline int PACKET_peek_1(const PACKET *pkt,
                                            unsigned int *data)
{
    if (!PACKET_remaining(pkt))
        return 0;

    *data = *pkt->curr;

    return 1;
}


 static inline int PACKET_get_1(PACKET *pkt, unsigned int *data)
{
    if (!PACKET_peek_1(pkt, data))
        return 0;

    packet_forward(pkt, 1);

    return 1;
}


 static inline int PACKET_get_1_len(PACKET *pkt, size_t *data)
{
    unsigned int i;
    int ret = PACKET_get_1(pkt, &i);

    if (ret)
        *data = (size_t)i;

    return ret;
}





 static inline int PACKET_peek_4(const PACKET *pkt,
                                            unsigned long *data)
{
    if (PACKET_remaining(pkt) < 4)
        return 0;

    *data = *pkt->curr;
    *data |= ((unsigned long)(*(pkt->curr + 1))) << 8;
    *data |= ((unsigned long)(*(pkt->curr + 2))) << 16;
    *data |= ((unsigned long)(*(pkt->curr + 3))) << 24;

    return 1;
}






 static inline int PACKET_get_4(PACKET *pkt, unsigned long *data)
{
    if (!PACKET_peek_4(pkt, data))
        return 0;

    packet_forward(pkt, 4);

    return 1;
}







 static inline int PACKET_peek_bytes(const PACKET *pkt,
                                                const unsigned char **data,
                                                size_t len)
{
    if (PACKET_remaining(pkt) < len)
        return 0;

    *data = pkt->curr;

    return 1;
}







 static inline int PACKET_get_bytes(PACKET *pkt,
                                               const unsigned char **data,
                                               size_t len)
{
    if (!PACKET_peek_bytes(pkt, data, len))
        return 0;

    packet_forward(pkt, len);

    return 1;
}


 static inline int PACKET_peek_copy_bytes(const PACKET *pkt,
                                                     unsigned char *data,
                                                     size_t len)
{
    if (PACKET_remaining(pkt) < len)
        return 0;

    memcpy(data, pkt->curr, len);

    return 1;
}





 static inline int PACKET_copy_bytes(PACKET *pkt,
                                                unsigned char *data, size_t len)
{
    if (!PACKET_peek_copy_bytes(pkt, data, len))
        return 0;

    packet_forward(pkt, len);

    return 1;
}
# 427 "../include/internal/packet.h"
 static inline int PACKET_copy_all(const PACKET *pkt,
                                              unsigned char *dest,
                                              size_t dest_len, size_t *len)
{
    if (PACKET_remaining(pkt) > dest_len) {
        *len = 0;
        return 0;
    }
    *len = pkt->remaining;
    memcpy(dest, pkt->curr, pkt->remaining);
    return 1;
}
# 449 "../include/internal/packet.h"
 static inline int PACKET_memdup(const PACKET *pkt,
                                            unsigned char **data, size_t *len)
{
    size_t length;

    CRYPTO_free(*data, "../include/internal/packet.h", 454);
    *data = 
# 455 "../include/internal/packet.h" 3 4
           ((void *)0)
# 455 "../include/internal/packet.h"
               ;
    *len = 0;

    length = PACKET_remaining(pkt);

    if (length == 0)
        return 1;

    *data = CRYPTO_memdup((pkt->curr), length, "../include/internal/packet.h", 463);
    if (*data == 
# 464 "../include/internal/packet.h" 3 4
                ((void *)0)
# 464 "../include/internal/packet.h"
                    )
        return 0;

    *len = length;
    return 1;
}
# 481 "../include/internal/packet.h"
 static inline int PACKET_strndup(const PACKET *pkt, char **data)
{
    CRYPTO_free(*data, "../include/internal/packet.h", 483);


    *data = CRYPTO_strndup((const char *)pkt->curr, PACKET_remaining(pkt), "../include/internal/packet.h", 486);
    return (*data != 
# 487 "../include/internal/packet.h" 3 4
                    ((void *)0)
# 487 "../include/internal/packet.h"
                        );
}


static inline int PACKET_contains_zero_byte(const PACKET *pkt)
{
    return memchr(pkt->curr, 0, pkt->remaining) != 
# 493 "../include/internal/packet.h" 3 4
                                                  ((void *)0)
# 493 "../include/internal/packet.h"
                                                      ;
}


 static inline int PACKET_forward(PACKET *pkt, size_t len)
{
    if (PACKET_remaining(pkt) < len)
        return 0;

    packet_forward(pkt, len);

    return 1;
}
# 514 "../include/internal/packet.h"
 static inline int PACKET_get_length_prefixed_1(PACKET *pkt,
                                                           PACKET *subpkt)
{
    unsigned int length;
    const unsigned char *data;
    PACKET tmp = *pkt;
    if (!PACKET_get_1(&tmp, &length) ||
        !PACKET_get_bytes(&tmp, &data, (size_t)length)) {
        return 0;
    }

    *pkt = tmp;
    subpkt->curr = data;
    subpkt->remaining = length;

    return 1;
}





 static inline int PACKET_as_length_prefixed_1(PACKET *pkt,
                                                          PACKET *subpkt)
{
    unsigned int length;
    const unsigned char *data;
    PACKET tmp = *pkt;
    if (!PACKET_get_1(&tmp, &length) ||
        !PACKET_get_bytes(&tmp, &data, (size_t)length) ||
        PACKET_remaining(&tmp) != 0) {
        return 0;
    }

    *pkt = tmp;
    subpkt->curr = data;
    subpkt->remaining = length;

    return 1;
}
# 562 "../include/internal/packet.h"
 static inline int PACKET_get_length_prefixed_2(PACKET *pkt,
                                                           PACKET *subpkt)
{
    unsigned int length;
    const unsigned char *data;
    PACKET tmp = *pkt;

    if (!PACKET_get_net_2(&tmp, &length) ||
        !PACKET_get_bytes(&tmp, &data, (size_t)length)) {
        return 0;
    }

    *pkt = tmp;
    subpkt->curr = data;
    subpkt->remaining = length;

    return 1;
}





 static inline int PACKET_as_length_prefixed_2(PACKET *pkt,
                                                          PACKET *subpkt)
{
    unsigned int length;
    const unsigned char *data;
    PACKET tmp = *pkt;

    if (!PACKET_get_net_2(&tmp, &length) ||
        !PACKET_get_bytes(&tmp, &data, (size_t)length) ||
        PACKET_remaining(&tmp) != 0) {
        return 0;
    }

    *pkt = tmp;
    subpkt->curr = data;
    subpkt->remaining = length;

    return 1;
}
# 612 "../include/internal/packet.h"
 static inline int PACKET_get_length_prefixed_3(PACKET *pkt,
                                                           PACKET *subpkt)
{
    unsigned long length;
    const unsigned char *data;
    PACKET tmp = *pkt;
    if (!PACKET_get_net_3(&tmp, &length) ||
        !PACKET_get_bytes(&tmp, &data, (size_t)length)) {
        return 0;
    }

    *pkt = tmp;
    subpkt->curr = data;
    subpkt->remaining = length;

    return 1;
}



typedef struct wpacket_sub WPACKET_SUB;
struct wpacket_sub {

    WPACKET_SUB *parent;





    size_t packet_len;


    size_t lenbytes;


    size_t pwritten;


    unsigned int flags;
};

typedef struct wpacket_st WPACKET;
struct wpacket_st {

    BUF_MEM *buf;


    unsigned char *staticbuf;





    size_t curr;


    size_t written;


    size_t maxsize;


    WPACKET_SUB *subs;


    unsigned int endfirst : 1;
};
# 703 "../include/internal/packet.h"
int WPACKET_init_len(WPACKET *pkt, BUF_MEM *buf, size_t lenbytes);





int WPACKET_init(WPACKET *pkt, BUF_MEM *buf);






int WPACKET_init_null(WPACKET *pkt, size_t lenbytes);





int WPACKET_init_null_der(WPACKET *pkt);






int WPACKET_init_static_len(WPACKET *pkt, unsigned char *buf, size_t len,
                            size_t lenbytes);






int WPACKET_init_der(WPACKET *pkt, unsigned char *buf, size_t len);




int WPACKET_set_flags(WPACKET *pkt, unsigned int flags);







int WPACKET_close(WPACKET *pkt);





int WPACKET_finish(WPACKET *pkt);
# 765 "../include/internal/packet.h"
int WPACKET_fill_lengths(WPACKET *pkt);






int WPACKET_start_sub_packet_len__(WPACKET *pkt, size_t lenbytes);
# 791 "../include/internal/packet.h"
int WPACKET_start_sub_packet(WPACKET *pkt);
# 801 "../include/internal/packet.h"
int WPACKET_allocate_bytes(WPACKET *pkt, size_t len,
                           unsigned char **allocbytes);







int WPACKET_sub_allocate_bytes__(WPACKET *pkt, size_t len,
                                 unsigned char **allocbytes, size_t lenbytes);
# 844 "../include/internal/packet.h"
int WPACKET_reserve_bytes(WPACKET *pkt, size_t len, unsigned char **allocbytes);




int WPACKET_sub_reserve_bytes__(WPACKET *pkt, size_t len,
                                 unsigned char **allocbytes, size_t lenbytes);
# 871 "../include/internal/packet.h"
int WPACKET_put_bytes__(WPACKET *pkt, uint64_t val, size_t bytes);
# 889 "../include/internal/packet.h"
int WPACKET_set_max_size(WPACKET *pkt, size_t maxsize);


int WPACKET_memcpy(WPACKET *pkt, const void *src, size_t len);


int WPACKET_memset(WPACKET *pkt, int ch, size_t len);






int WPACKET_sub_memcpy__(WPACKET *pkt, const void *src, size_t len,
                       size_t lenbytes);
# 919 "../include/internal/packet.h"
int WPACKET_get_total_written(WPACKET *pkt, size_t *written);





int WPACKET_get_length(WPACKET *pkt, size_t *len);





unsigned char *WPACKET_get_curr(WPACKET *pkt);


int WPACKET_is_null_buf(WPACKET *pkt);


void WPACKET_cleanup(WPACKET *pkt);
# 12 "../crypto/packet.c" 2

# 1 "../include/internal/packet_quic.h" 1
# 12 "../include/internal/packet_quic.h"
        


# 1 "../include/internal/quic_vlint.h" 1
# 12 "../include/internal/quic_vlint.h"
        
# 39 "../include/internal/quic_vlint.h"
static __attribute__((unused)) inline size_t ossl_quic_vlint_encode_len(uint64_t v)
{
    if (v < 64)
        return 1;

    if (v < 16384)
        return 2;

    if (v < 1073741824)
        return 4;

    if (v <= (((uint64_t)1 << 62) - 1))
        return 8;

    return 0;
}
# 68 "../include/internal/quic_vlint.h"
void ossl_quic_vlint_encode(unsigned char *buf, uint64_t v);
# 90 "../include/internal/quic_vlint.h"
void ossl_quic_vlint_encode_n(unsigned char *buf, uint64_t v, int n);






static __attribute__((unused)) inline size_t ossl_quic_vlint_decode_len(uint8_t first_byte)
{
    return 1U << ((first_byte & 0xC0) >> 6);
}
# 111 "../include/internal/quic_vlint.h"
uint64_t ossl_quic_vlint_decode_unchecked(const unsigned char *buf);
# 123 "../include/internal/quic_vlint.h"
int ossl_quic_vlint_decode(const unsigned char *buf, size_t buf_len, uint64_t *v);
# 16 "../include/internal/packet_quic.h" 2






 static inline int PACKET_get_quic_vlint(PACKET *pkt,
                                                    uint64_t *data)
{
    size_t enclen;

    if (PACKET_remaining(pkt) < 1)
        return 0;

    enclen = ossl_quic_vlint_decode_len(*pkt->curr);

    if (PACKET_remaining(pkt) < enclen)
        return 0;

    *data = ossl_quic_vlint_decode_unchecked(pkt->curr);
    packet_forward(pkt, enclen);
    return 1;
}







 static inline int PACKET_peek_quic_vlint_ex(PACKET *pkt,
                                                        uint64_t *data,
                                                        int *was_minimal)
{
    size_t enclen;

    if (PACKET_remaining(pkt) < 1)
        return 0;

    enclen = ossl_quic_vlint_decode_len(*pkt->curr);

    if (PACKET_remaining(pkt) < enclen)
        return 0;

    *data = ossl_quic_vlint_decode_unchecked(pkt->curr);

    if (was_minimal != 
# 62 "../include/internal/packet_quic.h" 3 4
                      ((void *)0)
# 62 "../include/internal/packet_quic.h"
                          )
        *was_minimal = (enclen == ossl_quic_vlint_encode_len(*data));

    return 1;
}

 static inline int PACKET_peek_quic_vlint(PACKET *pkt,
                                                     uint64_t *data)
{
    return PACKET_peek_quic_vlint_ex(pkt, data, 
# 71 "../include/internal/packet_quic.h" 3 4
                                               ((void *)0)
# 71 "../include/internal/packet_quic.h"
                                                   );
}




 static inline int PACKET_skip_quic_vlint(PACKET *pkt)
{
    size_t enclen;

    if (PACKET_remaining(pkt) < 1)
        return 0;

    enclen = ossl_quic_vlint_decode_len(*pkt->curr);

    if (PACKET_remaining(pkt) < enclen)
        return 0;

    packet_forward(pkt, enclen);
    return 1;
}
# 100 "../include/internal/packet_quic.h"
 static inline int PACKET_get_quic_length_prefixed(PACKET *pkt,
                                                              PACKET *subpkt)
{
    uint64_t length;
    const unsigned char *data;
    PACKET tmp = *pkt;

    if (!PACKET_get_quic_vlint(&tmp, &length) ||
        length > 
# 108 "../include/internal/packet_quic.h" 3 4
                (18446744073709551615UL) 
# 108 "../include/internal/packet_quic.h"
                         ||
        !PACKET_get_bytes(&tmp, &data, (size_t)length)) {
        return 0;
    }

    *pkt = tmp;
    subpkt->curr = data;
    subpkt->remaining = (size_t)length;

    return 1;
}





 int WPACKET_start_quic_sub_packet(WPACKET *pkt);
# 133 "../include/internal/packet_quic.h"
 int WPACKET_start_quic_sub_packet_bound(WPACKET *pkt, size_t max_len);







 int WPACKET_quic_sub_allocate_bytes(WPACKET *pkt, size_t len,
                                           unsigned char **bytes);




 int WPACKET_quic_write_vlint(WPACKET *pkt, uint64_t v);
# 14 "../crypto/packet.c" 2





int WPACKET_allocate_bytes(WPACKET *pkt, size_t len, unsigned char **allocbytes)
{
    if (!WPACKET_reserve_bytes(pkt, len, allocbytes))
        return 0;

    pkt->written += len;
    pkt->curr += len;
    return 1;
}

int WPACKET_sub_allocate_bytes__(WPACKET *pkt, size_t len,
                                 unsigned char **allocbytes, size_t lenbytes)
{
    if (!WPACKET_start_sub_packet_len__(pkt, lenbytes)
            || !WPACKET_allocate_bytes(pkt, len, allocbytes)
            || !WPACKET_close(pkt))
        return 0;

    return 1;
}







int WPACKET_reserve_bytes(WPACKET *pkt, size_t len, unsigned char **allocbytes)
{

    if (!__builtin_expect(!!((pkt->subs != 
# 49 "../crypto/packet.c" 3 4
        ((void *)0) 
# 49 "../crypto/packet.c"
        && len != 0) != 0), 1))
        return 0;

    if (pkt->maxsize - pkt->written < len)
        return 0;

    if (pkt->buf != 
# 55 "../crypto/packet.c" 3 4
                   ((void *)0) 
# 55 "../crypto/packet.c"
                        && (pkt->buf->length - pkt->written < len)) {
        size_t newlen;
        size_t reflen;

        reflen = (len > pkt->buf->length) ? len : pkt->buf->length;

        if (reflen > 
# 61 "../crypto/packet.c" 3 4
                    (18446744073709551615UL) 
# 61 "../crypto/packet.c"
                             / 2) {
            newlen = 
# 62 "../crypto/packet.c" 3 4
                    (18446744073709551615UL)
# 62 "../crypto/packet.c"
                            ;
        } else {
            newlen = reflen * 2;
            if (newlen < 256)
                newlen = 256;
        }
        if (BUF_MEM_grow(pkt->buf, newlen) == 0)
            return 0;
    }
    if (allocbytes != 
# 71 "../crypto/packet.c" 3 4
                     ((void *)0)
# 71 "../crypto/packet.c"
                         ) {
        *allocbytes = WPACKET_get_curr(pkt);
        if (pkt->endfirst && *allocbytes != 
# 73 "../crypto/packet.c" 3 4
                                           ((void *)0)
# 73 "../crypto/packet.c"
                                               )
            *allocbytes -= len;
    }

    return 1;
}

int WPACKET_sub_reserve_bytes__(WPACKET *pkt, size_t len,
                                unsigned char **allocbytes, size_t lenbytes)
{
    if (pkt->endfirst && lenbytes > 0)
        return 0;

    if (!WPACKET_reserve_bytes(pkt, lenbytes + len, allocbytes))
        return 0;

    if (*allocbytes != 
# 89 "../crypto/packet.c" 3 4
                      ((void *)0)
# 89 "../crypto/packet.c"
                          )
        *allocbytes += lenbytes;

    return 1;
}

static size_t maxmaxsize(size_t lenbytes)
{
    if (lenbytes >= sizeof(size_t) || lenbytes == 0)
        return 
# 98 "../crypto/packet.c" 3 4
              (18446744073709551615UL)
# 98 "../crypto/packet.c"
                      ;

    return ((size_t)1 << (lenbytes * 8)) - 1 + lenbytes;
}

static int wpacket_intern_init_len(WPACKET *pkt, size_t lenbytes)
{
    unsigned char *lenchars;

    pkt->curr = 0;
    pkt->written = 0;

    if ((pkt->subs = CRYPTO_zalloc(sizeof(*pkt->subs), "../crypto/packet.c", 110)) == 
# 110 "../crypto/packet.c" 3 4
                                                           ((void *)0)
# 110 "../crypto/packet.c"
                                                               )
        return 0;

    if (lenbytes == 0)
        return 1;

    pkt->subs->pwritten = lenbytes;
    pkt->subs->lenbytes = lenbytes;

    if (!WPACKET_allocate_bytes(pkt, lenbytes, &lenchars)) {
        CRYPTO_free(pkt->subs, "../crypto/packet.c", 120);
        pkt->subs = 
# 121 "../crypto/packet.c" 3 4
                   ((void *)0)
# 121 "../crypto/packet.c"
                       ;
        return 0;
    }
    pkt->subs->packet_len = 0;

    return 1;
}

int WPACKET_init_static_len(WPACKET *pkt, unsigned char *buf, size_t len,
                            size_t lenbytes)
{
    size_t max = maxmaxsize(lenbytes);


    if (!__builtin_expect(!!((buf != 
# 135 "../crypto/packet.c" 3 4
        ((void *)0) 
# 135 "../crypto/packet.c"
        && len > 0) != 0), 1))
        return 0;

    pkt->staticbuf = buf;
    pkt->buf = 
# 139 "../crypto/packet.c" 3 4
              ((void *)0)
# 139 "../crypto/packet.c"
                  ;
    pkt->maxsize = (max < len) ? max : len;
    pkt->endfirst = 0;

    return wpacket_intern_init_len(pkt, lenbytes);
}

int WPACKET_init_der(WPACKET *pkt, unsigned char *buf, size_t len)
{

    if (!__builtin_expect(!!((buf != 
# 149 "../crypto/packet.c" 3 4
        ((void *)0) 
# 149 "../crypto/packet.c"
        && len > 0) != 0), 1))
        return 0;

    pkt->staticbuf = buf;
    pkt->buf = 
# 153 "../crypto/packet.c" 3 4
              ((void *)0)
# 153 "../crypto/packet.c"
                  ;
    pkt->maxsize = len;
    pkt->endfirst = 1;

    return wpacket_intern_init_len(pkt, 0);
}

int WPACKET_init_len(WPACKET *pkt, BUF_MEM *buf, size_t lenbytes)
{

    if (!__builtin_expect(!!((buf != 
# 163 "../crypto/packet.c" 3 4
        ((void *)0)
# 163 "../crypto/packet.c"
        ) != 0), 1))
        return 0;

    pkt->staticbuf = 
# 166 "../crypto/packet.c" 3 4
                    ((void *)0)
# 166 "../crypto/packet.c"
                        ;
    pkt->buf = buf;
    pkt->maxsize = maxmaxsize(lenbytes);
    pkt->endfirst = 0;

    return wpacket_intern_init_len(pkt, lenbytes);
}

int WPACKET_init(WPACKET *pkt, BUF_MEM *buf)
{
    return WPACKET_init_len(pkt, buf, 0);
}

int WPACKET_init_null(WPACKET *pkt, size_t lenbytes)
{
    pkt->staticbuf = 
# 181 "../crypto/packet.c" 3 4
                    ((void *)0)
# 181 "../crypto/packet.c"
                        ;
    pkt->buf = 
# 182 "../crypto/packet.c" 3 4
              ((void *)0)
# 182 "../crypto/packet.c"
                  ;
    pkt->maxsize = maxmaxsize(lenbytes);
    pkt->endfirst = 0;

    return wpacket_intern_init_len(pkt, 0);
}

int WPACKET_init_null_der(WPACKET *pkt)
{
    pkt->staticbuf = 
# 191 "../crypto/packet.c" 3 4
                    ((void *)0)
# 191 "../crypto/packet.c"
                        ;
    pkt->buf = 
# 192 "../crypto/packet.c" 3 4
              ((void *)0)
# 192 "../crypto/packet.c"
                  ;
    pkt->maxsize = 
# 193 "../crypto/packet.c" 3 4
                  (18446744073709551615UL)
# 193 "../crypto/packet.c"
                          ;
    pkt->endfirst = 1;

    return wpacket_intern_init_len(pkt, 0);
}

int WPACKET_set_flags(WPACKET *pkt, unsigned int flags)
{

    if (!__builtin_expect(!!((pkt->subs != 
# 202 "../crypto/packet.c" 3 4
        ((void *)0)
# 202 "../crypto/packet.c"
        ) != 0), 1))
        return 0;

    pkt->subs->flags = flags;

    return 1;
}


static int put_value(unsigned char *data, uint64_t value, size_t len)
{
    if (data == 
# 213 "../crypto/packet.c" 3 4
               ((void *)0)
# 213 "../crypto/packet.c"
                   )
        return 1;

    for (data += len - 1; len > 0; len--) {
        *data = (unsigned char)(value & 0xff);
        data--;
        value >>= 8;
    }


    if (value > 0)
        return 0;

    return 1;
}


static int put_quic_value(unsigned char *data, size_t value, size_t len)
{
    if (data == 
# 232 "../crypto/packet.c" 3 4
               ((void *)0)
# 232 "../crypto/packet.c"
                   )
        return 1;


    if (ossl_quic_vlint_encode_len(value) > len)
        return 0;

    ossl_quic_vlint_encode_n(data, value, len);
    return 1;
}
# 250 "../crypto/packet.c"
static int wpacket_intern_close(WPACKET *pkt, WPACKET_SUB *sub, int doclose)
{
    size_t packlen = pkt->written - sub->pwritten;

    if (packlen == 0
            && (sub->flags & 1) != 0)
        return 0;

    if (packlen == 0
            && sub->flags & 2) {

        if (!doclose)
            return 0;


        if ((pkt->curr - sub->lenbytes) == sub->packet_len) {
            pkt->written -= sub->lenbytes;
            pkt->curr -= sub->lenbytes;
        }


        sub->packet_len = 0;
        sub->lenbytes = 0;
    }


    if (sub->lenbytes > 0) {
        unsigned char *buf = (((pkt)->staticbuf != 
# 277 "../crypto/packet.c" 3 4
                            ((void *)0)
# 277 "../crypto/packet.c"
                            ) ? (pkt)->staticbuf : ((pkt)->buf != 
# 277 "../crypto/packet.c" 3 4
                            ((void *)0) 
# 277 "../crypto/packet.c"
                            ? (unsigned char *)(pkt)->buf->data : 
# 277 "../crypto/packet.c" 3 4
                            ((void *)0)
# 277 "../crypto/packet.c"
                            ));

        if (buf != 
# 279 "../crypto/packet.c" 3 4
                  ((void *)0)
# 279 "../crypto/packet.c"
                      ) {

            if ((sub->flags & 4) == 0) {
                if (!put_value(&buf[sub->packet_len], packlen, sub->lenbytes))
                    return 0;
            } else {
                if (!put_quic_value(&buf[sub->packet_len], packlen, sub->lenbytes))
                    return 0;
            }




        }
    } else if (pkt->endfirst && sub->parent != 
# 293 "../crypto/packet.c" 3 4
                                              ((void *)0)
               
# 294 "../crypto/packet.c"
              && (packlen != 0
                   || (sub->flags
                       & 2) == 0)) {
        size_t tmplen = packlen;
        size_t numlenbytes = 1;

        while ((tmplen = tmplen >> 8) > 0)
            numlenbytes++;
        if (!WPACKET_put_bytes__(pkt, packlen, numlenbytes))
            return 0;
        if (packlen > 0x7f) {
            numlenbytes |= 0x80;
            if (!WPACKET_put_bytes__((pkt), (numlenbytes), 1))
                return 0;
        }
    }

    if (doclose) {
        pkt->subs = sub->parent;
        CRYPTO_free(sub, "../crypto/packet.c", 313);
    }

    return 1;
}

int WPACKET_fill_lengths(WPACKET *pkt)
{
    WPACKET_SUB *sub;

    if (!__builtin_expect(!!((pkt->subs != 
# 323 "../crypto/packet.c" 3 4
        ((void *)0)
# 323 "../crypto/packet.c"
        ) != 0), 1))
        return 0;

    for (sub = pkt->subs; sub != 
# 326 "../crypto/packet.c" 3 4
                                ((void *)0)
# 326 "../crypto/packet.c"
                                    ; sub = sub->parent) {
        if (!wpacket_intern_close(pkt, sub, 0))
            return 0;
    }

    return 1;
}

int WPACKET_close(WPACKET *pkt)
{




    if (pkt->subs == 
# 340 "../crypto/packet.c" 3 4
                    ((void *)0) 
# 340 "../crypto/packet.c"
                         || pkt->subs->parent == 
# 340 "../crypto/packet.c" 3 4
                                                 ((void *)0)
# 340 "../crypto/packet.c"
                                                     )
        return 0;

    return wpacket_intern_close(pkt, pkt->subs, 1);
}

int WPACKET_finish(WPACKET *pkt)
{
    int ret;





    if (pkt->subs == 
# 354 "../crypto/packet.c" 3 4
                    ((void *)0) 
# 354 "../crypto/packet.c"
                         || pkt->subs->parent != 
# 354 "../crypto/packet.c" 3 4
                                                 ((void *)0)
# 354 "../crypto/packet.c"
                                                     )
        return 0;

    ret = wpacket_intern_close(pkt, pkt->subs, 1);
    if (ret) {
        CRYPTO_free(pkt->subs, "../crypto/packet.c", 359);
        pkt->subs = 
# 360 "../crypto/packet.c" 3 4
                   ((void *)0)
# 360 "../crypto/packet.c"
                       ;
    }

    return ret;
}

int WPACKET_start_sub_packet_len__(WPACKET *pkt, size_t lenbytes)
{
    WPACKET_SUB *sub;
    unsigned char *lenchars;


    if (!__builtin_expect(!!((pkt->subs != 
# 372 "../crypto/packet.c" 3 4
        ((void *)0)
# 372 "../crypto/packet.c"
        ) != 0), 1))
        return 0;


    if (lenbytes > 0 && pkt->endfirst)
        return 0;

    if ((sub = CRYPTO_zalloc(sizeof(*sub), "../crypto/packet.c", 379)) == 
# 379 "../crypto/packet.c" 3 4
                                               ((void *)0)
# 379 "../crypto/packet.c"
                                                   )
        return 0;

    sub->parent = pkt->subs;
    pkt->subs = sub;
    sub->pwritten = pkt->written + lenbytes;
    sub->lenbytes = lenbytes;

    if (lenbytes == 0) {
        sub->packet_len = 0;
        return 1;
    }

    sub->packet_len = pkt->written;

    if (!WPACKET_allocate_bytes(pkt, lenbytes, &lenchars))
        return 0;

    return 1;
}

int WPACKET_start_sub_packet(WPACKET *pkt)
{
    return WPACKET_start_sub_packet_len__(pkt, 0);
}

int WPACKET_put_bytes__(WPACKET *pkt, uint64_t val, size_t size)
{
    unsigned char *data;


    if (!__builtin_expect(!!((size <= sizeof(uint64_t)) != 0), 1)
            || !WPACKET_allocate_bytes(pkt, size, &data)
            || !put_value(data, val, size))
        return 0;

    return 1;
}

int WPACKET_set_max_size(WPACKET *pkt, size_t maxsize)
{
    WPACKET_SUB *sub;
    size_t lenbytes;


    if (!__builtin_expect(!!((pkt->subs != 
# 424 "../crypto/packet.c" 3 4
        ((void *)0)
# 424 "../crypto/packet.c"
        ) != 0), 1))
        return 0;


    for (sub = pkt->subs; sub->parent != 
# 428 "../crypto/packet.c" 3 4
                                        ((void *)0)
# 428 "../crypto/packet.c"
                                            ; sub = sub->parent)
        continue;

    lenbytes = sub->lenbytes;
    if (lenbytes == 0)
        lenbytes = sizeof(pkt->maxsize);

    if (maxmaxsize(lenbytes) < maxsize || maxsize < pkt->written)
        return 0;

    pkt->maxsize = maxsize;

    return 1;
}

int WPACKET_memset(WPACKET *pkt, int ch, size_t len)
{
    unsigned char *dest;

    if (len == 0)
        return 1;

    if (!WPACKET_allocate_bytes(pkt, len, &dest))
        return 0;

    if (dest != 
# 453 "../crypto/packet.c" 3 4
               ((void *)0)
# 453 "../crypto/packet.c"
                   )
        memset(dest, ch, len);

    return 1;
}

int WPACKET_memcpy(WPACKET *pkt, const void *src, size_t len)
{
    unsigned char *dest;

    if (len == 0)
        return 1;

    if (!WPACKET_allocate_bytes(pkt, len, &dest))
        return 0;

    if (dest != 
# 469 "../crypto/packet.c" 3 4
               ((void *)0)
# 469 "../crypto/packet.c"
                   )
        memcpy(dest, src, len);

    return 1;
}

int WPACKET_sub_memcpy__(WPACKET *pkt, const void *src, size_t len,
                         size_t lenbytes)
{
    if (!WPACKET_start_sub_packet_len__(pkt, lenbytes)
            || !WPACKET_memcpy(pkt, src, len)
            || !WPACKET_close(pkt))
        return 0;

    return 1;
}

int WPACKET_get_total_written(WPACKET *pkt, size_t *written)
{

    if (!__builtin_expect(!!((written != 
# 489 "../crypto/packet.c" 3 4
        ((void *)0)
# 489 "../crypto/packet.c"
        ) != 0), 1))
        return 0;

    *written = pkt->written;

    return 1;
}

int WPACKET_get_length(WPACKET *pkt, size_t *len)
{

    if (!__builtin_expect(!!((pkt->subs != 
# 500 "../crypto/packet.c" 3 4
        ((void *)0) 
# 500 "../crypto/packet.c"
        && len != 
# 500 "../crypto/packet.c" 3 4
        ((void *)0)
# 500 "../crypto/packet.c"
        ) != 0), 1))
        return 0;

    *len = pkt->written - pkt->subs->pwritten;

    return 1;
}

unsigned char *WPACKET_get_curr(WPACKET *pkt)
{
    unsigned char *buf = (((pkt)->staticbuf != 
# 510 "../crypto/packet.c" 3 4
                        ((void *)0)
# 510 "../crypto/packet.c"
                        ) ? (pkt)->staticbuf : ((pkt)->buf != 
# 510 "../crypto/packet.c" 3 4
                        ((void *)0) 
# 510 "../crypto/packet.c"
                        ? (unsigned char *)(pkt)->buf->data : 
# 510 "../crypto/packet.c" 3 4
                        ((void *)0)
# 510 "../crypto/packet.c"
                        ));

    if (buf == 
# 512 "../crypto/packet.c" 3 4
              ((void *)0)
# 512 "../crypto/packet.c"
                  )
        return 
# 513 "../crypto/packet.c" 3 4
              ((void *)0)
# 513 "../crypto/packet.c"
                  ;

    if (pkt->endfirst)
        return buf + pkt->maxsize - pkt->curr;

    return buf + pkt->curr;
}

int WPACKET_is_null_buf(WPACKET *pkt)
{
    return pkt->buf == 
# 523 "../crypto/packet.c" 3 4
                      ((void *)0) 
# 523 "../crypto/packet.c"
                           && pkt->staticbuf == 
# 523 "../crypto/packet.c" 3 4
                                                ((void *)0)
# 523 "../crypto/packet.c"
                                                    ;
}

void WPACKET_cleanup(WPACKET *pkt)
{
    WPACKET_SUB *sub, *parent;

    for (sub = pkt->subs; sub != 
# 530 "../crypto/packet.c" 3 4
                                ((void *)0)
# 530 "../crypto/packet.c"
                                    ; sub = parent) {
        parent = sub->parent;
        CRYPTO_free(sub, "../crypto/packet.c", 532);
    }
    pkt->subs = 
# 534 "../crypto/packet.c" 3 4
               ((void *)0)
# 534 "../crypto/packet.c"
                   ;
}



int WPACKET_start_quic_sub_packet_bound(WPACKET *pkt, size_t max_len)
{
    size_t enclen = ossl_quic_vlint_encode_len(max_len);

    if (enclen == 0)
        return 0;

    if (WPACKET_start_sub_packet_len__(pkt, enclen) == 0)
        return 0;

    pkt->subs->flags |= 4;
    return 1;
}

int WPACKET_start_quic_sub_packet(WPACKET *pkt)
{




    return WPACKET_start_quic_sub_packet_bound(pkt, 16384);
}

int WPACKET_quic_sub_allocate_bytes(WPACKET *pkt, size_t len, unsigned char **allocbytes)
{
    if (!WPACKET_start_quic_sub_packet_bound(pkt, len)
            || !WPACKET_allocate_bytes(pkt, len, allocbytes)
            || !WPACKET_close(pkt))
        return 0;

    return 1;
}




int WPACKET_quic_write_vlint(WPACKET *pkt, uint64_t v)
{
    unsigned char *b = 
# 577 "../crypto/packet.c" 3 4
                      ((void *)0)
# 577 "../crypto/packet.c"
                          ;
    size_t enclen = ossl_quic_vlint_encode_len(v);

    if (enclen == 0)
        return 0;

    if (WPACKET_allocate_bytes(pkt, enclen, &b) == 0)
        return 0;

    ossl_quic_vlint_encode(b, v);
    return 1;
}

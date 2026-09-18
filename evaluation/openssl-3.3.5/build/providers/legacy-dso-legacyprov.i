# 0 "../providers/legacyprov.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../providers/legacyprov.c"
# 10 "../providers/legacyprov.c"
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

# 11 "../providers/legacyprov.c" 2
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
# 39 "/usr/include/stdio.h" 2 3 4
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
# 63 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 77 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;






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

# 12 "../providers/legacyprov.c" 2
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
# 15 "../include/openssl/e_os2.h" 2
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
# 13 "../providers/legacyprov.c" 2
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
# 14 "../providers/legacyprov.c" 2
# 1 "include/openssl/core_names.h" 1
# 16 "include/openssl/core_names.h"
        
# 15 "../providers/legacyprov.c" 2
# 1 "include/openssl/err.h" 1
# 14 "include/openssl/err.h"
        
# 25 "include/openssl/err.h"
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
# 97 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 114 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
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

# 26 "include/openssl/err.h" 2


# 1 "../include/openssl/types.h" 1
# 29 "include/openssl/err.h" 2
# 1 "include/openssl/bio.h" 1
# 16 "include/openssl/bio.h"
        
# 30 "include/openssl/bio.h"
# 1 "include/openssl/crypto.h" 1
# 18 "include/openssl/crypto.h"
        







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
# 36 "include/openssl/crypto.h"
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
# 31 "include/openssl/bio.h" 2
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
# 30 "include/openssl/err.h" 2
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
# 16 "../providers/legacyprov.c" 2
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
# 17 "../providers/legacyprov.c" 2
# 1 "../providers/common/include/prov/provider_ctx.h" 1
# 13 "../providers/common/include/prov/provider_ctx.h"
# 1 "../include/openssl/types.h" 1
# 14 "../providers/common/include/prov/provider_ctx.h" 2




typedef struct prov_ctx_st {
    const OSSL_CORE_HANDLE *handle;
    OSSL_LIB_CTX *libctx;
    BIO_METHOD *corebiometh;
} PROV_CTX;
# 31 "../providers/common/include/prov/provider_ctx.h"
PROV_CTX *ossl_prov_ctx_new(void);
void ossl_prov_ctx_free(PROV_CTX *ctx);
void ossl_prov_ctx_set0_libctx(PROV_CTX *ctx, OSSL_LIB_CTX *libctx);
void ossl_prov_ctx_set0_handle(PROV_CTX *ctx, const OSSL_CORE_HANDLE *handle);
void ossl_prov_ctx_set0_core_bio_method(PROV_CTX *ctx, BIO_METHOD *corebiometh);
OSSL_LIB_CTX *ossl_prov_ctx_get0_libctx(PROV_CTX *ctx);
const OSSL_CORE_HANDLE *ossl_prov_ctx_get0_handle(PROV_CTX *ctx);
BIO_METHOD *ossl_prov_ctx_get0_core_bio_method(PROV_CTX *ctx);
# 18 "../providers/legacyprov.c" 2
# 1 "../providers/implementations/include/prov/implementations.h" 1
# 11 "../providers/implementations/include/prov/implementations.h"
# 1 "../include/openssl/types.h" 1
# 12 "../providers/implementations/include/prov/implementations.h" 2


extern const OSSL_DISPATCH ossl_sha1_functions[];
extern const OSSL_DISPATCH ossl_sha224_functions[];
extern const OSSL_DISPATCH ossl_sha256_functions[];
extern const OSSL_DISPATCH ossl_sha256_192_functions[];
extern const OSSL_DISPATCH ossl_sha384_functions[];
extern const OSSL_DISPATCH ossl_sha512_functions[];
extern const OSSL_DISPATCH ossl_sha512_224_functions[];
extern const OSSL_DISPATCH ossl_sha512_256_functions[];
extern const OSSL_DISPATCH ossl_sha3_224_functions[];
extern const OSSL_DISPATCH ossl_sha3_256_functions[];
extern const OSSL_DISPATCH ossl_sha3_384_functions[];
extern const OSSL_DISPATCH ossl_sha3_512_functions[];
extern const OSSL_DISPATCH ossl_keccak_224_functions[];
extern const OSSL_DISPATCH ossl_keccak_256_functions[];
extern const OSSL_DISPATCH ossl_keccak_384_functions[];
extern const OSSL_DISPATCH ossl_keccak_512_functions[];
extern const OSSL_DISPATCH ossl_keccak_kmac_128_functions[];
extern const OSSL_DISPATCH ossl_keccak_kmac_256_functions[];
extern const OSSL_DISPATCH ossl_shake_128_functions[];
extern const OSSL_DISPATCH ossl_shake_256_functions[];
extern const OSSL_DISPATCH ossl_blake2s256_functions[];
extern const OSSL_DISPATCH ossl_blake2b512_functions[];
extern const OSSL_DISPATCH ossl_md5_functions[];
extern const OSSL_DISPATCH ossl_md5_sha1_functions[];
extern const OSSL_DISPATCH ossl_sm3_functions[];
extern const OSSL_DISPATCH ossl_md2_functions[];
extern const OSSL_DISPATCH ossl_md4_functions[];
extern const OSSL_DISPATCH ossl_mdc2_functions[];
extern const OSSL_DISPATCH ossl_wp_functions[];
extern const OSSL_DISPATCH ossl_ripemd160_functions[];
extern const OSSL_DISPATCH ossl_nullmd_functions[];


extern const OSSL_DISPATCH ossl_null_functions[];
extern const OSSL_DISPATCH ossl_aes256ecb_functions[];
extern const OSSL_DISPATCH ossl_aes192ecb_functions[];
extern const OSSL_DISPATCH ossl_aes128ecb_functions[];
extern const OSSL_DISPATCH ossl_aes256cbc_functions[];
extern const OSSL_DISPATCH ossl_aes192cbc_functions[];
extern const OSSL_DISPATCH ossl_aes128cbc_functions[];
extern const OSSL_DISPATCH ossl_aes256cbc_cts_functions[];
extern const OSSL_DISPATCH ossl_aes192cbc_cts_functions[];
extern const OSSL_DISPATCH ossl_aes128cbc_cts_functions[];
extern const OSSL_DISPATCH ossl_aes256ofb_functions[];
extern const OSSL_DISPATCH ossl_aes192ofb_functions[];
extern const OSSL_DISPATCH ossl_aes128ofb_functions[];
extern const OSSL_DISPATCH ossl_aes256cfb_functions[];
extern const OSSL_DISPATCH ossl_aes192cfb_functions[];
extern const OSSL_DISPATCH ossl_aes128cfb_functions[];
extern const OSSL_DISPATCH ossl_aes256cfb1_functions[];
extern const OSSL_DISPATCH ossl_aes192cfb1_functions[];
extern const OSSL_DISPATCH ossl_aes128cfb1_functions[];
extern const OSSL_DISPATCH ossl_aes256cfb8_functions[];
extern const OSSL_DISPATCH ossl_aes192cfb8_functions[];
extern const OSSL_DISPATCH ossl_aes128cfb8_functions[];
extern const OSSL_DISPATCH ossl_aes256ctr_functions[];
extern const OSSL_DISPATCH ossl_aes192ctr_functions[];
extern const OSSL_DISPATCH ossl_aes128ctr_functions[];
extern const OSSL_DISPATCH ossl_aes256xts_functions[];
extern const OSSL_DISPATCH ossl_aes128xts_functions[];

extern const OSSL_DISPATCH ossl_aes256ocb_functions[];
extern const OSSL_DISPATCH ossl_aes192ocb_functions[];
extern const OSSL_DISPATCH ossl_aes128ocb_functions[];

extern const OSSL_DISPATCH ossl_aes256gcm_functions[];
extern const OSSL_DISPATCH ossl_aes192gcm_functions[];
extern const OSSL_DISPATCH ossl_aes128gcm_functions[];
extern const OSSL_DISPATCH ossl_aes256ccm_functions[];
extern const OSSL_DISPATCH ossl_aes192ccm_functions[];
extern const OSSL_DISPATCH ossl_aes128ccm_functions[];
extern const OSSL_DISPATCH ossl_aes256wrap_functions[];
extern const OSSL_DISPATCH ossl_aes192wrap_functions[];
extern const OSSL_DISPATCH ossl_aes128wrap_functions[];
extern const OSSL_DISPATCH ossl_aes256wrappad_functions[];
extern const OSSL_DISPATCH ossl_aes192wrappad_functions[];
extern const OSSL_DISPATCH ossl_aes128wrappad_functions[];
extern const OSSL_DISPATCH ossl_aes256wrapinv_functions[];
extern const OSSL_DISPATCH ossl_aes192wrapinv_functions[];
extern const OSSL_DISPATCH ossl_aes128wrapinv_functions[];
extern const OSSL_DISPATCH ossl_aes256wrappadinv_functions[];
extern const OSSL_DISPATCH ossl_aes192wrappadinv_functions[];
extern const OSSL_DISPATCH ossl_aes128wrappadinv_functions[];
extern const OSSL_DISPATCH ossl_aes256cbc_hmac_sha1_functions[];
extern const OSSL_DISPATCH ossl_aes128cbc_hmac_sha1_functions[];
extern const OSSL_DISPATCH ossl_aes256cbc_hmac_sha256_functions[];
extern const OSSL_DISPATCH ossl_aes128cbc_hmac_sha256_functions[];


extern const OSSL_DISPATCH ossl_aria256gcm_functions[];
extern const OSSL_DISPATCH ossl_aria192gcm_functions[];
extern const OSSL_DISPATCH ossl_aria128gcm_functions[];
extern const OSSL_DISPATCH ossl_aria256ccm_functions[];
extern const OSSL_DISPATCH ossl_aria192ccm_functions[];
extern const OSSL_DISPATCH ossl_aria128ccm_functions[];
extern const OSSL_DISPATCH ossl_aria256ecb_functions[];
extern const OSSL_DISPATCH ossl_aria192ecb_functions[];
extern const OSSL_DISPATCH ossl_aria128ecb_functions[];
extern const OSSL_DISPATCH ossl_aria256cbc_functions[];
extern const OSSL_DISPATCH ossl_aria192cbc_functions[];
extern const OSSL_DISPATCH ossl_aria128cbc_functions[];
extern const OSSL_DISPATCH ossl_aria256ofb_functions[];
extern const OSSL_DISPATCH ossl_aria192ofb_functions[];
extern const OSSL_DISPATCH ossl_aria128ofb_functions[];
extern const OSSL_DISPATCH ossl_aria256cfb_functions[];
extern const OSSL_DISPATCH ossl_aria192cfb_functions[];
extern const OSSL_DISPATCH ossl_aria128cfb_functions[];
extern const OSSL_DISPATCH ossl_aria256cfb1_functions[];
extern const OSSL_DISPATCH ossl_aria192cfb1_functions[];
extern const OSSL_DISPATCH ossl_aria128cfb1_functions[];
extern const OSSL_DISPATCH ossl_aria256cfb8_functions[];
extern const OSSL_DISPATCH ossl_aria192cfb8_functions[];
extern const OSSL_DISPATCH ossl_aria128cfb8_functions[];
extern const OSSL_DISPATCH ossl_aria256ctr_functions[];
extern const OSSL_DISPATCH ossl_aria192ctr_functions[];
extern const OSSL_DISPATCH ossl_aria128ctr_functions[];


extern const OSSL_DISPATCH ossl_camellia256ecb_functions[];
extern const OSSL_DISPATCH ossl_camellia192ecb_functions[];
extern const OSSL_DISPATCH ossl_camellia128ecb_functions[];
extern const OSSL_DISPATCH ossl_camellia256cbc_functions[];
extern const OSSL_DISPATCH ossl_camellia192cbc_functions[];
extern const OSSL_DISPATCH ossl_camellia128cbc_functions[];
extern const OSSL_DISPATCH ossl_camellia256cbc_cts_functions[];
extern const OSSL_DISPATCH ossl_camellia192cbc_cts_functions[];
extern const OSSL_DISPATCH ossl_camellia128cbc_cts_functions[];
extern const OSSL_DISPATCH ossl_camellia256ofb_functions[];
extern const OSSL_DISPATCH ossl_camellia192ofb_functions[];
extern const OSSL_DISPATCH ossl_camellia128ofb_functions[];
extern const OSSL_DISPATCH ossl_camellia256cfb_functions[];
extern const OSSL_DISPATCH ossl_camellia192cfb_functions[];
extern const OSSL_DISPATCH ossl_camellia128cfb_functions[];
extern const OSSL_DISPATCH ossl_camellia256cfb1_functions[];
extern const OSSL_DISPATCH ossl_camellia192cfb1_functions[];
extern const OSSL_DISPATCH ossl_camellia128cfb1_functions[];
extern const OSSL_DISPATCH ossl_camellia256cfb8_functions[];
extern const OSSL_DISPATCH ossl_camellia192cfb8_functions[];
extern const OSSL_DISPATCH ossl_camellia128cfb8_functions[];
extern const OSSL_DISPATCH ossl_camellia256ctr_functions[];
extern const OSSL_DISPATCH ossl_camellia192ctr_functions[];
extern const OSSL_DISPATCH ossl_camellia128ctr_functions[];


extern const OSSL_DISPATCH ossl_blowfish128ecb_functions[];
extern const OSSL_DISPATCH ossl_blowfish128cbc_functions[];
extern const OSSL_DISPATCH ossl_blowfish128ofb64_functions[];
extern const OSSL_DISPATCH ossl_blowfish128cfb64_functions[];


extern const OSSL_DISPATCH ossl_idea128ecb_functions[];
extern const OSSL_DISPATCH ossl_idea128cbc_functions[];
extern const OSSL_DISPATCH ossl_idea128ofb64_functions[];
extern const OSSL_DISPATCH ossl_idea128cfb64_functions[];


extern const OSSL_DISPATCH ossl_cast5128ecb_functions[];
extern const OSSL_DISPATCH ossl_cast5128cbc_functions[];
extern const OSSL_DISPATCH ossl_cast5128ofb64_functions[];
extern const OSSL_DISPATCH ossl_cast5128cfb64_functions[];


extern const OSSL_DISPATCH ossl_seed128ecb_functions[];
extern const OSSL_DISPATCH ossl_seed128cbc_functions[];
extern const OSSL_DISPATCH ossl_seed128ofb128_functions[];
extern const OSSL_DISPATCH ossl_seed128cfb128_functions[];


extern const OSSL_DISPATCH ossl_sm4128gcm_functions[];
extern const OSSL_DISPATCH ossl_sm4128ccm_functions[];
extern const OSSL_DISPATCH ossl_sm4128ecb_functions[];
extern const OSSL_DISPATCH ossl_sm4128cbc_functions[];
extern const OSSL_DISPATCH ossl_sm4128ctr_functions[];
extern const OSSL_DISPATCH ossl_sm4128ofb128_functions[];
extern const OSSL_DISPATCH ossl_sm4128cfb128_functions[];
extern const OSSL_DISPATCH ossl_sm4128xts_functions[];
# 198 "../providers/implementations/include/prov/implementations.h"
extern const OSSL_DISPATCH ossl_rc2128ecb_functions[];
extern const OSSL_DISPATCH ossl_rc2128cbc_functions[];
extern const OSSL_DISPATCH ossl_rc240cbc_functions[];
extern const OSSL_DISPATCH ossl_rc264cbc_functions[];
extern const OSSL_DISPATCH ossl_rc2128cfb128_functions[];
extern const OSSL_DISPATCH ossl_rc2128ofb128_functions[];


extern const OSSL_DISPATCH ossl_tdes_ede3_ecb_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede3_cbc_functions[];

extern const OSSL_DISPATCH ossl_tdes_ede3_ofb_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede3_cfb_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede3_cfb8_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede3_cfb1_functions[];

extern const OSSL_DISPATCH ossl_tdes_ede2_ecb_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede2_cbc_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede2_ofb_functions[];
extern const OSSL_DISPATCH ossl_tdes_ede2_cfb_functions[];

extern const OSSL_DISPATCH ossl_tdes_desx_cbc_functions[];
extern const OSSL_DISPATCH ossl_tdes_wrap_cbc_functions[];

extern const OSSL_DISPATCH ossl_des_ecb_functions[];
extern const OSSL_DISPATCH ossl_des_cbc_functions[];
extern const OSSL_DISPATCH ossl_des_ofb64_functions[];
extern const OSSL_DISPATCH ossl_des_cfb64_functions[];
extern const OSSL_DISPATCH ossl_des_cfb1_functions[];
extern const OSSL_DISPATCH ossl_des_cfb8_functions[];




extern const OSSL_DISPATCH ossl_rc440_functions[];
extern const OSSL_DISPATCH ossl_rc4128_functions[];

extern const OSSL_DISPATCH ossl_rc4_hmac_ossl_md5_functions[];



extern const OSSL_DISPATCH ossl_chacha20_functions[];

extern const OSSL_DISPATCH ossl_chacha20_ossl_poly1305_functions[];





extern const OSSL_DISPATCH ossl_aes128siv_functions[];
extern const OSSL_DISPATCH ossl_aes192siv_functions[];
extern const OSSL_DISPATCH ossl_aes256siv_functions[];
extern const OSSL_DISPATCH ossl_aes128gcm_siv_functions[];
extern const OSSL_DISPATCH ossl_aes192gcm_siv_functions[];
extern const OSSL_DISPATCH ossl_aes256gcm_siv_functions[];



extern const OSSL_DISPATCH ossl_blake2bmac_functions[];
extern const OSSL_DISPATCH ossl_blake2smac_functions[];
extern const OSSL_DISPATCH ossl_cmac_functions[];
extern const OSSL_DISPATCH ossl_gmac_functions[];
extern const OSSL_DISPATCH ossl_hmac_functions[];
extern const OSSL_DISPATCH ossl_kmac128_functions[];
extern const OSSL_DISPATCH ossl_kmac256_functions[];
extern const OSSL_DISPATCH ossl_siphash_functions[];
extern const OSSL_DISPATCH ossl_poly1305_functions[];


extern const OSSL_DISPATCH ossl_kdf_pbkdf1_functions[];
extern const OSSL_DISPATCH ossl_kdf_pbkdf2_functions[];
extern const OSSL_DISPATCH ossl_kdf_pvk_functions[];
extern const OSSL_DISPATCH ossl_kdf_pkcs12_functions[];

extern const OSSL_DISPATCH ossl_kdf_scrypt_functions[];

extern const OSSL_DISPATCH ossl_kdf_tls1_prf_functions[];
extern const OSSL_DISPATCH ossl_kdf_hkdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_tls1_3_kdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_sshkdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_sskdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_x963_kdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_kbkdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_x942_kdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_krb5kdf_functions[];
extern const OSSL_DISPATCH ossl_kdf_hmac_drbg_functions[];

extern const OSSL_DISPATCH ossl_kdf_argon2i_functions[];
extern const OSSL_DISPATCH ossl_kdf_argon2d_functions[];
extern const OSSL_DISPATCH ossl_kdf_argon2id_functions[];



extern const OSSL_DISPATCH ossl_test_rng_functions[];
extern const OSSL_DISPATCH ossl_seed_src_functions[];
extern const OSSL_DISPATCH ossl_drbg_hash_functions[];
extern const OSSL_DISPATCH ossl_drbg_ossl_hmac_functions[];
extern const OSSL_DISPATCH ossl_drbg_ctr_functions[];
extern const OSSL_DISPATCH crngt_functions[];


extern const OSSL_DISPATCH ossl_dh_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_dhx_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_dsa_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_rsa_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_rsapss_keymgmt_functions[];

extern const OSSL_DISPATCH ossl_x25519_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_x448_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_ed25519_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_ed448_keymgmt_functions[];

extern const OSSL_DISPATCH ossl_ec_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_kdf_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_mac_legacy_keymgmt_functions[];
extern const OSSL_DISPATCH ossl_cmac_legacy_keymgmt_functions[];

extern const OSSL_DISPATCH ossl_sm2_keymgmt_functions[];



extern const OSSL_DISPATCH ossl_dh_keyexch_functions[];
extern const OSSL_DISPATCH ossl_x25519_keyexch_functions[];
extern const OSSL_DISPATCH ossl_x448_keyexch_functions[];
extern const OSSL_DISPATCH ossl_ecdh_keyexch_functions[];
extern const OSSL_DISPATCH ossl_kdf_tls1_prf_keyexch_functions[];
extern const OSSL_DISPATCH ossl_kdf_hkdf_keyexch_functions[];
extern const OSSL_DISPATCH ossl_kdf_scrypt_keyexch_functions[];


extern const OSSL_DISPATCH ossl_dsa_signature_functions[];
extern const OSSL_DISPATCH ossl_rsa_signature_functions[];
extern const OSSL_DISPATCH ossl_ed25519_signature_functions[];
extern const OSSL_DISPATCH ossl_ed448_signature_functions[];
extern const OSSL_DISPATCH ossl_ecdsa_signature_functions[];
extern const OSSL_DISPATCH ossl_mac_legacy_hmac_signature_functions[];
extern const OSSL_DISPATCH ossl_mac_legacy_siphash_signature_functions[];
extern const OSSL_DISPATCH ossl_mac_legacy_poly1305_signature_functions[];
extern const OSSL_DISPATCH ossl_mac_legacy_cmac_signature_functions[];
extern const OSSL_DISPATCH ossl_sm2_signature_functions[];


extern const OSSL_DISPATCH ossl_rsa_asym_cipher_functions[];

extern const OSSL_DISPATCH ossl_sm2_asym_cipher_functions[];



extern const OSSL_DISPATCH ossl_rsa_asym_kem_functions[];
extern const OSSL_DISPATCH ossl_ecx_asym_kem_functions[];
extern const OSSL_DISPATCH ossl_ec_asym_kem_functions[];


extern const OSSL_DISPATCH ossl_rsa_to_PKCS1_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_PKCS1_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_RSA_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_RSA_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_msblob_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_pvk_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_text_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_type_specific_keypair_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsa_to_type_specific_keypair_pem_encoder_functions[];

extern const OSSL_DISPATCH ossl_rsapss_to_PKCS1_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_PKCS1_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_rsapss_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_dh_to_DH_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_DH_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_PKCS3_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_PKCS3_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_type_specific_params_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_type_specific_params_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dh_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_dhx_to_DHX_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_DHX_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_X9_42_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_X9_42_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_type_specific_params_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_type_specific_params_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dhx_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_dsa_to_DSA_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_DSA_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_type_specific_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_type_specific_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_msblob_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_pvk_encoder_functions[];
extern const OSSL_DISPATCH ossl_dsa_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_ec_to_EC_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_EC_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_blob_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_X9_62_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_X9_62_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_type_specific_no_pub_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_type_specific_no_pub_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ec_to_text_encoder_functions[];


extern const OSSL_DISPATCH ossl_sm2_to_SM2_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_SM2_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_blob_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_type_specific_no_pub_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_type_specific_no_pub_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_sm2_to_text_encoder_functions[];


extern const OSSL_DISPATCH ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_OSSL_current_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed25519_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_OSSL_current_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_ed448_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_OSSL_current_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x25519_to_text_encoder_functions[];

extern const OSSL_DISPATCH ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_PrivateKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_PrivateKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_OSSL_current_der_encoder_functions[];
extern const OSSL_DISPATCH ossl_x448_to_text_encoder_functions[];


extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_dh_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions[];
extern const OSSL_DISPATCH ossl_type_specific_params_der_to_dh_decoder_functions[];
extern const OSSL_DISPATCH ossl_DH_der_to_dh_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_dhx_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions[];
extern const OSSL_DISPATCH ossl_type_specific_params_der_to_dhx_decoder_functions[];
extern const OSSL_DISPATCH ossl_DHX_der_to_dhx_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_dsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_type_specific_der_to_dsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_DSA_der_to_dsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_msblob_to_dsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_pvk_to_dsa_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_ec_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions[];
extern const OSSL_DISPATCH ossl_type_specific_no_pub_der_to_ec_decoder_functions[];
extern const OSSL_DISPATCH ossl_EC_der_to_ec_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_x25519_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_x448_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_ed448_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions[];


extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_sm2_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions[];
extern const OSSL_DISPATCH ossl_type_specific_no_pub_der_to_sm2_decoder_functions[];


extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_rsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_type_specific_keypair_der_to_rsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_RSA_der_to_rsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_msblob_to_rsa_decoder_functions[];
extern const OSSL_DISPATCH ossl_pvk_to_rsa_decoder_functions[];

extern const OSSL_DISPATCH ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions[];

extern const OSSL_DISPATCH ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions[];
extern const OSSL_DISPATCH ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions[];
extern const OSSL_DISPATCH ossl_pem_to_der_decoder_functions[];

extern const OSSL_DISPATCH ossl_file_store_functions[];
extern const OSSL_DISPATCH ossl_winstore_store_functions[];
# 19 "../providers/legacyprov.c" 2
# 1 "../providers/implementations/include/prov/names.h" 1
# 20 "../providers/legacyprov.c" 2
# 1 "../providers/common/include/prov/providercommon.h" 1
# 10 "../providers/common/include/prov/providercommon.h"
# 1 "../include/openssl/provider.h" 1
# 12 "../include/openssl/provider.h"
        
# 21 "../include/openssl/provider.h"
int OSSL_PROVIDER_set_default_search_path(OSSL_LIB_CTX *, const char *path);
const char *OSSL_PROVIDER_get0_default_search_path(OSSL_LIB_CTX *libctx);


OSSL_PROVIDER *OSSL_PROVIDER_load(OSSL_LIB_CTX *, const char *name);
OSSL_PROVIDER *OSSL_PROVIDER_load_ex(OSSL_LIB_CTX *, const char *name,
                                     OSSL_PARAM *params);
OSSL_PROVIDER *OSSL_PROVIDER_try_load(OSSL_LIB_CTX *, const char *name,
                                      int retain_fallbacks);
OSSL_PROVIDER *OSSL_PROVIDER_try_load_ex(OSSL_LIB_CTX *, const char *name,
                                         OSSL_PARAM *params,
                                         int retain_fallbacks);
int OSSL_PROVIDER_unload(OSSL_PROVIDER *prov);
int OSSL_PROVIDER_available(OSSL_LIB_CTX *, const char *name);
int OSSL_PROVIDER_do_all(OSSL_LIB_CTX *ctx,
                         int (*cb)(OSSL_PROVIDER *provider, void *cbdata),
                         void *cbdata);

const OSSL_PARAM *OSSL_PROVIDER_gettable_params(const OSSL_PROVIDER *prov);
int OSSL_PROVIDER_get_params(const OSSL_PROVIDER *prov, OSSL_PARAM params[]);
int OSSL_PROVIDER_self_test(const OSSL_PROVIDER *prov);
int OSSL_PROVIDER_get_capabilities(const OSSL_PROVIDER *prov,
                                   const char *capability,
                                   OSSL_CALLBACK *cb,
                                   void *arg);

const OSSL_ALGORITHM *OSSL_PROVIDER_query_operation(const OSSL_PROVIDER *prov,
                                                    int operation_id,
                                                    int *no_cache);
void OSSL_PROVIDER_unquery_operation(const OSSL_PROVIDER *prov,
                                     int operation_id, const OSSL_ALGORITHM *algs);
void *OSSL_PROVIDER_get0_provider_ctx(const OSSL_PROVIDER *prov);
const OSSL_DISPATCH *OSSL_PROVIDER_get0_dispatch(const OSSL_PROVIDER *prov);


int OSSL_PROVIDER_add_builtin(OSSL_LIB_CTX *, const char *name,
                              OSSL_provider_init_fn *init_fn);


const char *OSSL_PROVIDER_get0_name(const OSSL_PROVIDER *prov);
# 11 "../providers/common/include/prov/providercommon.h" 2


const OSSL_CORE_HANDLE *FIPS_get_core_handle(OSSL_LIB_CTX *ctx);

int ossl_cipher_capable_aes_cbc_hmac_sha1(void);
int ossl_cipher_capable_aes_cbc_hmac_sha256(void);

OSSL_FUNC_provider_get_capabilities_fn ossl_prov_get_capabilities;


void ossl_set_error_state(const char *type);


int ossl_prov_is_running(void);
# 21 "../providers/legacyprov.c" 2





static OSSL_FUNC_provider_gettable_params_fn legacy_gettable_params;
static OSSL_FUNC_provider_get_params_fn legacy_get_params;
static OSSL_FUNC_provider_query_operation_fn legacy_query;
# 45 "../providers/legacyprov.c"
static OSSL_FUNC_core_new_error_fn *c_new_error;
static OSSL_FUNC_core_set_error_debug_fn *c_set_error_debug;
static OSSL_FUNC_core_vset_error_fn *c_vset_error;
static OSSL_FUNC_core_set_error_mark_fn *c_set_error_mark;
static OSSL_FUNC_core_clear_last_error_mark_fn *c_clear_last_error_mark;
static OSSL_FUNC_core_pop_error_to_mark_fn *c_pop_error_to_mark;



static const OSSL_PARAM legacy_param_types[] = {
    { ("name"), (6), (
# 55 "../providers/legacyprov.c" 3 4
   ((void *)0)
# 55 "../providers/legacyprov.c"
   ), (0), ((size_t)-1) },
    { ("version"), (6), (
# 56 "../providers/legacyprov.c" 3 4
   ((void *)0)
# 56 "../providers/legacyprov.c"
   ), (0), ((size_t)-1) },
    { ("buildinfo"), (6), (
# 57 "../providers/legacyprov.c" 3 4
   ((void *)0)
# 57 "../providers/legacyprov.c"
   ), (0), ((size_t)-1) },
    { ("status"), (1), (
# 58 "../providers/legacyprov.c" 3 4
   ((void *)0)
# 58 "../providers/legacyprov.c"
   ), (0), ((size_t)-1) },
    { 
# 59 "../providers/legacyprov.c" 3 4
   ((void *)0)
# 59 "../providers/legacyprov.c"
   , 0, 
# 59 "../providers/legacyprov.c" 3 4
   ((void *)0)
# 59 "../providers/legacyprov.c"
   , 0, 0 }
};

static const OSSL_PARAM *legacy_gettable_params(void *provctx)
{
    return legacy_param_types;
}

static int legacy_get_params(void *provctx, OSSL_PARAM params[])
{
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, "name");
    if (p != 
# 72 "../providers/legacyprov.c" 3 4
            ((void *)0) 
# 72 "../providers/legacyprov.c"
                 && !OSSL_PARAM_set_utf8_ptr(p, "OpenSSL Legacy Provider"))
        return 0;
    p = OSSL_PARAM_locate(params, "version");
    if (p != 
# 75 "../providers/legacyprov.c" 3 4
            ((void *)0) 
# 75 "../providers/legacyprov.c"
                 && !OSSL_PARAM_set_utf8_ptr(p, "3.3.5"))
        return 0;
    p = OSSL_PARAM_locate(params, "buildinfo");
    if (p != 
# 78 "../providers/legacyprov.c" 3 4
            ((void *)0) 
# 78 "../providers/legacyprov.c"
                 && !OSSL_PARAM_set_utf8_ptr(p, "3.3.5"))
        return 0;
    p = OSSL_PARAM_locate(params, "status");
    if (p != 
# 81 "../providers/legacyprov.c" 3 4
            ((void *)0) 
# 81 "../providers/legacyprov.c"
                 && !OSSL_PARAM_set_int(p, ossl_prov_is_running()))
        return 0;
    return 1;
}

static const OSSL_ALGORITHM legacy_digests[] = {




    { "MD4:1.2.840.113549.2.4", "provider=legacy", ossl_md4_functions },


    { "MDC2:2.5.8.3.101", "provider=legacy", ossl_mdc2_functions },


    { "WHIRLPOOL:1.0.10118.3.0.55", "provider=legacy", ossl_wp_functions },


    { "RIPEMD-160:RIPEMD160:RIPEMD:RMD160:1.3.36.3.2.1", "provider=legacy", ossl_ripemd160_functions },

    { 
# 102 "../providers/legacyprov.c" 3 4
     ((void *)0)
# 102 "../providers/legacyprov.c"
         , 
# 102 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 102 "../providers/legacyprov.c"
               , 
# 102 "../providers/legacyprov.c" 3 4
                 ((void *)0) 
# 102 "../providers/legacyprov.c"
                      }
};

static const OSSL_ALGORITHM legacy_ciphers[] = {

    { "CAST5-ECB", "provider=legacy", ossl_cast5128ecb_functions },
    { "CAST5-CBC:CAST-CBC:CAST:1.2.840.113533.7.66.10", "provider=legacy", ossl_cast5128cbc_functions },
    { "CAST5-OFB", "provider=legacy", ossl_cast5128ofb64_functions },
    { "CAST5-CFB", "provider=legacy", ossl_cast5128cfb64_functions },


    { "BF-ECB", "provider=legacy", ossl_blowfish128ecb_functions },
    { "BF-CBC:BF:BLOWFISH:1.3.6.1.4.1.3029.1.2", "provider=legacy", ossl_blowfish128cbc_functions },
    { "BF-OFB", "provider=legacy", ossl_blowfish128ofb64_functions },
    { "BF-CFB", "provider=legacy", ossl_blowfish128cfb64_functions },


    { "IDEA-ECB", "provider=legacy", ossl_idea128ecb_functions },
    { "IDEA-CBC:IDEA:1.3.6.1.4.1.188.7.1.1.2", "provider=legacy", ossl_idea128cbc_functions },
    { "IDEA-OFB:IDEA-OFB64", "provider=legacy", ossl_idea128ofb64_functions },
    { "IDEA-CFB:IDEA-CFB64", "provider=legacy", ossl_idea128cfb64_functions },


    { "SEED-ECB:1.2.410.200004.1.3", "provider=legacy", ossl_seed128ecb_functions },
    { "SEED-CBC:SEED:1.2.410.200004.1.4", "provider=legacy", ossl_seed128cbc_functions },
    { "SEED-OFB:SEED-OFB128:1.2.410.200004.1.6", "provider=legacy", ossl_seed128ofb128_functions },
    { "SEED-CFB:SEED-CFB128:1.2.410.200004.1.5", "provider=legacy", ossl_seed128cfb128_functions },


    { "RC2-ECB", "provider=legacy", ossl_rc2128ecb_functions },
    { "RC2-CBC:RC2:RC2-128:1.2.840.113549.3.2", "provider=legacy", ossl_rc2128cbc_functions },
    { "RC2-40-CBC:RC2-40", "provider=legacy", ossl_rc240cbc_functions },
    { "RC2-64-CBC:RC2-64", "provider=legacy", ossl_rc264cbc_functions },
    { "RC2-CFB", "provider=legacy", ossl_rc2128cfb128_functions },
    { "RC2-OFB", "provider=legacy", ossl_rc2128ofb128_functions },


    { "RC4:1.2.840.113549.3.4", "provider=legacy", ossl_rc4128_functions },
    { "RC4-40", "provider=legacy", ossl_rc440_functions },

    { "RC4-HMAC-MD5", "provider=legacy", ossl_rc4_hmac_ossl_md5_functions },
# 152 "../providers/legacyprov.c"
    { "DESX-CBC:DESX", "provider=legacy", ossl_tdes_desx_cbc_functions },
    { "DES-ECB:1.3.14.3.2.6", "provider=legacy", ossl_des_ecb_functions },
    { "DES-CBC:DES:1.3.14.3.2.7", "provider=legacy", ossl_des_cbc_functions },
    { "DES-OFB:1.3.14.3.2.8", "provider=legacy", ossl_des_ofb64_functions },
    { "DES-CFB:1.3.14.3.2.9", "provider=legacy", ossl_des_cfb64_functions },
    { "DES-CFB1", "provider=legacy", ossl_des_cfb1_functions },
    { "DES-CFB8", "provider=legacy", ossl_des_cfb8_functions },

    { 
# 160 "../providers/legacyprov.c" 3 4
     ((void *)0)
# 160 "../providers/legacyprov.c"
         , 
# 160 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 160 "../providers/legacyprov.c"
               , 
# 160 "../providers/legacyprov.c" 3 4
                 ((void *)0) 
# 160 "../providers/legacyprov.c"
                      }
};

static const OSSL_ALGORITHM legacy_kdfs[] = {
    { "PBKDF1", "provider=legacy", ossl_kdf_pbkdf1_functions },
    { "PVKKDF", "provider=legacy", ossl_kdf_pvk_functions },
    { 
# 166 "../providers/legacyprov.c" 3 4
     ((void *)0)
# 166 "../providers/legacyprov.c"
         , 
# 166 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 166 "../providers/legacyprov.c"
               , 
# 166 "../providers/legacyprov.c" 3 4
                 ((void *)0) 
# 166 "../providers/legacyprov.c"
                      }
};

static const OSSL_ALGORITHM *legacy_query(void *provctx, int operation_id,
                                          int *no_cache)
{
    *no_cache = 0;
    switch (operation_id) {
    case 1:
        return legacy_digests;
    case 2:
        return legacy_ciphers;
    case 4:
        return legacy_kdfs;
    }
    return 
# 181 "../providers/legacyprov.c" 3 4
          ((void *)0)
# 181 "../providers/legacyprov.c"
              ;
}

static void legacy_teardown(void *provctx)
{
    OSSL_LIB_CTX_free(ossl_prov_ctx_get0_libctx((provctx)));
    ossl_prov_ctx_free(provctx);
}


static const OSSL_DISPATCH legacy_dispatch_table[] = {
    { 1024, (void (*)(void))legacy_teardown },
    { 1025, (void (*)(void))legacy_gettable_params },
    { 1026, (void (*)(void))legacy_get_params },
    { 1027, (void (*)(void))legacy_query },
    { 0, 
# 196 "../providers/legacyprov.c" 3 4
   ((void *)0) 
# 196 "../providers/legacyprov.c"
   }
};

int OSSL_provider_init(const OSSL_CORE_HANDLE *handle,
                       const OSSL_DISPATCH *in,
                       const OSSL_DISPATCH **out,
                       void **provctx)
{
    OSSL_LIB_CTX *libctx = 
# 204 "../providers/legacyprov.c" 3 4
                          ((void *)0)
# 204 "../providers/legacyprov.c"
                              ;

    const OSSL_DISPATCH *tmp;



    for (tmp = in; tmp->function_id != 0; tmp++) {






        switch (tmp->function_id) {
        case 5:
            if (c_new_error == 
# 219 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 219 "../providers/legacyprov.c"
           ) c_new_error = OSSL_FUNC_core_new_error(tmp); else if (c_new_error != OSSL_FUNC_core_new_error(tmp)) return 0;;
            break;
        case 6:
            if (c_set_error_debug == 
# 222 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 222 "../providers/legacyprov.c"
           ) c_set_error_debug = OSSL_FUNC_core_set_error_debug(tmp); else if (c_set_error_debug != OSSL_FUNC_core_set_error_debug(tmp)) return 0;;
            break;
        case 7:
            if (c_vset_error == 
# 225 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 225 "../providers/legacyprov.c"
           ) c_vset_error = OSSL_FUNC_core_vset_error(tmp); else if (c_vset_error != OSSL_FUNC_core_vset_error(tmp)) return 0;;
            break;
        case 8:
            if (c_set_error_mark == 
# 228 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 228 "../providers/legacyprov.c"
           ) c_set_error_mark = OSSL_FUNC_core_set_error_mark(tmp); else if (c_set_error_mark != OSSL_FUNC_core_set_error_mark(tmp)) return 0;;
            break;
        case 9:
            if (c_clear_last_error_mark == 
# 231 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 231 "../providers/legacyprov.c"
           ) c_clear_last_error_mark = OSSL_FUNC_core_clear_last_error_mark(tmp); else if (c_clear_last_error_mark != OSSL_FUNC_core_clear_last_error_mark(tmp)) return 0;
                                                               ;
            break;
        case 10:
            if (c_pop_error_to_mark == 
# 235 "../providers/legacyprov.c" 3 4
           ((void *)0)
# 235 "../providers/legacyprov.c"
           ) c_pop_error_to_mark = OSSL_FUNC_core_pop_error_to_mark(tmp); else if (c_pop_error_to_mark != OSSL_FUNC_core_pop_error_to_mark(tmp)) return 0;;
            break;
        }
    }


    if ((*provctx = ossl_prov_ctx_new()) == 
# 241 "../providers/legacyprov.c" 3 4
                                           ((void *)0)
        
# 242 "../providers/legacyprov.c"
       || (libctx = OSSL_LIB_CTX_new_child(handle, in)) == 
# 242 "../providers/legacyprov.c" 3 4
                                                           ((void *)0)
# 242 "../providers/legacyprov.c"
                                                               ) {
        OSSL_LIB_CTX_free(libctx);
        legacy_teardown(*provctx);
        *provctx = 
# 245 "../providers/legacyprov.c" 3 4
                  ((void *)0)
# 245 "../providers/legacyprov.c"
                      ;
        return 0;
    }
    ossl_prov_ctx_set0_libctx(*provctx, libctx);
    ossl_prov_ctx_set0_handle(*provctx, handle);

    *out = legacy_dispatch_table;

    return 1;
}
# 266 "../providers/legacyprov.c"
void ERR_new(void)
{
    c_new_error(
# 268 "../providers/legacyprov.c" 3 4
               ((void *)0)
# 268 "../providers/legacyprov.c"
                   );
}

void ERR_set_debug(const char *file, int line, const char *func)
{
    c_set_error_debug(
# 273 "../providers/legacyprov.c" 3 4
                     ((void *)0)
# 273 "../providers/legacyprov.c"
                         , file, line, func);
}

void ERR_set_error(int lib, int reason, const char *fmt, ...)
{
    va_list args;

    
# 280 "../providers/legacyprov.c" 3 4
   __builtin_c23_va_start(
# 280 "../providers/legacyprov.c"
   args, fmt
# 280 "../providers/legacyprov.c" 3 4
   )
# 280 "../providers/legacyprov.c"
                      ;
    c_vset_error(
# 281 "../providers/legacyprov.c" 3 4
                ((void *)0)
# 281 "../providers/legacyprov.c"
                    , ( (((unsigned long)(lib) & 0xFF ) << 23L) | (((unsigned long)(reason) & 0X7FFFFF)) ), fmt, args);
    
# 282 "../providers/legacyprov.c" 3 4
   __builtin_va_end(
# 282 "../providers/legacyprov.c"
   args
# 282 "../providers/legacyprov.c" 3 4
   )
# 282 "../providers/legacyprov.c"
               ;
}

void ERR_vset_error(int lib, int reason, const char *fmt, va_list args)
{
    c_vset_error(
# 287 "../providers/legacyprov.c" 3 4
                ((void *)0)
# 287 "../providers/legacyprov.c"
                    , ( (((unsigned long)(lib) & 0xFF ) << 23L) | (((unsigned long)(reason) & 0X7FFFFF)) ), fmt, args);
}

int ERR_set_mark(void)
{
    return c_set_error_mark(
# 292 "../providers/legacyprov.c" 3 4
                           ((void *)0)
# 292 "../providers/legacyprov.c"
                               );
}

int ERR_clear_last_mark(void)
{
    return c_clear_last_error_mark(
# 297 "../providers/legacyprov.c" 3 4
                                  ((void *)0)
# 297 "../providers/legacyprov.c"
                                      );
}

int ERR_pop_to_mark(void)
{
    return c_pop_error_to_mark(
# 302 "../providers/legacyprov.c" 3 4
                              ((void *)0)
# 302 "../providers/legacyprov.c"
                                  );
}

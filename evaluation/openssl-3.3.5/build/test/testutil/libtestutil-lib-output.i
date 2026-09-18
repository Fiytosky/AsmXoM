# 0 "../test/testutil/output.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../test/testutil/output.c"
# 10 "../test/testutil/output.c"
# 1 "../test/testutil/output.h" 1
# 13 "../test/testutil/output.h"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 1 3 4
# 40 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 3 4

# 40 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 103 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 14 "../test/testutil/output.h" 2
# 37 "../test/testutil/output.h"

# 37 "../test/testutil/output.h"
void test_open_streams(void);
void test_close_streams(void);
void test_adjust_streams_tap_level(int level);

int test_vprintf_stdout(const char *fmt, va_list ap)
    __attribute__((__format__(__gnu_printf__, 1, 0)));
int test_vprintf_tapout(const char *fmt, va_list ap)
    __attribute__((__format__(__gnu_printf__, 1, 0)));
int test_vprintf_stderr(const char *fmt, va_list ap)
    __attribute__((__format__(__gnu_printf__, 1, 0)));
int test_vprintf_taperr(const char *fmt, va_list ap)
    __attribute__((__format__(__gnu_printf__, 1, 0)));

int test_flush_stdout(void);
int test_flush_tapout(void);
int test_flush_stderr(void);
int test_flush_taperr(void);


int test_printf_stdout(const char *fmt, ...)
    __attribute__((__format__(__gnu_printf__, 1, 2)));
int test_printf_tapout(const char *fmt, ...)
    __attribute__((__format__(__gnu_printf__, 1, 2)));
int test_printf_stderr(const char *fmt, ...)
    __attribute__((__format__(__gnu_printf__, 1, 2)));
int test_printf_taperr(const char *fmt, ...)
    __attribute__((__format__(__gnu_printf__, 1, 2)));
# 11 "../test/testutil/output.c" 2

int test_printf_stdout(const char *fmt, ...)
{
    va_list ap;
    int ret;

    
# 17 "../test/testutil/output.c" 3 4
   __builtin_c23_va_start(
# 17 "../test/testutil/output.c"
   ap, fmt
# 17 "../test/testutil/output.c" 3 4
   )
# 17 "../test/testutil/output.c"
                    ;
    ret = test_vprintf_stdout(fmt, ap);
    
# 19 "../test/testutil/output.c" 3 4
   __builtin_va_end(
# 19 "../test/testutil/output.c"
   ap
# 19 "../test/testutil/output.c" 3 4
   )
# 19 "../test/testutil/output.c"
             ;

    return ret;
}

int test_printf_stderr(const char *fmt, ...)
{
    va_list ap;
    int ret;

    
# 29 "../test/testutil/output.c" 3 4
   __builtin_c23_va_start(
# 29 "../test/testutil/output.c"
   ap, fmt
# 29 "../test/testutil/output.c" 3 4
   )
# 29 "../test/testutil/output.c"
                    ;
    ret = test_vprintf_stderr(fmt, ap);
    
# 31 "../test/testutil/output.c" 3 4
   __builtin_va_end(
# 31 "../test/testutil/output.c"
   ap
# 31 "../test/testutil/output.c" 3 4
   )
# 31 "../test/testutil/output.c"
             ;

    return ret;
}

int test_printf_tapout(const char *fmt, ...)
{
    va_list ap;
    int ret;

    
# 41 "../test/testutil/output.c" 3 4
   __builtin_c23_va_start(
# 41 "../test/testutil/output.c"
   ap, fmt
# 41 "../test/testutil/output.c" 3 4
   )
# 41 "../test/testutil/output.c"
                    ;
    ret = test_vprintf_tapout(fmt, ap);
    
# 43 "../test/testutil/output.c" 3 4
   __builtin_va_end(
# 43 "../test/testutil/output.c"
   ap
# 43 "../test/testutil/output.c" 3 4
   )
# 43 "../test/testutil/output.c"
             ;

    return ret;
}

int test_printf_taperr(const char *fmt, ...)
{
    va_list ap;
    int ret;

    
# 53 "../test/testutil/output.c" 3 4
   __builtin_c23_va_start(
# 53 "../test/testutil/output.c"
   ap, fmt
# 53 "../test/testutil/output.c" 3 4
   )
# 53 "../test/testutil/output.c"
                    ;
    ret = test_vprintf_taperr(fmt, ap);
    
# 55 "../test/testutil/output.c" 3 4
   __builtin_va_end(
# 55 "../test/testutil/output.c"
   ap
# 55 "../test/testutil/output.c" 3 4
   )
# 55 "../test/testutil/output.c"
             ;

    return ret;
}

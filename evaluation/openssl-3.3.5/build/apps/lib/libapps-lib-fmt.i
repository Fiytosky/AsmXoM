# 0 "../apps/lib/fmt.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../apps/lib/fmt.c"
# 10 "../apps/lib/fmt.c"
# 1 "../apps/include/fmt.h" 1
# 43 "../apps/include/fmt.h"
int FMT_istext(int format);
# 11 "../apps/lib/fmt.c" 2

int FMT_istext(int format)
{
    return (format & 0x8000) == 0x8000;
}

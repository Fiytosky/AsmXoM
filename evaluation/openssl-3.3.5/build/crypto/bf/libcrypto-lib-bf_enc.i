# 0 "../crypto/bf/bf_enc.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/bf/bf_enc.c"
# 14 "../crypto/bf/bf_enc.c"
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
# 15 "../crypto/bf/bf_enc.c" 2

# 1 "../include/openssl/blowfish.h" 1
# 12 "../include/openssl/blowfish.h"
        
# 22 "../include/openssl/blowfish.h"
# 1 "../include/openssl/e_os2.h" 1
# 12 "../include/openssl/e_os2.h"
        
# 235 "../include/openssl/e_os2.h"
# 1 "/usr/include/inttypes.h" 1 3 4
# 25 "/usr/include/inttypes.h" 3 4
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
# 26 "/usr/include/inttypes.h" 2 3 4

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
# 23 "../include/openssl/blowfish.h" 2
# 43 "../include/openssl/blowfish.h"
typedef struct bf_key_st {
    unsigned int P[16 + 2];
    unsigned int S[4 * 256];
} BF_KEY;



extern void BF_set_key(BF_KEY *key, int len,
                                      const unsigned char *data);
extern void BF_encrypt(unsigned int *data, const BF_KEY *key);
extern void BF_decrypt(unsigned int *data, const BF_KEY *key);
extern void BF_ecb_encrypt(const unsigned char *in,
                                          unsigned char *out, const BF_KEY *key,
                                          int enc);
extern void BF_cbc_encrypt(const unsigned char *in,
                                          unsigned char *out, long length,
                                          const BF_KEY *schedule,
                                          unsigned char *ivec, int enc);
extern void BF_cfb64_encrypt(const unsigned char *in,
                                            unsigned char *out,
                                            long length, const BF_KEY *schedule,
                                            unsigned char *ivec, int *num,
                                            int enc);
extern void BF_ofb64_encrypt(const unsigned char *in,
                                            unsigned char *out,
                                            long length, const BF_KEY *schedule,
                                            unsigned char *ivec, int *num);
extern const char *BF_options(void);
# 17 "../crypto/bf/bf_enc.c" 2
# 1 "../crypto/bf/bf_local.h" 1
# 18 "../crypto/bf/bf_enc.c" 2
# 30 "../crypto/bf/bf_enc.c"
void BF_encrypt(unsigned int *data, const BF_KEY *key)
{
    register unsigned int l, r;
    register const unsigned int *p, *s;

    p = key->P;
    s = &(key->S[0]);
    l = data[0];
    r = data[1];

    l ^= p[0];
    ( r^=p[1], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[2], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[3], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[4], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[5], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[6], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[7], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[8], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[9], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[10], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[11], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[12], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[13], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[14], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[15], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[16], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );






    r ^= p[16 + 1];

    data[1] = l & 0xffffffffU;
    data[0] = r & 0xffffffffU;
}

void BF_decrypt(unsigned int *data, const BF_KEY *key)
{
    register unsigned int l, r;
    register const unsigned int *p, *s;

    p = key->P;
    s = &(key->S[0]);
    l = data[0];
    r = data[1];

    l ^= p[16 + 1];






    ( r^=p[16], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[15], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[14], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[13], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[12], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[11], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[10], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[9], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[8], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[7], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[6], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[5], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[4], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[3], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    ( r^=p[2], r^=((( s[ ((l>>24)&0xff)] + s[0x0100+((l>>16)&0xff)])^ s[0x0200+((l>> 8)&0xff)])+ s[0x0300+((l )&0xff)])&0xffffffffU );
    ( l^=p[1], l^=((( s[ ((r>>24)&0xff)] + s[0x0100+((r>>16)&0xff)])^ s[0x0200+((r>> 8)&0xff)])+ s[0x0300+((r )&0xff)])&0xffffffffU );
    r ^= p[0];

    data[1] = l & 0xffffffffU;
    data[0] = r & 0xffffffffU;
}

void BF_cbc_encrypt(const unsigned char *in, unsigned char *out, long length,
                    const BF_KEY *schedule, unsigned char *ivec, int encrypt)
{
    register unsigned int tin0, tin1;
    register unsigned int tout0, tout1, xor0, xor1;
    register long l = length;
    unsigned int tin[2];

    if (encrypt) {
        (tout0 =((unsigned long)(*((ivec)++)))<<24L, tout0|=((unsigned long)(*((ivec)++)))<<16L, tout0|=((unsigned long)(*((ivec)++)))<< 8L, tout0|=((unsigned long)(*((ivec)++))));
        (tout1 =((unsigned long)(*((ivec)++)))<<24L, tout1|=((unsigned long)(*((ivec)++)))<<16L, tout1|=((unsigned long)(*((ivec)++)))<< 8L, tout1|=((unsigned long)(*((ivec)++))));
        ivec -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            (tin0 =((unsigned long)(*((in)++)))<<24L, tin0|=((unsigned long)(*((in)++)))<<16L, tin0|=((unsigned long)(*((in)++)))<< 8L, tin0|=((unsigned long)(*((in)++))));
            (tin1 =((unsigned long)(*((in)++)))<<24L, tin1|=((unsigned long)(*((in)++)))<<16L, tin1|=((unsigned long)(*((in)++)))<< 8L, tin1|=((unsigned long)(*((in)++))));
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            BF_encrypt(tin, schedule);
            tout0 = tin[0];
            tout1 = tin[1];
            (*((out)++)=(unsigned char)(((tout0)>>24L)&0xff), *((out)++)=(unsigned char)(((tout0)>>16L)&0xff), *((out)++)=(unsigned char)(((tout0)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout0) )&0xff));
            (*((out)++)=(unsigned char)(((tout1)>>24L)&0xff), *((out)++)=(unsigned char)(((tout1)>>16L)&0xff), *((out)++)=(unsigned char)(((tout1)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout1) )&0xff));
        }
        if (l != -8) {
            { in+=l + 8; tin0=tin1=0; switch (l + 8) { case 8: tin1 =((unsigned long)(*(--(in)))) ; case 7: tin1|=((unsigned long)(*(--(in))))<< 8; case 6: tin1|=((unsigned long)(*(--(in))))<<16; case 5: tin1|=((unsigned long)(*(--(in))))<<24; case 4: tin0 =((unsigned long)(*(--(in)))) ; case 3: tin0|=((unsigned long)(*(--(in))))<< 8; case 2: tin0|=((unsigned long)(*(--(in))))<<16; case 1: tin0|=((unsigned long)(*(--(in))))<<24; } };
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            BF_encrypt(tin, schedule);
            tout0 = tin[0];
            tout1 = tin[1];
            (*((out)++)=(unsigned char)(((tout0)>>24L)&0xff), *((out)++)=(unsigned char)(((tout0)>>16L)&0xff), *((out)++)=(unsigned char)(((tout0)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout0) )&0xff));
            (*((out)++)=(unsigned char)(((tout1)>>24L)&0xff), *((out)++)=(unsigned char)(((tout1)>>16L)&0xff), *((out)++)=(unsigned char)(((tout1)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout1) )&0xff));
        }
        (*((ivec)++)=(unsigned char)(((tout0)>>24L)&0xff), *((ivec)++)=(unsigned char)(((tout0)>>16L)&0xff), *((ivec)++)=(unsigned char)(((tout0)>> 8L)&0xff), *((ivec)++)=(unsigned char)(((tout0) )&0xff));
        (*((ivec)++)=(unsigned char)(((tout1)>>24L)&0xff), *((ivec)++)=(unsigned char)(((tout1)>>16L)&0xff), *((ivec)++)=(unsigned char)(((tout1)>> 8L)&0xff), *((ivec)++)=(unsigned char)(((tout1) )&0xff));
    } else {
        (xor0 =((unsigned long)(*((ivec)++)))<<24L, xor0|=((unsigned long)(*((ivec)++)))<<16L, xor0|=((unsigned long)(*((ivec)++)))<< 8L, xor0|=((unsigned long)(*((ivec)++))));
        (xor1 =((unsigned long)(*((ivec)++)))<<24L, xor1|=((unsigned long)(*((ivec)++)))<<16L, xor1|=((unsigned long)(*((ivec)++)))<< 8L, xor1|=((unsigned long)(*((ivec)++))));
        ivec -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            (tin0 =((unsigned long)(*((in)++)))<<24L, tin0|=((unsigned long)(*((in)++)))<<16L, tin0|=((unsigned long)(*((in)++)))<< 8L, tin0|=((unsigned long)(*((in)++))));
            (tin1 =((unsigned long)(*((in)++)))<<24L, tin1|=((unsigned long)(*((in)++)))<<16L, tin1|=((unsigned long)(*((in)++)))<< 8L, tin1|=((unsigned long)(*((in)++))));
            tin[0] = tin0;
            tin[1] = tin1;
            BF_decrypt(tin, schedule);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            (*((out)++)=(unsigned char)(((tout0)>>24L)&0xff), *((out)++)=(unsigned char)(((tout0)>>16L)&0xff), *((out)++)=(unsigned char)(((tout0)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout0) )&0xff));
            (*((out)++)=(unsigned char)(((tout1)>>24L)&0xff), *((out)++)=(unsigned char)(((tout1)>>16L)&0xff), *((out)++)=(unsigned char)(((tout1)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout1) )&0xff));
            xor0 = tin0;
            xor1 = tin1;
        }
        if (l != -8) {
            (tin0 =((unsigned long)(*((in)++)))<<24L, tin0|=((unsigned long)(*((in)++)))<<16L, tin0|=((unsigned long)(*((in)++)))<< 8L, tin0|=((unsigned long)(*((in)++))));
            (tin1 =((unsigned long)(*((in)++)))<<24L, tin1|=((unsigned long)(*((in)++)))<<16L, tin1|=((unsigned long)(*((in)++)))<< 8L, tin1|=((unsigned long)(*((in)++))));
            tin[0] = tin0;
            tin[1] = tin1;
            BF_decrypt(tin, schedule);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            { out+=l + 8; switch (l + 8) { case 8: *(--(out))=(unsigned char)(((tout1) )&0xff); case 7: *(--(out))=(unsigned char)(((tout1)>> 8)&0xff); case 6: *(--(out))=(unsigned char)(((tout1)>>16)&0xff); case 5: *(--(out))=(unsigned char)(((tout1)>>24)&0xff); case 4: *(--(out))=(unsigned char)(((tout0) )&0xff); case 3: *(--(out))=(unsigned char)(((tout0)>> 8)&0xff); case 2: *(--(out))=(unsigned char)(((tout0)>>16)&0xff); case 1: *(--(out))=(unsigned char)(((tout0)>>24)&0xff); } };
            xor0 = tin0;
            xor1 = tin1;
        }
        (*((ivec)++)=(unsigned char)(((xor0)>>24L)&0xff), *((ivec)++)=(unsigned char)(((xor0)>>16L)&0xff), *((ivec)++)=(unsigned char)(((xor0)>> 8L)&0xff), *((ivec)++)=(unsigned char)(((xor0) )&0xff));
        (*((ivec)++)=(unsigned char)(((xor1)>>24L)&0xff), *((ivec)++)=(unsigned char)(((xor1)>>16L)&0xff), *((ivec)++)=(unsigned char)(((xor1)>> 8L)&0xff), *((ivec)++)=(unsigned char)(((xor1) )&0xff));
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}

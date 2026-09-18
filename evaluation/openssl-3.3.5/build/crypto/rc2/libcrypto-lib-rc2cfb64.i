# 0 "../crypto/rc2/rc2cfb64.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/rc2/rc2cfb64.c"
# 14 "../crypto/rc2/rc2cfb64.c"
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
# 15 "../crypto/rc2/rc2cfb64.c" 2

# 1 "../include/openssl/rc2.h" 1
# 12 "../include/openssl/rc2.h"
        
# 30 "../include/openssl/rc2.h"
typedef unsigned int RC2_INT;




typedef struct rc2_key_st {
    RC2_INT data[64];
} RC2_KEY;


extern void RC2_set_key(RC2_KEY *key, int len,
                                       const unsigned char *data, int bits);
extern void RC2_ecb_encrypt(const unsigned char *in,
                                           unsigned char *out, RC2_KEY *key,
                                           int enc);
extern void RC2_encrypt(unsigned long *data, RC2_KEY *key);
extern void RC2_decrypt(unsigned long *data, RC2_KEY *key);
extern void RC2_cbc_encrypt(const unsigned char *in,
                                           unsigned char *out, long length,
                                           RC2_KEY *ks, unsigned char *iv,
                                           int enc);
extern void RC2_cfb64_encrypt(const unsigned char *in,
                                             unsigned char *out, long length,
                                             RC2_KEY *schedule,
                                             unsigned char *ivec,
                                             int *num, int enc);
extern void RC2_ofb64_encrypt(const unsigned char *in,
                                             unsigned char *out, long length,
                                             RC2_KEY *schedule,
                                             unsigned char *ivec,
                                             int *num);
# 17 "../crypto/rc2/rc2cfb64.c" 2
# 1 "../crypto/rc2/rc2_local.h" 1
# 18 "../crypto/rc2/rc2cfb64.c" 2







void RC2_cfb64_encrypt(const unsigned char *in, unsigned char *out,
                       long length, RC2_KEY *schedule, unsigned char *ivec,
                       int *num, int encrypt)
{
    register unsigned long v0, v1, t;
    register int n = *num;
    register long l = length;
    unsigned long ti[2];
    unsigned char *iv, c, cc;

    iv = (unsigned char *)ivec;
    if (encrypt) {
        while (l--) {
            if (n == 0) {
                (v0 =((unsigned long)(*((iv)++))) , v0|=((unsigned long)(*((iv)++)))<< 8L, v0|=((unsigned long)(*((iv)++)))<<16L, v0|=((unsigned long)(*((iv)++)))<<24L);
                ti[0] = v0;
                (v1 =((unsigned long)(*((iv)++))) , v1|=((unsigned long)(*((iv)++)))<< 8L, v1|=((unsigned long)(*((iv)++)))<<16L, v1|=((unsigned long)(*((iv)++)))<<24L);
                ti[1] = v1;
                RC2_encrypt((unsigned long *)ti, schedule);
                iv = (unsigned char *)ivec;
                t = ti[0];
                (*((iv)++)=(unsigned char)(((t) )&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>>24L)&0xff));
                t = ti[1];
                (*((iv)++)=(unsigned char)(((t) )&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>>24L)&0xff));
                iv = (unsigned char *)ivec;
            }
            c = *(in++) ^ iv[n];
            *(out++) = c;
            iv[n] = c;
            n = (n + 1) & 0x07;
        }
    } else {
        while (l--) {
            if (n == 0) {
                (v0 =((unsigned long)(*((iv)++))) , v0|=((unsigned long)(*((iv)++)))<< 8L, v0|=((unsigned long)(*((iv)++)))<<16L, v0|=((unsigned long)(*((iv)++)))<<24L);
                ti[0] = v0;
                (v1 =((unsigned long)(*((iv)++))) , v1|=((unsigned long)(*((iv)++)))<< 8L, v1|=((unsigned long)(*((iv)++)))<<16L, v1|=((unsigned long)(*((iv)++)))<<24L);
                ti[1] = v1;
                RC2_encrypt((unsigned long *)ti, schedule);
                iv = (unsigned char *)ivec;
                t = ti[0];
                (*((iv)++)=(unsigned char)(((t) )&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>>24L)&0xff));
                t = ti[1];
                (*((iv)++)=(unsigned char)(((t) )&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>>24L)&0xff));
                iv = (unsigned char *)ivec;
            }
            cc = *(in++);
            c = iv[n];
            iv[n] = cc;
            *(out++) = c ^ cc;
            n = (n + 1) & 0x07;
        }
    }
    v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
    *num = n;
}

# 0 "../crypto/idea/i_ofb64.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/idea/i_ofb64.c"
# 15 "../crypto/idea/i_ofb64.c"
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
# 16 "../crypto/idea/i_ofb64.c" 2

# 1 "../include/openssl/idea.h" 1
# 12 "../include/openssl/idea.h"
        
# 31 "../include/openssl/idea.h"
typedef unsigned int IDEA_INT;




typedef struct idea_key_st {
    IDEA_INT data[9][6];
} IDEA_KEY_SCHEDULE;


extern const char *IDEA_options(void);
extern void IDEA_ecb_encrypt(const unsigned char *in,
                                            unsigned char *out,
                                            IDEA_KEY_SCHEDULE *ks);
extern void IDEA_set_encrypt_key(const unsigned char *key,
                                                IDEA_KEY_SCHEDULE *ks);
extern void IDEA_set_decrypt_key(IDEA_KEY_SCHEDULE *ek,
                                                IDEA_KEY_SCHEDULE *dk);
extern void IDEA_cbc_encrypt(const unsigned char *in,
                                            unsigned char *out, long length,
                                            IDEA_KEY_SCHEDULE *ks,
                                            unsigned char *iv, int enc);
extern void IDEA_cfb64_encrypt(const unsigned char *in,
                                              unsigned char *out, long length,
                                              IDEA_KEY_SCHEDULE *ks,
                                              unsigned char *iv, int *num,
                                              int enc);
extern void IDEA_ofb64_encrypt(const unsigned char *in,
                                              unsigned char *out, long length,
                                              IDEA_KEY_SCHEDULE *ks,
                                              unsigned char *iv, int *num);
extern void IDEA_encrypt(unsigned long *in,
                                        IDEA_KEY_SCHEDULE *ks);
# 18 "../crypto/idea/i_ofb64.c" 2
# 1 "../crypto/idea/idea_local.h" 1
# 19 "../crypto/idea/i_ofb64.c" 2






void IDEA_ofb64_encrypt(const unsigned char *in, unsigned char *out,
                        long length, IDEA_KEY_SCHEDULE *schedule,
                        unsigned char *ivec, int *num)
{
    register unsigned long v0, v1, t;
    register int n = *num;
    register long l = length;
    unsigned char d[8];
    register char *dp;
    unsigned long ti[2];
    unsigned char *iv;
    int save = 0;

    if (n < 0) {
        *num = -1;
        return;
    }

    iv = (unsigned char *)ivec;
    (v0 =((unsigned long)(*((iv)++)))<<24L, v0|=((unsigned long)(*((iv)++)))<<16L, v0|=((unsigned long)(*((iv)++)))<< 8L, v0|=((unsigned long)(*((iv)++))));
    (v1 =((unsigned long)(*((iv)++)))<<24L, v1|=((unsigned long)(*((iv)++)))<<16L, v1|=((unsigned long)(*((iv)++)))<< 8L, v1|=((unsigned long)(*((iv)++))));
    ti[0] = v0;
    ti[1] = v1;
    dp = (char *)d;
    (*((dp)++)=(unsigned char)(((v0)>>24L)&0xff), *((dp)++)=(unsigned char)(((v0)>>16L)&0xff), *((dp)++)=(unsigned char)(((v0)>> 8L)&0xff), *((dp)++)=(unsigned char)(((v0) )&0xff));
    (*((dp)++)=(unsigned char)(((v1)>>24L)&0xff), *((dp)++)=(unsigned char)(((v1)>>16L)&0xff), *((dp)++)=(unsigned char)(((v1)>> 8L)&0xff), *((dp)++)=(unsigned char)(((v1) )&0xff));
    while (l--) {
        if (n == 0) {
            IDEA_encrypt((unsigned long *)ti, schedule);
            dp = (char *)d;
            t = ti[0];
            (*((dp)++)=(unsigned char)(((t)>>24L)&0xff), *((dp)++)=(unsigned char)(((t)>>16L)&0xff), *((dp)++)=(unsigned char)(((t)>> 8L)&0xff), *((dp)++)=(unsigned char)(((t) )&0xff));
            t = ti[1];
            (*((dp)++)=(unsigned char)(((t)>>24L)&0xff), *((dp)++)=(unsigned char)(((t)>>16L)&0xff), *((dp)++)=(unsigned char)(((t)>> 8L)&0xff), *((dp)++)=(unsigned char)(((t) )&0xff));
            save++;
        }
        *(out++) = *(in++) ^ d[n];
        n = (n + 1) & 0x07;
    }
    if (save) {
        v0 = ti[0];
        v1 = ti[1];
        iv = (unsigned char *)ivec;
        (*((iv)++)=(unsigned char)(((v0)>>24L)&0xff), *((iv)++)=(unsigned char)(((v0)>>16L)&0xff), *((iv)++)=(unsigned char)(((v0)>> 8L)&0xff), *((iv)++)=(unsigned char)(((v0) )&0xff));
        (*((iv)++)=(unsigned char)(((v1)>>24L)&0xff), *((iv)++)=(unsigned char)(((v1)>>16L)&0xff), *((iv)++)=(unsigned char)(((v1)>> 8L)&0xff), *((iv)++)=(unsigned char)(((v1) )&0xff));
    }
    t = v0 = v1 = ti[0] = ti[1] = 0;
    *num = n;
}

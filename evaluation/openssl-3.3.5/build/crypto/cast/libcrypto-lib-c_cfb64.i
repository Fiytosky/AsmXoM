# 0 "../crypto/cast/c_cfb64.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/cast/c_cfb64.c"
# 14 "../crypto/cast/c_cfb64.c"
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
# 15 "../crypto/cast/c_cfb64.c" 2

# 1 "../include/openssl/cast.h" 1
# 12 "../include/openssl/cast.h"
        
# 36 "../include/openssl/cast.h"
typedef struct cast_key_st {
    unsigned int data[32];
    int short_key;
} CAST_KEY;



extern
void CAST_set_key(CAST_KEY *key, int len, const unsigned char *data);
extern
void CAST_ecb_encrypt(const unsigned char *in, unsigned char *out,
                      const CAST_KEY *key, int enc);
extern
void CAST_encrypt(unsigned int *data, const CAST_KEY *key);
extern
void CAST_decrypt(unsigned int *data, const CAST_KEY *key);
extern
void CAST_cbc_encrypt(const unsigned char *in, unsigned char *out,
                      long length, const CAST_KEY *ks, unsigned char *iv,
                      int enc);
extern
void CAST_cfb64_encrypt(const unsigned char *in, unsigned char *out,
                        long length, const CAST_KEY *schedule,
                        unsigned char *ivec, int *num, int enc);
extern
void CAST_ofb64_encrypt(const unsigned char *in, unsigned char *out,
                        long length, const CAST_KEY *schedule,
                        unsigned char *ivec, int *num);
# 17 "../crypto/cast/c_cfb64.c" 2
# 1 "../crypto/cast/cast_local.h" 1
# 136 "../crypto/cast/cast_local.h"
extern const unsigned int CAST_S_table0[256];
extern const unsigned int CAST_S_table1[256];
extern const unsigned int CAST_S_table2[256];
extern const unsigned int CAST_S_table3[256];
extern const unsigned int CAST_S_table4[256];
extern const unsigned int CAST_S_table5[256];
extern const unsigned int CAST_S_table6[256];
extern const unsigned int CAST_S_table7[256];
# 18 "../crypto/cast/c_cfb64.c" 2







void CAST_cfb64_encrypt(const unsigned char *in, unsigned char *out,
                        long length, const CAST_KEY *schedule,
                        unsigned char *ivec, int *num, int enc)
{
    register unsigned int v0, v1, t;
    register int n = *num;
    register long l = length;
    unsigned int ti[2];
    unsigned char *iv, c, cc;

    iv = ivec;
    if (enc) {
        while (l--) {
            if (n == 0) {
                (v0 =((unsigned long)(*((iv)++)))<<24L, v0|=((unsigned long)(*((iv)++)))<<16L, v0|=((unsigned long)(*((iv)++)))<< 8L, v0|=((unsigned long)(*((iv)++))));
                ti[0] = v0;
                (v1 =((unsigned long)(*((iv)++)))<<24L, v1|=((unsigned long)(*((iv)++)))<<16L, v1|=((unsigned long)(*((iv)++)))<< 8L, v1|=((unsigned long)(*((iv)++))));
                ti[1] = v1;
                CAST_encrypt((unsigned int *)ti, schedule);
                iv = ivec;
                t = ti[0];
                (*((iv)++)=(unsigned char)(((t)>>24L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t) )&0xff));
                t = ti[1];
                (*((iv)++)=(unsigned char)(((t)>>24L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t) )&0xff));
                iv = ivec;
            }
            c = *(in++) ^ iv[n];
            *(out++) = c;
            iv[n] = c;
            n = (n + 1) & 0x07;
        }
    } else {
        while (l--) {
            if (n == 0) {
                (v0 =((unsigned long)(*((iv)++)))<<24L, v0|=((unsigned long)(*((iv)++)))<<16L, v0|=((unsigned long)(*((iv)++)))<< 8L, v0|=((unsigned long)(*((iv)++))));
                ti[0] = v0;
                (v1 =((unsigned long)(*((iv)++)))<<24L, v1|=((unsigned long)(*((iv)++)))<<16L, v1|=((unsigned long)(*((iv)++)))<< 8L, v1|=((unsigned long)(*((iv)++))));
                ti[1] = v1;
                CAST_encrypt((unsigned int *)ti, schedule);
                iv = ivec;
                t = ti[0];
                (*((iv)++)=(unsigned char)(((t)>>24L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t) )&0xff));
                t = ti[1];
                (*((iv)++)=(unsigned char)(((t)>>24L)&0xff), *((iv)++)=(unsigned char)(((t)>>16L)&0xff), *((iv)++)=(unsigned char)(((t)>> 8L)&0xff), *((iv)++)=(unsigned char)(((t) )&0xff));
                iv = ivec;
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

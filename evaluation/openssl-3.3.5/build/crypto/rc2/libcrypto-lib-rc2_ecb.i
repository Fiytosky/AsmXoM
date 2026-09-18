# 0 "../crypto/rc2/rc2_ecb.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/rc2/rc2_ecb.c"
# 14 "../crypto/rc2/rc2_ecb.c"
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
# 15 "../crypto/rc2/rc2_ecb.c" 2

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
# 17 "../crypto/rc2/rc2_ecb.c" 2
# 1 "../crypto/rc2/rc2_local.h" 1
# 18 "../crypto/rc2/rc2_ecb.c" 2
# 28 "../crypto/rc2/rc2_ecb.c"
void RC2_ecb_encrypt(const unsigned char *in, unsigned char *out, RC2_KEY *ks,
                     int encrypt)
{
    unsigned long l, d[2];

    (l =((unsigned long)(*((in)++))) , l|=((unsigned long)(*((in)++)))<< 8L, l|=((unsigned long)(*((in)++)))<<16L, l|=((unsigned long)(*((in)++)))<<24L);
    d[0] = l;
    (l =((unsigned long)(*((in)++))) , l|=((unsigned long)(*((in)++)))<< 8L, l|=((unsigned long)(*((in)++)))<<16L, l|=((unsigned long)(*((in)++)))<<24L);
    d[1] = l;
    if (encrypt)
        RC2_encrypt(d, ks);
    else
        RC2_decrypt(d, ks);
    l = d[0];
    (*((out)++)=(unsigned char)(((l) )&0xff), *((out)++)=(unsigned char)(((l)>> 8L)&0xff), *((out)++)=(unsigned char)(((l)>>16L)&0xff), *((out)++)=(unsigned char)(((l)>>24L)&0xff));
    l = d[1];
    (*((out)++)=(unsigned char)(((l) )&0xff), *((out)++)=(unsigned char)(((l)>> 8L)&0xff), *((out)++)=(unsigned char)(((l)>>16L)&0xff), *((out)++)=(unsigned char)(((l)>>24L)&0xff));
    l = d[0] = d[1] = 0;
}

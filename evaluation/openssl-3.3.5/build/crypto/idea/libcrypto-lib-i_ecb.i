# 0 "../crypto/idea/i_ecb.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/idea/i_ecb.c"
# 15 "../crypto/idea/i_ecb.c"
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
# 16 "../crypto/idea/i_ecb.c" 2

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
# 18 "../crypto/idea/i_ecb.c" 2
# 1 "../crypto/idea/idea_local.h" 1
# 19 "../crypto/idea/i_ecb.c" 2


const char *IDEA_options(void)
{
    return "idea(int)";
}

void IDEA_ecb_encrypt(const unsigned char *in, unsigned char *out,
                      IDEA_KEY_SCHEDULE *ks)
{
    unsigned long l0, l1, d[2];

    (l0 =((unsigned long)(*((in)++)))<<24L, l0|=((unsigned long)(*((in)++)))<<16L, l0|=((unsigned long)(*((in)++)))<< 8L, l0|=((unsigned long)(*((in)++))));
    d[0] = l0;
    (l1 =((unsigned long)(*((in)++)))<<24L, l1|=((unsigned long)(*((in)++)))<<16L, l1|=((unsigned long)(*((in)++)))<< 8L, l1|=((unsigned long)(*((in)++))));
    d[1] = l1;
    IDEA_encrypt(d, ks);
    l0 = d[0];
    (*((out)++)=(unsigned char)(((l0)>>24L)&0xff), *((out)++)=(unsigned char)(((l0)>>16L)&0xff), *((out)++)=(unsigned char)(((l0)>> 8L)&0xff), *((out)++)=(unsigned char)(((l0) )&0xff));
    l1 = d[1];
    (*((out)++)=(unsigned char)(((l1)>>24L)&0xff), *((out)++)=(unsigned char)(((l1)>>16L)&0xff), *((out)++)=(unsigned char)(((l1)>> 8L)&0xff), *((out)++)=(unsigned char)(((l1) )&0xff));
    l0 = l1 = d[0] = d[1] = 0;
}

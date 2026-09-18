# 0 "../crypto/idea/i_skey.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/idea/i_skey.c"
# 15 "../crypto/idea/i_skey.c"
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
# 16 "../crypto/idea/i_skey.c" 2

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
# 18 "../crypto/idea/i_skey.c" 2
# 1 "../crypto/idea/idea_local.h" 1
# 19 "../crypto/idea/i_skey.c" 2

static IDEA_INT inverse(unsigned int xin);
void IDEA_set_encrypt_key(const unsigned char *key, IDEA_KEY_SCHEDULE *ks)
{
    int i;
    register IDEA_INT *kt, *kf, r0, r1, r2;

    kt = &(ks->data[0][0]);
    (kt[0] =((IDEA_INT)(*((key)++)))<< 8L, kt[0]|=((IDEA_INT)(*((key)++))) );
    (kt[1] =((IDEA_INT)(*((key)++)))<< 8L, kt[1]|=((IDEA_INT)(*((key)++))) );
    (kt[2] =((IDEA_INT)(*((key)++)))<< 8L, kt[2]|=((IDEA_INT)(*((key)++))) );
    (kt[3] =((IDEA_INT)(*((key)++)))<< 8L, kt[3]|=((IDEA_INT)(*((key)++))) );
    (kt[4] =((IDEA_INT)(*((key)++)))<< 8L, kt[4]|=((IDEA_INT)(*((key)++))) );
    (kt[5] =((IDEA_INT)(*((key)++)))<< 8L, kt[5]|=((IDEA_INT)(*((key)++))) );
    (kt[6] =((IDEA_INT)(*((key)++)))<< 8L, kt[6]|=((IDEA_INT)(*((key)++))) );
    (kt[7] =((IDEA_INT)(*((key)++)))<< 8L, kt[7]|=((IDEA_INT)(*((key)++))) );

    kf = kt;
    kt += 8;
    for (i = 0; i < 6; i++) {
        r2 = kf[1];
        r1 = kf[2];
        *(kt++) = ((r2 << 9) | (r1 >> 7)) & 0xffff;
        r0 = kf[3];
        *(kt++) = ((r1 << 9) | (r0 >> 7)) & 0xffff;
        r1 = kf[4];
        *(kt++) = ((r0 << 9) | (r1 >> 7)) & 0xffff;
        r0 = kf[5];
        *(kt++) = ((r1 << 9) | (r0 >> 7)) & 0xffff;
        r1 = kf[6];
        *(kt++) = ((r0 << 9) | (r1 >> 7)) & 0xffff;
        r0 = kf[7];
        *(kt++) = ((r1 << 9) | (r0 >> 7)) & 0xffff;
        r1 = kf[0];
        if (i >= 5)
            break;
        *(kt++) = ((r0 << 9) | (r1 >> 7)) & 0xffff;
        *(kt++) = ((r1 << 9) | (r2 >> 7)) & 0xffff;
        kf += 8;
    }
}

void IDEA_set_decrypt_key(IDEA_KEY_SCHEDULE *ek, IDEA_KEY_SCHEDULE *dk)
{
    int r;
    register IDEA_INT *fp, *tp, t;

    tp = &(dk->data[0][0]);
    fp = &(ek->data[8][0]);
    for (r = 0; r < 9; r++) {
        *(tp++) = inverse(fp[0]);
        *(tp++) = ((int)(0x10000L - fp[2]) & 0xffff);
        *(tp++) = ((int)(0x10000L - fp[1]) & 0xffff);
        *(tp++) = inverse(fp[3]);
        if (r == 8)
            break;
        fp -= 6;
        *(tp++) = fp[4];
        *(tp++) = fp[5];
    }

    tp = &(dk->data[0][0]);
    t = tp[1];
    tp[1] = tp[2];
    tp[2] = t;

    t = tp[49];
    tp[49] = tp[50];
    tp[50] = t;
}


static IDEA_INT inverse(unsigned int xin)
{
    long n1, n2, q, r, b1, b2, t;

    if (xin == 0)
        b2 = 0;
    else {
        n1 = 0x10001;
        n2 = xin;
        b2 = 1;
        b1 = 0;

        do {
            r = (n1 % n2);
            q = (n1 - r) / n2;
            if (r == 0) {
                if (b2 < 0)
                    b2 = 0x10001 + b2;
            } else {
                n1 = n2;
                n2 = r;
                t = b2;
                b2 = b1 - q * b2;
                b1 = t;
            }
        } while (r != 0);
    }
    return (IDEA_INT)b2;
}

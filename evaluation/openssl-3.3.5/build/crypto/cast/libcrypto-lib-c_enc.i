# 0 "../crypto/cast/c_enc.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/cast/c_enc.c"
# 14 "../crypto/cast/c_enc.c"
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
# 15 "../crypto/cast/c_enc.c" 2

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
# 17 "../crypto/cast/c_enc.c" 2
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
# 18 "../crypto/cast/c_enc.c" 2

void CAST_encrypt(unsigned int *data, const CAST_KEY *key)
{
    unsigned int l, r, t;
    const unsigned int *k;

    k = &(key->data[0]);
    l = data[0];
    r = data[1];

    { unsigned int a,b,c,d; t=(k[0*2] + r)&0xffffffff; t=((((t)<<((k[0*2+1])))&0xffffffffL)|((t)>>((32-((k[0*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[1*2] ^ l)&0xffffffff; t=((((t)<<((k[1*2+1])))&0xffffffffL)|((t)>>((32-((k[1*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[2*2] - r)&0xffffffff; t=((((t)<<((k[2*2+1])))&0xffffffffL)|((t)>>((32-((k[2*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[3*2] + l)&0xffffffff; t=((((t)<<((k[3*2+1])))&0xffffffffL)|((t)>>((32-((k[3*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[4*2] ^ r)&0xffffffff; t=((((t)<<((k[4*2+1])))&0xffffffffL)|((t)>>((32-((k[4*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[5*2] - l)&0xffffffff; t=((((t)<<((k[5*2+1])))&0xffffffffL)|((t)>>((32-((k[5*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[6*2] + r)&0xffffffff; t=((((t)<<((k[6*2+1])))&0xffffffffL)|((t)>>((32-((k[6*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[7*2] ^ l)&0xffffffff; t=((((t)<<((k[7*2+1])))&0xffffffffL)|((t)>>((32-((k[7*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[8*2] - r)&0xffffffff; t=((((t)<<((k[8*2+1])))&0xffffffffL)|((t)>>((32-((k[8*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[9*2] + l)&0xffffffff; t=((((t)<<((k[9*2+1])))&0xffffffffL)|((t)>>((32-((k[9*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[10*2] ^ r)&0xffffffff; t=((((t)<<((k[10*2+1])))&0xffffffffL)|((t)>>((32-((k[10*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[11*2] - l)&0xffffffff; t=((((t)<<((k[11*2+1])))&0xffffffffL)|((t)>>((32-((k[11*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    if (!key->short_key) {
        { unsigned int a,b,c,d; t=(k[12*2] + r)&0xffffffff; t=((((t)<<((k[12*2+1])))&0xffffffffL)|((t)>>((32-((k[12*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
        { unsigned int a,b,c,d; t=(k[13*2] ^ l)&0xffffffff; t=((((t)<<((k[13*2+1])))&0xffffffffL)|((t)>>((32-((k[13*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
        { unsigned int a,b,c,d; t=(k[14*2] - r)&0xffffffff; t=((((t)<<((k[14*2+1])))&0xffffffffL)|((t)>>((32-((k[14*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
        { unsigned int a,b,c,d; t=(k[15*2] + l)&0xffffffff; t=((((t)<<((k[15*2+1])))&0xffffffffL)|((t)>>((32-((k[15*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    }

    data[1] = l & 0xffffffffL;
    data[0] = r & 0xffffffffL;
}

void CAST_decrypt(unsigned int *data, const CAST_KEY *key)
{
    unsigned int l, r, t;
    const unsigned int *k;

    k = &(key->data[0]);
    l = data[0];
    r = data[1];

    if (!key->short_key) {
        { unsigned int a,b,c,d; t=(k[15*2] + r)&0xffffffff; t=((((t)<<((k[15*2+1])))&0xffffffffL)|((t)>>((32-((k[15*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
        { unsigned int a,b,c,d; t=(k[14*2] - l)&0xffffffff; t=((((t)<<((k[14*2+1])))&0xffffffffL)|((t)>>((32-((k[14*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
        { unsigned int a,b,c,d; t=(k[13*2] ^ r)&0xffffffff; t=((((t)<<((k[13*2+1])))&0xffffffffL)|((t)>>((32-((k[13*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
        { unsigned int a,b,c,d; t=(k[12*2] + l)&0xffffffff; t=((((t)<<((k[12*2+1])))&0xffffffffL)|((t)>>((32-((k[12*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    }
    { unsigned int a,b,c,d; t=(k[11*2] - r)&0xffffffff; t=((((t)<<((k[11*2+1])))&0xffffffffL)|((t)>>((32-((k[11*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[10*2] ^ l)&0xffffffff; t=((((t)<<((k[10*2+1])))&0xffffffffL)|((t)>>((32-((k[10*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[9*2] + r)&0xffffffff; t=((((t)<<((k[9*2+1])))&0xffffffffL)|((t)>>((32-((k[9*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[8*2] - l)&0xffffffff; t=((((t)<<((k[8*2+1])))&0xffffffffL)|((t)>>((32-((k[8*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[7*2] ^ r)&0xffffffff; t=((((t)<<((k[7*2+1])))&0xffffffffL)|((t)>>((32-((k[7*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[6*2] + l)&0xffffffff; t=((((t)<<((k[6*2+1])))&0xffffffffL)|((t)>>((32-((k[6*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[5*2] - r)&0xffffffff; t=((((t)<<((k[5*2+1])))&0xffffffffL)|((t)>>((32-((k[5*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[4*2] ^ l)&0xffffffff; t=((((t)<<((k[4*2+1])))&0xffffffffL)|((t)>>((32-((k[4*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[3*2] + r)&0xffffffff; t=((((t)<<((k[3*2+1])))&0xffffffffL)|((t)>>((32-((k[3*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[2*2] - l)&0xffffffff; t=((((t)<<((k[2*2+1])))&0xffffffffL)|((t)>>((32-((k[2*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a + b)&0xffffffffL) ^ c)&0xffffffffL) - d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[1*2] ^ r)&0xffffffff; t=((((t)<<((k[1*2+1])))&0xffffffffL)|((t)>>((32-((k[1*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; l^=(((((a - b)&0xffffffffL) + c)&0xffffffffL) ^ d)&0xffffffffL; };
    { unsigned int a,b,c,d; t=(k[0*2] + l)&0xffffffff; t=((((t)<<((k[0*2+1])))&0xffffffffL)|((t)>>((32-((k[0*2+1])))&31))); a=CAST_S_table0[(t>> 8)&0xff]; b=CAST_S_table1[(t )&0xff]; c=CAST_S_table2[(t>>24)&0xff]; d=CAST_S_table3[(t>>16)&0xff]; r^=(((((a ^ b)&0xffffffffL) - c)&0xffffffffL) + d)&0xffffffffL; };

    data[1] = l & 0xffffffffL;
    data[0] = r & 0xffffffffL;
}

void CAST_cbc_encrypt(const unsigned char *in, unsigned char *out,
                      long length, const CAST_KEY *ks, unsigned char *iv,
                      int enc)
{
    register unsigned int tin0, tin1;
    register unsigned int tout0, tout1, xor0, xor1;
    register long l = length;
    unsigned int tin[2];

    if (enc) {
        (tout0 =((unsigned long)(*((iv)++)))<<24L, tout0|=((unsigned long)(*((iv)++)))<<16L, tout0|=((unsigned long)(*((iv)++)))<< 8L, tout0|=((unsigned long)(*((iv)++))));
        (tout1 =((unsigned long)(*((iv)++)))<<24L, tout1|=((unsigned long)(*((iv)++)))<<16L, tout1|=((unsigned long)(*((iv)++)))<< 8L, tout1|=((unsigned long)(*((iv)++))));
        iv -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            (tin0 =((unsigned long)(*((in)++)))<<24L, tin0|=((unsigned long)(*((in)++)))<<16L, tin0|=((unsigned long)(*((in)++)))<< 8L, tin0|=((unsigned long)(*((in)++))));
            (tin1 =((unsigned long)(*((in)++)))<<24L, tin1|=((unsigned long)(*((in)++)))<<16L, tin1|=((unsigned long)(*((in)++)))<< 8L, tin1|=((unsigned long)(*((in)++))));
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            CAST_encrypt(tin, ks);
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
            CAST_encrypt(tin, ks);
            tout0 = tin[0];
            tout1 = tin[1];
            (*((out)++)=(unsigned char)(((tout0)>>24L)&0xff), *((out)++)=(unsigned char)(((tout0)>>16L)&0xff), *((out)++)=(unsigned char)(((tout0)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout0) )&0xff));
            (*((out)++)=(unsigned char)(((tout1)>>24L)&0xff), *((out)++)=(unsigned char)(((tout1)>>16L)&0xff), *((out)++)=(unsigned char)(((tout1)>> 8L)&0xff), *((out)++)=(unsigned char)(((tout1) )&0xff));
        }
        (*((iv)++)=(unsigned char)(((tout0)>>24L)&0xff), *((iv)++)=(unsigned char)(((tout0)>>16L)&0xff), *((iv)++)=(unsigned char)(((tout0)>> 8L)&0xff), *((iv)++)=(unsigned char)(((tout0) )&0xff));
        (*((iv)++)=(unsigned char)(((tout1)>>24L)&0xff), *((iv)++)=(unsigned char)(((tout1)>>16L)&0xff), *((iv)++)=(unsigned char)(((tout1)>> 8L)&0xff), *((iv)++)=(unsigned char)(((tout1) )&0xff));
    } else {
        (xor0 =((unsigned long)(*((iv)++)))<<24L, xor0|=((unsigned long)(*((iv)++)))<<16L, xor0|=((unsigned long)(*((iv)++)))<< 8L, xor0|=((unsigned long)(*((iv)++))));
        (xor1 =((unsigned long)(*((iv)++)))<<24L, xor1|=((unsigned long)(*((iv)++)))<<16L, xor1|=((unsigned long)(*((iv)++)))<< 8L, xor1|=((unsigned long)(*((iv)++))));
        iv -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            (tin0 =((unsigned long)(*((in)++)))<<24L, tin0|=((unsigned long)(*((in)++)))<<16L, tin0|=((unsigned long)(*((in)++)))<< 8L, tin0|=((unsigned long)(*((in)++))));
            (tin1 =((unsigned long)(*((in)++)))<<24L, tin1|=((unsigned long)(*((in)++)))<<16L, tin1|=((unsigned long)(*((in)++)))<< 8L, tin1|=((unsigned long)(*((in)++))));
            tin[0] = tin0;
            tin[1] = tin1;
            CAST_decrypt(tin, ks);
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
            CAST_decrypt(tin, ks);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            { out+=l + 8; switch (l + 8) { case 8: *(--(out))=(unsigned char)(((tout1) )&0xff); case 7: *(--(out))=(unsigned char)(((tout1)>> 8)&0xff); case 6: *(--(out))=(unsigned char)(((tout1)>>16)&0xff); case 5: *(--(out))=(unsigned char)(((tout1)>>24)&0xff); case 4: *(--(out))=(unsigned char)(((tout0) )&0xff); case 3: *(--(out))=(unsigned char)(((tout0)>> 8)&0xff); case 2: *(--(out))=(unsigned char)(((tout0)>>16)&0xff); case 1: *(--(out))=(unsigned char)(((tout0)>>24)&0xff); } };
            xor0 = tin0;
            xor1 = tin1;
        }
        (*((iv)++)=(unsigned char)(((xor0)>>24L)&0xff), *((iv)++)=(unsigned char)(((xor0)>>16L)&0xff), *((iv)++)=(unsigned char)(((xor0)>> 8L)&0xff), *((iv)++)=(unsigned char)(((xor0) )&0xff));
        (*((iv)++)=(unsigned char)(((xor1)>>24L)&0xff), *((iv)++)=(unsigned char)(((xor1)>>16L)&0xff), *((iv)++)=(unsigned char)(((xor1)>> 8L)&0xff), *((iv)++)=(unsigned char)(((xor1) )&0xff));
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}

# 0 "../crypto/camellia/cmll_misc.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "../crypto/camellia/cmll_misc.c"
# 14 "../crypto/camellia/cmll_misc.c"
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
# 15 "../crypto/camellia/cmll_misc.c" 2


# 1 "../include/openssl/camellia.h" 1
# 12 "../include/openssl/camellia.h"
        
# 22 "../include/openssl/camellia.h"
# 1 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 1 3 4
# 160 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4

# 160 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 229 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 344 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 440 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 451 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
} max_align_t;
# 465 "/root/AsmXoM/gcc-15.2.0/build/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include/stddef.h" 3 4
  typedef __typeof__(nullptr) nullptr_t;
# 23 "../include/openssl/camellia.h" 2
# 44 "../include/openssl/camellia.h"

# 44 "../include/openssl/camellia.h"
typedef unsigned int KEY_TABLE_TYPE[(272 / 4)];


struct camellia_key_st {
    union {
        double d;
        KEY_TABLE_TYPE rd_key;
    } u;
    int grand_rounds;
};
typedef struct camellia_key_st CAMELLIA_KEY;



extern int Camellia_set_key(const unsigned char *userKey,
                                           const int bits,
                                           CAMELLIA_KEY *key);
extern void Camellia_encrypt(const unsigned char *in,
                                            unsigned char *out,
                                            const CAMELLIA_KEY *key);
extern void Camellia_decrypt(const unsigned char *in,
                                            unsigned char *out,
                                            const CAMELLIA_KEY *key);
extern void Camellia_ecb_encrypt(const unsigned char *in,
                                                unsigned char *out,
                                                const CAMELLIA_KEY *key,
                                                const int enc);
extern void Camellia_cbc_encrypt(const unsigned char *in,
                                                unsigned char *out,
                                                size_t length,
                                                const CAMELLIA_KEY *key,
                                                unsigned char *ivec,
                                                const int enc);
extern void Camellia_cfb128_encrypt(const unsigned char *in,
                                                   unsigned char *out,
                                                   size_t length,
                                                   const CAMELLIA_KEY *key,
                                                   unsigned char *ivec,
                                                   int *num,
                                                   const int enc);
extern void Camellia_cfb1_encrypt(const unsigned char *in,
                                                 unsigned char *out,
                                                 size_t length,
                                                 const CAMELLIA_KEY *key,
                                                 unsigned char *ivec,
                                                 int *num,
                                                 const int enc);
extern void Camellia_cfb8_encrypt(const unsigned char *in,
                                                 unsigned char *out,
                                                 size_t length,
                                                 const CAMELLIA_KEY *key,
                                                 unsigned char *ivec,
                                                 int *num,
                                                 const int enc);
extern void Camellia_ofb128_encrypt(const unsigned char *in,
                                                   unsigned char *out,
                                                   size_t length,
                                                   const CAMELLIA_KEY *key,
                                                   unsigned char *ivec,
                                                   int *num);
extern
void Camellia_ctr128_encrypt(const unsigned char *in, unsigned char *out,
                             size_t length, const CAMELLIA_KEY *key,
                             unsigned char ivec[16],
                             unsigned char ecount_buf[16],
                             unsigned int *num);
# 18 "../crypto/camellia/cmll_misc.c" 2
# 1 "../crypto/camellia/cmll_local.h" 1
# 28 "../crypto/camellia/cmll_local.h"
typedef unsigned int u32;
typedef unsigned char u8;

int Camellia_Ekeygen(int keyBitLength, const u8 *rawKey,
                     KEY_TABLE_TYPE keyTable);
void Camellia_EncryptBlock_Rounds(int grandRounds, const u8 plaintext[],
                                  const KEY_TABLE_TYPE keyTable,
                                  u8 ciphertext[]);
void Camellia_DecryptBlock_Rounds(int grandRounds, const u8 ciphertext[],
                                  const KEY_TABLE_TYPE keyTable,
                                  u8 plaintext[]);
void Camellia_EncryptBlock(int keyBitLength, const u8 plaintext[],
                           const KEY_TABLE_TYPE keyTable, u8 ciphertext[]);
void Camellia_DecryptBlock(int keyBitLength, const u8 ciphertext[],
                           const KEY_TABLE_TYPE keyTable, u8 plaintext[]);
# 19 "../crypto/camellia/cmll_misc.c" 2

int Camellia_set_key(const unsigned char *userKey, const int bits,
                     CAMELLIA_KEY *key)
{
    if (!userKey || !key)
        return -1;
    if (bits != 128 && bits != 192 && bits != 256)
        return -2;
    key->grand_rounds = Camellia_Ekeygen(bits, userKey, key->u.rd_key);
    return 0;
}

void Camellia_encrypt(const unsigned char *in, unsigned char *out,
                      const CAMELLIA_KEY *key)
{
    Camellia_EncryptBlock_Rounds(key->grand_rounds, in, key->u.rd_key, out);
}

void Camellia_decrypt(const unsigned char *in, unsigned char *out,
                      const CAMELLIA_KEY *key)
{
    Camellia_DecryptBlock_Rounds(key->grand_rounds, in, key->u.rd_key, out);
}

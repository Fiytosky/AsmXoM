	.file	"evp_extra_test.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	testctx
	.comm	testctx,8,8
	.local	testpropq
	.comm	testpropq,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	deflprov
	.comm	deflprov,8,8
	.local	lgcyprov
	.comm	lgcyprov,8,8
	.section	.rodata
	.align 32
	.type	kExampleRSAKeyDER, @object
	.size	kExampleRSAKeyDER, 608
kExampleRSAKeyDER:
	.base64	"MIICXAIBAAKBgQD4uGyDtLzZqFfApbRZdoxUHXnrIlIEftM360H9g/nwpoUVNHVxWoSoPNLvWk7T3peK3f+7zwqqhpK+uFDkzW+AMzB2E4/Ke9zsWspjxwMl76iKg1h2IPoWd9d5kmMBSBrYe2fxUlVJTtZuSlzXejc2DN7dj0TowqcsK7WvZEthBwIDAQABAoGAdIhkP2lFOm3Hf7mjwG7s3NRatTKFXxnU+NQ/PPrC9l/u5rqHdC7HDNRCuGaFnHskYaoWEfa1tqQKyVUugaVHYcslj8IVew58Np862liGHFuDeeYrzOb6LGHyeIAb4vOdOStlV5E9cZlzpcJ5"
	.base64	"IIwHT+W0YB+ZorFPDO+8WVMAfbECQQD8fiNlcPjO00BBgGodAdYB/7YbPT1ZCTN5wE/elidLGMbZePH0NUbpfEJ6XZ/vVLj3n8QzbPOMMkaHZzB7p6zjAkEA/CzfDA2I9bGSqJNHY1X1ylhDuhzlnraVBc21gt/rBFOdvcI4FrNi3aFG222Xk5+Kw5tkfkLjMlcZG9Vuhfq4jQJBALw93m3Wl+i6noE3F+WgZMkAt+f+9CnZLkNrGSC9mXXndvjTrq9+uOuB9J3+BysLYwtaVZBxffHb2bFBQWgvTjkCQFo0Ztj14n8YtQBuJoQnFJP7/MYPXifm4enAiuQ02umi"
	.base64	"S3O8jLm6E2x6K1GEo0rgMBAGfu0XWhQAye+F6lIsvGUCQFHj8oMZm8QeL1A931qiGMpfLkmvb8z6ZXeUtaEKqdGKOTf0C6DXgiderhcXoR5UNL9uxI6ZXQjxLYadpSAb5d8="
	.align 32
	.type	kExampleDSAKeyDER, @object
	.size	kExampleDSAKeyDER, 446
kExampleDSAKeyDER:
	.base64	"MIIBugIBAAKBgQCaBW0zzV14obvLfVuNtMy/A5lk3jh4BhUvhiZ387GFAO38KDpCTaur37ycFtAiUNE43T9kBZ5oeh7xVr8eLMWXKv56ItxsaLguBttBypjYVMdkSCQEILxZ42vqfvx+xU7U2DrtzV2ZuFyii7sLrOaOJVYiOi06VkEUHxyPU0YThQIVAJh+koGIxz9wSVT2drSjnh1FmDJ/AoGAaU3vVf9NWSwB+mo44HCfnmaOPoxSIp0VfjzvTHphJuArgT/rrzU4jf7tRv9fA5uBkudvdk8d2buJyT7ZC/n0eBFZwB3NDqFvFfFNwcki7Y2tZ8VLlZOGpq+K"
	.base64	"7gaJLzd+ZKr257FaCpOVXT5Tmt6KwpVFgb5cL8KyklgZcoDpeaECgYAH12L/3xo/7TLU1Ih7LGN/l9xE1ISi3RcWhRPgrFGNKRt1muTjipJpCQPFaK5elP7JkmwHtB5kYofGpP0NX+X5G0+FX67zEeUY1E15n8R5JgQn8AvuK4afhmHmUc4Em11rNEOMhTzxUZsIIxv1fjMS6qsfty3iX+aXmbVFFlvDQQIUYb9RYM/I8YyCl/L0Gbor8xa+QEg="
	.align 32
	.type	kExampleBadRSAKeyDER, @object
	.size	kExampleBadRSAKeyDER, 1067
kExampleBadRSAKeyDER:
	.base64	"MIIEJwIBAAKCAQEAphoebnvuxolm55PvVBJo6r+GL93SebipbgPCo7mj4Usqs/i0zeq+JKZXW4MfD/LTt6x+1o5uHr+4c4wFVuY1H+kECwmGffEmCJmte8hNlLALizigXGKgq9OP1Algch4zUIBuIqZ3V2uaMyFmh24he8ckDtgT34PezUBYHYSG67gSTtL6gB/k55YpuMzOZm1Tyrla1/aEbC2aGhQcTpM5unTt7YeHXkh1NvC8NPsp+Z+WWwunVDBRKRhbfawP1l98+JiM2IZis9z/D/96r1xMYUkuyJWGxA6H/B3Pi3xh9tjQafbNioz2YqJWqePRz02g9i0g"
	.base64	"CgS3ove1mUcYVoWHxwIDAQABAoIBAQCZQTga0JZ68IPV35TOiT3selIhEBYG4O7S5v1LexlN4cDA1RRded1+i0vGz7B1UqMtsSZGaJwKGvLhCaxThYw2qRRl6qAAy+M/xCthLmsGaXf9OH4dP5LndwgZp50pLdxCxnzX06gBLPLVglfLVT3nqtIGMDAF5vJHhrrGYWTrTypeBynglrJD/18aVBbPtVZcoJsM/bPS43kdIeLWE8R0pvWOjoG7tK2K8JMK2ApCNrzlJioNXVcTxU4vEg7vp4Eew6XbySTrGqH59qF4mJN3QkUD4smi/i13yMasm5iJbZrnYWO38uzW"
	.base64	"saFuChr//UMowwzc8kdPJ6qZBI6s6HwBAgQSNFZ4AoGBAMpp5bs6kILLglAvKeJ2aldVRU41GGHgEnDAq8eAotRGNAOgGSYjnu8ay3XWuoH0flLlKujxSWwPGqD5xufsYOTLKrVW6ZzNGXWSsWbOw9k9EcvECc4eMLovYGBVjQLcXa/3UjEXB1MgM62M1S9a0FfX0YDWOpsETzW/59W8j9SBAoGBAMCf+M33PyaKPU0rDAHQorQY/vdeLwYTzWOqEqkkhuPze9oaPLE4gIDvZGShm/52Y46D0tm5hrDmpgx+qISQmAwe8xR34F+BCBGPpiPEusCK5MbjXL7F7Cy5"
	.base64	"2IxNGp3nfIVMDXFOcjMb/qkXcnZWnXR+Umeah5rbMN7kSSg70mevAoGBAIl0mo6nuaUowGjlbmMcmSCPho4Snmkw+jTZko3bfDf9KKthmFJ/FBo5rvtqA6PmvbZba+VencalBydUF9A9hJs6oNkemWxjF6vxH0m6leM7ho9CpIn1lI+LRr6Eukq8DV9G6+jsQ4werRlpLwiGej99DweX85p7tbLBjJVoBKCBAoGATr9+G8sTYXU721lfsdS4655ztef2iT0c2vA2/zW9Hgt0457w8vfXgrd7ahsOMEqYDrT5gQfkdTnpU8q7XKqTBw6oL7qYSTCnzBo8aAzhpLEF"
	.base64	"5uAleFgUN/Uf4yLvqA4ioJQ69skT5ga/f5nGzNjGvtkuJMdpjJW69gSzCvTL8M4="
	.align 16
	.type	kExampleBad2RSAKeyDER, @object
	.size	kExampleBad2RSAKeyDER, 29
kExampleBad2RSAKeyDER:
	.base64	"MBsCAQACAQACAQACAQACAQACAQACAQACAQACAQA="
	.type	kMsg, @object
	.size	kMsg, 4
kMsg:
	.base64	"AQIDBA=="
	.align 32
	.type	kSignature, @object
	.size	kSignature, 128
kSignature:
	.base64	"pfCKR108s8ypea9NjK5MFO/CCzQ23vQ+PbtKYFzIkSja+34Eln5jE5DOubRiev0JPcdneFQE61JibiRntED8V2LG8WfBl49qqK5ERl6rZxdTGTraWsgWPobVxXEv/CNI2QsT3XtaJXnvpXsE7UT2GFXkCulXeV3XVaerRQKXYEI="
	.align 32
	.type	kExampleRSAKeyPKCS8, @object
	.size	kExampleRSAKeyPKCS8, 634
kExampleRSAKeyPKCS8:
	.base64	"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAPi4bIO0vNmoV8CltFl2jFQdeesiUgR+0zfrQf2D+fCmhRU0dXFahKg80u9aTtPel4rd/7vPCqqGkr64UOTNb4AzMHYTj8p73OxaymPHAyXvqIqDWHYg+hZ313mSYwFIGth7Z/FSVUlO1m5KXNd6NzYM3t2PROjCpywrta9kS2EHAgMBAAECgYB0iGQ/aUU6bcd/uaPAbuzc1Fq1MoVfGdT41D88+sL2X+7muod0LscM1EK4ZoWceyRhqhYR9rW2pArJVS6BpUdhyyWPwhV7Dnw2nzraWIYcW4N5"
	.base64	"5ivM5vosYfJ4gBvi8505K2VXkT1xmXOlwnkgjAdP5bRgH5misU8M77xZUwB9sQJBAPx+I2Vw+M7TQEGAah0B1gH/ths9PVkJM3nAT96WJ0sYxtl48fQ1Rul8Qnpdn+9UuPefxDNs84wyRodnMHunrOMCQQD8LN8MDYj1sZKok0djVfXKWEO6HOWetpUFzbWC3+sEU529wjgWs2LdoUbbbZeTn4rDm2R+QuMyVxkb1W6F+riNAkEAvD3ebdaX6LqegTcX5aBkyQC35/70KdkuQ2sZIL2Zded2+NOur36464H0nf4HKwtjC1pVkHF98dvZsUFBaC9OOQJAWjRm2PXi"
	.base64	"fxi1AG4mhCcUk/v8xg9eJ+bh6cCK5DTa6aJLc7yMuboTbHorUYSjSuAwEAZ+7RdaFADJ74XqUiy8ZQJAUePygxmbxB4vUD3fWqIYyl8uSa9vzPpld5S1oQqp0Yo5N/QLoNeCJ16uFxehHlQ0v27EjpldCPEthp2lIBvl3w=="
	.align 32
	.type	kExampleECKeyDER, @object
	.size	kExampleECKeyDER, 121
kExampleECKeyDER:
	.base64	"MHcCAQEEIAcPCHJ61KBKnN1ZyU2JaHcItW/JXTB3DujRyc4Ki7RqoAoGCCqGSM49AwEHoUQDQgAE5itp4r9ln5e+Lx4NlIpM1Zdrt6keDUb73ampHp3culoB59aXqAoY+cPEox5W4nyDSNsWGhz1HX7xlC1Lz3IiwQ=="
	.align 32
	.type	kExampleBadECKeyDER, @object
	.size	kExampleBadECKeyDER, 104
kExampleBadECKeyDER:
	.base64	"MGYCAQAwEwYHKoZIzj0CAQYIKoZIzj0DAQcETDBKAgEBBCD/////AAAAAP//////////vOb6racXnoTzucrC/GMlUaEjAyEAAP///wAAAAD//////////7zm+q2nF56E87nKwvxjJVE="
	.align 32
	.type	kExampleECPubKeyDER, @object
	.size	kExampleECPubKeyDER, 91
kExampleECPubKeyDER:
	.base64	"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEuuuD+zuy/zBT284y8qyuRA09E1O40WhV3kRGBabJ0gS346KWyLJeIgPXA3qLE1xCScKrhtasa5MgVmrGyKUL5Q=="
	.align 32
	.type	kExampleBadECPubKeyDER, @object
	.size	kExampleBadECPubKeyDER, 91
kExampleBadECPubKeyDER:
	.base64	"MFkwEwYHKoZIzj0CAgYIKoZIzj0DAQcDQgAEuuuD+zuy/zBT284y8qyuRA09E1O40WhV3kRGBabJ0gS346KWyLJeIgPXA3qLE1xCScKrhtasa5MgVmrGyKUL5Q=="
	.align 8
	.type	pExampleECParamDER, @object
	.size	pExampleECParamDER, 10
pExampleECParamDER:
	.base64	"BggqhkjOPQMBBw=="
	.align 32
	.type	kExampleED25519KeyDER, @object
	.size	kExampleED25519KeyDER, 48
kExampleED25519KeyDER:
	.base64	"MC4CAQAwBQYDK2VwBCIEILp7uiAbAnU66Ij+AM2LxvRcRwlGZuRyhSUmXhIzSPZQ"
	.align 32
	.type	kExampleED25519PubKeyDER, @object
	.size	kExampleED25519PubKeyDER, 44
kExampleED25519PubKeyDER:
	.base64	"MCowBQYDK2VwAyEA9cXrUj59B4ayVQdF71t8IOhmKDA8ioJAl6MI3GWAOSk="
	.align 32
	.type	kExampleX25519KeyDER, @object
	.size	kExampleX25519KeyDER, 48
kExampleX25519KeyDER:
	.base64	"MC4CAQAwBQYDK2VuBCIEIKAkOjEkwz/2e5YL1I/R7mfym4isUM6XNt2vJfYQNJZu"
	.align 32
	.type	kExampleDHKeyDER, @object
	.size	kExampleDHKeyDER, 293
kExampleDHKeyDER:
	.base64	"MIIBIQIBADCBlQYJKoZIhvcNAQMBMIGHAoGBAPdSwmjMZsSNAz/6nFLQ2DPy4cmet+dukJfrkpFqmoVjknmrtj0jWFroRQaBl3fhzDROrjaA8sR/ilK421jISxJM8UxTwYk5jbYG2Op/LTZTlim+tnX85/M21vSPFqbH7HvOQo1ILrd0ABFSYbQZNexc5L40xllkXkJhcFT06WtTAgECBIGDAoGAZMLjCWk3PNJKusN4apuKKtvn5sD6Or45Z8CpKvAKwVMc2/oaJpiwjMYGSqJI06Q7vQVI6lnbGKTKZtlduJXR65c9Zpdcho9+kNND0aINy+frkOoJQLFv90zy"
	.base64	"QYMd0Hbvr1VvXamjVYEq0V2dIneXg96ttl0ZwVPs+68GLocqC3o="
	.align 16
	.type	kCFBDefaultKey, @object
	.size	kCFBDefaultKey, 16
kCFBDefaultKey:
	.base64	"K34VFiiu0qar9xWICc9PPA=="
	.align 32
	.type	kGCMDefaultKey, @object
	.size	kGCMDefaultKey, 32
kGCMDefaultKey:
	.zero	32
	.align 32
	.type	kGCMResetKey, @object
	.size	kGCMResetKey, 32
kGCMResetKey:
	.base64	"/v/pkoZlcxxtao+UZzCDCP7/6ZKGZXMcbWqPlGcwgwg="
	.align 16
	.type	iCFBIV, @object
	.size	iCFBIV, 16
iCFBIV:
	.base64	"AAECAwQFBgcICQoLDA0ODw=="
	.align 8
	.type	iGCMDefaultIV, @object
	.size	iGCMDefaultIV, 12
iGCMDefaultIV:
	.zero	12
	.align 8
	.type	iGCMResetIV1, @object
	.size	iGCMResetIV1, 8
iGCMResetIV1:
	.base64	"yv66vvrO260="
	.align 8
	.type	iGCMResetIV2, @object
	.size	iGCMResetIV2, 12
iGCMResetIV2:
	.base64	"yv66vvrO263eyviI"
	.align 16
	.type	cfbPlaintext, @object
	.size	cfbPlaintext, 16
cfbPlaintext:
	.base64	"a8G+4i5An5bpPX4Rc5MXKg=="
	.align 16
	.type	cfbPlaintext_partial, @object
	.size	cfbPlaintext_partial, 24
cfbPlaintext_partial:
	.base64	"a8G+4i5An5bpPX4Rc5MXKmvBvuIuQJ+W"
	.align 16
	.type	gcmDefaultPlaintext, @object
	.size	gcmDefaultPlaintext, 16
gcmDefaultPlaintext:
	.zero	16
	.align 32
	.type	gcmResetPlaintext, @object
	.size	gcmResetPlaintext, 60
gcmResetPlaintext:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5"
	.align 16
	.type	cfbCiphertext, @object
	.size	cfbCiphertext, 16
cfbCiphertext:
	.base64	"Oz/ZLrctrSAzNEn46Dz7Sg=="
	.align 16
	.type	cfbCiphertext_partial, @object
	.size	cfbCiphertext_partial, 24
cfbCiphertext_partial:
	.base64	"Oz/ZLrctrSAzNEn46Dz7Sg1KcYKQ8Jo1"
	.align 16
	.type	ofbCiphertext_partial, @object
	.size	ofbCiphertext_partial, 24
ofbCiphertext_partial:
	.base64	"Oz/ZLrctrSAzNEn46Dz7SrJlZDgm0rwJ"
	.align 16
	.type	gcmDefaultCiphertext, @object
	.size	gcmDefaultCiphertext, 16
gcmDefaultCiphertext:
	.base64	"zqdAPU1ga24HTsXTuvOdGA=="
	.align 32
	.type	gcmResetCiphertext1, @object
	.size	gcmResetCiphertext1, 60
gcmResetCiphertext1:
	.base64	"w3Yt8cp4fTKuR8E78ZhEy68a4U0Ll2r6xS/315u6neD+tYLTOTSk8JVMwjY7xz94YqxDDmSr5Jn0fJsf"
	.align 32
	.type	gcmResetCiphertext2, @object
	.size	gcmResetCiphertext2, 60
gcmResetCiphertext2:
	.base64	"Ui3B8JlWfQf0fzejKoRCfWQ6jNy/5cDJdZiivSVV0aqMsI5IWQ27PaewixBWgog4xfYeY5O6egq8yfZi"
	.align 16
	.type	gcmAAD, @object
	.size	gcmAAD, 20
gcmAAD:
	.base64	"/u36zt6tvu/+7frO3q2+76ut2tI="
	.align 16
	.type	gcmDefaultTag, @object
	.size	gcmDefaultTag, 16
gcmDefaultTag:
	.base64	"0NHIp5mZa/AmW5i11Iq5GQ=="
	.align 16
	.type	gcmResetTag1, @object
	.size	gcmResetTag1, 16
gcmResetTag1:
	.base64	"OjN9v0anksReRUkT/i6o8g=="
	.align 16
	.type	gcmResetTag2, @object
	.size	gcmResetTag2, 16
gcmResetTag2:
	.base64	"dvxuzg9OF2jN34hTuy1VGw=="
.LC1:
	.string	"RSA"
.LC2:
	.string	"EC"
	.section	.data.rel.local,"aw"
	.align 32
	.type	keydata, @object
	.size	keydata, 144
keydata:
	.quad	kExampleRSAKeyDER
	.quad	608
	.quad	.LC1
	.long	6
	.zero	20
	.quad	kExampleRSAKeyPKCS8
	.quad	634
	.quad	.LC1
	.long	6
	.zero	20
	.quad	kExampleECKeyDER
	.quad	121
	.quad	.LC2
	.long	408
	.zero	20
	.section	.rodata
.LC3:
	.string	"ED25519"
	.section	.data.rel.local
	.align 32
	.type	keycheckdata, @object
	.size	keycheckdata, 384
keycheckdata:
	.quad	kExampleRSAKeyDER
	.quad	608
	.quad	.LC1
	.long	6
	.long	1
	.long	1
	.long	1
	.long	0
	.zero	4
	.quad	kExampleBadRSAKeyDER
	.quad	1067
	.quad	.LC1
	.long	6
	.long	0
	.long	1
	.long	1
	.long	0
	.zero	4
	.quad	kExampleBad2RSAKeyDER
	.quad	29
	.quad	.LC1
	.long	6
	.long	0
	.long	0
	.long	1
	.long	0
	.zero	4
	.quad	kExampleECKeyDER
	.quad	121
	.quad	.LC2
	.long	408
	.long	1
	.long	1
	.long	1
	.long	0
	.zero	4
	.quad	kExampleECPubKeyDER
	.quad	91
	.quad	.LC2
	.long	408
	.long	0
	.long	1
	.long	1
	.long	1
	.zero	4
	.quad	pExampleECParamDER
	.quad	10
	.quad	.LC2
	.long	408
	.long	0
	.long	0
	.long	1
	.long	2
	.zero	4
	.quad	kExampleED25519KeyDER
	.quad	48
	.quad	.LC3
	.long	1087
	.long	1
	.long	1
	.long	1
	.long	0
	.zero	4
	.quad	kExampleED25519PubKeyDER
	.quad	44
	.quad	.LC3
	.long	1087
	.long	0
	.long	1
	.long	1
	.long	1
	.zero	4
	.section	.rodata
.LC4:
	.string	"DER"
	.text
	.type	load_example_key, @function
load_example_key:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	testpropq(%rip), %rcx
	movq	testctx(%rip), %rdi
	movq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	load_example_key, .-load_example_key
	.type	load_example_rsa_key, @function
load_example_rsa_key:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kExampleRSAKeyDER(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$608, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	load_example_rsa_key, .-load_example_rsa_key
	.section	.rodata
.LC5:
	.string	"DSA"
	.text
	.type	load_example_dsa_key, @function
load_example_dsa_key:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kExampleDSAKeyDER(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$446, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	load_example_dsa_key, .-load_example_dsa_key
	.type	load_example_ec_key, @function
load_example_ec_key:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kExampleECKeyDER(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	load_example_ec_key, .-load_example_ec_key
	.section	.rodata
.LC6:
	.string	"DH"
	.text
	.type	load_example_dh_key, @function
load_example_dh_key:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kExampleDHKeyDER(%rip), %rcx
	leaq	.LC6(%rip), %rax
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	load_example_dh_key, .-load_example_dh_key
	.type	load_example_ed25519_key, @function
load_example_ed25519_key:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kExampleED25519KeyDER(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	load_example_ed25519_key, .-load_example_ed25519_key
	.section	.rodata
.LC7:
	.string	"X25519"
	.text
	.type	load_example_x25519_key, @function
load_example_x25519_key:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kExampleX25519KeyDER(%rip), %rcx
	leaq	.LC7(%rip), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	load_example_x25519_key, .-load_example_x25519_key
	.section	.rodata
.LC8:
	.string	"HMAC"
.LC9:
	.string	"pkey"
.LC10:
	.string	"../test/evp_extra_test.c"
	.text
	.type	load_example_hmac_key, @function
load_example_hmac_key:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$1663540288323457296, %rax
	movabsq	$2242261671028070680, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	testctx(%rip), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movl	$32, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$681, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L24
.L22:
	movq	-8(%rbp), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	load_example_hmac_key, .-load_example_hmac_key
	.section	.rodata
.LC11:
	.string	"ctx = OSSL_LIB_CTX_new()"
.LC12:
	.string	"sha256"
	.align 8
.LC13:
	.string	"md = EVP_MD_fetch(ctx, \"sha256\", NULL)"
.LC14:
	.string	"provider=fizzbang"
	.align 8
.LC15:
	.string	"EVP_set_default_properties(ctx, \"provider=fizzbang\")"
.LC16:
	.string	"-provider"
	.align 8
.LC17:
	.string	"md = EVP_MD_fetch(ctx, \"sha256\", \"-provider\")"
	.align 8
.LC18:
	.string	"EVP_set_default_properties(ctx, NULL)"
	.text
	.type	test_EVP_set_default_properties, @function
test_EVP_set_default_properties:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$693, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$694, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -8(%rbp)
	leaq	.LC14(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$699, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$700, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC16(%rip), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$701, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$706, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$707, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	movl	$1, -12(%rbp)
	jmp	.L28
.L34:
	nop
	jmp	.L28
.L35:
	nop
	jmp	.L28
.L36:
	nop
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	test_EVP_set_default_properties, .-test_EVP_set_default_properties
	.section	.rodata
	.align 8
.LC19:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, keytype, testpropq)"
.LC20:
	.string	"0"
	.align 8
.LC21:
	.string	"EVP_PKEY_CTX_set_params(pctx, params)"
.LC22:
	.string	"EVP_PKEY_fromdata_init(pctx)"
	.align 8
.LC23:
	.string	"EVP_PKEY_fromdata(pctx, &tmp_pkey, EVP_PKEY_KEYPAIR, params)"
.LC24:
	.string	"tmp_pkey"
	.text
	.type	make_key_fromdata, @function
make_key_fromdata:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$722, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$725, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L45
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$726, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L45
	movq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$727, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$731, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L39
.L44:
	nop
	jmp	.L39
.L45:
	nop
	jmp	.L39
.L46:
	nop
.L39:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	make_key_fromdata, .-make_key_fromdata
	.section	.rodata
.LC25:
	.string	"ret"
	.text
	.type	test_selection, @function
test_selection:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L48
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$750, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L49
	jmp	.L50
.L48:
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$753, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L54
.L49:
	movq	testctx(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	%rdx
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_ex@PLT
	addq	$32, %rsp
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$759, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L52
	jmp	.L50
.L51:
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$762, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L55
.L52:
	movl	$1, -4(%rbp)
	jmp	.L50
.L54:
	nop
	jmp	.L50
.L55:
	nop
.L50:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	test_selection, .-test_selection
	.section	.rodata
.LC26:
	.string	"p = BN_new()"
.LC27:
	.string	"q = BN_new()"
.LC28:
	.string	"g = BN_new()"
.LC29:
	.string	"pub = BN_new()"
.LC30:
	.string	"priv = BN_new()"
.LC31:
	.string	"bld = OSSL_PARAM_BLD_new()"
.LC32:
	.string	"p"
	.align 8
.LC33:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_P, p)"
.LC34:
	.string	"q"
	.align 8
.LC35:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_Q, q)"
.LC36:
	.string	"g"
	.align 8
.LC37:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_G, g)"
	.align 8
.LC38:
	.string	"params = OSSL_PARAM_BLD_to_param(bld)"
	.align 8
.LC39:
	.string	"just_params = make_key_fromdata(keytype, params)"
.LC40:
	.string	"priv"
	.align 8
.LC41:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PRIV_KEY, priv)"
	.align 8
.LC42:
	.string	"params_and_priv = make_key_fromdata(keytype, params)"
.LC43:
	.string	"pub"
	.align 8
.LC44:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PUB_KEY, pub)"
	.align 8
.LC45:
	.string	"params_and_pub = make_key_fromdata(keytype, params)"
	.align 8
.LC46:
	.string	"params_and_keypair = make_key_fromdata(keytype, params)"
	.text
	.type	test_EVP_PKEY_ffc_priv_pub, @function
test_EVP_PKEY_ffc_priv_pub:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	call	BN_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$794, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$795, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$796, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$797, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$798, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$802, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L85
	movq	-96(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$803, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	movq	-56(%rbp), %rdx
	leaq	.LC34(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$804, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	movq	-64(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$805, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$807, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L86
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_key_fromdata
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$808, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L86
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L87
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	jne	.L87
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$821, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	movq	-96(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$822, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-56(%rbp), %rdx
	leaq	.LC34(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$823, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-64(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$824, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-80(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$825, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$828, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_key_fromdata
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$829, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L90
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	jne	.L90
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$842, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movq	-96(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$843, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-56(%rbp), %rdx
	leaq	.LC34(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-64(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$845, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-72(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$846, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$849, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_key_fromdata
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$850, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L93
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	jne	.L93
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$863, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	-96(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$864, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-56(%rbp), %rdx
	leaq	.LC34(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$865, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-64(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$866, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-72(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$867, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-80(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$869, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$872, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_key_fromdata
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$873, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-48(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L96
	movl	$1, -84(%rbp)
	jmp	.L59
.L84:
	nop
	jmp	.L59
.L85:
	nop
	jmp	.L59
.L86:
	nop
	jmp	.L59
.L87:
	nop
	jmp	.L59
.L88:
	nop
	jmp	.L59
.L89:
	nop
	jmp	.L59
.L90:
	nop
	jmp	.L59
.L91:
	nop
	jmp	.L59
.L92:
	nop
	jmp	.L59
.L93:
	nop
	jmp	.L59
.L94:
	nop
	jmp	.L59
.L95:
	nop
	jmp	.L59
.L96:
	nop
.L59:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-84(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	test_EVP_PKEY_ffc_priv_pub, .-test_EVP_PKEY_ffc_priv_pub
	.data
	.align 32
	.type	ec_priv, @object
	.size	ec_priv, 32
ec_priv:
	.base64	"6SX3Zlik3Zlh5+gjhcLoMyfFXOvbQ5/V8lp1VdAubRY="
	.align 32
	.type	ec_pub, @object
	.size	ec_pub, 65
ec_pub:
	.base64	"BK0RkHdLRu5yURWXSmqnr1n6S/JByDqBI7aQBGxnZtDc8hUdQWG3lYU4WoRW6LMO9cZdpFQmsPelSjPxCAm42wM="
	.section	.rodata
	.align 8
.LC47:
	.string	"priv = BN_bin2bn(ec_priv, sizeof(ec_priv), NULL)"
.LC48:
	.string	"P-256"
.LC49:
	.string	"group"
	.align 8
.LC50:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_GROUP_NAME, \"P-256\", 0)"
	.align 8
.LC51:
	.string	"just_params = make_key_fromdata(\"EC\", params)"
	.align 8
.LC52:
	.string	"params_and_priv = make_key_fromdata(\"EC\", params)"
	.align 8
.LC53:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_PUB_KEY, ec_pub, sizeof(ec_pub))"
	.align 8
.LC54:
	.string	"params_and_pub = make_key_fromdata(\"EC\", params)"
	.align 8
.LC55:
	.string	"params_and_keypair = make_key_fromdata(\"EC\", params)"
	.align 8
.LC56:
	.string	"EVP_PKEY_parameters_eq(just_params, just_params)"
	.align 8
.LC57:
	.string	"EVP_PKEY_parameters_eq(just_params, params_and_pub)"
	.align 8
.LC58:
	.string	"EVP_PKEY_parameters_eq(just_params, params_and_priv)"
	.align 8
.LC59:
	.string	"EVP_PKEY_parameters_eq(just_params, params_and_keypair)"
	.align 8
.LC60:
	.string	"EVP_PKEY_eq(params_and_pub, params_and_pub)"
	.align 8
.LC61:
	.string	"EVP_PKEY_eq(params_and_priv, params_and_priv)"
	.align 8
.LC62:
	.string	"EVP_PKEY_eq(params_and_keypair, params_and_pub)"
	.align 8
.LC63:
	.string	"EVP_PKEY_eq(params_and_keypair, params_and_priv)"
	.align 8
.LC64:
	.string	"EVP_PKEY_get1_encoded_public_key(params_and_pub, &encoded)"
	.align 8
.LC65:
	.string	"EVP_PKEY_get1_encoded_public_key(just_params, &encoded)"
.LC66:
	.string	"encoded-pub-key"
.LC67:
	.string	"1"
	.align 8
.LC68:
	.string	"EVP_PKEY_get_octet_string_param(params_and_pub, OSSL_PKEY_PARAM_ENCODED_PUBLIC_KEY, buffer, sizeof(buffer), &len)"
.LC69:
	.string	"65"
.LC70:
	.string	"len"
	.align 8
.LC71:
	.string	"EVP_PKEY_get_octet_string_param(params_and_pub, OSSL_PKEY_PARAM_ENCODED_PUBLIC_KEY, NULL, 0, &len)"
	.align 8
.LC72:
	.string	"EVP_PKEY_get_octet_string_param(params_and_pub, OSSL_PKEY_PARAM_ENCODED_PUBLIC_KEY, buffer, 10, &len)"
	.text
	.type	test_EC_priv_pub, @function
test_EC_priv_pub:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	leaq	ec_priv(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$934, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L133
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$938, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC48(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$939, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$943, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_key_fromdata
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$944, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L136
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	jne	.L136
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$957, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L137
	leaq	.LC48(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$958, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L137
	movq	-64(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$961, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L137
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$964, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L138
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_key_fromdata
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$965, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L138
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L139
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	jne	.L139
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$984, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L140
	leaq	.LC48(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$985, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L140
	leaq	ec_pub(%rip), %rdx
	leaq	.LC43(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$65, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$988, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L140
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$992, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L141
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_key_fromdata
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$993, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L141
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L142
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	jne	.L142
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1006, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L143
	leaq	.LC48(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1007, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	leaq	ec_pub(%rip), %rdx
	leaq	.LC43(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$65, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1010, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	movq	-64(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1013, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1016, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L144
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_key_fromdata
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1017, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L144
	movq	-48(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L145
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1024, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1025, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1027, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1029, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1031, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1032, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1033, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1034, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1038, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L147
	movq	-72(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1040, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -72(%rbp)
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1042, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L126
	movq	-72(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1043, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -72(%rbp)
	jmp	.L99
.L126:
	leaq	-80(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	leaq	.LC66(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$128, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1049, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L148
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$65, %r9d
	movl	%esi, %r8d
	movl	$1052, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L148
	movq	$0, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	.LC66(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1056, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L149
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$65, %r9d
	movl	%esi, %r8d
	movl	$1059, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-80(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	leaq	.LC66(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$10, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1063, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L150
	movl	$1, -52(%rbp)
	jmp	.L99
.L133:
	nop
	jmp	.L99
.L134:
	nop
	jmp	.L99
.L135:
	nop
	jmp	.L99
.L136:
	nop
	jmp	.L99
.L137:
	nop
	jmp	.L99
.L138:
	nop
	jmp	.L99
.L139:
	nop
	jmp	.L99
.L140:
	nop
	jmp	.L99
.L141:
	nop
	jmp	.L99
.L142:
	nop
	jmp	.L99
.L143:
	nop
	jmp	.L99
.L144:
	nop
	jmp	.L99
.L145:
	nop
	jmp	.L99
.L146:
	nop
	jmp	.L99
.L147:
	nop
	jmp	.L99
.L148:
	nop
	jmp	.L99
.L149:
	nop
	jmp	.L99
.L150:
	nop
.L99:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-52(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	test_EC_priv_pub, .-test_EC_priv_pub
	.section	.rodata
	.align 8
.LC73:
	.string	"keypair = make_key_fromdata(\"EC\", params)"
.LC74:
	.string	"qx"
.LC75:
	.string	"qy"
	.align 8
.LC76:
	.string	"pad = OPENSSL_zalloc(sizeof(ec_pub))"
	.align 8
.LC77:
	.string	"memcmp(ec_pub, pad, sizeof(ec_pub)) == 0"
	.text
	.type	test_evp_get_ec_pub, @function
test_evp_get_ec_pub:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -36(%rbp)
	leaq	ec_priv(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1093, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1096, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L165
	leaq	.LC48(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1097, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L165
	leaq	ec_pub(%rip), %rdx
	leaq	.LC43(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$65, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L165
	movq	-48(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L165
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1107, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_key_fromdata
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1108, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movq	-32(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_selection
	testl	%eax, %eax
	je	.L167
	leaq	-56(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L168
	leaq	-64(%rbp), %rdx
	leaq	.LC75(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L168
	leaq	.LC10(%rip), %rax
	movl	$1118, %edx
	movq	%rax, %rsi
	movl	$65, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1118, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L169
	movzbl	ec_pub(%rip), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movq	-24(%rbp), %rax
	leaq	33(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movq	-24(%rbp), %rax
	leaq	ec_pub(%rip), %rcx
	movl	$65, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	movl	$1, -36(%rbp)
	jmp	.L153
.L164:
	nop
	jmp	.L153
.L165:
	nop
	jmp	.L153
.L166:
	nop
	jmp	.L153
.L167:
	nop
	jmp	.L153
.L168:
	nop
	jmp	.L153
.L169:
	nop
	jmp	.L153
.L170:
	nop
.L153:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	test_evp_get_ec_pub, .-test_evp_get_ec_pub
	.section	.rodata
.LC78:
	.string	"eckey"
	.align 8
.LC79:
	.string	"EC_KEY_set_private_key(eckey, priv)"
	.align 8
.LC80:
	.string	"EVP_PKEY_assign_EC_KEY(pkey, eckey)"
.LC81:
	.string	"ctx"
	.align 8
.LC82:
	.string	"EVP_DigestSignInit_ex(ctx, NULL, NULL, testctx, testpropq, pkey, NULL)"
.LC83:
	.string	"dup_pk = EVP_PKEY_dup(pkey)"
.LC84:
	.string	"-2"
.LC85:
	.string	"EVP_PKEY_eq(pkey, dup_pk)"
	.text
	.type	test_EC_priv_only_legacy, @function
test_EC_priv_only_legacy:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	ec_priv(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1151, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L187
	movl	$415, %edi
	call	EC_KEY_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L188
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L189
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1162, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L190
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	movq	$0, -16(%rbp)
.L184:
	movl	$0, -4(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1172, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L192
	movq	testpropq(%rip), %rcx
	movq	testctx(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	$0, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L194
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1188, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L195
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$1191, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L196
	jmp	.L184
.L194:
	nop
	movl	$1, -4(%rbp)
	jmp	.L173
.L187:
	nop
	jmp	.L173
.L188:
	nop
	jmp	.L173
.L189:
	nop
	jmp	.L173
.L190:
	nop
	jmp	.L173
.L191:
	nop
	jmp	.L173
.L192:
	nop
	jmp	.L173
.L193:
	nop
	jmp	.L173
.L195:
	nop
	jmp	.L173
.L196:
	nop
.L173:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	test_EC_priv_only_legacy, .-test_EC_priv_only_legacy
	.section	.rodata
.LC86:
	.string	"libctx = OSSL_LIB_CTX_new()"
	.align 8
.LC87:
	.string	"eckey = EC_KEY_new_by_curve_name_ex(libctx, NULL, NID_X9_62_prime256v1)"
	.align 8
.LC88:
	.string	"x = BN_bin2bn(&ec_pub[1], 32, NULL)"
	.align 8
.LC89:
	.string	"y = BN_bin2bn(&ec_pub[33], 32, NULL)"
	.align 8
.LC90:
	.string	"EC_KEY_set_public_key_affine_coordinates(eckey, x, y)"
.LC91:
	.string	"pkey = EVP_PKEY_new()"
	.align 8
.LC92:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_EC_PUB_X, &x)"
	.align 8
.LC93:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_EC_PUB_Y, &y)"
	.text
	.type	test_evp_get_ec_pub_legacy, @function
test_evp_get_ec_pub_legacy:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -36(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1219, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L213
	movq	-48(%rbp), %rax
	movl	$415, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_new_by_curve_name_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC87(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1223, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	ec_priv(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1227, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L215
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1230, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L216
	leaq	1+ec_pub(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1233, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	leaq	33+ec_pub(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1236, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L218
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_public_key_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L219
	call	EVP_PKEY_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1242, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L220
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L221
	movq	$0, -24(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-64(%rbp), %rdx
	leaq	.LC75(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	leaq	.LC10(%rip), %rax
	movl	$1254, %edx
	movq	%rax, %rsi
	movl	$65, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1254, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L223
	movzbl	ec_pub(%rip), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movq	-8(%rbp), %rax
	leaq	33(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movq	-8(%rbp), %rax
	leaq	ec_pub(%rip), %rcx
	movl	$65, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1261, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L224
	movl	$1, -36(%rbp)
	jmp	.L199
.L213:
	nop
	jmp	.L199
.L214:
	nop
	jmp	.L199
.L215:
	nop
	jmp	.L199
.L216:
	nop
	jmp	.L199
.L217:
	nop
	jmp	.L199
.L218:
	nop
	jmp	.L199
.L219:
	nop
	jmp	.L199
.L220:
	nop
	jmp	.L199
.L221:
	nop
	jmp	.L199
.L222:
	nop
	jmp	.L199
.L223:
	nop
	jmp	.L199
.L224:
	nop
.L199:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1270, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	test_evp_get_ec_pub_legacy, .-test_evp_get_ec_pub_legacy
	.section	.rodata
.LC94:
	.string	"pkey = load_example_rsa_key()"
.LC95:
	.string	"pkey = load_example_dsa_key()"
.LC96:
	.string	"pkey = load_example_ec_key()"
.LC97:
	.string	"EVP_PKEY_sign_init(ctx)"
	.align 8
.LC98:
	.string	"EVP_PKEY_sign(ctx, NULL, &sig_len, tbs, sizeof(tbs))"
.LC99:
	.string	"sig"
	.align 8
.LC100:
	.string	"EVP_PKEY_sign(ctx, sig, &shortsig_len, tbs, sizeof(tbs))"
	.align 8
.LC101:
	.string	"EVP_PKEY_sign(ctx, sig, &sig_len, tbs, sizeof(tbs))"
.LC102:
	.string	"EVP_PKEY_verify_init(ctx)"
	.align 8
.LC103:
	.string	"EVP_PKEY_verify(ctx, sig, sig_len, tbs, sizeof(tbs))"
	.text
	.type	test_EVP_PKEY_sign, @function
test_EVP_PKEY_sign:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$1, -48(%rbp)
	movq	$0, -32(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$319951120, -64(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L226
	call	load_example_rsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1293, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L227
	jmp	.L228
.L226:
	cmpl	$1, -84(%rbp)
	jne	.L229
	call	load_example_dsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC95(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1297, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L227
	jmp	.L228
.L229:
	call	load_example_ec_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC96(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1305, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L235
.L227:
	movq	testctx(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1314, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L236
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1315, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L236
	leaq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$20, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1316, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L236
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1319, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC99(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1320, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L237
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1322, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L237
	leaq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1324, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L237
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1327, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L237
	movq	-40(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1328, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L237
	movl	$1, -4(%rbp)
	jmp	.L228
.L235:
	nop
	jmp	.L228
.L236:
	nop
	jmp	.L228
.L237:
	nop
.L228:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1335, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	test_EVP_PKEY_sign, .-test_EVP_PKEY_sign
	.section	.rodata
	.align 8
.LC104:
	.string	"rsa_meth = RSA_meth_dup(RSA_get_default_method())"
.LC105:
	.string	"rsa = EVP_PKEY_get1_RSA(pkey)"
.LC106:
	.string	"RSA_set_method(rsa, rsa_meth)"
	.align 8
.LC107:
	.string	"EVP_PKEY_assign_RSA(pkey, rsa)"
	.align 8
.LC108:
	.string	"dsa_meth = DSA_meth_dup(DSA_get_default_method())"
.LC109:
	.string	"dsa = EVP_PKEY_get1_DSA(pkey)"
.LC110:
	.string	"DSA_set_method(dsa, dsa_meth)"
	.align 8
.LC111:
	.string	"EVP_PKEY_assign_DSA(pkey, dsa)"
	.text
	.type	test_EVP_PKEY_sign_with_app_method, @function
test_EVP_PKEY_sign_with_app_method:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$1, -80(%rbp)
	movq	$0, -64(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$319951120, -96(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L239
	call	load_example_rsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L255
	call	RSA_get_default_method@PLT
	movq	%rax, %rdi
	call	RSA_meth_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1362, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L256
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_RSA@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC105(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1365, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L257
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RSA_set_method@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1366, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L257
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC107(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1367, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L257
	movq	$0, -24(%rbp)
	jmp	.L245
.L239:
	call	load_example_dsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC95(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1372, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L258
	call	DSA_get_default_method@PLT
	movq	%rax, %rdi
	call	DSA_meth_dup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1374, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_DSA@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1377, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L260
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSA_set_method@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1378, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L260
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1379, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L260
	movq	$0, -40(%rbp)
.L245:
	movq	testctx(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1389, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L261
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1390, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L261
	leaq	-112(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$20, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1391, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L261
	movq	-72(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1394, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC99(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1395, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L262
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1397, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L262
	leaq	-112(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1399, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L262
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1402, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L262
	movq	-72(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1403, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L262
	movl	$1, -4(%rbp)
	jmp	.L241
.L255:
	nop
	jmp	.L241
.L256:
	nop
	jmp	.L241
.L257:
	nop
	jmp	.L241
.L258:
	nop
	jmp	.L241
.L259:
	nop
	jmp	.L241
.L260:
	nop
	jmp	.L241
.L261:
	nop
	jmp	.L241
.L262:
	nop
.L241:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1410, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_meth_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_meth_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	test_EVP_PKEY_sign_with_app_method, .-test_EVP_PKEY_sign_with_app_method
	.section	.rodata
	.align 8
.LC112:
	.string	"Test does not support a non-default library context"
.LC113:
	.string	"AES-256-CBC"
	.align 8
.LC114:
	.string	"type = EVP_CIPHER_fetch(testctx, \"AES-256-CBC\", testpropq)"
	.align 8
.LC115:
	.string	"keypair = load_example_rsa_key()"
	.align 8
.LC116:
	.string	"kek = OPENSSL_zalloc(EVP_PKEY_get_size(keypair))"
.LC117:
	.string	"ctx = EVP_CIPHER_CTX_new()"
	.align 8
.LC118:
	.string	"EVP_SealInit(ctx, type, &kek, &kek_len, iv, &keypair, 1)"
	.align 8
.LC119:
	.string	"EVP_SealUpdate(ctx, ciphertext, &ciphertext_len, msg, sizeof(msg))"
	.align 8
.LC120:
	.string	"EVP_SealFinal(ctx, ciphertext + ciphertext_len, &len)"
	.align 8
.LC121:
	.string	"EVP_OpenInit(ctx, type, kek, kek_len, iv, keypair)"
	.align 8
.LC122:
	.string	"EVP_OpenUpdate(ctx, plaintext, &plaintext_len, ciphertext, ciphertext_len)"
	.align 8
.LC123:
	.string	"EVP_OpenFinal(ctx, plaintext + plaintext_len, &len)"
.LC124:
	.string	"plaintext"
.LC125:
	.string	"msg"
	.text
	.type	test_EVP_Enveloped, @function
test_EVP_Enveloped:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L264
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1439, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L275
.L264:
	cmpl	$0, -132(%rbp)
	jne	.L266
	call	EVP_aes_256_cbc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L267
.L266:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC113(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC114(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1443, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L276
.L267:
	call	load_example_rsa_key
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC115(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1447, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L277
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	cltq
	leaq	.LC10(%rip), %rcx
	movl	$1448, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC116(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1448, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L277
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1449, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L277
	leaq	-32(%rbp), %r8
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_SealInit@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1450, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L277
	leaq	msg.26(%rip), %rcx
	leaq	-76(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1452, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L277
	movl	-76(%rbp), %eax
	cltq
	leaq	-112(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-68(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SealFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC120(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1454, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L277
	movl	-76(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %r8
	movl	-72(%rbp), %ecx
	movq	-40(%rbp), %rdx
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_OpenInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L278
	movl	-76(%rbp), %edi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC122(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1461, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L278
	movl	-80(%rbp), %eax
	cltq
	leaq	-128(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-68(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_OpenFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC123(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1463, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L278
	movl	-80(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movslq	%eax, %rsi
	leaq	msg.26(%rip), %rdi
	leaq	.LC124(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-128(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$1467, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L279
	movl	$1, -4(%rbp)
	jmp	.L268
.L276:
	nop
	jmp	.L268
.L277:
	nop
	jmp	.L268
.L278:
	nop
	jmp	.L268
.L279:
	nop
.L268:
	cmpl	$0, -132(%rbp)
	je	.L274
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
.L274:
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1474, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	test_EVP_Enveloped, .-test_EVP_Enveloped
	.section	.rodata
.LC126:
	.string	"membio"
.LC127:
	.string	"mdbio"
	.align 8
.LC128:
	.string	"BIO_get_md_ctx(mdbio, &md_ctx)"
	.align 8
.LC129:
	.string	"a_md_ctx = md_ctx = EVP_MD_CTX_new()"
	.align 8
.LC130:
	.string	"a_md_ctx_verify = md_ctx_verify = EVP_MD_CTX_new()"
	.align 8
.LC131:
	.string	"pkey = load_example_hmac_key()"
.LC132:
	.string	"SHA256"
	.align 8
.LC133:
	.string	"EVP_DigestSignInit(md_ctx, NULL, md, NULL, pkey)"
	.align 8
.LC134:
	.string	"EVP_DigestSignInit(md_ctx, NULL, NULL, NULL, NULL)"
	.align 8
.LC135:
	.string	"EVP_DigestSignUpdate(md_ctx, kMsg, sizeof(kMsg))"
	.align 8
.LC136:
	.string	"EVP_DigestSign(md_ctx, NULL, &sig_len, kMsg, sizeof(kMsg))"
.LC137:
	.string	"sig = OPENSSL_malloc(sig_len)"
	.align 8
.LC138:
	.string	"EVP_DigestSign(md_ctx, sig, &shortsig_len, kMsg, sizeof(kMsg))"
	.align 8
.LC139:
	.string	"EVP_DigestSign(md_ctx, sig, &sig_len, kMsg, sizeof(kMsg))"
	.align 8
.LC140:
	.string	"EVP_DigestSignFinal(md_ctx, NULL, &sig_len)"
	.align 8
.LC141:
	.string	"EVP_DigestSignFinal(md_ctx, sig, &shortsig_len)"
	.align 8
.LC142:
	.string	"EVP_DigestSignFinal(md_ctx, sig, &sig_len)"
.LC143:
	.string	"BIO_reset(mdbio)"
	.align 8
.LC144:
	.string	"BIO_get_md_ctx(mdbio, &md_ctx_verify)"
	.align 8
.LC145:
	.string	"EVP_DigestVerifyInit(md_ctx_verify, NULL, md, NULL, pkey)"
	.align 8
.LC146:
	.string	"BIO_write_ex(mdbio, kMsg, sizeof(kMsg), &written)"
	.align 8
.LC147:
	.string	"EVP_DigestVerifyUpdate(md_ctx_verify, kMsg, sizeof(kMsg))"
	.align 8
.LC148:
	.string	"EVP_DigestVerifyFinal(md_ctx_verify, sig, sig_len)"
	.align 8
.LC149:
	.string	"EVP_DigestSignFinal(md_ctx, NULL, &sig2_len)"
	.align 8
.LC150:
	.string	"sig2 = OPENSSL_malloc(sig2_len)"
	.align 8
.LC151:
	.string	"EVP_DigestSignFinal(md_ctx, sig2, &sig2_len)"
.LC152:
	.string	"sig2"
	.text
	.type	test_EVP_DigestSignInit, @function
test_EVP_DigestSignInit:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$1, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L281
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1513, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L319
.L281:
	cmpl	$14, -148(%rbp)
	jle	.L283
	movl	$1, -84(%rbp)
	subl	$15, -148(%rbp)
.L283:
	cmpl	$5, -148(%rbp)
	jle	.L284
	cmpl	$8, -148(%rbp)
	jg	.L284
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	call	BIO_f_md@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1523, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L320
	movq	-56(%rbp), %rax
	leaq	.LC127(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1523, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L320
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1526, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L289
	jmp	.L287
.L284:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1529, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1530, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
.L289:
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L291
	call	load_example_rsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1535, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L292
	jmp	.L287
.L291:
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	$1, %edx
	jne	.L293
	call	load_example_dsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC95(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1539, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L292
	jmp	.L287
.L293:
	call	load_example_hmac_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC131(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1546, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L322
.L292:
	cmpl	$2, -148(%rbp)
	jle	.L294
	cmpl	$5, -148(%rbp)
	jg	.L294
	leaq	.LC132(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L295
.L294:
	call	EVP_sha256@PLT
	movq	%rax, -72(%rbp)
.L295:
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1555, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L323
	cmpl	$0, -84(%rbp)
	je	.L297
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1558, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
.L297:
	cmpl	$5, -148(%rbp)
	jle	.L298
	cmpl	$8, -148(%rbp)
	jg	.L298
	leaq	-136(%rbp), %rdx
	leaq	kMsg(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	jne	.L300
	jmp	.L287
.L298:
	cmpl	$5, -148(%rbp)
	jg	.L300
	movq	-120(%rbp), %rax
	leaq	kMsg(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1565, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L325
.L300:
	cmpl	$8, -148(%rbp)
	jle	.L301
	movq	-120(%rbp), %rax
	leaq	kMsg(%rip), %rcx
	leaq	-96(%rbp), %rdx
	movl	$4, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC136(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1571, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L326
	movq	-96(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1573, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC137(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1573, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L326
	cmpl	$11, -148(%rbp)
	jg	.L304
	movq	-120(%rbp), %rax
	leaq	kMsg(%rip), %rcx
	leaq	-112(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC138(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1577, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L327
	movl	$1, -4(%rbp)
	jmp	.L287
.L304:
	movq	-120(%rbp), %rax
	leaq	kMsg(%rip), %rcx
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1587, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L306
	jmp	.L287
.L301:
	movq	-120(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC140(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1592, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L328
	movq	-96(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1593, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC137(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1593, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L328
	movq	-120(%rbp), %rax
	leaq	-112(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1598, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L328
	movq	-120(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC142(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1599, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L328
.L306:
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	$2, %edx
	je	.L308
	cmpl	$5, -148(%rbp)
	jle	.L309
	cmpl	$8, -148(%rbp)
	jg	.L309
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC143(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1609, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L329
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC144(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1610, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L329
.L309:
	movq	-128(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC145(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L330
	cmpl	$5, -148(%rbp)
	jle	.L312
	cmpl	$8, -148(%rbp)
	jg	.L312
	leaq	-136(%rbp), %rdx
	leaq	kMsg(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1619, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L314
	jmp	.L287
.L312:
	movq	-128(%rbp), %rax
	leaq	kMsg(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1622, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L331
.L314:
	movq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC148(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1626, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L332
	movq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC148(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1630, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L316
	jmp	.L287
.L308:
	movq	-120(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC149(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1637, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L333
	movq	-104(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$1638, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC150(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1638, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L333
	movq	-120(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC151(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1639, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L333
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC152(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1642, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L334
.L316:
	movl	$1, -4(%rbp)
	jmp	.L287
.L320:
	nop
	jmp	.L287
.L321:
	nop
	jmp	.L287
.L322:
	nop
	jmp	.L287
.L323:
	nop
	jmp	.L287
.L324:
	nop
	jmp	.L287
.L325:
	nop
	jmp	.L287
.L326:
	nop
	jmp	.L287
.L327:
	nop
	jmp	.L287
.L328:
	nop
	jmp	.L287
.L329:
	nop
	jmp	.L287
.L330:
	nop
	jmp	.L287
.L331:
	nop
	jmp	.L287
.L332:
	nop
	jmp	.L287
.L333:
	nop
	jmp	.L287
.L334:
	nop
.L287:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1654, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1655, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	test_EVP_DigestSignInit, .-test_EVP_DigestSignInit
	.section	.rodata
.LC153:
	.string	"md_ctx = EVP_MD_CTX_new()"
	.align 8
.LC154:
	.string	"EVP_DigestVerifyInit(md_ctx, NULL, EVP_sha256(), NULL, pkey)"
	.align 8
.LC155:
	.string	"EVP_DigestVerifyUpdate(md_ctx, kMsg, sizeof(kMsg))"
	.align 8
.LC156:
	.string	"EVP_DigestVerifyFinal(md_ctx, kSignature, sizeof(kSignature))"
	.align 8
.LC157:
	.string	"EVP_DigestVerifyInit(md_ctx, NULL, NULL, NULL, NULL)"
	.text
	.type	test_EVP_DigestVerifyInit, @function
test_EVP_DigestVerifyInit:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L336
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1668, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L337
.L336:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1670, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L345
	call	load_example_rsa_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1671, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L345
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC154(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1674, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L346
	leaq	kMsg(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC155(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1675, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L346
	leaq	kSignature(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC156(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1676, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L346
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1681, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L347
	leaq	kMsg(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC155(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1682, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L347
	leaq	kSignature(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC156(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1683, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L347
	movl	$1, -4(%rbp)
	jmp	.L340
.L345:
	nop
	jmp	.L340
.L346:
	nop
	jmp	.L340
.L347:
	nop
.L340:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	test_EVP_DigestVerifyInit, .-test_EVP_DigestVerifyInit
	.section	.rodata
	.align 8
.LC158:
	.string	"pkey = EVP_PKEY_new_raw_private_key(EVP_PKEY_SIPHASH, NULL, key, 16)"
.LC159:
	.string	"mdctx = EVP_MD_CTX_create()"
	.align 8
.LC160:
	.string	"EVP_DigestSignInit(mdctx, &ctx, NULL, NULL, pkey)"
	.align 8
.LC161:
	.string	"EVP_PKEY_CTX_ctrl(ctx, -1, EVP_PKEY_OP_SIGNCTX, EVP_PKEY_CTRL_SET_DIGEST_SIZE, 8, NULL)"
	.align 8
.LC162:
	.string	"EVP_DigestSignInit(mdctx, NULL, NULL, NULL, NULL)"
	.align 8
.LC163:
	.string	"EVP_DigestSignUpdate(mdctx, buf, 8)"
	.align 8
.LC164:
	.string	"EVP_DigestSignFinal(mdctx, digest, &len)"
.LC165:
	.string	"expected"
.LC166:
	.string	"digest"
	.text
	.type	test_siphash_digestsign, @function
test_siphash_digestsign:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movabsq	$-2089967989627273619, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -12(%rbp)
	movq	$8, -88(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L349
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1710, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L360
.L349:
	leaq	-56(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1062, %edi
	call	EVP_PKEY_new_raw_private_key@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC158(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1714, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L361
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC159(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1718, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L362
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1721, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L363
	movq	-80(%rbp), %rax
	movl	$0, %r9d
	movl	$8, %r8d
	movl	$14, %ecx
	movl	$128, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1723, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L364
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC162(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1728, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L365
	leaq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1730, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L366
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1732, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L367
	movq	-88(%rbp), %r8
	leaq	-64(%rbp), %rdi
	leaq	.LC165(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	$8
	leaq	-72(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1734, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L368
	movl	$1, -12(%rbp)
	jmp	.L352
.L361:
	nop
	jmp	.L352
.L362:
	nop
	jmp	.L352
.L363:
	nop
	jmp	.L352
.L364:
	nop
	jmp	.L352
.L365:
	nop
	jmp	.L352
.L366:
	nop
	jmp	.L352
.L367:
	nop
	jmp	.L352
.L368:
	nop
.L352:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-12(%rbp), %eax
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	test_siphash_digestsign, .-test_siphash_digestsign
	.section	.rodata
	.align 8
.LC167:
	.string	"sha256 = EVP_MD_fetch(testctx, \"sha256\", testpropq)"
.LC168:
	.string	"shake256"
	.align 8
.LC169:
	.string	"shake256 = EVP_MD_fetch(testctx, \"shake256\", testpropq)"
	.align 8
.LC170:
	.string	"EVP_DigestInit_ex(md_ctx, sha256, NULL)"
	.align 8
.LC171:
	.string	"EVP_DigestUpdate(md_ctx, kMsg, sizeof(kMsg))"
	.align 8
.LC172:
	.string	"EVP_DigestFinal(md_ctx, md, NULL)"
.LC173:
	.string	"NULL"
.LC174:
	.string	"EVP_MD_CTX_get0_md(md_ctx)"
	.align 8
.LC175:
	.string	"EVP_DigestFinal_ex(md_ctx, md, NULL)"
	.align 8
.LC176:
	.string	"EVP_DigestInit_ex(md_ctx, NULL, NULL)"
	.align 8
.LC177:
	.string	"EVP_DigestInit_ex(md_ctx, shake256, NULL)"
	.align 8
.LC178:
	.string	"EVP_DigestFinalXOF(md_ctx, md, sizeof(md))"
	.text
	.type	test_EVP_Digest, @function
test_EVP_Digest:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1756, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L381
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC167(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1759, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L382
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC168(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC169(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1760, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L382
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1763, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L383
	leaq	kMsg(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1764, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L383
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1765, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L383
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rsi
	leaq	.LC173(%rip), %rcx
	leaq	.LC174(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1767, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L383
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1770, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	leaq	kMsg(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1771, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1772, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rcx
	leaq	.LC174(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1774, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L384
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC176(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1779, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1782, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L385
	leaq	kMsg(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1783, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L385
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1784, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L385
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rcx
	leaq	.LC174(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1786, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L385
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC176(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1787, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L385
	movl	$1, -4(%rbp)
	jmp	.L371
.L381:
	nop
	jmp	.L371
.L382:
	nop
	jmp	.L371
.L383:
	nop
	jmp	.L371
.L384:
	nop
	jmp	.L371
.L385:
	nop
.L371:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	test_EVP_Digest, .-test_EVP_Digest
	.section	.rodata
.LC179:
	.string	"md_null"
	.align 8
.LC180:
	.string	"EVP_DigestInit_ex(md_ctx, md_null, NULL)"
.LC181:
	.string	"test"
	.align 8
.LC182:
	.string	"EVP_DigestUpdate(md_ctx, \"test\", 4)"
	.align 8
.LC183:
	.string	"EVP_DigestFinal_ex(md_ctx, md_value, &md_len)"
.LC184:
	.string	"md_len"
	.text
	.type	test_EVP_md_null, @function
test_EVP_md_null:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	EVP_md_null@PLT
	movq	%rax, -24(%rbp)
	movl	$64, -100(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L387
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L395
.L387:
	movq	-24(%rbp), %rax
	leaq	.LC179(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1809, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L396
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1810, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L396
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC180(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1813, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L397
	leaq	.LC181(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC182(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1814, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L397
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC183(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$1815, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L397
	movl	-100(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC184(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1818, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L398
	movl	$1, -4(%rbp)
	jmp	.L391
.L396:
	nop
	jmp	.L391
.L397:
	nop
	jmp	.L391
.L398:
	nop
.L391:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	test_EVP_md_null, .-test_EVP_md_null
	.section	.rodata
	.align 8
.LC185:
	.string	"pkey = d2i_AutoPrivateKey(NULL, &p, input_len)"
.LC186:
	.string	"input + input_len"
.LC187:
	.string	"expected_id"
.LC188:
	.string	"EVP_PKEY_get_id(pkey)"
	.text
	.type	test_d2i_AutoPrivateKey, @function
test_d2i_AutoPrivateKey:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	keydata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1838, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L404
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC186(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1839, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L404
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC187(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1840, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L404
	movl	$1, -4(%rbp)
	jmp	.L402
.L404:
	nop
.L402:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	test_d2i_AutoPrivateKey, .-test_d2i_AutoPrivateKey
	.section	.rodata
	.align 32
	.type	ec_public_sect163k1_validxy, @object
	.size	ec_public_sect163k1_validxy, 66
ec_public_sect163k1_validxy:
	.base64	"MEAwEAYHKoZIzj0CAQYFK4EEAAEDLAAEAoRYptSgNSuu8MBpBc8qUDP545J5AtF7nyIA8DsOXS63IyTzatgXZUEv"
	.align 32
	.type	ec_public_sect163k1_badx, @object
	.size	ec_public_sect163k1_badx, 66
ec_public_sect163k1_badx:
	.base64	"MEAwEAYHKoZIzj0CAQYFK4EEAAEDLAAECoRYptSgNSuu8MBpBc8qUDP545KwAtF7nyIA8DsOXS63IyTzatgXZUEv"
	.align 32
	.type	ec_public_sect163k1_bady, @object
	.size	ec_public_sect163k1_bady, 66
ec_public_sect163k1_bady:
	.base64	"MEAwEAYHKoZIzj0CAQYFK4EEAAEDLAAEAoRYptSgNSuu8MBpBc8qUDP545J5CtF7nyIA8DsOXS63IyTzatgXZUHm"
	.section	.data.rel.local
	.align 32
	.type	ec_der_pub_keys, @object
	.size	ec_der_pub_keys, 72
ec_der_pub_keys:
	.quad	ec_public_sect163k1_validxy
	.quad	66
	.long	1
	.zero	4
	.quad	ec_public_sect163k1_badx
	.quad	66
	.long	0
	.zero	4
	.quad	ec_public_sect163k1_bady
	.quad	66
	.long	0
	.zero	4
	.text
	.type	test_invalide_ec_char2_pub_range_decode, @function
test_invalide_ec_char2_pub_range_decode:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+ec_der_pub_keys(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ec_der_pub_keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	load_example_key
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+ec_der_pub_keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L406
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1901, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L407
.L406:
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1902, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L408
.L407:
	movl	$1, %eax
	jmp	.L409
.L408:
	movl	$0, %eax
.L409:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	test_invalide_ec_char2_pub_range_decode, .-test_invalide_ec_char2_pub_range_decode
	.section	.rodata
	.align 8
.LC189:
	.string	"p8inf = d2i_PKCS8_PRIV_KEY_INFO(NULL, &derp, sizeof(kExampleBadECKeyDER))"
	.align 8
.LC190:
	.string	"kExampleBadECKeyDER + sizeof(kExampleBadECKeyDER)"
.LC191:
	.string	"derp"
.LC192:
	.string	"pkey = EVP_PKCS82PKEY(p8inf)"
	.text
	.type	test_EVP_PKCS82PKEY, @function
test_EVP_PKCS82PKEY:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	kExampleBadECKeyDER(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movl	$104, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC189(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1915, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L417
	leaq	104+kExampleBadECKeyDER(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC190(%rip), %rcx
	leaq	.LC191(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1919, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L418
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC192(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1923, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L419
	movl	$1, -4(%rbp)
	jmp	.L413
.L417:
	nop
	jmp	.L413
.L418:
	nop
	jmp	.L413
.L419:
	nop
.L413:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	test_EVP_PKCS82PKEY, .-test_EVP_PKCS82PKEY
	.section	.rodata
.LC193:
	.string	"membio = BIO_new(BIO_s_mem())"
	.align 8
.LC194:
	.string	"i2d_PKCS8PrivateKey_bio(membio, pkey, NULL, NULL, 0, NULL, NULL)"
	.align 8
.LC195:
	.string	"BIO_get_mem_data(membio, &membuf)"
	.align 8
.LC196:
	.string	"p8inf = d2i_PKCS8_PRIV_KEY_INFO_bio(membio, NULL)"
.LC197:
	.string	"pkey2 = EVP_PKCS82PKEY(p8inf)"
.LC198:
	.string	"ERR_peek_last_error()"
	.text
	.type	test_EVP_PKCS82PKEY_wrong_tag, @function
test_EVP_PKCS82PKEY_wrong_tag:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	testctx(%rip), %rax
	testq	%rax, %rax
	je	.L421
	movl	$1, %eax
	jmp	.L426
.L421:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC193(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1949, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L427
	call	load_example_rsa_key
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1950, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L427
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	i2d_PKCS8PrivateKey_bio@PLT
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC194(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1951, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L427
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC195(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1954, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L427
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS8_PRIV_KEY_INFO_bio@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC196(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1955, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L427
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC197(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1956, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L427
	call	ERR_peek_last_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC198(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1957, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L427
	movl	$1, -28(%rbp)
	jmp	.L425
.L427:
	nop
.L425:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-28(%rbp), %eax
.L426:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	test_EVP_PKCS82PKEY_wrong_tag, .-test_EVP_PKCS82PKEY_wrong_tag
	.section	.rodata
	.align 8
.LC199:
	.string	"membuf_len = BIO_get_mem_data(membio, &membuf)"
.LC200:
	.string	"membuf"
.LC201:
	.string	"kExampleRSAKeyPKCS8"
	.align 8
.LC202:
	.string	"PEM_write_bio_PKCS8PrivateKey(membio, pkey, NULL, NULL, 0, NULL, NULL)"
	.text
	.type	test_privatekey_to_pkcs8, @function
test_privatekey_to_pkcs8:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC193(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1979, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L433
	call	load_example_rsa_key
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1980, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L433
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	i2d_PKCS8PrivateKey_bio@PLT
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC194(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1981, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L433
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC199(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1984, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L433
	movq	-40(%rbp), %rax
	leaq	.LC200(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$1985, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L433
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC201(%rip), %rcx
	leaq	.LC200(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	$634
	leaq	kExampleRSAKeyPKCS8(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1986, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L433
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey@PLT
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC202(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1992, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L433
	movl	$1, -12(%rbp)
	jmp	.L431
.L433:
	nop
.L431:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	test_privatekey_to_pkcs8, .-test_privatekey_to_pkcs8
	.section	.rodata
.LC203:
	.string	"explicit"
.LC204:
	.string	"named_curve"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ec_encodings, @object
	.size	ec_encodings, 32
ec_encodings:
	.long	0
	.zero	4
	.quad	.LC203
	.long	1
	.zero	4
	.quad	.LC204
	.section	.rodata
.LC205:
	.string	"encoding"
	.align 8
.LC206:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_EC_ENCODING)"
	.align 8
.LC207:
	.string	"OSSL_PARAM_get_utf8_string_ptr(p, &enc_name)"
	.text
	.type	ec_export_get_encoding_cb, @function
ec_export_get_encoding_cb:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	leaq	.LC205(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC206(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2022, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L435
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC207(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2024, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L436
.L435:
	movl	$0, %eax
	jmp	.L442
.L436:
	movq	$0, -8(%rbp)
	jmp	.L438
.L441:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ec_encodings(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L439
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ec_encodings(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L440
.L439:
	addq	$1, -8(%rbp)
.L438:
	cmpq	$1, -8(%rbp)
	jbe	.L441
.L440:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
.L442:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	ec_export_get_encoding_cb, .-ec_export_get_encoding_cb
	.section	.rodata
	.align 8
.LC208:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, \"EC\", NULL)"
.LC209:
	.string	"EVP_PKEY_paramgen_init(pctx)"
	.align 8
.LC210:
	.string	"EVP_PKEY_CTX_set_group_name(pctx, \"P-256\")"
	.align 8
.LC211:
	.string	"EVP_PKEY_CTX_set_ec_param_enc(pctx, enc)"
	.align 8
.LC212:
	.string	"EVP_PKEY_paramgen(pctx, &params)"
.LC213:
	.string	"params"
	.align 8
.LC214:
	.string	"kctx = EVP_PKEY_CTX_new_from_pkey(testctx, params, NULL)"
.LC215:
	.string	"EVP_PKEY_keygen_init(kctx)"
.LC216:
	.string	"EVP_PKEY_keygen(kctx, &key)"
.LC217:
	.string	"key"
	.align 8
.LC218:
	.string	"evp_keymgmt_util_export(key, OSSL_KEYMGMT_SELECT_ALL, ec_export_get_encoding_cb, &enc)"
.LC219:
	.string	"ec_encodings[idx].encoding"
.LC220:
	.string	"enc"
	.text
	.type	test_EC_keygen_with_enc, @function
test_EC_keygen_with_enc:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ec_encodings(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -44(%rbp)
	movq	testctx(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC208(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2047, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L452
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC209(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2048, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L452
	leaq	.LC48(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_group_name@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC210(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2049, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L452
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_param_enc@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC211(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2050, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L452
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC212(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2051, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L452
	movq	-32(%rbp), %rax
	leaq	.LC213(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2052, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L452
	movq	-32(%rbp), %rcx
	movq	testctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC214(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2056, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L453
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC215(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2057, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L453
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC216(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2058, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L453
	movq	-40(%rbp), %rax
	leaq	.LC217(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2059, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L453
	movq	-40(%rbp), %rax
	leaq	-44(%rbp), %rdx
	leaq	ec_export_get_encoding_cb(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$135, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC218(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2063, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L454
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ec_encodings(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-44(%rbp), %esi
	leaq	.LC219(%rip), %rcx
	leaq	.LC220(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2065, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L454
	movl	$1, -12(%rbp)
	jmp	.L446
.L452:
	nop
	jmp	.L446
.L453:
	nop
	jmp	.L446
.L454:
	nop
.L446:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	test_EC_keygen_with_enc, .-test_EC_keygen_with_enc
	.section	.rodata
	.align 8
.LC221:
	.string	"-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEp1KLWq1ZE2jmoAnnBJE1LBGxVr18\nYvvqECWCpXfAQ9qUJ+UmthnUPf0iM3SaXKHe6PlLIDyNlWMWb9RUh/yU3g==\n-----END PUBLIC KEY-----\n"
.LC222:
	.string	"message digest"
.LC223:
	.string	"ALICE123@YAHOO.COM"
.LC224:
	.string	"bio != NULL"
.LC225:
	.string	"pkey != NULL"
.LC226:
	.string	"SM2"
.LC227:
	.string	"EVP_PKEY_is_a(pkey, \"SM2\")"
.LC228:
	.string	"mctx = EVP_MD_CTX_new()"
	.align 8
.LC229:
	.string	"pctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)"
.LC230:
	.string	"sm3"
	.align 8
.LC231:
	.string	"sm3 = EVP_MD_fetch(testctx, \"sm3\", testpropq)"
	.align 8
.LC232:
	.string	"EVP_DigestVerifyInit(mctx, NULL, sm3, NULL, pkey)"
	.align 8
.LC233:
	.string	"EVP_PKEY_CTX_set1_id(pctx, id, strlen(id))"
	.align 8
.LC234:
	.string	"EVP_DigestVerifyUpdate(mctx, msg, strlen(msg))"
	.align 8
.LC235:
	.string	"EVP_DigestVerifyFinal(mctx, signature, sizeof(signature))"
	.align 32
.LC0:
	.base64	"MEQCIFvbq4FPu4tpsQWcmTuyRQZKMBVZhM3uMGA2V4fvXNC+AiBDjR/Hd3I5u3Lh/QdY1YLILbo7LEYk41D/BMegcZ+kcA=="
	.text
	.type	test_EVP_SM2_verify, @function
test_EVP_SM2_verify:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	leaq	.LC221(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC222(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC223(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC0(%rip), %rax
	movq	8+.LC0(%rip), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	16+.LC0(%rip), %rax
	movq	24+.LC0(%rip), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	32+.LC0(%rip), %rax
	movq	40+.LC0(%rip), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	48+.LC0(%rip), %rax
	movq	56+.LC0(%rip), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	62+.LC0(%rip), %rax
	movq	%rax, -82(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC224(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2109, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L468
	movq	testpropq(%rip), %rcx
	movq	testctx(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PUBKEY_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC225(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L469
	leaq	.LC226(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC227(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2116, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L470
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC228(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L471
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC229(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2122, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L472
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_pkey_ctx@PLT
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC230(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC231(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L473
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC232(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L474
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_id@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC233(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2133, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L475
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC234(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L476
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC235(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2139, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L477
	movl	$1, -4(%rbp)
	jmp	.L457
.L468:
	nop
	jmp	.L457
.L469:
	nop
	jmp	.L457
.L470:
	nop
	jmp	.L457
.L471:
	nop
	jmp	.L457
.L472:
	nop
	jmp	.L457
.L473:
	nop
	jmp	.L457
.L474:
	nop
	jmp	.L457
.L475:
	nop
	jmp	.L457
.L476:
	nop
	jmp	.L457
.L477:
	nop
.L457:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	test_EVP_SM2_verify, .-test_EVP_SM2_verify
	.section	.rodata
	.align 8
.LC236:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, \"SM2\", testpropq)"
	.align 8
.LC237:
	.string	"EVP_PKEY_paramgen_init(pctx) == 1"
	.align 8
.LC238:
	.string	"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, NID_sm2)"
	.align 8
.LC239:
	.string	"EVP_PKEY_paramgen(pctx, &pkeyparams)"
	.align 8
.LC240:
	.string	"kctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkeyparams, testpropq)"
.LC241:
	.string	"EVP_PKEY_keygen(kctx, &pkey)"
	.align 8
.LC242:
	.string	"md_ctx_verify = EVP_MD_CTX_new()"
	.align 8
.LC243:
	.string	"sctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)"
	.align 8
.LC244:
	.string	"check_md = EVP_MD_fetch(testctx, \"sm3\", testpropq)"
	.align 8
.LC245:
	.string	"EVP_DigestSignInit(md_ctx, NULL, check_md, NULL, pkey)"
	.align 8
.LC246:
	.string	"EVP_PKEY_CTX_set1_id(sctx, sm2_id, sizeof(sm2_id))"
	.align 8
.LC247:
	.string	"EVP_DigestVerifyInit(md_ctx_verify, NULL, check_md, NULL, pkey)"
	.align 8
.LC248:
	.string	"EVP_PKEY_CTX_set1_id(sctx, NULL, 0)"
.LC249:
	.string	"SM3"
.LC250:
	.string	"SHA2-256"
	.align 8
.LC251:
	.string	"cctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)"
.LC252:
	.string	"EVP_PKEY_encrypt_init(cctx)"
	.align 8
.LC253:
	.string	"EVP_PKEY_CTX_set_params(cctx, sparams)"
	.align 8
.LC254:
	.string	"EVP_PKEY_encrypt(cctx, ciphertext, &ctext_len, kMsg, sizeof(kMsg))"
.LC255:
	.string	"EVP_PKEY_decrypt_init(cctx)"
	.align 8
.LC256:
	.string	"EVP_PKEY_decrypt(cctx, plaintext, &ptext_len, ciphertext, ctext_len)"
	.align 8
.LC257:
	.string	"EVP_PKEY_CTX_get_params(cctx, gparams)"
	.align 8
.LC258:
	.string	"check_md = EVP_MD_fetch(testctx, mdname, testpropq)"
	.align 8
.LC259:
	.string	"EVP_MD_is_a(check_md, mdnames[i])"
.LC260:
	.string	"Fetched md %s isn't %s"
.LC261:
	.string	"ptext_len == sizeof(kMsg)"
	.align 8
.LC262:
	.string	"memcmp(plaintext, kMsg, sizeof(kMsg)) == 0"
	.text
	.type	test_EVP_SM2, @function
test_EVP_SM2:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$128, -248(%rbp)
	movq	$8, -264(%rbp)
	movabsq	$8391443520296256001, %rax
	movq	%rax, -274(%rbp)
	movw	$29285, -266(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -368(%rbp)
	movaps	%xmm0, -352(%rbp)
	movaps	%xmm0, -336(%rbp)
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm0, -304(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -448(%rbp)
	movaps	%xmm0, -432(%rbp)
	movaps	%xmm0, -416(%rbp)
	movaps	%xmm0, -400(%rbp)
	movaps	%xmm0, -384(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC226(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC236(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2180, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L523
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC237(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L524
	movq	-80(%rbp), %rax
	movl	$1172, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC238(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2187, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L525
	leaq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC239(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L526
	movq	testpropq(%rip), %rdx
	movq	-96(%rbp), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC240(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L527
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC215(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2197, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L528
	leaq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC241(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L529
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2203, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L530
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC242(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2206, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L531
	movq	testpropq(%rip), %rdx
	movq	-88(%rbp), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC243(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L532
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_pkey_ctx@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_pkey_ctx@PLT
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC230(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC244(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L533
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC245(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L534
	leaq	-274(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_id@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC246(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2221, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L535
	leaq	kMsg(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2224, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L536
	leaq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC140(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2228, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L537
	movq	-104(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$2231, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC137(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2231, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L538
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC142(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L539
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC247(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L540
	leaq	-274(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_id@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC246(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2243, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L541
	leaq	kMsg(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L542
	movq	-104(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC148(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2249, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L543
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC247(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L544
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_id@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2261, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L545
	leaq	kMsg(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L546
	movq	-104(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC148(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2267, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L547
	leaq	-576(%rbp), %rax
	leaq	-512(%rbp), %rdx
	leaq	.LC166(%rip), %rsi
	movl	$50, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-576(%rbp), %rax
	movq	-568(%rbp), %rdx
	movq	%rax, -448(%rbp)
	movq	%rdx, -440(%rbp)
	movq	-560(%rbp), %rax
	movq	-552(%rbp), %rdx
	movq	%rax, -432(%rbp)
	movq	%rdx, -424(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -416(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L505
.L521:
	leaq	.LC249(%rip), %rax
	movq	%rax, -528(%rbp)
	leaq	.LC250(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-68(%rbp), %eax
	cltq
	movq	-528(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L548
	movl	-68(%rbp), %eax
	cltq
	movq	-528(%rbp,%rax,8), %rdx
	leaq	-576(%rbp), %rax
	leaq	.LC166(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-576(%rbp), %rax
	movq	-568(%rbp), %rdx
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-560(%rbp), %rax
	movq	-552(%rbp), %rdx
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	testpropq(%rip), %rdx
	movq	-88(%rbp), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC251(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2291, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L549
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC252(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L550
	leaq	-368(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L551
	leaq	kMsg(%rip), %rcx
	leaq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC254(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2301, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L552
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC255(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2305, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L553
	leaq	-368(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2308, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L554
	movq	-248(%rbp), %rdi
	leaq	-240(%rbp), %rcx
	leaq	-264(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC256(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2311, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L555
	leaq	-448(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC257(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2315, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L556
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	-512(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC258(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2324, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L557
	movl	-68(%rbp), %eax
	cltq
	movq	-528(%rbp,%rax,8), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC259(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2326, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L518
	movl	-68(%rbp), %eax
	cltq
	movq	-528(%rbp,%rax,8), %rcx
	leaq	-512(%rbp), %rax
	leaq	.LC260(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$2327, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L480
.L518:
	movq	-264(%rbp), %rax
	cmpq	$4, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC261(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2331, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L558
	leaq	kMsg(%rip), %rcx
	leaq	-256(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC262(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2334, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L559
	jmp	.L507
.L548:
	nop
.L507:
	addl	$1, -68(%rbp)
.L505:
	cmpl	$1, -68(%rbp)
	jle	.L521
	movl	$1, -4(%rbp)
	jmp	.L480
.L523:
	nop
	jmp	.L480
.L524:
	nop
	jmp	.L480
.L525:
	nop
	jmp	.L480
.L526:
	nop
	jmp	.L480
.L527:
	nop
	jmp	.L480
.L528:
	nop
	jmp	.L480
.L529:
	nop
	jmp	.L480
.L530:
	nop
	jmp	.L480
.L531:
	nop
	jmp	.L480
.L532:
	nop
	jmp	.L480
.L533:
	nop
	jmp	.L480
.L534:
	nop
	jmp	.L480
.L535:
	nop
	jmp	.L480
.L536:
	nop
	jmp	.L480
.L537:
	nop
	jmp	.L480
.L538:
	nop
	jmp	.L480
.L539:
	nop
	jmp	.L480
.L540:
	nop
	jmp	.L480
.L541:
	nop
	jmp	.L480
.L542:
	nop
	jmp	.L480
.L543:
	nop
	jmp	.L480
.L544:
	nop
	jmp	.L480
.L545:
	nop
	jmp	.L480
.L546:
	nop
	jmp	.L480
.L547:
	nop
	jmp	.L480
.L549:
	nop
	jmp	.L480
.L550:
	nop
	jmp	.L480
.L551:
	nop
	jmp	.L480
.L552:
	nop
	jmp	.L480
.L553:
	nop
	jmp	.L480
.L554:
	nop
	jmp	.L480
.L555:
	nop
	jmp	.L480
.L556:
	nop
	jmp	.L480
.L557:
	nop
	jmp	.L480
.L558:
	nop
	jmp	.L480
.L559:
	nop
.L480:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2349, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	test_EVP_SM2, .-test_EVP_SM2
	.section	.rodata
.LC263:
	.string	"0123456789"
.LC264:
	.string	""
	.align 8
.LC265:
	.string	"01234567890123456789012345678901"
.LC266:
	.string	"0123456789012345"
	.align 8
.LC267:
	.string	"abcdefghijklmnopqrstuvwxyzabcdef"
	.align 8
.LC268:
	.string	"01234567890123456789012345678901234567890123456789012345"
	.align 8
.LC269:
	.string	"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd"
	.align 8
.LC270:
	.string	"012345678901234567890123456789012345678901234567890123456"
	.align 8
.LC271:
	.string	"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcde"
	.section	.data.rel.local
	.align 32
	.type	keys, @object
	.size	keys, 192
keys:
	.long	855
	.zero	4
	.quad	.LC263
	.quad	0
	.long	855
	.zero	4
	.quad	.LC264
	.quad	0
	.long	1061
	.zero	4
	.quad	.LC265
	.quad	0
	.long	1062
	.zero	4
	.quad	.LC266
	.quad	0
	.long	1034
	.zero	4
	.quad	.LC265
	.quad	.LC267
	.long	1087
	.zero	4
	.quad	.LC265
	.quad	.LC267
	.long	1035
	.zero	4
	.quad	.LC268
	.quad	.LC269
	.long	1088
	.zero	4
	.quad	.LC270
	.quad	.LC271
	.section	.rodata
.LC272:
	.string	"EVP_PKEY_eq(pkey, pkey)"
	.align 8
.LC273:
	.string	"EVP_PKEY_get_raw_private_key(pkey, NULL, &len)"
	.align 8
.LC274:
	.string	"EVP_PKEY_get_raw_public_key(pkey, NULL, &len)"
.LC275:
	.string	"len == inlen"
	.align 8
.LC276:
	.string	"EVP_PKEY_get_raw_private_key(pkey, buf, &shortlen)"
	.align 8
.LC277:
	.string	"EVP_PKEY_get_raw_public_key(pkey, buf, &shortlen)"
	.align 8
.LC278:
	.string	"EVP_PKEY_get_raw_private_key(pkey, buf, &len)"
	.align 8
.LC279:
	.string	"EVP_PKEY_get_raw_public_key(pkey, buf, &len)"
.LC280:
	.string	"buf"
.LC281:
	.string	"in"
	.text
	.type	test_set_get_raw_keys_int, @function
test_set_get_raw_keys_int:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movl	%esi, -136(%rbp)
	movl	%edx, -140(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -120(%rbp)
	movq	$1, -128(%rbp)
	cmpl	$0, -136(%rbp)
	je	.L561
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L561
	movl	$1, %eax
	jmp	.L579
.L561:
	leaq	-112(%rbp), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$0, -136(%rbp)
	je	.L563
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L564
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rsi
	movq	testctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_public_key_ex@PLT
	movq	%rax, -32(%rbp)
	jmp	.L565
.L564:
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	EVP_PKEY_new_raw_public_key@PLT
	movq	%rax, -32(%rbp)
	jmp	.L565
.L563:
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L566
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rsi
	movq	testctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -32(%rbp)
	jmp	.L565
.L566:
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	EVP_PKEY_new_raw_private_key@PLT
	movq	%rax, -32(%rbp)
.L565:
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2444, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L580
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC272(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2445, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L580
	cmpl	$0, -136(%rbp)
	jne	.L568
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_get_raw_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC273(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2446, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L580
.L568:
	cmpl	$0, -136(%rbp)
	je	.L569
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_get_raw_public_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC274(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2447, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L580
.L569:
	movq	-120(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC275(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2448, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L580
	cmpl	$1, -132(%rbp)
	je	.L572
	cmpl	$0, -136(%rbp)
	jne	.L573
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_raw_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC276(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2455, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L581
.L573:
	cmpl	$0, -136(%rbp)
	je	.L572
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_raw_public_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC277(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2457, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L581
.L572:
	cmpl	$0, -136(%rbp)
	jne	.L575
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_raw_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC278(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2461, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L582
.L575:
	cmpl	$0, -136(%rbp)
	je	.L577
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_raw_public_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC279(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L582
.L577:
	movq	-120(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rdi
	leaq	.LC280(%rip), %rcx
	leaq	.LC281(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-112(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2463, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L582
	movl	$1, -4(%rbp)
	jmp	.L571
.L580:
	nop
	jmp	.L571
.L581:
	nop
	jmp	.L571
.L582:
	nop
.L571:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L579:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	test_set_get_raw_keys_int, .-test_set_get_raw_keys_int
	.type	test_set_get_raw_keys, @function
test_set_get_raw_keys:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	jne	.L584
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	test_set_get_raw_keys_int
	testl	%eax, %eax
	je	.L585
.L584:
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	test_set_get_raw_keys_int
	testl	%eax, %eax
	je	.L585
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	jne	.L586
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	test_set_get_raw_keys_int
	testl	%eax, %eax
	je	.L585
.L586:
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	test_set_get_raw_keys_int
	testl	%eax, %eax
	je	.L585
	movl	$1, %eax
	jmp	.L588
.L585:
	movl	$0, %eax
.L588:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	test_set_get_raw_keys, .-test_set_get_raw_keys
	.type	pkey_custom_check, @function
pkey_custom_check:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$48879, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	pkey_custom_check, .-pkey_custom_check
	.type	pkey_custom_pub_check, @function
pkey_custom_pub_check:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$48879, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	pkey_custom_pub_check, .-pkey_custom_pub_check
	.type	pkey_custom_param_check, @function
pkey_custom_param_check:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$48879, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	pkey_custom_param_check, .-pkey_custom_param_check
	.local	custom_pmeth
	.comm	custom_pmeth,8,8
	.section	.rodata
	.align 8
.LC282:
	.string	"pkey = load_example_key(ak->keytype, input, input_len)"
	.align 8
.LC283:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)"
.LC284:
	.string	"expected_check"
.LC285:
	.string	"EVP_PKEY_check(ctx)"
.LC286:
	.string	"expected_pub_check"
.LC287:
	.string	"EVP_PKEY_public_check(ctx)"
.LC288:
	.string	"expected_param_check"
.LC289:
	.string	"EVP_PKEY_param_check(ctx)"
.LC290:
	.string	"0xbeef"
.LC291:
	.string	"EVP_PKEY_check(ctx2)"
.LC292:
	.string	"EVP_PKEY_public_check(ctx2)"
.LC293:
	.string	"EVP_PKEY_param_check(ctx2)"
	.text
	.type	test_EVP_PKEY_check, @function
test_EVP_PKEY_check:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	keycheckdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_example_key
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC282(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2516, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L607
	cmpl	$0, -76(%rbp)
	jne	.L598
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %esi
	movl	-60(%rbp), %edi
	leaq	.LC187(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2519, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L608
.L598:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC283(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2522, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L609
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	movl	-64(%rbp), %edi
	leaq	.LC284(%rip), %rcx
	leaq	.LC285(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2525, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L610
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	movl	-68(%rbp), %edi
	leaq	.LC286(%rip), %rcx
	leaq	.LC287(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2528, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L611
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	movl	%eax, %esi
	movl	-72(%rbp), %edi
	leaq	.LC288(%rip), %rcx
	leaq	.LC289(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2531, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L612
	movl	$0, %esi
	movl	$233811181, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC290(%rip), %rcx
	leaq	.LC291(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$48879, %r9d
	movl	%esi, %r8d
	movl	$2540, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L613
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC290(%rip), %rcx
	leaq	.LC292(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$48879, %r9d
	movl	%esi, %r8d
	movl	$2543, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L614
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	movl	%eax, %esi
	leaq	.LC290(%rip), %rcx
	leaq	.LC293(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$48879, %r9d
	movl	%esi, %r8d
	movl	$2546, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L615
	movl	$1, -4(%rbp)
	jmp	.L597
.L607:
	nop
	jmp	.L597
.L608:
	nop
	jmp	.L597
.L609:
	nop
	jmp	.L597
.L610:
	nop
	jmp	.L597
.L611:
	nop
	jmp	.L597
.L612:
	nop
	jmp	.L597
.L613:
	nop
	jmp	.L597
.L614:
	nop
	jmp	.L597
.L615:
	nop
.L597:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	test_EVP_PKEY_check, .-test_EVP_PKEY_check
	.section	.rodata
.LC294:
	.string	"mdctx"
	.align 8
.LC295:
	.string	"EVP_DigestSignInit_ex(mdctx, NULL, NULL, testctx, testpropq, pkey, NULL)"
	.align 8
.LC296:
	.string	"EVP_DigestSignUpdate(mdctx, msg, sizeof(msg))"
	.align 8
.LC297:
	.string	"EVP_DigestSignFinal(mdctx, mac, &maclen)"
.LC298:
	.string	"AES_BLOCK_SIZE"
.LC299:
	.string	"maclen"
	.text
	.type	get_cmac_val, @function
get_cmac_val:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movabsq	$8022916924116329800, %rax
	movq	%rax, -28(%rbp)
	movl	$6581362, -20(%rbp)
	movq	$16, -40(%rbp)
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC294(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2569, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L617
	movq	testpropq(%rip), %rcx
	movq	testctx(%rip), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC295(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2570, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L617
	leaq	-28(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC296(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2572, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L617
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC297(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2573, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L617
	movq	-40(%rbp), %rsi
	leaq	.LC298(%rip), %rcx
	leaq	.LC299(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$2574, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L618
.L617:
	movl	$0, -4(%rbp)
.L618:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	get_cmac_val, .-get_cmac_val
	.section	.rodata
	.align 8
.LC300:
	.string	"EVP_PKEY_CTX_ctrl(kctx, -1, EVP_PKEY_OP_KEYGEN, EVP_PKEY_CTRL_CIPHER, 0, (void *)EVP_aes_256_cbc())"
	.align 8
.LC301:
	.string	"EVP_PKEY_CTX_ctrl(kctx, -1, EVP_PKEY_OP_KEYGEN, EVP_PKEY_CTRL_SET_MAC_KEY, sizeof(key), (void *)key)"
.LC302:
	.string	"get_cmac_val(pkey, mac)"
.LC303:
	.string	"get_cmac_val(pkey, mac2)"
.LC304:
	.string	"mac2"
.LC305:
	.string	"mac"
	.text
	.type	test_CMAC_keygen, @function
test_CMAC_keygen:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L621
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2597, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L628
.L621:
	movl	$0, %esi
	movl	$894, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC215(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2606, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L629
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$12, %ecx
	movl	$4, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC300(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2607, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L629
	leaq	key.25(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$32, %r8d
	movl	$6, %ecx
	movl	$4, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC301(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2610, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L629
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC241(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2613, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L629
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2614, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L629
	movq	-24(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cmac_val
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC302(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2615, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L629
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	leaq	key.25(%rip), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_new_CMAC_key@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2626, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L630
	movq	-24(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cmac_val
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC303(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2627, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L630
	leaq	-48(%rbp), %rdi
	leaq	.LC304(%rip), %rcx
	leaq	.LC305(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	$16
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$2628, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L630
	movl	$1, -4(%rbp)
	jmp	.L625
.L629:
	nop
	jmp	.L625
.L630:
	nop
.L625:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
.L628:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	test_CMAC_keygen, .-test_CMAC_keygen
	.section	.rodata
.LC306:
	.string	"HKDF"
	.align 8
.LC307:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, \"HKDF\", testpropq)"
.LC308:
	.string	"EVP_PKEY_derive_init(pctx)"
	.align 8
.LC309:
	.string	"EVP_PKEY_CTX_set_hkdf_md(pctx, EVP_sha256())"
	.align 8
.LC310:
	.string	"EVP_PKEY_CTX_set1_hkdf_salt(pctx, salt, sizeof(salt) - 1)"
	.align 8
.LC311:
	.string	"EVP_PKEY_CTX_set1_hkdf_key(pctx, key, sizeof(key) - 1)"
	.align 8
.LC312:
	.string	"EVP_PKEY_CTX_add1_hkdf_info(pctx, info, sizeof(info) - 1)"
	.align 8
.LC313:
	.string	"EVP_PKEY_derive(pctx, out, &outlen)"
.LC314:
	.string	"out"
	.text
	.type	test_HKDF, @function
test_HKDF:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$0, -8(%rbp)
	movabsq	$3978425819141910832, %rax
	movq	%rax, -67(%rbp)
	movl	$3749943, -60(%rbp)
	movabsq	$3978425819141910832, %rax
	movabsq	$3833745473465760056, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$3616724998069630517, %rax
	movabsq	$16105883456320563, %rdx
	movq	%rax, -97(%rbp)
	movq	%rdx, -89(%rbp)
	movabsq	$7598263560466493033, %rax
	movq	%rax, -123(%rbp)
	movl	$6778473, -116(%rbp)
	movabsq	$6113206338138933221, %rax
	movabsq	$-2864753924831813838, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movl	$-890410237, -128(%rbp)
	movq	$20, -16(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC306(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC307(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2656, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L639
	movl	$0, -4(%rbp)
	jmp	.L634
.L637:
	movq	$20, -56(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC308(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2664, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L640
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_hkdf_md@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC309(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2665, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L640
	leaq	-67(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_salt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC310(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2666, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L640
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_key@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC311(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2668, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L640
	leaq	-123(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_hkdf_info@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC312(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2670, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L640
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC313(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2672, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L640
	movq	-56(%rbp), %r8
	leaq	-48(%rbp), %rdi
	leaq	.LC165(%rip), %rcx
	leaq	.LC314(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-16(%rbp)
	leaq	-144(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2673, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L640
	addl	$1, -4(%rbp)
.L634:
	cmpl	$1, -4(%rbp)
	jle	.L637
	movl	$1, -8(%rbp)
	jmp	.L633
.L639:
	nop
	jmp	.L633
.L640:
	nop
.L633:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	test_HKDF, .-test_HKDF
	.type	test_emptyikm_HKDF, @function
test_emptyikm_HKDF:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movabsq	$3617292328856139833, %rax
	movq	%rax, -67(%rbp)
	movl	$3158322, -60(%rbp)
	movb	$0, -68(%rbp)
	movabsq	$7956003940639863923, %rax
	movq	%rax, -79(%rbp)
	movl	$7300718, -72(%rbp)
	movabsq	$8033186276052402536, %rax
	movabsq	$3839312619043875886, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$806716006, -96(%rbp)
	movq	$20, -16(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC306(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC307(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2700, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L647
	movq	$20, -56(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC308(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2706, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L648
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_hkdf_md@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC309(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2707, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L648
	leaq	-67(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_salt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC310(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2708, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L648
	leaq	-68(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_key@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC311(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2710, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L648
	leaq	-79(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_hkdf_info@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC312(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2712, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L648
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC313(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2714, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L648
	movq	-56(%rbp), %r8
	leaq	-48(%rbp), %rdi
	leaq	.LC165(%rip), %rcx
	leaq	.LC314(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-16(%rbp)
	leaq	-112(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2715, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L648
	movl	$1, -4(%rbp)
	jmp	.L643
.L647:
	nop
	jmp	.L643
.L648:
	nop
.L643:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	test_emptyikm_HKDF, .-test_emptyikm_HKDF
	.section	.rodata
	.align 8
.LC315:
	.string	"EVP_PKEY_CTX_set1_hkdf_salt(pctx, fake, sizeof(fake) - 1)"
	.text
	.type	test_empty_salt_info_HKDF, @function
test_empty_salt_info_HKDF:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	movb	$0, -57(%rbp)
	movabsq	$3978425819141910832, %rax
	movq	%rax, -68(%rbp)
	movl	$3749943, -61(%rbp)
	movabsq	$3978425819141910832, %rax
	movabsq	$3833745473465760056, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$3616724998069630517, %rax
	movabsq	$16105883456320563, %rdx
	movq	%rax, -97(%rbp)
	movq	%rdx, -89(%rbp)
	movb	$0, -113(%rbp)
	movabsq	$-8126030251655884185, %rax
	movabsq	$-5065448237718885251, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movl	$115367762, -128(%rbp)
	movq	$20, -16(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC306(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC307(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2742, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L655
	movq	$20, -56(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC308(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2748, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_hkdf_md@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC309(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2749, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	leaq	-68(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_salt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC315(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2750, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	leaq	-57(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_salt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC310(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2752, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_key@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC311(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2754, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	leaq	-113(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_hkdf_info@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC312(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2756, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC313(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2758, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L656
	movq	-56(%rbp), %r8
	leaq	-48(%rbp), %rdi
	leaq	.LC165(%rip), %rcx
	leaq	.LC314(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-16(%rbp)
	leaq	-144(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2759, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L656
	movl	$1, -4(%rbp)
	jmp	.L651
.L655:
	nop
	jmp	.L651
.L656:
	nop
.L651:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	test_empty_salt_info_HKDF, .-test_empty_salt_info_HKDF
	.section	.rodata
.LC316:
	.string	"xp"
	.align 8
.LC317:
	.string	"d2i_X509_PUBKEY(&xp, &p, input_len)"
.LC318:
	.string	"X509_PUBKEY_get0(xp)"
	.align 8
.LC319:
	.string	"xp = d2i_X509_PUBKEY(&xp, &p, input_len)"
.LC320:
	.string	"X509_PUBKEY_get0(xp) == NULL"
	.text
	.type	test_X509_PUBKEY_inplace, @function
test_X509_PUBKEY_inplace:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_new_ex@PLT
	movq	%rax, -24(%rbp)
	leaq	kExampleECPubKeyDER(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$91, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC316(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2778, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L665
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_PUBKEY@PLT
	movq	%rax, %rcx
	leaq	.LC317(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2780, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L666
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rcx
	leaq	.LC318(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2783, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L667
	leaq	kExampleBadECPubKeyDER(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$91, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_PUBKEY@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC319(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2789, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L668
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC320(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2792, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%rbp)
	jmp	.L659
.L665:
	nop
	jmp	.L659
.L666:
	nop
	jmp	.L659
.L667:
	nop
	jmp	.L659
.L668:
	nop
	jmp	.L659
.L669:
	nop
.L659:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	test_X509_PUBKEY_inplace, .-test_X509_PUBKEY_inplace
	.section	.rodata
.LC321:
	.string	"xq = X509_PUBKEY_dup(xp)"
.LC322:
	.string	"xq"
.LC323:
	.string	"X509_PUBKEY_get0(xq)"
.LC324:
	.string	"X509_PUBKEY_get0(xq) == NULL"
	.text
	.type	test_X509_PUBKEY_dup, @function
test_X509_PUBKEY_dup:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	leaq	kExampleECPubKeyDER(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$91, -40(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_new_ex@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC316(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2810, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L680
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_PUBKEY@PLT
	movq	%rax, %rcx
	leaq	.LC317(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2811, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L680
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC321(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2812, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L680
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC322(%rip), %rcx
	leaq	.LC316(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2813, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L680
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rcx
	leaq	.LC323(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2816, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L681
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rcx
	leaq	.LC318(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2817, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L681
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rsi
	leaq	.LC318(%rip), %rcx
	leaq	.LC323(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$2818, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L681
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	$0, -32(%rbp)
	leaq	kExampleBadECPubKeyDER(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$91, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_PUBKEY@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC319(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2826, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L682
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC321(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2827, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L682
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC324(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2832, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L683
	movl	$1, -20(%rbp)
	jmp	.L673
.L680:
	nop
	jmp	.L673
.L681:
	nop
	jmp	.L673
.L682:
	nop
	jmp	.L673
.L683:
	nop
.L673:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	test_X509_PUBKEY_dup, .-test_X509_PUBKEY_dup
	.section	.rodata
	.align 8
.LC325:
	.string	"OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_DIGEST)"
.LC326:
	.string	"algorithm-id"
	.align 8
.LC327:
	.string	"OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_ALGORITHM_ID)"
	.align 8
.LC328:
	.string	"EVP_PKEY_CTX_set_params(ctx, ourparams)"
	.align 8
.LC329:
	.string	"EVP_PKEY_CTX_get_params(ctx, ourparams)"
.LC330:
	.string	"SHA512"
.LC331:
	.string	"\"SHA512\""
.LC332:
	.string	"mdname"
	.align 8
.LC333:
	.string	"EVP_PKEY_CTX_set_signature_md(ctx, EVP_sha256())"
	.align 8
.LC334:
	.string	"EVP_PKEY_CTX_get_signature_md(ctx, &md)"
.LC335:
	.string	"EVP_sha256()"
.LC336:
	.string	"md"
.LC337:
	.string	"SHA1"
	.align 8
.LC338:
	.string	"EVP_DigestSignInit_ex(mdctx, NULL, \"SHA1\", testctx, testpropq, pkey, NULL)"
.LC339:
	.string	"ssl3-ms"
	.align 8
.LC340:
	.string	"strcmp(params[0].key, OSSL_DIGEST_PARAM_SSL3_MS)"
.LC341:
	.string	"params[1].key"
	.align 8
.LC342:
	.string	"EVP_MD_CTX_set_params(mdctx, ourparams)"
	.text
	.type	test_EVP_PKEY_CTX_get_set_params, @function
test_EVP_PKEY_CTX_get_set_params:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	-264(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2858, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L703
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2859, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L703
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_settable_params@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC213(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2866, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L704
	leaq	.LC166(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC325(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2867, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L704
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_gettable_params@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC213(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2872, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L705
	leaq	.LC326(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC327(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2873, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L705
	leaq	.LC166(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC325(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$2875, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L705
	leaq	-208(%rbp), %rax
	movl	$893470803, (%rax)
	movl	$3289397, 3(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-208(%rbp), %rdx
	leaq	.LC166(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC328(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2889, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L706
	movb	$0, -208(%rbp)
	movq	-64(%rbp), %rbx
	leaq	-320(%rbp), %rax
	leaq	-208(%rbp), %rdx
	leaq	.LC166(%rip), %rsi
	movl	$50, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC329(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2895, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L707
	leaq	.LC330(%rip), %rdi
	leaq	-208(%rbp), %rsi
	leaq	.LC331(%rip), %rcx
	leaq	.LC332(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2896, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L707
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_signature_md@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC333(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2903, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L708
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_signature_md@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC334(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2904, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L708
	call	EVP_sha256@PLT
	movq	%rax, %rsi
	movq	-152(%rbp), %rdi
	leaq	.LC335(%rip), %rcx
	leaq	.LC336(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$2905, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L708
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC294(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2912, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L709
	movq	testpropq(%rip), %rcx
	movq	testctx(%rip), %rdx
	movq	-264(%rbp), %rdi
	leaq	.LC337(%rip), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC338(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2913, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L709
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_settable_params@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC213(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2922, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L710
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC339(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC340(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2923, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L710
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	leaq	.LC341(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2925, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L710
	leaq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-256(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-256(%rbp), %rdx
	leaq	.LC339(%rip), %rsi
	movl	$48, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC342(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2934, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L711
	movl	$1, -28(%rbp)
	jmp	.L687
.L703:
	nop
	jmp	.L687
.L704:
	nop
	jmp	.L687
.L705:
	nop
	jmp	.L687
.L706:
	nop
	jmp	.L687
.L707:
	nop
	jmp	.L687
.L708:
	nop
	jmp	.L687
.L709:
	nop
	jmp	.L687
.L710:
	nop
	jmp	.L687
.L711:
	nop
.L687:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	test_EVP_PKEY_CTX_get_set_params, .-test_EVP_PKEY_CTX_get_set_params
	.section	.rodata
	.align 8
.LC343:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, \"DSA\", NULL)"
	.align 8
.LC344:
	.string	"EVP_PKEY_fromdata(pctx, &pkey, EVP_PKEY_KEYPAIR, params)"
	.text
	.type	test_DSA_get_set_params, @function
test_DSA_get_set_params:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -60(%rbp)
	movq	testctx(%rip), %rax
	leaq	.LC5(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC343(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2960, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2961, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2962, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2963, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2964, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2965, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2966, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	movq	-24(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2968, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L724
	movq	-32(%rbp), %rdx
	leaq	.LC34(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2969, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L724
	movq	-40(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2970, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L724
	movq	-48(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2971, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L724
	movq	-56(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$2973, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L724
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2976, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L725
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2979, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L726
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC344(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2980, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L726
	movq	-80(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$2984, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L727
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	test_EVP_PKEY_CTX_get_set_params
	movl	%eax, -60(%rbp)
	jmp	.L715
.L723:
	nop
	jmp	.L715
.L724:
	nop
	jmp	.L715
.L725:
	nop
	jmp	.L715
.L726:
	nop
	jmp	.L715
.L727:
	nop
.L715:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-60(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	test_DSA_get_set_params, .-test_DSA_get_set_params
	.type	test_DSA_priv_pub, @function
test_DSA_priv_pub:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	test_EVP_PKEY_ffc_priv_pub
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	test_DSA_priv_pub, .-test_DSA_priv_pub
	.section	.rodata
	.align 8
.LC345:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, \"RSA\", NULL)"
.LC346:
	.string	"n = BN_new()"
.LC347:
	.string	"e = BN_new()"
.LC348:
	.string	"d = BN_new()"
.LC349:
	.string	"n"
	.align 8
.LC350:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_N, n)"
.LC351:
	.string	"e"
	.align 8
.LC352:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_E, e)"
.LC353:
	.string	"d"
	.align 8
.LC354:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_D, d)"
	.text
	.type	test_RSA_get_set_params, @function
test_RSA_get_set_params:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -44(%rbp)
	movq	testctx(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC345(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3027, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L741
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3028, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L741
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC346(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3029, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L741
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC347(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3030, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L741
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC348(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3031, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L741
	movq	-24(%rbp), %rdx
	leaq	.LC349(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC350(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3033, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L742
	movq	-32(%rbp), %rdx
	leaq	.LC351(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC352(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3034, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L742
	movq	-40(%rbp), %rdx
	leaq	.LC353(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC354(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3035, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L742
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3037, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L743
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3040, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L744
	movq	-16(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC344(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3041, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L744
	movq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3045, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L745
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	test_EVP_PKEY_CTX_get_set_params
	movl	%eax, -44(%rbp)
	jmp	.L733
.L741:
	nop
	jmp	.L733
.L742:
	nop
	jmp	.L733
.L743:
	nop
	jmp	.L733
.L744:
	nop
	jmp	.L733
.L745:
	nop
.L733:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	test_RSA_get_set_params, .-test_RSA_get_set_params
	.section	.rodata
.LC355:
	.string	"key = load_example_rsa_key()"
	.align 8
.LC356:
	.string	"key_ctx = EVP_PKEY_CTX_new_from_pkey(0, key, 0)"
.LC357:
	.string	"pad-mode"
.LC358:
	.string	"mgf1-digest"
	.align 8
.LC359:
	.string	"EVP_PKEY_encrypt_init_ex(key_ctx, params)"
	.align 8
.LC360:
	.string	"EVP_PKEY_CTX_get_params(key_ctx, params)"
.LC361:
	.string	"OSSL_DIGEST_NAME_SHA2_256"
.LC362:
	.string	"oaepmd"
.LC363:
	.string	"OSSL_DIGEST_NAME_SHA1"
.LC364:
	.string	"mgf1md"
	.text
	.type	test_RSA_OAEP_set_get_params, @function
test_RSA_OAEP_set_get_params:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L747
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3069, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L748
.L747:
	call	load_example_rsa_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC355(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3071, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L757
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC356(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3072, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L757
	movl	$4, -28(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-28(%rbp), %rdx
	leaq	.LC357(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-304(%rbp), %rax
	leaq	.LC250(%rip), %rdx
	leaq	.LC166(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-304(%rbp), %rax
	leaq	.LC337(%rip), %rdx
	leaq	.LC358(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-256(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init_ex@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC359(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3086, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L758
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -50(%rbp)
	movq	$0, -42(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -82(%rbp)
	movq	$0, -74(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC166(%rip), %rsi
	movl	$30, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	.LC358(%rip), %rsi
	movl	$30, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC360(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L759
	leaq	.LC250(%rip), %rdi
	leaq	-64(%rbp), %rsi
	leaq	.LC361(%rip), %rcx
	leaq	.LC362(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3103, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L760
	leaq	.LC337(%rip), %rdi
	leaq	-96(%rbp), %rsi
	leaq	.LC363(%rip), %rcx
	leaq	.LC364(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3104, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L760
	movl	$1, -4(%rbp)
	jmp	.L751
.L757:
	nop
	jmp	.L751
.L758:
	nop
	jmp	.L751
.L759:
	nop
	jmp	.L751
.L760:
	nop
.L751:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
.L748:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_RSA_OAEP_set_get_params, .-test_RSA_OAEP_set_get_params
	.section	.rodata
	.align 8
.LC365:
	.string	"key_ctx = EVP_PKEY_CTX_new_from_pkey(testctx, key, NULL)"
	.align 8
.LC366:
	.string	"EVP_PKEY_encrypt_init(key_ctx)"
	.align 8
.LC367:
	.string	"EVP_PKEY_CTX_set_rsa_padding(key_ctx, RSA_PKCS1_OAEP_PADDING)"
.LC368:
	.string	"foo"
	.align 8
.LC369:
	.string	"EVP_PKEY_CTX_set0_rsa_oaep_label(key_ctx, OPENSSL_strdup(\"foo\"), 0)"
	.align 8
.LC370:
	.string	"EVP_PKEY_CTX_set0_rsa_oaep_label(key_ctx, NULL, 0)"
	.text
	.type	test_RSA_OAEP_set_null_label, @function
test_RSA_OAEP_set_null_label:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	call	load_example_rsa_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC355(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3124, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L769
	movq	testctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC365(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3125, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L769
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC366(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L769
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC367(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3129, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L770
	leaq	.LC10(%rip), %rcx
	leaq	.LC368(%rip), %rax
	movl	$3132, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_rsa_oaep_label@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC369(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L771
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_rsa_oaep_label@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC370(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3135, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L772
	movl	$1, -4(%rbp)
	jmp	.L764
.L769:
	nop
	jmp	.L764
.L770:
	nop
	jmp	.L764
.L771:
	nop
	jmp	.L764
.L772:
	nop
.L764:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	test_RSA_OAEP_set_null_label, .-test_RSA_OAEP_set_null_label
	.section	.rodata
.LC371:
	.string	"p = BN_dup(BN_value_one())"
.LC372:
	.string	"q = BN_dup(BN_value_one())"
.LC373:
	.string	"n = BN_dup(BN_value_one())"
.LC374:
	.string	"e = BN_dup(BN_value_one())"
.LC375:
	.string	"d = BN_dup(BN_value_one())"
.LC376:
	.string	"rsa = RSA_new()"
.LC377:
	.string	"ctx = EVP_MD_CTX_new()"
.LC378:
	.string	"RSA_set0_factors(rsa, p, q)"
.LC379:
	.string	"RSA_set0_key(rsa, n, e, d)"
	.align 8
.LC380:
	.string	"EVP_DigestSignInit(ctx, NULL, md, NULL, pkey)"
	.text
	.type	test_RSA_legacy, @function
test_RSA_legacy:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	call	EVP_sha256@PLT
	movq	%rax, -80(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L774
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3162, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L775
.L774:
	call	BN_value_one@PLT
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC371(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3164, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L785
	call	BN_value_one@PLT
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC372(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L785
	call	BN_value_one@PLT
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC373(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L785
	call	BN_value_one@PLT
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC374(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L785
	call	BN_value_one@PLT
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC375(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L785
	call	RSA_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC376(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L786
	call	EVP_PKEY_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3172, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L786
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC377(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L786
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC378(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3176, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L787
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC379(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L788
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L789
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC380(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L790
	movl	$1, -4(%rbp)
	jmp	.L778
.L785:
	nop
	jmp	.L778
.L786:
	nop
	jmp	.L778
.L787:
	nop
	jmp	.L778
.L788:
	nop
	jmp	.L778
.L789:
	nop
	jmp	.L778
.L790:
	nop
.L778:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L775:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	test_RSA_legacy, .-test_RSA_legacy
	.section	.rodata
.LC381:
	.string	"EVP_PKEY_encrypt_init(pctx)"
	.align 8
.LC382:
	.string	"EVP_PKEY_encrypt(pctx, cbuf, &clen, kMsg, sizeof(kMsg))"
.LC383:
	.string	"cbuf = OPENSSL_malloc(clen)"
	.align 8
.LC384:
	.string	"EVP_PKEY_encrypt(pctx, cbuf, &plen, kMsg, sizeof(kMsg))"
.LC385:
	.string	"EVP_PKEY_decrypt_init(pctx)"
	.align 8
.LC386:
	.string	"EVP_PKEY_decrypt(pctx, pbuf, &plen, cbuf, clen)"
.LC387:
	.string	"pbuf = OPENSSL_malloc(plen)"
.LC388:
	.string	"kMsg"
.LC389:
	.string	"pbuf"
	.text
	.type	test_RSA_encrypt, @function
test_RSA_encrypt:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	call	load_example_rsa_key
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3219, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L799
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC229(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3220, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L799
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC381(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3222, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L799
	leaq	kMsg(%rip), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC382(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3223, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L799
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$3224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC383(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3224, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L799
	leaq	kMsg(%rip), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC382(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3225, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L799
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	leaq	kMsg(%rip), %rcx
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC384(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3230, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L800
	call	test_openssl_errors@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC385(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3236, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L801
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC386(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3237, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L801
	movq	-56(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$3238, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC387(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3238, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L801
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC386(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3239, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L801
	movq	-56(%rbp), %r8
	movq	-32(%rbp), %rdi
	leaq	.LC388(%rip), %rcx
	leaq	.LC389(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	$4
	leaq	kMsg(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3240, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L801
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC381(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3241, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L801
	movl	$1, -4(%rbp)
	jmp	.L794
.L799:
	nop
	jmp	.L794
.L800:
	nop
	jmp	.L794
.L801:
	nop
.L794:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$3248, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$3249, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	test_RSA_encrypt, .-test_RSA_encrypt
	.section	.rodata
.LC390:
	.string	"ChaCha20-Poly1305"
	.align 8
.LC391:
	.string	"cipher = EVP_CIPHER_fetch(testctx, \"ChaCha20-Poly1305\", testpropq)"
	.align 8
.LC392:
	.string	"EVP_EncryptInit_ex(ctx, cipher, NULL, key, iv)"
	.align 8
.LC393:
	.string	"EVP_EncryptUpdate(ctx, ciphertext, &ctlen, msg, enc_offset)"
	.align 8
.LC394:
	.string	"EVP_EncryptUpdate(ctx, ciphertext + ctlen, &tmp, NULL, 0)"
.LC395:
	.string	"tmp"
	.align 8
.LC396:
	.string	"EVP_EncryptUpdate(ctx, ciphertext + ctlen, &tmp, msg + enc_offset, sizeof(msg) - enc_offset)"
.LC397:
	.string	"sizeof(msg)"
.LC398:
	.string	"ctlen += tmp"
	.align 8
.LC399:
	.string	"EVP_EncryptFinal(ctx, ciphertext + ctlen, &tmp)"
	.align 8
.LC400:
	.string	"EVP_DecryptInit_ex(ctx, cipher, NULL, key, iv)"
	.align 8
.LC401:
	.string	"EVP_DecryptUpdate(ctx, plaintext, &ptlen, ciphertext, dec_offset)"
	.align 8
.LC402:
	.string	"EVP_DecryptUpdate(ctx, plaintext + ptlen, &tmp, NULL, 0)"
	.align 8
.LC403:
	.string	"EVP_DecryptUpdate(ctx, plaintext + ptlen, &tmp, ciphertext + dec_offset, ctlen - dec_offset)"
.LC404:
	.string	"ptlen += tmp"
	.align 8
.LC405:
	.string	"EVP_DecryptFinal(ctx, plaintext + ptlen, &tmp)"
	.text
	.type	test_decrypt_null_chunks, @function
test_decrypt_null_chunks:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$1663540288323457296, %rax
	movabsq	$80533849890232600, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$506097522914230528, %rax
	movq	%rax, -76(%rbp)
	movl	$185207048, -68(%rbp)
	movabsq	$8367814970102019145, %rax
	movabsq	$2338620985787311464, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movabsq	$8315172586696762991, %rax
	movabsq	$8314057368378351660, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$8245940423762670624, %rax
	movabsq	$7598734095604020339, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$7562605, -80(%rbp)
	movl	$99, -300(%rbp)
	movl	$0, -12(%rbp)
	movl	$10, -28(%rbp)
	movl	$20, -32(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC390(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC391(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3274, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L809
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3275, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L809
	leaq	-76(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC392(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3276, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L809
	movl	-28(%rbp), %edi
	leaq	-128(%rbp), %rcx
	leaq	-292(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC393(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3278, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L809
	movl	-292(%rbp), %eax
	cltq
	leaq	-208(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-300(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC394(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3281, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L809
	movl	-300(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC395(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3283, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L809
	movl	-28(%rbp), %eax
	movl	$52, %edx
	subl	%eax, %edx
	movl	%edx, %edi
	movl	-28(%rbp), %eax
	cltq
	leaq	-128(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movl	-292(%rbp), %eax
	cltq
	leaq	-208(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-300(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC396(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3284, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L809
	movl	-292(%rbp), %edx
	movl	-300(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -292(%rbp)
	movl	-292(%rbp), %esi
	leaq	.LC397(%rip), %rcx
	leaq	.LC398(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$52, %r9d
	movl	%esi, %r8d
	movl	$3287, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L809
	movl	-292(%rbp), %eax
	cltq
	leaq	-208(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-300(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC399(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L809
	movl	-300(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC395(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3289, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L809
	movl	$99, -300(%rbp)
	leaq	-76(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC400(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L810
	movl	-32(%rbp), %edi
	leaq	-208(%rbp), %rcx
	leaq	-296(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC401(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L810
	movl	-296(%rbp), %eax
	cltq
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-300(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC402(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3301, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L810
	movl	-300(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC395(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3303, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L810
	movl	-292(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edi
	movl	-32(%rbp), %eax
	cltq
	leaq	-208(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movl	-296(%rbp), %eax
	cltq
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-300(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC403(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L810
	movl	-296(%rbp), %edx
	movl	-300(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -296(%rbp)
	movl	-296(%rbp), %esi
	leaq	.LC397(%rip), %rcx
	leaq	.LC404(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$52, %r9d
	movl	%esi, %r8d
	movl	$3307, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L810
	movl	-296(%rbp), %eax
	cltq
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-300(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC405(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3308, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L810
	movl	-300(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC395(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3309, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L810
	movl	-296(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-128(%rbp), %rdi
	leaq	.LC124(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	movl	$52, %r9d
	movq	%rdi, %r8
	movl	$3310, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L810
	movl	$1, -12(%rbp)
	jmp	.L805
.L809:
	nop
	jmp	.L805
.L810:
	nop
.L805:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	test_decrypt_null_chunks, .-test_decrypt_null_chunks
	.type	test_DH_priv_pub, @function
test_DH_priv_pub:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	test_EVP_PKEY_ffc_priv_pub
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	test_DH_priv_pub, .-test_DH_priv_pub
	.section	.rodata
.LC406:
	.string	"pubkey = BN_new()"
.LC407:
	.string	"BN_set_word(p, 9999)"
.LC408:
	.string	"BN_set_word(g, 2)"
.LC409:
	.string	"BN_set_word(pubkey, 4321)"
.LC410:
	.string	"noqdh = DH_new()"
	.align 8
.LC411:
	.string	"DH_set0_pqg(noqdh, p, NULL, g)"
	.align 8
.LC412:
	.string	"DH_set0_key(noqdh, pubkey, NULL)"
.LC413:
	.string	"x942dh"
.LC414:
	.string	"noqdh"
.LC415:
	.string	"pkey1"
.LC416:
	.string	"pkey2"
	.align 8
.LC417:
	.string	"DH_set0_key(x942dh, pubkey, NULL)"
	.align 8
.LC418:
	.string	"EVP_PKEY_set1_DH(pkey1, x942dh)"
.LC419:
	.string	"EVP_PKEY_DHX"
.LC420:
	.string	"EVP_PKEY_get_id(pkey1)"
	.align 8
.LC421:
	.string	"EVP_PKEY_get_bn_param(pkey1, OSSL_PKEY_PARAM_PUB_KEY, &pubkey)"
.LC422:
	.string	"pubkey"
	.align 8
.LC423:
	.string	"EVP_PKEY_set1_DH(pkey2, noqdh)"
.LC424:
	.string	"EVP_PKEY_DH"
.LC425:
	.string	"EVP_PKEY_get_id(pkey2)"
	.align 8
.LC426:
	.string	"EVP_PKEY_get_octet_string_param(pkey2, OSSL_PKEY_PARAM_PUB_KEY, pub, sizeof(pub), &len)"
	.text
	.type	test_EVP_PKEY_set1_DH, @function
test_EVP_PKEY_set1_DH:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -328(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3342, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L828
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3343, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L828
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC406(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3344, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L828
	movq	-48(%rbp), %rax
	movl	$9999, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC407(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3345, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L828
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC408(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3346, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L828
	movq	-64(%rbp), %rax
	movl	$4321, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC409(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3347, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L828
	call	DH_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC410(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3348, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L828
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC411(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3349, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L828
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC412(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3350, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L828
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC406(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3351, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L828
	movq	-64(%rbp), %rax
	movl	$4321, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC409(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L828
	movq	$0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	call	DH_get_2048_256@PLT
	movq	%rax, -8(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC413(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3359, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L829
	movq	-16(%rbp), %rax
	leaq	.LC414(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L829
	movq	-24(%rbp), %rax
	leaq	.LC415(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3361, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L829
	movq	-32(%rbp), %rax
	leaq	.LC416(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3362, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L829
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC417(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3363, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L829
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_DH@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC418(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L830
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %esi
	leaq	.LC419(%rip), %rcx
	leaq	.LC420(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$920, %r9d
	movl	%esi, %r8d
	movl	$3368, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L830
	leaq	-64(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC421(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3371, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L831
	movq	-64(%rbp), %rax
	leaq	.LC422(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3373, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L831
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_DH@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC423(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3376, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L832
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %esi
	leaq	.LC424(%rip), %rcx
	leaq	.LC425(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$28, %r9d
	movl	%esi, %r8d
	movl	$3377, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L832
	leaq	-328(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	.LC43(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$256, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC426(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L833
	movq	-328(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3383, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	je	.L833
	movl	$1, -36(%rbp)
	jmp	.L816
.L828:
	nop
	jmp	.L816
.L829:
	nop
	jmp	.L816
.L830:
	nop
	jmp	.L816
.L831:
	nop
	jmp	.L816
.L832:
	nop
	jmp	.L816
.L833:
	nop
.L816:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	test_EVP_PKEY_set1_DH, .-test_EVP_PKEY_set1_DH
	.section	.rodata
	.align 8
.LC427:
	.string	"ctx = EVP_PKEY_CTX_new_id(EVP_PKEY_RSA, NULL)"
.LC428:
	.string	"tkey = EVP_PKEY_new()"
	.align 8
.LC429:
	.string	"EVP_PKEY_set_type(tkey, EVP_PKEY_RSA)"
	.align 8
.LC430:
	.string	"ctx = EVP_PKEY_CTX_new(tkey, NULL)"
.LC431:
	.string	"EVP_PKEY_keygen_init(ctx)"
.LC432:
	.string	"EVP_PKEY_keygen(ctx, &pkey)"
	.text
	.type	test_keygen_with_empty_template, @function
test_keygen_with_empty_template:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L835
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3416, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L846
.L835:
	cmpl	$0, -36(%rbp)
	je	.L837
	cmpl	$1, -36(%rbp)
	je	.L838
	jmp	.L839
.L837:
	movl	$0, %esi
	movl	$6, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC427(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3421, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L847
	jmp	.L841
.L838:
	call	EVP_PKEY_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC428(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3426, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L848
	movq	-16(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC429(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3427, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L848
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC430(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3428, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L848
	jmp	.L839
.L847:
	nop
.L839:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC431(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3433, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L849
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC432(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3434, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L849
	movl	$1, -20(%rbp)
	jmp	.L841
.L848:
	nop
	jmp	.L841
.L849:
	nop
.L841:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
.L846:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	test_keygen_with_empty_template, .-test_keygen_with_empty_template
	.section	.rodata
.LC433:
	.string	"tmpctx"
.LC434:
	.string	"null"
.LC435:
	.string	"tmpnullprov"
.LC436:
	.string	"No test for case %d"
.LC437:
	.string	"pctx"
	.text
	.type	test_pkey_ctx_fail_without_provider, @function
test_pkey_ctx_fail_without_provider:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC433(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3462, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L863
	leaq	.LC434(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC435(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3466, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L864
	cmpl	$0, -52(%rbp)
	je	.L854
	cmpl	$1, -52(%rbp)
	je	.L855
	jmp	.L862
.L854:
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L857
.L855:
	leaq	.LC226(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L857
.L862:
	movl	-52(%rbp), %eax
	leaq	.LC436(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3494, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L852
.L857:
	leaq	.LC264(%rip), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L858
	movq	-16(%rbp), %rax
	leaq	.LC437(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3499, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	sete	%al
	jmp	.L859
.L858:
	movq	-16(%rbp), %rax
	leaq	.LC437(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3499, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	sete	%al
.L859:
	testb	%al, %al
	jne	.L865
	movl	$1, -32(%rbp)
	jmp	.L852
.L863:
	nop
	jmp	.L852
.L864:
	nop
	jmp	.L852
.L865:
	nop
.L852:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	test_pkey_ctx_fail_without_provider, .-test_pkey_ctx_fail_without_provider
	.section	.rodata
.LC438:
	.string	"sizeof(seed) % step"
.LC439:
	.string	"TEST-RAND"
	.align 8
.LC440:
	.string	"rand = EVP_RAND_fetch(testctx, \"TEST-RAND\", testpropq)"
.LC441:
	.string	"test_entropy"
.LC442:
	.string	"max_request"
	.align 8
.LC443:
	.string	"EVP_RAND_CTX_set_params(ctx, params)"
	.align 8
.LC444:
	.string	"EVP_RAND_generate(ctx, out, sizeof(out), 0, 1, NULL, 0)"
.LC445:
	.string	"seed"
	.text
	.type	test_rand_agglomeration, @function
test_rand_agglomeration:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	leaq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$7, -180(%rbp)
	movl	-180(%rbp), %ebx
	movl	$65, %eax
	movl	$0, %edx
	divl	%ebx
	movl	%edx, %ecx
	movl	%ecx, %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC438(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3525, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L867
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC439(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC440(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3526, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L868
.L867:
	movl	$0, %eax
	jmp	.L873
.L868:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3530, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L870
	movl	$0, %eax
	jmp	.L873
.L870:
	leaq	-256(%rbp), %rax
	movl	$65, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-304(%rbp), %rax
	leaq	seed.24(%rip), %rdx
	leaq	.LC441(%rip), %rsi
	movl	$65, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	.LC442(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC443(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3538, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L871
	leaq	-256(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$65, %edx
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC444(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3539, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L871
	leaq	seed.24(%rip), %rdi
	leaq	.LC314(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	$65
	leaq	-256(%rbp), %rsi
	pushq	%rsi
	movl	$65, %r9d
	movq	%rdi, %r8
	movl	$3540, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L871
	movl	$1, %eax
	jmp	.L872
.L871:
	movl	$0, %eax
.L872:
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movl	-44(%rbp), %eax
.L873:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	test_rand_agglomeration, .-test_rand_agglomeration
	.section	.rodata
.LC446:
	.string	"aes-128-cbc"
.LC447:
	.string	"aes-128-ofb"
.LC448:
	.string	"aes-128-cfb"
.LC449:
	.string	"aes-128-gcm"
.LC450:
	.string	"aes-128-ccm"
.LC451:
	.string	"aes-128-ocb"
.LC452:
	.string	"type"
.LC453:
	.string	"(ctx = EVP_CIPHER_CTX_new())"
	.align 8
.LC454:
	.string	"EVP_EncryptInit_ex(ctx, type, NULL, key, init_iv)"
	.align 8
.LC455:
	.string	"EVP_EncryptUpdate(ctx, ciphertext, &len, msg, (int)sizeof(msg))"
	.align 8
.LC456:
	.string	"EVP_CIPHER_CTX_get_original_iv(ctx, oiv, sizeof(oiv))"
	.align 8
.LC457:
	.string	"EVP_CIPHER_CTX_get_updated_iv(ctx, iv, sizeof(iv))"
	.align 8
.LC458:
	.string	"EVP_EncryptFinal_ex(ctx, ciphertext, &len)"
.LC459:
	.string	"ivlen"
.LC460:
	.string	"oiv"
.LC461:
	.string	"init_iv"
.LC462:
	.string	"iv"
.LC463:
	.string	"ref_iv"
	.align 8
.LC464:
	.string	"EVP_EncryptInit_ex(ctx, NULL, NULL, NULL, NULL)"
	.text
	.type	test_evp_iv_aes, @function
test_evp_iv_aes:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movabsq	$-3366595465408986292, %rax
	movabsq	$6290814331038556901, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movabsq	$-9036301284508077737, %rax
	movabsq	$3785741965376705882, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movabsq	$-5083906734212960496, %rax
	movabsq	$6783111601232471688, %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movabsq	$7270088326074787446, %rax
	movabsq	$-184678439754701091, %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movabsq	$7846269823966635127, %rax
	movabsq	$-1341811017860748076, %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movabsq	$-9036301284508077737, %rax
	movq	%rax, -220(%rbp)
	movl	$-2121181862, -212(%rbp)
	movl	$-1384287913, -227(%rbp)
	movl	$-1734616147, -224(%rbp)
	movq	%rax, -239(%rbp)
	movl	$-2121181862, -231(%rbp)
	movl	$32, -244(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L875
	cmpl	$5, -260(%rbp)
	jg	.L875
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3583, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L914
.L875:
	cmpl	$11, -260(%rbp)
	je	.L877
	cmpl	$11, -260(%rbp)
	jg	.L878
	cmpl	$10, -260(%rbp)
	je	.L879
	cmpl	$10, -260(%rbp)
	jg	.L878
	cmpl	$9, -260(%rbp)
	je	.L880
	cmpl	$9, -260(%rbp)
	jg	.L878
	cmpl	$8, -260(%rbp)
	je	.L881
	cmpl	$8, -260(%rbp)
	jg	.L878
	cmpl	$7, -260(%rbp)
	je	.L882
	cmpl	$7, -260(%rbp)
	jg	.L878
	cmpl	$6, -260(%rbp)
	je	.L883
	cmpl	$6, -260(%rbp)
	jg	.L878
	cmpl	$5, -260(%rbp)
	je	.L884
	cmpl	$5, -260(%rbp)
	jg	.L878
	cmpl	$4, -260(%rbp)
	je	.L885
	cmpl	$4, -260(%rbp)
	jg	.L878
	cmpl	$3, -260(%rbp)
	je	.L886
	cmpl	$3, -260(%rbp)
	jg	.L878
	cmpl	$2, -260(%rbp)
	je	.L887
	cmpl	$2, -260(%rbp)
	jg	.L878
	cmpl	$0, -260(%rbp)
	je	.L888
	cmpl	$1, -260(%rbp)
	je	.L889
	jmp	.L878
.L888:
	call	EVP_aes_128_cbc@PLT
	movq	%rax, -40(%rbp)
.L883:
	cmpq	$0, -40(%rbp)
	jne	.L891
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC446(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
.L891:
	leaq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$16, -32(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L892
.L889:
	call	EVP_aes_128_ofb@PLT
	movq	%rax, -40(%rbp)
.L882:
	cmpq	$0, -40(%rbp)
	jne	.L894
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC447(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
.L894:
	leaq	-192(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$16, -32(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L892
.L887:
	call	EVP_aes_128_cfb128@PLT
	movq	%rax, -40(%rbp)
.L881:
	cmpq	$0, -40(%rbp)
	jne	.L896
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC448(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
.L896:
	leaq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$16, -32(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L892
.L886:
	call	EVP_aes_128_gcm@PLT
	movq	%rax, -40(%rbp)
.L880:
	cmpq	$0, -40(%rbp)
	jne	.L898
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC449(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
.L898:
	leaq	-220(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$12, -32(%rbp)
	jmp	.L892
.L885:
	call	EVP_aes_128_ccm@PLT
	movq	%rax, -40(%rbp)
.L879:
	cmpq	$0, -40(%rbp)
	jne	.L900
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC450(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
.L900:
	leaq	-227(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$7, -32(%rbp)
	jmp	.L892
.L884:
	call	EVP_aes_128_ocb@PLT
	movq	%rax, -40(%rbp)
.L877:
	cmpq	$0, -40(%rbp)
	jne	.L902
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC451(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
.L902:
	leaq	-239(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$12, -32(%rbp)
	jmp	.L892
.L878:
	movl	$0, %eax
	jmp	.L914
.L892:
	movq	-40(%rbp), %rax
	leaq	.LC452(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3653, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L915
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3654, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L915
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC454(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3655, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L915
	leaq	msg.23(%rip), %rcx
	leaq	-244(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC455(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3656, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L915
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_original_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC456(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3658, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L915
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC457(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3659, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L915
	leaq	-244(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC458(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3660, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L915
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC459(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3664, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L916
	movq	-56(%rbp), %r8
	leaq	-96(%rbp), %rdi
	leaq	.LC460(%rip), %rcx
	leaq	.LC461(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-56(%rbp)
	leaq	-144(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3667, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L917
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC462(%rip), %rcx
	leaq	.LC463(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-56(%rbp)
	leaq	-160(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3668, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L917
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC464(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3672, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L918
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC457(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3673, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L918
	cmpl	$0, -44(%rbp)
	je	.L911
	movq	-56(%rbp), %r8
	leaq	-96(%rbp), %rdi
	leaq	.LC462(%rip), %rcx
	leaq	.LC461(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-56(%rbp)
	leaq	-160(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3676, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L912
	jmp	.L905
.L911:
	movq	-56(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC462(%rip), %rcx
	leaq	.LC463(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-56(%rbp)
	leaq	-160(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3679, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L919
.L912:
	movl	$1, -4(%rbp)
	jmp	.L905
.L915:
	nop
	jmp	.L905
.L916:
	nop
	jmp	.L905
.L917:
	nop
	jmp	.L905
.L918:
	nop
	jmp	.L905
.L919:
	nop
.L905:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	cmpl	$5, -260(%rbp)
	jle	.L913
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
.L913:
	movl	-4(%rbp), %eax
.L914:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	test_evp_iv_aes, .-test_evp_iv_aes
	.section	.rodata
	.align 8
.LC465:
	.string	"Test requires legacy provider to be loaded"
.LC466:
	.string	"des-cbc"
.LC467:
	.string	"des-ofb"
.LC468:
	.string	"des-cfb"
.LC469:
	.string	"des-ede3-cbc"
.LC470:
	.string	"des-ede3-ofb"
.LC471:
	.string	"des-ede3-cfb"
	.text
	.type	test_evp_iv_des, @function
test_evp_iv_des:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$32, -100(%rbp)
	movq	$0, -40(%rbp)
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L921
	cmpl	$2, -116(%rbp)
	jg	.L921
	leaq	.LC465(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3731, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L940
.L921:
	cmpl	$5, -116(%rbp)
	je	.L923
	cmpl	$5, -116(%rbp)
	jg	.L924
	cmpl	$4, -116(%rbp)
	je	.L925
	cmpl	$4, -116(%rbp)
	jg	.L924
	cmpl	$3, -116(%rbp)
	je	.L926
	cmpl	$3, -116(%rbp)
	jg	.L924
	cmpl	$2, -116(%rbp)
	je	.L927
	cmpl	$2, -116(%rbp)
	jg	.L924
	cmpl	$0, -116(%rbp)
	je	.L928
	cmpl	$1, -116(%rbp)
	je	.L929
	jmp	.L924
.L928:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC466(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	leaq	cbc_state_des.22(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L930
.L929:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC467(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	leaq	ofb_state_des.21(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L930
.L927:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC468(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	leaq	cfb_state_des.20(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L930
.L926:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC469(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	leaq	cbc_state_3des.19(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L930
.L925:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC470(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	leaq	ofb_state_3des.18(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L930
.L923:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC471(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	leaq	cfb_state_3des.17(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L930
.L924:
	movl	$0, %eax
	jmp	.L940
.L930:
	movq	-40(%rbp), %rax
	leaq	.LC452(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3768, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L941
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3769, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L941
	leaq	init_iv.15(%rip), %rcx
	leaq	key.16(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC454(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3770, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L941
	leaq	msg.14(%rip), %rcx
	leaq	-100(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC455(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3771, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L941
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_original_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC456(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3773, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L941
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC457(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3774, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L941
	leaq	-100(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC458(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3775, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L941
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC459(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3779, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L942
	movq	-48(%rbp), %rdi
	leaq	init_iv.15(%rip), %r8
	leaq	.LC460(%rip), %rcx
	leaq	.LC461(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-48(%rbp)
	leaq	-88(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$3782, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L943
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC462(%rip), %rcx
	leaq	.LC463(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-48(%rbp)
	leaq	-96(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3783, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L943
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC464(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3786, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L944
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC457(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3787, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L944
	movq	-48(%rbp), %rdi
	leaq	init_iv.15(%rip), %r8
	leaq	.LC462(%rip), %rcx
	leaq	.LC461(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-48(%rbp)
	leaq	-96(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$3789, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L945
	movl	$1, -4(%rbp)
	jmp	.L933
.L941:
	nop
	jmp	.L933
.L942:
	nop
	jmp	.L933
.L943:
	nop
	jmp	.L933
.L944:
	nop
	jmp	.L933
.L945:
	nop
.L933:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
.L940:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	test_evp_iv_des, .-test_evp_iv_des
	.section	.rodata
	.align 8
.LC472:
	.string	"cipher = EVP_CIPHER_fetch(testctx, algos[idx], testpropq)"
.LC473:
	.string	"16"
	.align 8
.LC474:
	.string	"EVP_CIPHER_get_key_length(cipher)"
.LC475:
	.string	"ivlen[idx]"
	.align 8
.LC476:
	.string	"EVP_CIPHER_get_iv_length(cipher)"
	.text
	.type	test_evp_bf_default_keylen, @function
test_evp_bf_default_keylen:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -48(%rbp)
	movl	$8, -44(%rbp)
	movl	$8, -40(%rbp)
	movl	$8, -36(%rbp)
	movq	$0, -32(%rbp)
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L947
	leaq	.LC465(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L952
.L947:
	movq	testpropq(%rip), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	algos.13(%rip), %rax
	movq	(%rcx,%rax), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC472(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3813, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L953
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, %esi
	leaq	.LC473(%rip), %rcx
	leaq	.LC474(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$3814, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L953
	movl	-52(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %esi
	leaq	.LC475(%rip), %rcx
	leaq	.LC476(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$3815, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L953
	movl	$1, -20(%rbp)
	jmp	.L951
.L953:
	nop
.L951:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-20(%rbp), %eax
.L952:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	test_evp_bf_default_keylen, .-test_evp_bf_default_keylen
	.data
	.align 32
	.type	ecpub_nids, @object
	.size	ecpub_nids, 52
ecpub_nids:
	.long	927
	.long	415
	.long	715
	.long	716
	.long	726
	.long	727
	.long	730
	.long	731
	.long	732
	.long	733
	.long	734
	.long	931
	.long	933
	.section	.rodata
	.align 8
.LC477:
	.string	"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ctx, nid)"
.LC478:
	.string	"1024"
.LC479:
	.string	"savelen"
.LC480:
	.string	"(pkey2 = EVP_PKEY_new())"
	.align 8
.LC481:
	.string	"(ec = EC_KEY_new_by_curve_name(nid))"
	.align 8
.LC482:
	.string	"EVP_PKEY_assign_EC_KEY(pkey2, ec)"
	.align 8
.LC483:
	.string	"d2i_PublicKey(EVP_PKEY_EC, &pkey2, &q, savelen)"
.LC484:
	.string	"EVP_PKEY_eq(pkey, pkey2)"
	.text
	.type	test_ecpub, @function
test_ecpub:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movl	%edi, -1108(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -1088(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -1104(%rbp)
	movq	$0, -16(%rbp)
	movq	nullprov(%rip), %rax
	testq	%rax, %rax
	je	.L955
	leaq	.LC112(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3851, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L968
.L955:
	movl	-1108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ecpub_nids(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, %esi
	movl	$408, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3856, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L969
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC431(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3857, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L969
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC477(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3858, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L969
	leaq	-1088(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC432(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3859, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L969
	movq	-1088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_PublicKey@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3863, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L970
	movl	-32(%rbp), %esi
	leaq	.LC478(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1024, %r9d
	movl	%esi, %r8d
	movl	$3864, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L970
	leaq	-1072(%rbp), %rax
	movq	%rax, -1080(%rbp)
	movq	-1088(%rbp), %rax
	leaq	-1080(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PublicKey@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3868, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L971
	movl	-36(%rbp), %edi
	movl	-32(%rbp), %esi
	leaq	.LC479(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$3869, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L971
	leaq	-1072(%rbp), %rax
	movq	%rax, -1096(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	leaq	.LC480(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3875, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L972
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	EC_KEY_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC481(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3876, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L972
	movq	-1104(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC482(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3877, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L972
	movq	$0, -16(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-1096(%rbp), %rdx
	leaq	-1104(%rbp), %rax
	movq	%rax, %rsi
	movl	$408, %edi
	call	d2i_PublicKey@PLT
	movq	%rax, %rcx
	leaq	.LC483(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$3881, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L973
	movq	-1104(%rbp), %rdx
	movq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC484(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3884, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L974
	movl	$1, -4(%rbp)
	jmp	.L959
.L969:
	nop
	jmp	.L959
.L970:
	nop
	jmp	.L959
.L971:
	nop
	jmp	.L959
.L972:
	nop
	jmp	.L959
.L973:
	nop
	jmp	.L959
.L974:
	nop
.L959:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	-4(%rbp), %eax
.L968:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	test_ecpub, .-test_ecpub
	.section	.rodata
.LC485:
	.string	"RSA-PSS"
	.align 8
.LC486:
	.string	"(ctx = EVP_PKEY_CTX_new_from_name(testctx, \"RSA-PSS\", testpropq))"
	.align 8
.LC487:
	.string	"EVP_PKEY_CTX_set_rsa_keygen_bits(ctx, 512)"
	.align 8
.LC488:
	.string	"EVP_PKEY_CTX_set_rsa_pss_keygen_md(ctx, md)"
	.text
	.type	test_EVP_rsa_pss_with_keygen_bits, @function
test_EVP_rsa_pss_with_keygen_bits:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC336(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3909, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L976
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC485(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC486(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3910, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L976
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC431(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3911, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L976
	movq	-8(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_bits@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC487(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3912, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L976
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_keygen_md@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC488(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3913, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L976
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC432(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3914, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L976
	movl	$1, %eax
	jmp	.L977
.L976:
	movl	$0, %eax
.L977:
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	test_EVP_rsa_pss_with_keygen_bits, .-test_EVP_rsa_pss_with_keygen_bits
	.section	.rodata
	.align 8
.LC489:
	.string	"sha256 = EVP_MD_fetch(testctx, \"sha256\", NULL)"
.LC490:
	.string	"sha256_ctx = EVP_MD_CTX_new()"
	.align 8
.LC491:
	.string	"EVP_DigestSignInit(sha256_ctx, &pkey_ctx, sha256, NULL, pkey)"
	.align 8
.LC492:
	.string	"EVP_PKEY_CTX_set_rsa_padding(pkey_ctx, RSA_PKCS1_PSS_PADDING)"
	.align 8
.LC493:
	.string	"EVP_PKEY_CTX_set_rsa_pss_saltlen(pkey_ctx, test_value)"
	.align 8
.LC494:
	.string	"EVP_PKEY_CTX_get_rsa_pss_saltlen(pkey_ctx, &saltlen)"
.LC495:
	.string	"test_value"
.LC496:
	.string	"saltlen"
	.text
	.type	test_EVP_rsa_pss_set_saltlen, @function
test_EVP_rsa_pss_set_saltlen:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$9999, -52(%rbp)
	movl	$32, -36(%rbp)
	call	load_example_rsa_key
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3932, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L980
	movq	testctx(%rip), %rax
	leaq	.LC12(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC489(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3933, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L980
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC490(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3934, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L980
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC491(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3935, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L980
	movq	-48(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC492(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3936, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L980
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC493(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3937, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L980
	movq	-48(%rbp), %rax
	leaq	-52(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_pss_saltlen@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC494(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3938, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L980
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edi
	leaq	.LC495(%rip), %rcx
	leaq	.LC496(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$3939, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L980
	movl	$1, %eax
	jmp	.L981
.L980:
	movl	$0, %eax
.L981:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	test_EVP_rsa_pss_set_saltlen, .-test_EVP_rsa_pss_set_saltlen
	.data
	.align 4
	.type	success, @object
	.size	success, 4
success:
	.long	1
	.section	.rodata
.LC497:
	.string	"AES-128-CBC"
.LC498:
	.string	"aes128"
	.text
	.type	md_names, @function
md_names:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC497(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC498(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3955, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L984
	movl	$0, success(%rip)
.L984:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	md_names, .-md_names
	.section	.rodata
	.align 8
.LC499:
	.string	"EVP_MD_names_do_all(sha256, md_names, ctx)"
.LC500:
	.string	"success"
	.text
	.type	test_names_do_all, @function
test_names_do_all:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3972, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L992
	leaq	.LC250(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$3976, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L993
	movq	-24(%rbp), %rdx
	leaq	md_names(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_names_do_all@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC499(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3983, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L994
	movl	success(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC500(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$3986, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L995
	movl	$1, -12(%rbp)
	jmp	.L987
.L992:
	nop
	jmp	.L987
.L993:
	nop
	jmp	.L987
.L994:
	nop
	jmp	.L987
.L995:
	nop
.L987:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	test_names_do_all, .-test_names_do_all
	.section	.rodata
.LC501:
	.string	"aes-256-gcm"
	.section	.data.rel.ro.local
	.align 32
	.type	evp_init_tests, @object
	.size	evp_init_tests, 768
evp_init_tests:
	.quad	.LC448
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbPlaintext
	.quad	cfbCiphertext
	.quad	0
	.quad	0
	.quad	16
	.quad	16
	.quad	0
	.long	1
	.long	0
	.long	1
	.zero	4
	.quad	.LC501
	.quad	kGCMDefaultKey
	.quad	iGCMDefaultIV
	.quad	gcmDefaultPlaintext
	.quad	gcmDefaultCiphertext
	.quad	gcmDefaultTag
	.quad	12
	.quad	16
	.quad	16
	.quad	16
	.long	1
	.long	0
	.long	1
	.zero	4
	.quad	.LC448
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbPlaintext
	.quad	cfbCiphertext
	.quad	0
	.quad	0
	.quad	16
	.quad	16
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.quad	.LC501
	.quad	kGCMDefaultKey
	.quad	iGCMDefaultIV
	.quad	gcmDefaultPlaintext
	.quad	gcmDefaultCiphertext
	.quad	gcmDefaultTag
	.quad	12
	.quad	16
	.quad	16
	.quad	16
	.long	0
	.long	0
	.long	1
	.zero	4
	.quad	.LC448
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbCiphertext
	.quad	cfbPlaintext
	.quad	0
	.quad	0
	.quad	16
	.quad	16
	.quad	0
	.long	1
	.long	1
	.long	0
	.zero	4
	.quad	.LC501
	.quad	kGCMDefaultKey
	.quad	iGCMDefaultIV
	.quad	gcmDefaultCiphertext
	.quad	gcmDefaultPlaintext
	.quad	gcmDefaultTag
	.quad	12
	.quad	16
	.quad	16
	.quad	16
	.long	1
	.long	1
	.long	0
	.zero	4
	.quad	.LC448
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbCiphertext
	.quad	cfbPlaintext
	.quad	0
	.quad	0
	.quad	16
	.quad	16
	.quad	0
	.long	0
	.long	1
	.long	0
	.zero	4
	.quad	.LC501
	.quad	kGCMDefaultKey
	.quad	iGCMDefaultIV
	.quad	gcmDefaultCiphertext
	.quad	gcmDefaultPlaintext
	.quad	gcmDefaultTag
	.quad	12
	.quad	16
	.quad	16
	.quad	16
	.long	0
	.long	1
	.long	0
	.zero	4
	.align 32
	.type	evp_reinit_tests, @object
	.size	evp_reinit_tests, 384
evp_reinit_tests:
	.quad	.LC448
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbPlaintext_partial
	.quad	cfbCiphertext_partial
	.quad	0
	.quad	0
	.quad	24
	.quad	24
	.quad	0
	.long	0
	.long	1
	.long	0
	.zero	4
	.quad	.LC448
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbCiphertext_partial
	.quad	cfbPlaintext_partial
	.quad	0
	.quad	0
	.quad	24
	.quad	24
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	.LC447
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	cfbPlaintext_partial
	.quad	ofbCiphertext_partial
	.quad	0
	.quad	0
	.quad	24
	.quad	24
	.quad	0
	.long	0
	.long	1
	.long	0
	.zero	4
	.quad	.LC447
	.quad	kCFBDefaultKey
	.quad	iCFBIV
	.quad	ofbCiphertext_partial
	.quad	cfbPlaintext_partial
	.quad	0
	.quad	0
	.quad	24
	.quad	24
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.section	.rodata
	.align 8
.LC502:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, t->ivlen, NULL)"
	.align 8
.LC503:
	.string	"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, t->iv, -1)"
	.text
	.type	evp_init_seq_set_iv, @function
evp_init_seq_set_iv:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L997
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC502(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4088, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L1001
.L997:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC503(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4091, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1002
	movl	$1, -4(%rbp)
	jmp	.L998
.L1001:
	nop
	jmp	.L998
.L1002:
	nop
.L998:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	evp_init_seq_set_iv, .-evp_init_seq_set_iv
	.section	.rodata
.LC504:
	.string	"CTX_ALLOC"
	.align 8
.LC505:
	.string	"type = EVP_CIPHER_fetch(testctx, t->cipher, testpropq)"
.LC506:
	.string	"CIPHER_FETCH"
	.align 8
.LC507:
	.string	"EVP_CipherInit_ex(ctx, type, NULL, NULL, NULL, t->initenc)"
.LC508:
	.string	"EMPTY_ENC_INIT"
	.align 8
.LC509:
	.string	"EVP_CIPHER_CTX_set_padding(ctx, 0)"
.LC510:
	.string	"PADDING"
	.align 8
.LC511:
	.string	"EVP_CipherInit_ex(ctx, NULL, NULL, t->key, NULL, -1)"
.LC512:
	.string	"KEY_INIT (before iv)"
.LC513:
	.string	"IV_INIT"
.LC514:
	.string	"KEY_INIT (after iv)"
	.align 8
.LC515:
	.string	"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, t->finalenc)"
.LC516:
	.string	"FINAL_ENC_INIT"
	.align 8
.LC517:
	.string	"EVP_CipherUpdate(ctx, outbuf, &outlen1, t->input, t->inlen)"
.LC518:
	.string	"CIPHER_UPDATE"
	.align 8
.LC519:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, t->taglen, (void *)t->tag)"
.LC520:
	.string	"SET_TAG"
	.align 8
.LC521:
	.string	"EVP_CipherFinal_ex(ctx, outbuf + outlen1, &outlen2)"
.LC522:
	.string	"CIPHER_FINAL"
.LC523:
	.string	"outbuf"
.LC524:
	.string	"t->expected"
.LC525:
	.string	"WRONG_RESULT"
	.align 8
.LC526:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, taglen, tag)"
.LC527:
	.string	"GET_TAG"
.LC528:
	.string	"tag"
.LC529:
	.string	"t->tag"
.LC530:
	.string	"TAG_ERROR"
.LC531:
	.string	"evp_init_test %d: %s"
	.text
	.type	test_evp_init_seq, @function
test_evp_init_seq:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movl	%edi, -1108(%rbp)
	movl	$0, -4(%rbp)
	movl	-1108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	evp_init_tests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$16, -48(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1004
	leaq	.LC504(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1004:
	movq	testpropq(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC505(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4120, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1006
	leaq	.LC506(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1006:
	movq	-32(%rbp), %rax
	movl	84(%rax), %edx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC507(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1007
	leaq	.LC508(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1007:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1008
	leaq	.LC510(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1008:
	movq	-32(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	je	.L1009
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC511(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1009
	leaq	.LC512(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1009:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_init_seq_set_iv
	testl	%eax, %eax
	jne	.L1010
	leaq	.LC513(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1010:
	movq	-32(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jne	.L1011
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC511(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1011
	leaq	.LC514(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1011:
	movq	-32(%rbp), %rax
	movl	88(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC515(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4144, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1012
	leaq	.LC516(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1012:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-1088(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC517(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4148, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1013
	leaq	.LC518(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1013:
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L1014
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L1014
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC519(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4154, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L1014
	leaq	.LC520(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1014:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1088(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1015
	leaq	.LC522(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1015:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	64(%rax), %r8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	.LC523(%rip), %rcx
	leaq	.LC524(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1088(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4164, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1016
	leaq	.LC525(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1016:
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L1017
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L1017
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	-1104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC526(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4169, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L1018
	leaq	.LC527(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1018:
	movq	-32(%rbp), %rax
	movq	72(%rax), %r8
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	leaq	.LC528(%rip), %rcx
	leaq	.LC529(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-48(%rbp)
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4173, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1017
	leaq	.LC530(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1005
.L1017:
	movl	$1, -4(%rbp)
.L1005:
	cmpq	$0, -24(%rbp)
	je	.L1019
	movq	-24(%rbp), %rcx
	movl	-1108(%rbp), %eax
	leaq	.LC531(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4181, %esi
	movl	$0, %eax
	call	test_info@PLT
.L1019:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	test_evp_init_seq, .-test_evp_init_seq
	.section	.rodata
	.align 8
.LC532:
	.string	"EVP_CipherInit_ex2(ctx, type, t->key, t->iv, t->initenc, NULL)"
	.align 8
.LC533:
	.string	"EVP_CipherUpdate(ctx, outbuf1, &outlen1, t->input, t->inlen)"
	.align 8
.LC534:
	.string	"EVP_CipherFinal_ex(ctx, outbuf1, &outlen_final)"
.LC535:
	.string	"outbuf1"
	.align 8
.LC536:
	.string	"EVP_CipherInit_ex2(ctx, NULL, NULL, NULL, -1, NULL)"
	.align 8
.LC537:
	.string	"EVP_CipherUpdate(ctx, outbuf2, &outlen2, t->input, t->inlen)"
	.align 8
.LC538:
	.string	"EVP_CipherFinal_ex(ctx, outbuf2, &outlen_final)"
.LC539:
	.string	"outbuf2"
	.text
	.type	test_evp_reinit_seq, @function
test_evp_reinit_seq:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2112, %rsp
	movl	%edi, -2100(%rbp)
	movl	$0, -4(%rbp)
	movl	-2100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	evp_reinit_tests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4201, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1026
	movq	testpropq(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC505(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4202, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1026
	movq	-24(%rbp), %rax
	movl	84(%rax), %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC532(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-36(%rbp), %rdx
	leaq	-1072(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC533(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4206, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	leaq	-44(%rbp), %rdx
	leaq	-1072(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC534(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %r8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	.LC535(%rip), %rcx
	leaq	.LC524(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1072(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4209, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1026
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC536(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-2096(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC537(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4213, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	leaq	-44(%rbp), %rdx
	leaq	-2096(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC538(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %r8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	.LC539(%rip), %rcx
	leaq	.LC524(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-2096(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4216, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1026
	movl	$1, -4(%rbp)
	jmp	.L1024
.L1026:
	nop
.L1024:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	test_evp_reinit_seq, .-test_evp_reinit_seq
	.section	.data.rel.ro.local
	.align 32
	.type	evp_reset_tests, @object
	.size	evp_reset_tests, 80
evp_reset_tests:
	.quad	cfbPlaintext
	.quad	cfbCiphertext
	.quad	16
	.quad	16
	.long	1
	.zero	4
	.quad	cfbCiphertext
	.quad	cfbPlaintext
	.quad	16
	.quad	16
	.long	0
	.zero	4
	.section	.rodata
	.align 8
.LC540:
	.string	"type = EVP_CIPHER_fetch(testctx, \"aes-128-cfb\", testpropq)"
	.align 8
.LC541:
	.string	"EVP_CipherInit_ex(ctx, type, NULL, kCFBDefaultKey, iCFBIV, t->enc)"
.LC542:
	.string	"CIPHER_INIT"
	.align 8
.LC543:
	.string	"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, -1)"
.LC544:
	.string	"CIPHER_REINIT"
.LC545:
	.string	"CIPHER_UPDATE (reinit)"
.LC546:
	.string	"CIPHER_FINAL (reinit)"
.LC547:
	.string	"WRONG_RESULT (reinit)"
.LC548:
	.string	"test_evp_reset %d: %s"
	.text
	.type	test_evp_reset, @function
test_evp_reset:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movl	%edi, -1076(%rbp)
	movl	-1076(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	evp_reset_tests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4258, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1028
	leaq	.LC504(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1028:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC448(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC540(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1030
	leaq	.LC506(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1030:
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	leaq	iCFBIV(%rip), %rdi
	leaq	kCFBDefaultKey(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC541(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1031
	leaq	.LC542(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1031:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4270, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1032
	leaq	.LC510(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1032:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-44(%rbp), %rdx
	leaq	-1072(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC517(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1033
	leaq	.LC518(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1033:
	movl	-44(%rbp), %eax
	cltq
	leaq	-1072(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4278, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1034
	leaq	.LC522(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1034:
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %r8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.LC523(%rip), %rcx
	leaq	.LC524(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1072(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4282, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1035
	leaq	.LC525(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1035:
	movq	-40(%rbp), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC543(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1036
	leaq	.LC544(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1036:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-44(%rbp), %rdx
	leaq	-1072(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC517(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1037
	leaq	.LC545(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1037:
	movl	-44(%rbp), %eax
	cltq
	leaq	-1072(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1038
	leaq	.LC546(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1038:
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %r8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.LC523(%rip), %rcx
	leaq	.LC524(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1072(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4298, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1039
	leaq	.LC547(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1029
.L1039:
	movl	$1, -4(%rbp)
.L1029:
	cmpq	$0, -24(%rbp)
	je	.L1040
	movq	-24(%rbp), %rcx
	movl	-1076(%rbp), %eax
	leaq	.LC548(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4305, %esi
	movl	$0, %eax
	call	test_info@PLT
.L1040:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	test_evp_reset, .-test_evp_reset
	.section	.rodata
.LC549:
	.string	"aes-128-cfb1"
.LC550:
	.string	"aes-128-cfb8"
.LC551:
	.string	"aes-128-ctr"
	.section	.data.rel.ro.local
	.align 32
	.type	evp_updated_iv_tests, @object
	.size	evp_updated_iv_tests, 192
evp_updated_iv_tests:
	.quad	.LC448
	.long	1
	.zero	4
	.quad	.LC448
	.long	0
	.zero	4
	.quad	.LC549
	.long	1
	.zero	4
	.quad	.LC549
	.long	0
	.zero	4
	.quad	.LC550
	.long	1
	.zero	4
	.quad	.LC550
	.long	0
	.zero	4
	.quad	.LC447
	.long	1
	.zero	4
	.quad	.LC447
	.long	0
	.zero	4
	.quad	.LC551
	.long	1
	.zero	4
	.quad	.LC551
	.long	0
	.zero	4
	.quad	.LC446
	.long	1
	.zero	4
	.quad	.LC446
	.long	0
	.zero	4
	.section	.rodata
	.align 8
.LC552:
	.string	"cipher %s not supported, skipping"
	.align 8
.LC553:
	.string	"EVP_CipherUpdate(ctx, outbuf, &outlen1, cfbPlaintext, sizeof(cfbPlaintext))"
	.align 8
.LC554:
	.string	"EVP_CIPHER_CTX_get_updated_iv(ctx, updated_iv, sizeof(updated_iv))"
.LC555:
	.string	"CIPHER_CTX_GET_UPDATED_IV"
.LC556:
	.string	"iv_len"
.LC557:
	.string	"CIPHER_CTX_GET_IV_LEN"
.LC558:
	.string	"updated_iv"
.LC559:
	.string	"iCFBIV"
.LC560:
	.string	"IV_NOT_UPDATED"
.LC561:
	.string	"test_evp_updated_iv %d: %s"
	.text
	.type	test_evp_updated_iv, @function
test_evp_updated_iv:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movl	%edi, -1108(%rbp)
	movl	-1108(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	evp_updated_iv_tests(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4371, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1043
	leaq	.LC504(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1043:
	movq	testpropq(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1045
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC552(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4376, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L1046
.L1045:
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	leaq	iCFBIV(%rip), %rdi
	leaq	kCFBDefaultKey(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC541(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1047
	leaq	.LC542(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1047:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4384, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1048
	leaq	.LC510(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1048:
	leaq	cfbPlaintext(%rip), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-1088(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC553(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4388, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1049
	leaq	.LC518(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1049:
	leaq	-1104(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC554(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4392, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1050
	leaq	.LC555(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1050:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC556(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4397, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L1051
	leaq	.LC557(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1051:
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	leaq	iCFBIV(%rip), %rdi
	leaq	.LC558(%rip), %rcx
	leaq	.LC559(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$4401, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1052
	leaq	.LC560(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1052:
	movl	-48(%rbp), %eax
	cltq
	leaq	-1088(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-52(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4405, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1055
	leaq	.LC522(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1044
.L1055:
	nop
.L1046:
	movl	$1, -4(%rbp)
.L1044:
	cmpq	$0, -24(%rbp)
	je	.L1053
	movq	-24(%rbp), %rcx
	movl	-1108(%rbp), %eax
	leaq	.LC561(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4413, %esi
	movl	$0, %eax
	call	test_info@PLT
.L1053:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	test_evp_updated_iv, .-test_evp_updated_iv
	.section	.data.rel.ro.local
	.align 32
	.type	gcm_reinit_tests, @object
	.size	gcm_reinit_tests, 160
gcm_reinit_tests:
	.quad	iGCMResetIV1
	.quad	iGCMResetIV2
	.quad	gcmResetCiphertext1
	.quad	gcmResetCiphertext2
	.quad	gcmResetTag1
	.quad	gcmResetTag2
	.quad	8
	.quad	12
	.quad	60
	.quad	60
	.quad	iGCMResetIV2
	.quad	iGCMResetIV1
	.quad	gcmResetCiphertext2
	.quad	gcmResetCiphertext1
	.quad	gcmResetTag2
	.quad	gcmResetTag1
	.quad	12
	.quad	8
	.quad	60
	.quad	60
	.section	.rodata
	.align 8
.LC562:
	.string	"type = EVP_CIPHER_fetch(testctx, \"aes-256-gcm\", testpropq)"
	.align 8
.LC563:
	.string	"EVP_CipherInit_ex(ctx, type, NULL, NULL, NULL, 1)"
.LC564:
	.string	"ENC_INIT"
	.align 8
.LC565:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, t->ivlen1, NULL)"
.LC566:
	.string	"SET_IVLEN1"
	.align 8
.LC567:
	.string	"EVP_CipherInit_ex(ctx, NULL, NULL, kGCMResetKey, t->iv1, 1)"
.LC568:
	.string	"SET_IV1"
	.align 8
.LC569:
	.string	"EVP_CipherUpdate(ctx, NULL, &outlen3, gcmAAD, sizeof(gcmAAD))"
.LC570:
	.string	"AAD1"
	.align 8
.LC571:
	.string	"EVP_CipherUpdate(ctx, outbuf, &outlen1, gcmResetPlaintext, sizeof(gcmResetPlaintext))"
.LC572:
	.string	"CIPHER_UPDATE1"
.LC573:
	.string	"CIPHER_FINAL1"
.LC574:
	.string	"t->expected1"
.LC575:
	.string	"WRONG_RESULT1"
.LC576:
	.string	"GET_TAG1"
.LC577:
	.string	"t->tag1"
.LC578:
	.string	"TAG_ERROR1"
	.align 8
.LC579:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, t->ivlen2, NULL)"
.LC580:
	.string	"SET_IVLEN2"
	.align 8
.LC581:
	.string	"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, t->iv2, -1)"
.LC582:
	.string	"SET_IV2"
.LC583:
	.string	"AAD2"
.LC584:
	.string	"CIPHER_UPDATE2"
.LC585:
	.string	"CIPHER_FINAL2"
.LC586:
	.string	"t->expected2"
.LC587:
	.string	"WRONG_RESULT2"
.LC588:
	.string	"GET_TAG2"
.LC589:
	.string	"t->tag2"
.LC590:
	.string	"TAG_ERROR2"
	.text
	.type	test_gcm_reinit, @function
test_gcm_reinit:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movl	%edi, -1108(%rbp)
	movl	$0, -4(%rbp)
	movl	-1108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	gcm_reinit_tests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$16, -48(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4457, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1057
	leaq	.LC504(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1057:
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	leaq	.LC501(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC562(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4461, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1059
	leaq	.LC506(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1059:
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC563(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4465, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1060
	leaq	.LC564(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1060:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC565(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4469, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L1061
	leaq	.LC566(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1061:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	leaq	kGCMResetKey(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC567(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4473, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1062
	leaq	.LC568(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1062:
	leaq	gcmAAD(%rip), %rcx
	leaq	-60(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$20, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC569(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4477, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1063
	leaq	.LC570(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1063:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	leaq	gcmResetPlaintext(%rip), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-1088(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$60, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC571(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4482, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1064
	leaq	.LC572(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1064:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1088(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4487, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1065
	leaq	.LC573(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1065:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	64(%rax), %r8
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.LC523(%rip), %rcx
	leaq	.LC574(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1088(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4491, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1066
	leaq	.LC575(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1066:
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	-1104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC526(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4495, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L1067
	leaq	.LC576(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1067:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %r8
	leaq	.LC528(%rip), %rcx
	leaq	.LC577(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-48(%rbp)
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4499, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1068
	leaq	.LC578(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1068:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC579(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4504, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L1069
	leaq	.LC580(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1069:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC581(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4508, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1070
	leaq	.LC582(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1070:
	leaq	gcmAAD(%rip), %rcx
	leaq	-60(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$20, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC569(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4512, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1071
	leaq	.LC583(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1071:
	leaq	gcmResetPlaintext(%rip), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-1088(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$60, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC571(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4516, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1072
	leaq	.LC584(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1072:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1088(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4521, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1073
	leaq	.LC585(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1073:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	72(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	.LC523(%rip), %rcx
	leaq	.LC586(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	%rsi
	leaq	-1088(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4525, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1074
	leaq	.LC587(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1074:
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	-1104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC526(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4529, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L1075
	leaq	.LC588(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1075:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %r8
	leaq	.LC528(%rip), %rcx
	leaq	.LC589(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-48(%rbp)
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$4533, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1076
	leaq	.LC590(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1058
.L1076:
	movl	$1, -4(%rbp)
.L1058:
	cmpq	$0, -24(%rbp)
	je	.L1077
	movq	-24(%rbp), %rcx
	movl	-1108(%rbp), %eax
	leaq	.LC531(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4540, %esi
	movl	$0, %eax
	call	test_info@PLT
.L1077:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	test_gcm_reinit, .-test_gcm_reinit
	.section	.rodata
.LC591:
	.string	"AES-256-GCM"
.LC592:
	.string	"AES-256-OCB"
.LC593:
	.string	"AES-256-CCM"
	.section	.data.rel.local
	.align 16
	.type	ivlen_change_ciphers, @object
	.size	ivlen_change_ciphers, 24
ivlen_change_ciphers:
	.quad	.LC591
	.quad	.LC592
	.quad	.LC593
	.section	.rodata
	.align 8
.LC594:
	.string	"ciph = EVP_CIPHER_fetch(testctx, ivlen_change_ciphers[idx], testpropq)"
	.align 8
.LC595:
	.string	"EVP_CipherInit_ex(ctx, ciph, NULL, kGCMDefaultKey, iv, 1)"
	.align 8
.LC596:
	.string	"EVP_CipherUpdate(ctx, outbuf, &outlen, gcmDefaultPlaintext, sizeof(gcmDefaultPlaintext))"
	.align 8
.LC597:
	.string	"EVP_CIPHER_CTX_set_params(ctx, params)"
	.text
	.type	test_ivlen_change, @function
test_ivlen_change:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1216, %rsp
	movl	%edi, -1156(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm0, -1072(%rbp)
	movq	$13, -1144(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4569, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1088
	movq	testpropq(%rip), %rdx
	movl	-1156(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	ivlen_change_ciphers(%rip), %rax
	movq	(%rcx,%rax), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC594(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4572, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1089
	leaq	iv.12(%rip), %rcx
	leaq	kGCMDefaultKey(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC595(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4576, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1090
	leaq	gcmDefaultPlaintext(%rip), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC596(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4579, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1091
	leaq	-1216(%rbp), %rax
	leaq	-1144(%rbp), %rdx
	leaq	.LC459(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1216(%rbp), %rax
	movq	-1208(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1200(%rbp), %rax
	movq	-1192(%rbp), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC597(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4585, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1092
	call	ERR_set_mark@PLT
	leaq	gcmDefaultPlaintext(%rip), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC596(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4589, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L1086
	call	ERR_clear_last_mark@PLT
	jmp	.L1081
.L1086:
	call	ERR_pop_to_mark@PLT
	movl	$1, -4(%rbp)
	jmp	.L1081
.L1088:
	nop
	jmp	.L1081
.L1089:
	nop
	jmp	.L1081
.L1090:
	nop
	jmp	.L1081
.L1091:
	nop
	jmp	.L1081
.L1092:
	nop
.L1081:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	test_ivlen_change, .-test_ivlen_change
	.section	.rodata
.LC598:
	.string	"BF-ECB"
.LC599:
	.string	"CAST5-ECB"
.LC600:
	.string	"RC2-ECB"
.LC601:
	.string	"RC4"
	.section	.data.rel.local
	.align 32
	.type	keylen_change_ciphers, @object
	.size	keylen_change_ciphers, 40
keylen_change_ciphers:
	.quad	.LC598
	.quad	.LC599
	.quad	.LC600
	.quad	.LC601
	.quad	0
	.section	.rodata
	.align 8
.LC602:
	.string	"ciph = EVP_CIPHER_fetch(testctx, keylen_change_ciphers[idx], testpropq)"
	.align 8
.LC603:
	.string	"EVP_CipherInit_ex(ctx, ciph, NULL, key, NULL, 1)"
.LC604:
	.string	"keylen"
	.text
	.type	test_keylen_change, @function
test_keylen_change:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1216, %rsp
	movl	%edi, -1156(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm0, -1072(%rbp)
	movq	$12, -1144(%rbp)
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L1094
	leaq	.LC465(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$4638, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L1103
.L1094:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4640, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1104
	movq	testpropq(%rip), %rdx
	movl	-1156(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	keylen_change_ciphers(%rip), %rax
	movq	(%rcx,%rax), %rcx
	movq	testctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC602(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4643, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1105
	leaq	key.11(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC603(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4647, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1106
	leaq	gcmDefaultPlaintext(%rip), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC596(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4650, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1107
	leaq	-1216(%rbp), %rax
	leaq	-1144(%rbp), %rdx
	leaq	.LC604(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1216(%rbp), %rax
	movq	-1208(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1200(%rbp), %rax
	movq	-1192(%rbp), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC597(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4656, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1108
	call	ERR_set_mark@PLT
	leaq	gcmDefaultPlaintext(%rip), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC596(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4660, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L1102
	call	ERR_clear_last_mark@PLT
	jmp	.L1097
.L1102:
	call	ERR_pop_to_mark@PLT
	movl	$1, -4(%rbp)
	jmp	.L1097
.L1104:
	nop
	jmp	.L1097
.L1105:
	nop
	jmp	.L1097
.L1106:
	nop
	jmp	.L1097
.L1107:
	nop
	jmp	.L1097
.L1108:
	nop
.L1097:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
.L1103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	test_keylen_change, .-test_keylen_change
	.local	orig_pmeth
	.comm	orig_pmeth,8,8
	.type	custom_pmeth_init, @function
custom_pmeth_init:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_init@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	custom_pmeth_init, .-custom_pmeth_init
	.type	custom_pmeth_cleanup, @function
custom_pmeth_cleanup:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_cleanup@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	custom_pmeth_cleanup, .-custom_pmeth_cleanup
	.type	custom_pmeth_sign, @function
custom_pmeth_sign:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_sign@PLT
	movq	-8(%rbp), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	custom_pmeth_sign, .-custom_pmeth_sign
	.type	custom_pmeth_digestsign, @function
custom_pmeth_digestsign:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_digestsign@PLT
	movq	-8(%rbp), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	custom_pmeth_digestsign, .-custom_pmeth_digestsign
	.type	custom_pmeth_derive, @function
custom_pmeth_derive:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_derive@PLT
	movq	-8(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	custom_pmeth_derive, .-custom_pmeth_derive
	.type	custom_pmeth_copy, @function
custom_pmeth_copy:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_copy@PLT
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	custom_pmeth_copy, .-custom_pmeth_copy
	.local	ctrl_called
	.comm	ctrl_called,4,4
	.type	custom_pmeth_ctrl, @function
custom_pmeth_ctrl:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	orig_pmeth(%rip), %rax
	leaq	-8(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get_ctrl@PLT
	cmpl	$9999, -28(%rbp)
	jne	.L1121
	movl	$1, ctrl_called(%rip)
	movl	$1, %eax
	jmp	.L1123
.L1121:
	movq	-8(%rbp), %r8
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L1123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	custom_pmeth_ctrl, .-custom_pmeth_ctrl
	.section	.rodata
.LC605:
	.string	"Should not happen"
.LC606:
	.string	"evp_pkey_is_provided(pkey)"
	.align 8
.LC607:
	.string	"evp_pkey_copy_downgraded(&pkey, tmp)"
.LC608:
	.string	"evp_pkey_is_legacy(pkey)"
	.align 8
.LC609:
	.string	"orig_pmeth = EVP_PKEY_meth_find(id)"
.LC610:
	.string	"id"
.LC611:
	.string	"orig_id"
	.align 8
.LC612:
	.string	"custom_pmeth = EVP_PKEY_meth_new(id, orig_flags)"
	.align 8
.LC613:
	.string	"EVP_PKEY_meth_add0(custom_pmeth)"
	.align 8
.LC614:
	.string	"EVP_PKEY_CTX_ctrl(pctx, -1, -1, EVP_PKEY_CTRL_MY_COMMAND, 0, NULL)"
.LC615:
	.string	"ctrl_called"
	.align 8
.LC616:
	.string	"EVP_PKEY_derive_set_peer(pctx, pkey)"
	.align 8
.LC617:
	.string	"EVP_PKEY_derive(pctx, NULL, &reslen)"
.LC618:
	.string	"res = OPENSSL_malloc(reslen)"
	.align 8
.LC619:
	.string	"EVP_PKEY_derive(pctx, res, &reslen)"
.LC620:
	.string	"res"
	.align 8
.LC621:
	.string	"EVP_DigestSignInit(ctx, &pctx, md, NULL, pkey)"
	.align 8
.LC622:
	.string	"EVP_DigestSign(ctx, res, &reslen, msg, sizeof(msg))"
	.align 8
.LC623:
	.string	"EVP_DigestUpdate(ctx, msg, sizeof(msg))"
	.align 8
.LC624:
	.string	"EVP_DigestSignFinal(ctx, res, &reslen)"
	.text
	.type	test_custom_pmeth, @function
test_custom_pmeth:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$1819043144, -85(%rbp)
	movb	$111, -81(%rbp)
	call	EVP_sha256@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, ctrl_called(%rip)
	movq	testctx(%rip), %rax
	testq	%rax, %rax
	je	.L1125
	movl	$1, %eax
	jmp	.L1161
.L1125:
	cmpl	$11, -100(%rbp)
	je	.L1127
	cmpl	$11, -100(%rbp)
	jg	.L1128
	cmpl	$10, -100(%rbp)
	je	.L1129
	cmpl	$10, -100(%rbp)
	jg	.L1128
	cmpl	$9, -100(%rbp)
	je	.L1130
	cmpl	$9, -100(%rbp)
	jg	.L1128
	cmpl	$8, -100(%rbp)
	je	.L1131
	cmpl	$8, -100(%rbp)
	jg	.L1128
	cmpl	$7, -100(%rbp)
	je	.L1132
	cmpl	$7, -100(%rbp)
	jg	.L1128
	cmpl	$6, -100(%rbp)
	je	.L1133
	cmpl	$6, -100(%rbp)
	jg	.L1128
	cmpl	$5, -100(%rbp)
	je	.L1127
	cmpl	$5, -100(%rbp)
	jg	.L1128
	cmpl	$4, -100(%rbp)
	je	.L1129
	cmpl	$4, -100(%rbp)
	jg	.L1128
	cmpl	$3, -100(%rbp)
	je	.L1130
	cmpl	$3, -100(%rbp)
	jg	.L1128
	cmpl	$2, -100(%rbp)
	je	.L1131
	cmpl	$2, -100(%rbp)
	jg	.L1128
	cmpl	$0, -100(%rbp)
	je	.L1133
	cmpl	$1, -100(%rbp)
	je	.L1132
	jmp	.L1128
.L1133:
	movl	$6, -12(%rbp)
	call	load_example_rsa_key
	movq	%rax, -64(%rbp)
	jmp	.L1134
.L1132:
	movl	$116, -12(%rbp)
	call	load_example_dsa_key
	movq	%rax, -64(%rbp)
	jmp	.L1134
.L1131:
	movl	$408, -12(%rbp)
	call	load_example_ec_key
	movq	%rax, -64(%rbp)
	jmp	.L1134
.L1130:
	movl	$1087, -12(%rbp)
	movq	$0, -32(%rbp)
	call	load_example_ed25519_key
	movq	%rax, -64(%rbp)
	jmp	.L1134
.L1129:
	movl	$28, -12(%rbp)
	movl	$1, -36(%rbp)
	call	load_example_dh_key
	movq	%rax, -64(%rbp)
	jmp	.L1134
.L1127:
	movl	$1034, -12(%rbp)
	movl	$1, -36(%rbp)
	call	load_example_x25519_key
	movq	%rax, -64(%rbp)
	jmp	.L1134
.L1128:
	leaq	.LC605(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$4825, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L1135
.L1134:
	movq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4829, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1162
	cmpl	$5, -100(%rbp)
	jg	.L1137
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC606(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4833, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1138
	jmp	.L1135
.L1137:
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4840, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1139
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L1135
.L1139:
	movq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_copy_downgraded@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC607(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1140
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L1135
.L1140:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1141
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L1141
	movl	$1, %ecx
	jmp	.L1142
.L1141:
	movl	$0, %ecx
.L1142:
	leaq	.LC608(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$4849, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1163
.L1138:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_meth_find@PLT
	movq	%rax, orig_pmeth(%rip)
	movq	orig_pmeth(%rip), %rax
	leaq	.LC609(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4853, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1164
	movq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4854, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1164
	movq	orig_pmeth(%rip), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0_info@PLT
	movl	-68(%rbp), %esi
	movl	-12(%rbp), %edi
	leaq	.LC610(%rip), %rcx
	leaq	.LC611(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$4858, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1165
	movl	-72(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	EVP_PKEY_meth_new@PLT
	movq	%rax, custom_pmeth(%rip)
	movq	custom_pmeth(%rip), %rax
	leaq	.LC612(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4859, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1165
	cmpl	$1087, -12(%rbp)
	jne	.L1147
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_digestsign(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_digestsign@PLT
.L1147:
	cmpl	$28, -12(%rbp)
	je	.L1148
	cmpl	$1034, -12(%rbp)
	jne	.L1149
.L1148:
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_derive(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_derive@PLT
	jmp	.L1150
.L1149:
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_sign(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_sign@PLT
.L1150:
	cmpl	$1087, -12(%rbp)
	je	.L1151
	cmpl	$1034, -12(%rbp)
	je	.L1151
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_init(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_init@PLT
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_cleanup(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_cleanup@PLT
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_copy(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_copy@PLT
.L1151:
	movq	custom_pmeth(%rip), %rax
	leaq	custom_pmeth_ctrl(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_ctrl@PLT
	movq	custom_pmeth(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_add0@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC613(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4875, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1166
	cmpl	$0, -36(%rbp)
	je	.L1153
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC437(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4880, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1167
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC308(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4881, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1167
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$9999, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC614(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4882, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L1167
	movl	ctrl_called(%rip), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC615(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4885, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1167
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC616(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4886, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L1167
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC617(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4887, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L1167
	movq	-80(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$4888, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC618(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4888, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1167
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC619(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4889, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L1155
	jmp	.L1167
.L1153:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$4894, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4895, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1168
	movq	-24(%rbp), %rax
	leaq	.LC620(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4896, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1168
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC621(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4897, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1168
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$9999, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC614(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4898, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L1168
	movl	ctrl_called(%rip), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC615(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$4901, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1168
	cmpl	$1087, -12(%rbp)
	jne	.L1158
	leaq	-85(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC622(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4905, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1155
	jmp	.L1135
.L1158:
	leaq	-85(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC623(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4908, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1169
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC624(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$4909, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1169
.L1155:
	movl	$1, -16(%rbp)
	jmp	.L1135
.L1162:
	nop
	jmp	.L1135
.L1163:
	nop
	jmp	.L1135
.L1164:
	nop
	jmp	.L1135
.L1165:
	nop
	jmp	.L1135
.L1166:
	nop
	jmp	.L1135
.L1167:
	nop
	jmp	.L1135
.L1168:
	nop
	jmp	.L1135
.L1169:
	nop
.L1135:
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4916, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	cmpl	$0, -36(%rbp)
	je	.L1160
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L1160:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	custom_pmeth(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_remove@PLT
	movq	custom_pmeth(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_free@PLT
	movq	$0, custom_pmeth(%rip)
	movl	-16(%rbp), %eax
.L1161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	test_custom_pmeth, .-test_custom_pmeth
	.section	.rodata
.LC625:
	.string	"ciph"
	.text
	.type	test_evp_md_cipher_meth, @function
test_evp_md_cipher_meth:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	EVP_sha256@PLT
	movq	%rax, %rdi
	call	EVP_MD_meth_dup@PLT
	movq	%rax, -16(%rbp)
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_dup@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC336(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4933, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1175
	movq	-24(%rbp), %rax
	leaq	.LC625(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4933, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1175
	movl	$1, -4(%rbp)
	jmp	.L1173
.L1175:
	nop
.L1173:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_meth_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	test_evp_md_cipher_meth, .-test_evp_md_cipher_meth
	.local	custom_md_init_called
	.comm	custom_md_init_called,4,4
	.local	custom_md_cleanup_called
	.comm	custom_md_cleanup_called,4,4
	.type	custom_md_init, @function
custom_md_init:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1177
	movl	$0, %eax
	jmp	.L1178
.L1177:
	movl	custom_md_init_called(%rip), %eax
	addl	$1, %eax
	movl	%eax, custom_md_init_called(%rip)
	movl	$1, %eax
.L1178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	custom_md_init, .-custom_md_init
	.type	custom_md_cleanup, @function
custom_md_cleanup:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1180
	movl	$1, %eax
	jmp	.L1181
.L1180:
	movl	custom_md_cleanup_called(%rip), %eax
	addl	$1, %eax
	movl	%eax, custom_md_cleanup_called(%rip)
	movl	$1, %eax
.L1181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	custom_md_cleanup, .-custom_md_cleanup
	.section	.rodata
.LC626:
	.string	"Non-default libctx"
.LC627:
	.string	"custom-md"
.LC628:
	.string	"1.3.6.1.4.1.16604.998866.1"
.LC629:
	.string	"NID_undef"
.LC630:
	.string	"nid"
	.align 8
.LC631:
	.string	"EVP_MD_meth_set_init(tmp, custom_md_init)"
	.align 8
.LC632:
	.string	"EVP_MD_meth_set_cleanup(tmp, custom_md_cleanup)"
	.align 8
.LC633:
	.string	"EVP_MD_meth_set_app_datasize(tmp, sizeof(custom_dgst_ctx))"
	.align 8
.LC634:
	.string	"EVP_DigestInit_ex(mdctx, tmp, NULL)"
	.align 8
.LC635:
	.string	"EVP_DigestInit_ex(mdctx, EVP_sha256(), NULL)"
	.align 8
.LC636:
	.string	"EVP_DigestUpdate(mdctx, mess, strlen(mess))"
	.align 8
.LC637:
	.string	"EVP_DigestFinal_ex(mdctx, md_value, &md_len)"
.LC638:
	.string	"custom_md_init_called"
.LC639:
	.string	"custom_md_cleanup_called"
	.align 8
.LC640:
	.string	"OBJ_create(\"1.3.6.1.4.1.16604.998866.1\", \"custom-md\", \"custom-md\")"
.LC641:
	.string	"ERR_LIB_OBJ"
.LC642:
	.string	"ERR_GET_LIB(ERR_peek_error())"
.LC643:
	.string	"OBJ_R_OID_EXISTS"
	.align 8
.LC644:
	.string	"ERR_GET_REASON(ERR_get_error())"
.LC645:
	.base64	"KwYBBAGBgVy8+1IBAA=="
.LC646:
	.string	"OBJ_add_object(o)"
	.text
	.type	test_custom_md_meth, @function
test_custom_md_meth:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$8315137088797500756, %rax
	movq	%rax, -46(%rbp)
	movabsq	$2926244458099557, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
	movq	testctx(%rip), %rax
	testq	%rax, %rax
	je	.L1183
	leaq	.LC626(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$4991, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L1195
.L1183:
	movl	$0, custom_md_cleanup_called(%rip)
	movl	custom_md_cleanup_called(%rip), %eax
	movl	%eax, custom_md_init_called(%rip)
	leaq	.LC627(%rip), %rdx
	leaq	.LC627(%rip), %rcx
	leaq	.LC628(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %esi
	leaq	.LC629(%rip), %rcx
	leaq	.LC630(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$4996, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L1196
	movl	-32(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	EVP_MD_meth_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC395(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$4999, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1197
	leaq	custom_md_init(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC631(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5002, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1198
	leaq	custom_md_cleanup(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_cleanup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC632(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5003, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1198
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_app_datasize@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC633(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5004, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1198
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC294(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5009, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1199
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC634(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5015, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1199
	call	EVP_sha256@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC635(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5016, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1199
	leaq	-46(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-46(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC636(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5017, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1199
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC637(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5018, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1199
	movl	custom_md_init_called(%rip), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC638(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$5019, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1199
	movl	custom_md_cleanup_called(%rip), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC639(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$5020, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1199
	leaq	.LC627(%rip), %rdx
	leaq	.LC627(%rip), %rcx
	leaq	.LC628(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	movl	%eax, %esi
	leaq	.LC629(%rip), %rcx
	leaq	.LC640(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$5023, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1200
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, %esi
	leaq	.LC641(%rip), %rcx
	leaq	.LC642(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$5025, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1200
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC643(%rip), %rcx
	leaq	.LC644(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$102, %r9d
	movl	%esi, %r8d
	movl	$5026, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1200
	leaq	.LC627(%rip), %rcx
	leaq	.LC627(%rip), %rdx
	leaq	.LC645(%rip), %rsi
	movl	-32(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$12, %edx
	movl	%eax, %edi
	call	ASN1_OBJECT_create@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_add_object@PLT
	movl	%eax, %esi
	movl	-32(%rbp), %edi
	leaq	.LC630(%rip), %rcx
	leaq	.LC646(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$5032, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1201
	movl	$1, -28(%rbp)
	jmp	.L1186
.L1196:
	nop
	jmp	.L1186
.L1197:
	nop
	jmp	.L1186
.L1198:
	nop
	jmp	.L1186
.L1199:
	nop
	jmp	.L1186
.L1200:
	nop
	jmp	.L1186
.L1201:
	nop
.L1186:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_meth_free@PLT
	movl	-28(%rbp), %eax
.L1195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	test_custom_md_meth, .-test_custom_md_meth
	.local	custom_ciph_init_called
	.comm	custom_ciph_init_called,4,4
	.local	custom_ciph_cleanup_called
	.comm	custom_ciph_cleanup_called,4,4
	.type	custom_ciph_init, @function
custom_ciph_init:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1203
	movl	$0, %eax
	jmp	.L1204
.L1203:
	movl	custom_ciph_init_called(%rip), %eax
	addl	$1, %eax
	movl	%eax, custom_ciph_init_called(%rip)
	movl	$1, %eax
.L1204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	custom_ciph_init, .-custom_ciph_init
	.type	custom_ciph_cleanup, @function
custom_ciph_cleanup:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1206
	movl	$1, %eax
	jmp	.L1207
.L1206:
	movl	custom_ciph_cleanup_called(%rip), %eax
	addl	$1, %eax
	movl	%eax, custom_ciph_cleanup_called(%rip)
	movl	$1, %eax
.L1207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	custom_ciph_cleanup, .-custom_ciph_cleanup
	.section	.rodata
.LC647:
	.string	"custom-ciph"
.LC648:
	.string	"1.3.6.1.4.1.16604.998866.2"
	.align 8
.LC649:
	.string	"EVP_CIPHER_meth_set_init(tmp, custom_ciph_init)"
	.align 8
.LC650:
	.string	"EVP_CIPHER_meth_set_flags(tmp, EVP_CIPH_ALWAYS_CALL_INIT)"
	.align 8
.LC651:
	.string	"EVP_CIPHER_meth_set_cleanup(tmp, custom_ciph_cleanup)"
	.align 8
.LC652:
	.string	"EVP_CIPHER_meth_set_impl_ctx_size(tmp, sizeof(custom_ciph_ctx))"
.LC653:
	.string	"ciphctx"
	.align 8
.LC654:
	.string	"EVP_CipherInit_ex(ciphctx, tmp, NULL, NULL, NULL, 1)"
	.align 8
.LC655:
	.string	"EVP_CipherInit_ex(ciphctx, EVP_aes_128_cbc(), NULL, NULL, NULL, 1)"
.LC656:
	.string	"custom_ciph_init_called"
.LC657:
	.string	"custom_ciph_cleanup_called"
	.text
	.type	test_custom_ciph_meth, @function
test_custom_ciph_meth:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	testctx(%rip), %rax
	testq	%rax, %rax
	je	.L1209
	leaq	.LC626(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$5086, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L1210
.L1209:
	movl	$0, custom_ciph_cleanup_called(%rip)
	movl	custom_ciph_cleanup_called(%rip), %eax
	movl	%eax, custom_ciph_init_called(%rip)
	leaq	.LC647(%rip), %rdx
	leaq	.LC647(%rip), %rcx
	leaq	.LC648(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC629(%rip), %rcx
	leaq	.LC630(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$5091, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L1218
	movl	-24(%rbp), %eax
	movl	$16, %edx
	movl	$16, %esi
	movl	%eax, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC395(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5094, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1219
	leaq	custom_ciph_init(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC649(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5097, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1220
	movq	-16(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC650(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5098, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1220
	leaq	custom_ciph_cleanup(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_cleanup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC651(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5099, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1220
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC652(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1220
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC653(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5105, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1221
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC654(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1221
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC655(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1221
	movl	custom_ciph_init_called(%rip), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC656(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$5114, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1221
	movl	custom_ciph_cleanup_called(%rip), %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC657(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$5115, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1221
	movl	$1, -20(%rbp)
	jmp	.L1212
.L1218:
	nop
	jmp	.L1212
.L1219:
	nop
	jmp	.L1212
.L1220:
	nop
	jmp	.L1212
.L1221:
	nop
.L1212:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movl	-20(%rbp), %eax
.L1210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	test_custom_ciph_meth, .-test_custom_ciph_meth
	.data
	.align 16
	.type	ecxnids, @object
	.size	ecxnids, 16
ecxnids:
	.long	1034
	.long	1035
	.long	1087
	.long	1088
	.text
	.type	test_ecx_short_keys, @function
test_ecx_short_keys:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movb	$1, -9(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ecxnids(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rsi
	movq	testctx(%rip), %rax
	leaq	-9(%rbp), %rdx
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5289, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L1223
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L1225
.L1223:
	movl	$1, %eax
.L1225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	test_ecx_short_keys, .-test_ecx_short_keys
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.10(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	test_get_options, .-test_get_options
	.section	.rodata
	.align 8
.LC658:
	.string	"signing not supported for X25519/X448"
.LC659:
	.string	"no public key present"
.LC660:
	.string	"mac = OPENSSL_malloc(maclen)"
	.align 8
.LC661:
	.string	"EVP_DigestSign(ctx, mac, &maclen, msg, sizeof(msg))"
	.text
	.type	test_ecx_not_private_key, @function
test_ecx_not_private_key:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	$0, -32(%rbp)
	movl	$50462976, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	subl	$1034, %eax
	cmpl	$1, %eax
	ja	.L1229
	leaq	.LC658(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$5332, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L1239
.L1229:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L1231
	leaq	.LC659(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$5337, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L1239
.L1231:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rsi
	movq	testctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_public_key_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5344, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1240
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC377(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5347, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1241
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	cmpl	$1, %eax
	jne	.L1242
	leaq	-52(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$4, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	cmpl	$1, %eax
	jne	.L1243
	movq	-64(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$5356, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC660(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5356, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1244
	leaq	-52(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC661(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$5359, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1245
	jmp	.L1236
.L1242:
	nop
	jmp	.L1236
.L1243:
	nop
.L1236:
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$221, %eax
	jne	.L1246
	movl	$1, -4(%rbp)
	call	ERR_clear_error@PLT
	jmp	.L1233
.L1240:
	nop
	jmp	.L1233
.L1241:
	nop
	jmp	.L1233
.L1244:
	nop
	jmp	.L1233
.L1245:
	nop
	jmp	.L1233
.L1246:
	nop
.L1233:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$5375, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L1239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	test_ecx_not_private_key, .-test_ecx_not_private_key
	.section	.rodata
	.align 8
.LC662:
	.string	"fake_rsa = fake_rsa_start(testctx)"
.LC663:
	.string	"provider=fake-rsa"
	.align 8
.LC664:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(testctx, \"RSA\", \"provider=fake-rsa\")"
	.align 8
.LC665:
	.string	"EVP_PKEY_fromdata(pctx, &pkey, EVP_PKEY_KEYPAIR, NULL)"
	.align 8
.LC666:
	.string	"EVP_DigestSignInit_ex(mctx, NULL, NULL, testctx, NULL, pkey, NULL)"
	.align 8
.LC667:
	.string	"EVP_DigestSignUpdate(mctx, sigbuf, sizeof(sigbuf))"
	.align 8
.LC668:
	.string	"EVP_DigestSignFinal(mctx, signature, &siglen)"
	.align 8
.LC669:
	.string	"EVP_DigestSignInit_ex(mctx, NULL, NULL, testctx, NULL, pkey, nodup_params)"
	.text
	.type	test_sign_continuation, @function
test_sign_continuation:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movabsq	$7589445416322625364, %rax
	movq	%rax, -53(%rbp)
	movabsq	$28259022526829344, %rax
	movq	%rax, -48(%rbp)
	movq	$256, -328(%rbp)
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC662(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5398, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1248
	movl	$0, %eax
	jmp	.L1257
.L1248:
	movq	testctx(%rip), %rax
	leaq	.LC663(%rip), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC664(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5402, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1258
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5404, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1258
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC665(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5405, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1258
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5406, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1258
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC228(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5410, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1259
	movq	-40(%rbp), %rcx
	movq	testctx(%rip), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC666(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5411, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1259
	leaq	-53(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC667(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5413, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1259
	leaq	-328(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC668(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5414, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1259
	leaq	-53(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC667(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5415, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1259
	leaq	-328(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC668(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5416, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1259
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC228(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5422, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1260
	movq	-40(%rbp), %rsi
	movq	testctx(%rip), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	nodup_params.9(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC669(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5423, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1260
	leaq	-53(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC667(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5425, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1260
	leaq	-328(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC668(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5426, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1260
	leaq	-53(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC667(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5427, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L1260
	leaq	-328(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC668(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5428, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L1260
	movl	$1, -4(%rbp)
	jmp	.L1252
.L1258:
	nop
	jmp	.L1252
.L1259:
	nop
	jmp	.L1252
.L1260:
	nop
.L1252:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movl	-4(%rbp), %eax
.L1257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	test_sign_continuation, .-test_sign_continuation
	.section	.rodata
	.align 8
.LC670:
	.string	"cipher = EVP_CIPHER_fetch(testctx, \"AES-256-GCM\", \"\")"
	.align 8
.LC671:
	.string	"EVP_EncryptInit_ex2(ctx, cipher, gcm_key, gcm_iv, params)"
	.align 8
.LC672:
	.string	"EVP_EncryptUpdate(ctx, NULL, &outlen, gcm_aad, gcm_aad_s)"
	.align 8
.LC673:
	.string	"EVP_EncryptUpdate(ctx, outbuf, &outlen, gcm_pt, gcm_pt_s)"
	.align 8
.LC674:
	.string	"EVP_EncryptFinal_ex(ctx, outbuf, &tmplen)"
	.align 8
.LC675:
	.string	"EVP_CIPHER_CTX_get_params(ctx, params)"
.LC676:
	.string	"gcm_ct"
.LC677:
	.string	"gcm_tag"
.LC678:
	.string	"outtag"
	.text
	.type	aes_gcm_encrypt, @function
aes_gcm_encrypt:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1248, %rsp
	movq	%rdi, -1160(%rbp)
	movq	%rsi, -1168(%rbp)
	movq	%rdx, -1176(%rbp)
	movq	%rcx, -1184(%rbp)
	movq	%r8, -1192(%rbp)
	movq	%r9, -1200(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1152(%rbp)
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1088(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5458, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1271
	movq	testctx(%rip), %rax
	leaq	.LC264(%rip), %rdx
	leaq	.LC591(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC670(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5459, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1271
	leaq	-1248(%rbp), %rax
	leaq	-1184(%rbp), %rdx
	leaq	.LC459(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1248(%rbp), %rax
	movq	-1240(%rbp), %rdx
	movq	%rax, -1152(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -1120(%rbp)
	leaq	-1152(%rbp), %rdi
	movq	-1176(%rbp), %rcx
	movq	-1160(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC671(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5465, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1272
	cmpq	$0, 16(%rbp)
	je	.L1266
	movq	24(%rbp), %rax
	movl	%eax, %esi
	movq	16(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC672(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5467, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1272
.L1266:
	movq	-1200(%rbp), %rax
	movl	%eax, %edi
	movq	-1192(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC673(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5469, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1272
	leaq	-32(%rbp), %rdx
	leaq	-1056(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC674(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5471, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1272
	leaq	-1248(%rbp), %rax
	leaq	-1072(%rbp), %rdx
	leaq	.LC528(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1248(%rbp), %rax
	movq	-1240(%rbp), %rdx
	movq	%rax, -1152(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -1120(%rbp)
	leaq	-1152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC675(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5477, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1273
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	leaq	-1056(%rbp), %rsi
	leaq	.LC676(%rip), %rcx
	leaq	.LC523(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5478, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1273
	movq	56(%rbp), %rdi
	leaq	-1072(%rbp), %rsi
	leaq	.LC677(%rip), %rcx
	leaq	.LC678(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	56(%rbp)
	pushq	48(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5479, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1273
	movl	$1, -4(%rbp)
	jmp	.L1264
.L1271:
	nop
	jmp	.L1264
.L1272:
	nop
	jmp	.L1264
.L1273:
	nop
.L1264:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	aes_gcm_encrypt, .-aes_gcm_encrypt
	.section	.rodata
	.align 8
.LC679:
	.string	"EVP_DecryptInit_ex2(ctx, cipher, gcm_key, gcm_iv, params)"
	.align 8
.LC680:
	.string	"EVP_DecryptUpdate(ctx, NULL, &outlen, gcm_aad, gcm_aad_s)"
	.align 8
.LC681:
	.string	"EVP_DecryptUpdate(ctx, outbuf, &outlen, gcm_ct, gcm_ct_s)"
.LC682:
	.string	"gcm_pt"
	.align 8
.LC683:
	.string	"EVP_DecryptFinal_ex(ctx, outbuf, &outlen)"
	.text
	.type	aes_gcm_decrypt, @function
aes_gcm_decrypt:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1232, %rsp
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	%r9, -1184(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm0, -1072(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1284
	movq	testctx(%rip), %rax
	leaq	.LC264(%rip), %rdx
	leaq	.LC591(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1285
	leaq	-1232(%rbp), %rax
	leaq	-1168(%rbp), %rdx
	leaq	.LC459(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movq	-1208(%rbp), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1136(%rbp), %rdi
	movq	-1160(%rbp), %rcx
	movq	-1144(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC679(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1286
	cmpq	$0, 16(%rbp)
	je	.L1279
	movq	24(%rbp), %rax
	movl	%eax, %esi
	movq	16(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC680(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1286
.L1279:
	movq	40(%rbp), %rax
	movl	%eax, %edi
	movq	32(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC681(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5519, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1286
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	leaq	-1056(%rbp), %rsi
	leaq	.LC682(%rip), %rcx
	leaq	.LC523(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-1184(%rbp)
	pushq	-1176(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5521, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1286
	leaq	-1232(%rbp), %rax
	movq	56(%rbp), %rcx
	movq	48(%rbp), %rdx
	leaq	.LC528(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movq	-1208(%rbp), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC597(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1287
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC683(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5528, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1287
	movl	$1, -4(%rbp)
	jmp	.L1276
.L1284:
	nop
	jmp	.L1276
.L1285:
	nop
	jmp	.L1276
.L1286:
	nop
	jmp	.L1276
.L1287:
	nop
.L1276:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	aes_gcm_decrypt, .-aes_gcm_decrypt
	.type	test_aes_gcm_ivlen_change_cve_2023_5363, @function
test_aes_gcm_ivlen_change_cve_2023_5363:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	gcm_pt.5(%rip), %rsi
	leaq	gcm_iv.6(%rip), %rdx
	leaq	gcm_key.7(%rip), %rax
	pushq	$16
	leaq	gcm_tag.3(%rip), %rcx
	pushq	%rcx
	pushq	$16
	leaq	gcm_ct.4(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$128, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	aes_gcm_encrypt
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L1289
	leaq	gcm_pt.5(%rip), %rsi
	leaq	gcm_iv.6(%rip), %rdx
	leaq	gcm_key.7(%rip), %rax
	pushq	$16
	leaq	gcm_tag.3(%rip), %rcx
	pushq	%rcx
	pushq	$16
	leaq	gcm_ct.4(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$128, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	aes_gcm_decrypt
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L1289
	movl	$1, %eax
	jmp	.L1291
.L1289:
	movl	$0, %eax
.L1291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	test_aes_gcm_ivlen_change_cve_2023_5363, .-test_aes_gcm_ivlen_change_cve_2023_5363
	.section	.rodata
	.align 8
.LC684:
	.string	"cipher = EVP_CIPHER_fetch(testctx, \"RC4\", \"\")"
	.align 8
.LC685:
	.string	"EVP_EncryptInit_ex2(ctx, cipher, rc4_key, NULL, params)"
	.align 8
.LC686:
	.string	"EVP_EncryptUpdate(ctx, outbuf, &outlen, rc4_pt, rc4_pt_s)"
.LC687:
	.string	"rc4_ct"
	.text
	.type	rc4_encrypt, @function
rc4_encrypt:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1232, %rsp
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	%r9, -1184(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm0, -1072(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5595, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1300
	movq	testctx(%rip), %rax
	leaq	.LC264(%rip), %rdx
	leaq	.LC601(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC684(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5596, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1300
	leaq	-1232(%rbp), %rax
	leaq	-1152(%rbp), %rdx
	leaq	.LC604(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movq	-1208(%rbp), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1136(%rbp), %rcx
	movq	-1144(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC685(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5602, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1301
	movq	-1168(%rbp), %rax
	movl	%eax, %edi
	movq	-1160(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC686(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5603, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1301
	leaq	-32(%rbp), %rdx
	leaq	-1056(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC674(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5605, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1301
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	leaq	-1056(%rbp), %rsi
	leaq	.LC687(%rip), %rcx
	leaq	.LC523(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-1184(%rbp)
	pushq	-1176(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5608, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1302
	movl	$1, -4(%rbp)
	jmp	.L1295
.L1300:
	nop
	jmp	.L1295
.L1301:
	nop
	jmp	.L1295
.L1302:
	nop
.L1295:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	rc4_encrypt, .-rc4_encrypt
	.section	.rodata
	.align 8
.LC688:
	.string	"EVP_DecryptInit_ex2(ctx, cipher, rc4_key, NULL, params)"
	.align 8
.LC689:
	.string	"EVP_DecryptUpdate(ctx, outbuf, &outlen, rc4_ct, rc4_ct_s)"
.LC690:
	.string	"rc4_pt"
	.text
	.type	rc4_decrypt, @function
rc4_decrypt:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1232, %rsp
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	%r9, -1184(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm0, -1072(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1310
	movq	testctx(%rip), %rax
	leaq	.LC264(%rip), %rdx
	leaq	.LC601(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1311
	leaq	-1232(%rbp), %rax
	leaq	-1152(%rbp), %rdx
	leaq	.LC604(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movq	-1208(%rbp), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1136(%rbp), %rcx
	movq	-1144(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC688(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5641, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1312
	movq	-1184(%rbp), %rax
	movl	%eax, %edi
	movq	-1176(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-1056(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC689(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$5642, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1312
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	leaq	-1056(%rbp), %rsi
	leaq	.LC690(%rip), %rcx
	leaq	.LC523(%rip), %rdx
	leaq	.LC10(%rip), %rax
	pushq	-1168(%rbp)
	pushq	-1160(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5644, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L1312
	movl	$1, -4(%rbp)
	jmp	.L1305
.L1310:
	nop
	jmp	.L1305
.L1311:
	nop
	jmp	.L1305
.L1312:
	nop
.L1305:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	rc4_decrypt, .-rc4_decrypt
	.type	test_aes_rc4_keylen_change_cve_2023_5363, @function
test_aes_rc4_keylen_change_cve_2023_5363:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L1314
	leaq	.LC465(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$5679, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L1315
.L1314:
	leaq	rc4_ct.0(%rip), %rcx
	leaq	rc4_pt.1(%rip), %rdx
	leaq	rc4_key.2(%rip), %rax
	movl	$16, %r9d
	movq	%rcx, %r8
	movl	$16, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	rc4_encrypt
	testl	%eax, %eax
	je	.L1316
	leaq	rc4_ct.0(%rip), %rcx
	leaq	rc4_pt.1(%rip), %rdx
	leaq	rc4_key.2(%rip), %rax
	movl	$16, %r9d
	movq	%rcx, %r8
	movl	$16, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	rc4_decrypt
	testl	%eax, %eax
	je	.L1316
	movl	$1, %eax
	jmp	.L1315
.L1316:
	movl	$0, %eax
.L1315:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	test_aes_rc4_keylen_change_cve_2023_5363, .-test_aes_rc4_keylen_change_cve_2023_5363
	.section	.rodata
	.align 8
.LC691:
	.string	"EVP_DigestUpdate(mdctx, \"test\", sizeof(\"test\") - 1)"
	.text
	.type	test_invalid_ctx_for_digest, @function
test_invalid_ctx_for_digest:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC294(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5694, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1319
	movl	$0, %eax
	jmp	.L1320
.L1319:
	leaq	.LC181(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC691(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$5697, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1321
	movl	$0, -4(%rbp)
	jmp	.L1322
.L1321:
	movl	$1, -4(%rbp)
.L1322:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L1320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	test_invalid_ctx_for_digest, .-test_invalid_ctx_for_digest
	.section	.rodata
.LC692:
	.string	"testctx"
.LC693:
	.string	"legacy"
.LC694:
	.string	"default"
	.align 8
.LC695:
	.string	"test_EVP_set_default_properties"
.LC696:
	.string	"test_EVP_DigestSignInit"
.LC697:
	.string	"test_EVP_DigestVerifyInit"
.LC698:
	.string	"test_siphash_digestsign"
.LC699:
	.string	"test_EVP_Digest"
.LC700:
	.string	"test_EVP_md_null"
.LC701:
	.string	"test_EVP_PKEY_sign"
	.align 8
.LC702:
	.string	"test_EVP_PKEY_sign_with_app_method"
.LC703:
	.string	"test_EVP_Enveloped"
.LC704:
	.string	"test_d2i_AutoPrivateKey"
.LC705:
	.string	"test_privatekey_to_pkcs8"
.LC706:
	.string	"test_EVP_PKCS82PKEY_wrong_tag"
.LC707:
	.string	"test_EVP_PKCS82PKEY"
.LC708:
	.string	"test_EC_keygen_with_enc"
.LC709:
	.string	"test_EVP_SM2"
.LC710:
	.string	"test_EVP_SM2_verify"
.LC711:
	.string	"test_set_get_raw_keys"
.LC712:
	.string	"custom_pmeth"
.LC713:
	.string	"test_EVP_PKEY_check"
.LC714:
	.string	"test_CMAC_keygen"
.LC715:
	.string	"test_HKDF"
.LC716:
	.string	"test_emptyikm_HKDF"
.LC717:
	.string	"test_empty_salt_info_HKDF"
.LC718:
	.string	"test_X509_PUBKEY_inplace"
.LC719:
	.string	"test_X509_PUBKEY_dup"
	.align 8
.LC720:
	.string	"test_invalide_ec_char2_pub_range_decode"
.LC721:
	.string	"test_DSA_get_set_params"
.LC722:
	.string	"test_DSA_priv_pub"
.LC723:
	.string	"test_RSA_get_set_params"
.LC724:
	.string	"test_RSA_OAEP_set_get_params"
.LC725:
	.string	"test_RSA_OAEP_set_null_label"
.LC726:
	.string	"test_RSA_encrypt"
.LC727:
	.string	"test_RSA_legacy"
.LC728:
	.string	"test_decrypt_null_chunks"
.LC729:
	.string	"test_DH_priv_pub"
.LC730:
	.string	"test_EVP_PKEY_set1_DH"
.LC731:
	.string	"test_EC_priv_pub"
.LC732:
	.string	"test_evp_get_ec_pub"
.LC733:
	.string	"test_EC_priv_only_legacy"
.LC734:
	.string	"test_evp_get_ec_pub_legacy"
	.align 8
.LC735:
	.string	"test_keygen_with_empty_template"
	.align 8
.LC736:
	.string	"test_pkey_ctx_fail_without_provider"
.LC737:
	.string	"test_rand_agglomeration"
.LC738:
	.string	"test_evp_iv_aes"
.LC739:
	.string	"test_evp_iv_des"
.LC740:
	.string	"test_evp_bf_default_keylen"
	.align 8
.LC741:
	.string	"test_EVP_rsa_pss_with_keygen_bits"
.LC742:
	.string	"test_EVP_rsa_pss_set_saltlen"
.LC743:
	.string	"test_ecpub"
.LC744:
	.string	"test_names_do_all"
.LC745:
	.string	"test_evp_init_seq"
.LC746:
	.string	"test_evp_reset"
.LC747:
	.string	"test_evp_reinit_seq"
.LC748:
	.string	"test_gcm_reinit"
.LC749:
	.string	"test_evp_updated_iv"
.LC750:
	.string	"test_ivlen_change"
.LC751:
	.string	"test_keylen_change"
.LC752:
	.string	"test_custom_pmeth"
.LC753:
	.string	"test_evp_md_cipher_meth"
.LC754:
	.string	"test_custom_md_meth"
.LC755:
	.string	"test_custom_ciph_meth"
.LC756:
	.string	"test_ecx_short_keys"
.LC757:
	.string	"test_ecx_not_private_key"
.LC758:
	.string	"test_sign_continuation"
	.align 8
.LC759:
	.string	"test_aes_gcm_ivlen_change_cve_2023_5363"
	.align 8
.LC760:
	.string	"test_aes_rc4_keylen_change_cve_2023_5363"
.LC761:
	.string	"test_invalid_ctx_for_digest"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L1324
.L1331:
	cmpl	$1, -4(%rbp)
	je	.L1325
	cmpl	$0, -4(%rbp)
	jle	.L1326
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L1326
	jmp	.L1334
.L1325:
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, testctx(%rip)
	movq	testctx(%rip), %rax
	leaq	.LC692(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5716, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1328
	movl	$0, %eax
	jmp	.L1329
.L1328:
	movq	testctx(%rip), %rax
	movq	ossl_legacy_provider_init@GOTPCREL(%rip), %rdx
	leaq	.LC693(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	jne	.L1330
	movl	$0, %eax
	jmp	.L1329
.L1330:
	leaq	.LC434(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, nullprov(%rip)
	movq	testctx(%rip), %rax
	leaq	.LC694(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, deflprov(%rip)
	movq	testctx(%rip), %rax
	leaq	.LC693(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, lgcyprov(%rip)
	jmp	.L1324
.L1334:
	jmp	.L1324
.L1326:
	movl	$0, %eax
	jmp	.L1329
.L1324:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L1331
	leaq	test_EVP_set_default_properties(%rip), %rdx
	leaq	.LC695(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_DigestSignInit(%rip), %rsi
	leaq	.LC696(%rip), %rax
	movl	$1, %ecx
	movl	$30, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_EVP_DigestVerifyInit(%rip), %rdx
	leaq	.LC697(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_siphash_digestsign(%rip), %rdx
	leaq	.LC698(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_Digest(%rip), %rdx
	leaq	.LC699(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_md_null(%rip), %rdx
	leaq	.LC700(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_PKEY_sign(%rip), %rsi
	leaq	.LC701(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_EVP_PKEY_sign_with_app_method(%rip), %rsi
	leaq	.LC702(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_EVP_Enveloped(%rip), %rsi
	leaq	.LC703(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_d2i_AutoPrivateKey(%rip), %rsi
	leaq	.LC704(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_privatekey_to_pkcs8(%rip), %rdx
	leaq	.LC705(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_PKCS82PKEY_wrong_tag(%rip), %rdx
	leaq	.LC706(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_PKCS82PKEY(%rip), %rdx
	leaq	.LC707(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EC_keygen_with_enc(%rip), %rsi
	leaq	.LC708(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_EVP_SM2(%rip), %rdx
	leaq	.LC709(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_SM2_verify(%rip), %rdx
	leaq	.LC710(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_set_get_raw_keys(%rip), %rsi
	leaq	.LC711(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$0, %esi
	movl	$233811181, %edi
	call	EVP_PKEY_meth_new@PLT
	movq	%rax, custom_pmeth(%rip)
	movq	custom_pmeth(%rip), %rax
	leaq	.LC712(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$5770, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1332
	movl	$0, %eax
	jmp	.L1329
.L1332:
	movq	custom_pmeth(%rip), %rax
	leaq	pkey_custom_check(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_check@PLT
	movq	custom_pmeth(%rip), %rax
	leaq	pkey_custom_pub_check(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_public_check@PLT
	movq	custom_pmeth(%rip), %rax
	leaq	pkey_custom_param_check(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_param_check@PLT
	movq	custom_pmeth(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_add0@PLT
	movl	%eax, %esi
	leaq	.LC67(%rip), %rcx
	leaq	.LC613(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$5775, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1333
	movl	$0, %eax
	jmp	.L1329
.L1333:
	leaq	test_EVP_PKEY_check(%rip), %rsi
	leaq	.LC713(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_CMAC_keygen(%rip), %rdx
	leaq	.LC714(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HKDF(%rip), %rdx
	leaq	.LC715(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_emptyikm_HKDF(%rip), %rdx
	leaq	.LC716(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_empty_salt_info_HKDF(%rip), %rdx
	leaq	.LC717(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_X509_PUBKEY_inplace(%rip), %rdx
	leaq	.LC718(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_X509_PUBKEY_dup(%rip), %rdx
	leaq	.LC719(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_invalide_ec_char2_pub_range_decode(%rip), %rsi
	leaq	.LC720(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_DSA_get_set_params(%rip), %rdx
	leaq	.LC721(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_DSA_priv_pub(%rip), %rdx
	leaq	.LC722(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_RSA_get_set_params(%rip), %rdx
	leaq	.LC723(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_RSA_OAEP_set_get_params(%rip), %rdx
	leaq	.LC724(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_RSA_OAEP_set_null_label(%rip), %rdx
	leaq	.LC725(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_RSA_encrypt(%rip), %rdx
	leaq	.LC726(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_RSA_legacy(%rip), %rdx
	leaq	.LC727(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_decrypt_null_chunks(%rip), %rdx
	leaq	.LC728(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_DH_priv_pub(%rip), %rdx
	leaq	.LC729(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_PKEY_set1_DH(%rip), %rdx
	leaq	.LC730(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EC_priv_pub(%rip), %rdx
	leaq	.LC731(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_get_ec_pub(%rip), %rdx
	leaq	.LC732(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EC_priv_only_legacy(%rip), %rdx
	leaq	.LC733(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_get_ec_pub_legacy(%rip), %rdx
	leaq	.LC734(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_keygen_with_empty_template(%rip), %rsi
	leaq	.LC735(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_pkey_ctx_fail_without_provider(%rip), %rsi
	leaq	.LC736(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rand_agglomeration(%rip), %rdx
	leaq	.LC737(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_iv_aes(%rip), %rsi
	leaq	.LC738(%rip), %rax
	movl	$1, %ecx
	movl	$12, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_iv_des(%rip), %rsi
	leaq	.LC739(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_bf_default_keylen(%rip), %rsi
	leaq	.LC740(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_EVP_rsa_pss_with_keygen_bits(%rip), %rdx
	leaq	.LC741(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_rsa_pss_set_saltlen(%rip), %rdx
	leaq	.LC742(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ecpub(%rip), %rsi
	leaq	.LC743(%rip), %rax
	movl	$1, %ecx
	movl	$13, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_names_do_all(%rip), %rdx
	leaq	.LC744(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_init_seq(%rip), %rsi
	leaq	.LC745(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_reset(%rip), %rsi
	leaq	.LC746(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_reinit_seq(%rip), %rsi
	leaq	.LC747(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_gcm_reinit(%rip), %rsi
	leaq	.LC748(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_updated_iv(%rip), %rsi
	leaq	.LC749(%rip), %rax
	movl	$1, %ecx
	movl	$12, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ivlen_change(%rip), %rsi
	leaq	.LC750(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_keylen_change(%rip), %rsi
	leaq	.LC751(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_custom_pmeth(%rip), %rsi
	leaq	.LC752(%rip), %rax
	movl	$1, %ecx
	movl	$12, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_md_cipher_meth(%rip), %rdx
	leaq	.LC753(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_custom_md_meth(%rip), %rdx
	leaq	.LC754(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_custom_ciph_meth(%rip), %rdx
	leaq	.LC755(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ecx_short_keys(%rip), %rsi
	leaq	.LC756(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ecx_not_private_key(%rip), %rsi
	leaq	.LC757(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_sign_continuation(%rip), %rdx
	leaq	.LC758(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_aes_gcm_ivlen_change_cve_2023_5363(%rip), %rdx
	leaq	.LC759(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_aes_rc4_keylen_change_cve_2023_5363(%rip), %rdx
	leaq	.LC760(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_invalid_ctx_for_digest(%rip), %rdx
	leaq	.LC761(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L1329:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	deflprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	lgcyprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
	.type	msg.26, @object
	.size	msg.26, 8
msg.26:
	.base64	"AQIDBAUGBwg="
	.data
	.align 32
	.type	key.25, @object
	.size	key.25, 32
key.25:
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.align 32
	.type	seed.24, @object
	.size	seed.24, 65
seed.24:
	.string	"It does not matter how slowly you go as long as you do not stop."
	.section	.rodata
	.align 16
	.type	msg.23, @object
	.size	msg.23, 16
msg.23:
	.base64	"AQIDBAUGBwgJCgsMDQ4PEA=="
	.align 8
	.type	cbc_state_des.22, @object
	.size	cbc_state_des.22, 8
cbc_state_des.22:
	.base64	"T6OFzYvzBio="
	.align 8
	.type	ofb_state_des.21, @object
	.size	ofb_state_des.21, 8
ofb_state_des.21:
	.base64	"pw0dRfmWPyw="
	.align 8
	.type	cfb_state_des.20, @object
	.size	cfb_state_des.20, 8
cfb_state_des.20:
	.base64	"kettKUsIvXM="
	.align 8
	.type	cbc_state_3des.19, @object
	.size	cbc_state_3des.19, 8
cbc_state_3des.19:
	.base64	"NSd9ZWz7UNk="
	.align 8
	.type	ofb_state_3des.18, @object
	.size	ofb_state_3des.18, 8
ofb_state_3des.18:
	.base64	"qxYku1us7V4="
	.align 8
	.type	cfb_state_3des.17, @object
	.size	cfb_state_3des.17, 8
cfb_state_3des.17:
	.base64	"NN37RzMcYfc="
	.align 16
	.type	key.16, @object
	.size	key.16, 24
key.16:
	.base64	"ASNFZ4mrze/x4NPCtaSXhv7cuph2VDIQ"
	.align 8
	.type	init_iv.15, @object
	.size	init_iv.15, 8
init_iv.15:
	.base64	"/ty6mHZUMhA="
	.align 16
	.type	msg.14, @object
	.size	msg.14, 16
msg.14:
	.base64	"AQIDBAUGBwgJCgsMDQ4PEA=="
.LC762:
	.string	"bf-ecb"
.LC763:
	.string	"bf-cbc"
.LC764:
	.string	"bf-cfb"
.LC765:
	.string	"bf-ofb"
	.section	.data.rel.local
	.align 32
	.type	algos.13, @object
	.size	algos.13, 32
algos.13:
	.quad	.LC762
	.quad	.LC763
	.quad	.LC764
	.quad	.LC765
	.section	.rodata
	.align 16
	.type	iv.12, @object
	.size	iv.12, 16
iv.12:
	.base64	"V3F9rdubmIJaVZGBQqiJNA=="
	.align 16
	.type	key.11, @object
	.size	key.11, 16
key.11:
	.base64	"V3F9rdubmIJaVZGBQqiJNA=="
.LC766:
	.string	"Usage: %s [options]\n"
.LC767:
	.string	"Valid options are:\n"
.LC768:
	.string	"help"
.LC769:
	.string	"Display this summary"
.LC770:
	.string	"list"
	.align 8
.LC771:
	.string	"Display the list of tests available"
	.align 8
.LC772:
	.string	"Run a single test by id or name"
.LC773:
	.string	"iter"
	.align 8
.LC774:
	.string	"Run a single iteration of a test"
.LC775:
	.string	"indent"
	.align 8
.LC776:
	.string	"Number of tabs added to output"
	.align 8
.LC777:
	.string	"Seed value to randomize tests with"
.LC778:
	.string	"context"
	.align 8
.LC779:
	.string	"Explicitly use a non-default library context"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.10, @object
	.size	options.10, 240
options.10:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC766
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC767
	.quad	.LC768
	.long	500
	.long	45
	.quad	.LC769
	.quad	.LC770
	.long	501
	.long	45
	.quad	.LC771
	.quad	.LC181
	.long	502
	.long	115
	.quad	.LC772
	.quad	.LC773
	.long	503
	.long	110
	.quad	.LC774
	.quad	.LC775
	.long	504
	.long	112
	.quad	.LC776
	.quad	.LC445
	.long	505
	.long	110
	.quad	.LC777
	.quad	.LC778
	.long	1
	.long	45
	.quad	.LC779
	.quad	0
	.zero	16
	.section	.rodata
.LC780:
	.string	"NO_DUP"
	.section	.data.rel.ro.local
	.align 32
	.type	nodup_params.9, @object
	.size	nodup_params.9, 80
nodup_params.9:
	.quad	.LC780
	.long	1
	.zero	4
	.quad	nodupnum.8
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.data
	.align 4
	.type	nodupnum.8, @object
	.size	nodupnum.8, 4
nodupnum.8:
	.long	1
	.section	.rodata
	.align 32
	.type	gcm_key.7, @object
	.size	gcm_key.7, 32
gcm_key.7:
	.base64	"0MJnwZ8w2AuJFLu/ty9zuNPNX2p4cBWEinsw448W8Ys="
	.align 32
	.type	gcm_iv.6, @object
	.size	gcm_iv.6, 128
gcm_iv.6:
	.base64	"ttzalayZd3Ylrof4o6ndZNebvV9KDlTKGp+i4/RfX8LOp7YUEm/wr/0+FzVuoBYJ3aE/2N3z30/LGEm4s2ksXU+tMJEIvL4kAQ++nPtPXRl/TFOwlZCsex97oJnh80hU0PypzJH4H5tsmuDcY+p9Kkp9pe1oVydraODyuFFQjT0="
	.align 16
	.type	gcm_pt.5, @object
	.size	gcm_pt.5, 16
gcm_pt.5:
	.base64	"uLaINkTiNN8kMpEHT+NvgQ=="
	.align 16
	.type	gcm_ct.4, @object
	.size	gcm_ct.4, 16
gcm_ct.4:
	.base64	"/0+z8/miUdSCwr7z4tDs7Q=="
	.align 16
	.type	gcm_tag.3, @object
	.size	gcm_tag.3, 16
gcm_tag.3:
	.base64	"vQY4CffhxHIO8upj25lsIQ=="
	.align 16
	.type	rc4_key.2, @object
	.size	rc4_key.2, 16
rc4_key.2:
	.base64	"gzIidyo="
	.base64	"gK2Xvclz34qqMpE="
	.align 16
	.type	rc4_pt.1, @object
	.size	rc4_pt.1, 16
rc4_pt.1:
	.zero	16
	.align 16
	.type	rc4_ct.0, @object
	.size	rc4_ct.0, 16
rc4_ct.0:
	.base64	"gK2Xvclz34ouh56SpJfv2g=="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

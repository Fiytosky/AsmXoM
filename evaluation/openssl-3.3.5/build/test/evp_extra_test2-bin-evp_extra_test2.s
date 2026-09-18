	.file	"evp_extra_test2.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB460:
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
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	mainctx
	.comm	mainctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.section	.rodata
	.align 32
	.type	kExampleRSAKeyDER, @object
	.size	kExampleRSAKeyDER, 608
kExampleRSAKeyDER:
	.base64	"MIICXAIBAAKBgQD4uGyDtLzZqFfApbRZdoxUHXnrIlIEftM360H9g/nwpoUVNHVxWoSoPNLvWk7T3peK3f+7zwqqhpK+uFDkzW+AMzB2E4/Ke9zsWspjxwMl76iKg1h2IPoWd9d5kmMBSBrYe2fxUlVJTtZuSlzXejc2DN7dj0TowqcsK7WvZEthBwIDAQABAoGAdIhkP2lFOm3Hf7mjwG7s3NRatTKFXxnU+NQ/PPrC9l/u5rqHdC7HDNRCuGaFnHskYaoWEfa1tqQKyVUugaVHYcslj8IVew58Np862liGHFuDeeYrzOb6LGHyeIAb4vOdOStlV5E9cZlzpcJ5"
	.base64	"IIwHT+W0YB+ZorFPDO+8WVMAfbECQQD8fiNlcPjO00BBgGodAdYB/7YbPT1ZCTN5wE/elidLGMbZePH0NUbpfEJ6XZ/vVLj3n8QzbPOMMkaHZzB7p6zjAkEA/CzfDA2I9bGSqJNHY1X1ylhDuhzlnraVBc21gt/rBFOdvcI4FrNi3aFG222Xk5+Kw5tkfkLjMlcZG9Vuhfq4jQJBALw93m3Wl+i6noE3F+WgZMkAt+f+9CnZLkNrGSC9mXXndvjTrq9+uOuB9J3+BysLYwtaVZBxffHb2bFBQWgvTjkCQFo0Ztj14n8YtQBuJoQnFJP7/MYPXifm4enAiuQ02umi"
	.base64	"S3O8jLm6E2x6K1GEo0rgMBAGfu0XWhQAye+F6lIsvGUCQFHj8oMZm8QeL1A931qiGMpfLkmvb8z6ZXeUtaEKqdGKOTf0C6DXgiderhcXoR5UNL9uxI6ZXQjxLYadpSAb5d8="
	.align 32
	.type	kExampleRSAKeyPKCS8, @object
	.size	kExampleRSAKeyPKCS8, 634
kExampleRSAKeyPKCS8:
	.base64	"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAPi4bIO0vNmoV8CltFl2jFQdeesiUgR+0zfrQf2D+fCmhRU0dXFahKg80u9aTtPel4rd/7vPCqqGkr64UOTNb4AzMHYTj8p73OxaymPHAyXvqIqDWHYg+hZ313mSYwFIGth7Z/FSVUlO1m5KXNd6NzYM3t2PROjCpywrta9kS2EHAgMBAAECgYB0iGQ/aUU6bcd/uaPAbuzc1Fq1MoVfGdT41D88+sL2X+7muod0LscM1EK4ZoWceyRhqhYR9rW2pArJVS6BpUdhyyWPwhV7Dnw2nzraWIYcW4N5"
	.base64	"5ivM5vosYfJ4gBvi8505K2VXkT1xmXOlwnkgjAdP5bRgH5misU8M77xZUwB9sQJBAPx+I2Vw+M7TQEGAah0B1gH/ths9PVkJM3nAT96WJ0sYxtl48fQ1Rul8Qnpdn+9UuPefxDNs84wyRodnMHunrOMCQQD8LN8MDYj1sZKok0djVfXKWEO6HOWetpUFzbWC3+sEU529wjgWs2LdoUbbbZeTn4rDm2R+QuMyVxkb1W6F+riNAkEAvD3ebdaX6LqegTcX5aBkyQC35/70KdkuQ2sZIL2Zded2+NOur36464H0nf4HKwtjC1pVkHF98dvZsUFBaC9OOQJAWjRm2PXi"
	.base64	"fxi1AG4mhCcUk/v8xg9eJ+bh6cCK5DTa6aJLc7yMuboTbHorUYSjSuAwEAZ+7RdaFADJ74XqUiy8ZQJAUePygxmbxB4vUD3fWqIYyl8uSa9vzPpld5S1oQqp0Yo5N/QLoNeCJ16uFxehHlQ0v27EjpldCPEthp2lIBvl3w=="
	.align 32
	.type	kExampleDHPrivateKeyDER, @object
	.size	kExampleDHPrivateKeyDER, 554
kExampleDHPrivateKeyDER:
	.base64	"MIICJgIBADCCARcGCSqGSIb3DQEDATCCAQgCggEBANhLDw5reekjTuS+mo96XKMg0IZrlXg5WXoRKluHpPsvmdBX9eGjr0HRzaOUu+VaaOLuaVZRsu7y/hDJVeOCPFAN9YJz5NY+RbSJgOTwmYUrS/m4/Sw8SS6zVn6ZB9P32eQMZMV9A44FPApAF62oD5v0i6fbFk9KVwuJgAufJlY/HfpSLRqe3EKjLqmH44tFXu6ZuDAVWKNftWnYDOhrNtir2OR3RhOiFbOcrZmR5aMwfUBwszJer5aN5j9Hoxja4ZogEeFJUUXjjKVWOWfLnc+69EZOCrYLqbT28WrIY+K0"
	.base64	"sp9EqgraU/dSFFfuLF0xnCcDZJ7AHksbT+6mP8E+YZMCAQIEggEEAoIBAH7CBPmVx++WvqCdLcMMOmcCfH07ybHeE5dk74eAT7+irBhr1bJCD9ooQJNAsh6AsGzenFSktGgp4BNXHcmHwN4vHXLwwOROBEj1LY2aG+XrBqt8dBA8qC05vOMVPmM3jBvxs5m2rlrrsz0wOWnb8k+Ut3Gvulwf+Gvl0bEAgeJt7GX3fs4DhGhCaotHjkqI3oLdr6lvGPfG4rmXzkePhRlhQmchfRNutVpi8wjicDsOhTyh0+16Q9beMFxIspmrPmWmZoAi/5LBQhwwh3QeU1d8+HdR"
	.base64	"8XQW9EUmdwoFlhMSBoYruEmCaUMKV6cwGUy4R4JuZHoGE1qCmNZ6CewDjQM="
	.align 32
	.type	kExampleECKeyDER, @object
	.size	kExampleECKeyDER, 121
kExampleECKeyDER:
	.base64	"MHcCAQEEIAcPCHJ61KBKnN1ZyU2JaHcItW/JXTB3DujRyc4Ki7RqoAoGCCqGSM49AwEHoUQDQgAE5itp4r9ln5e+Lx4NlIpM1Zdrt6keDUb73ampHp3culoB59aXqAoY+cPEox5W4nyDSNsWGhz1HX7xlC1Lz3IiwQ=="
	.align 32
	.type	kExampleECKey2DER, @object
	.size	kExampleECKey2DER, 80
kExampleECKey2DER:
	.base64	"ME4CAQAwEAYHKoZIzj0CAQYFK4EEACIENzA1AgEBBDBz4zoF8raZbQwzfxWeEKkXTAqCV3ETeqxGol4c4Mey+CBAwifIvgJ+lmngBMuJC0I="
	.align 32
	.type	kExampleECXKey2DER, @object
	.size	kExampleECXKey2DER, 48
kExampleECXKey2DER:
	.base64	"MC4CAQAwBQYDK2VuBCIEIMip1akQka2FHGaLBzbByaApNsDTrWJnCFgIgEe6BXR1"
	.section	.data.rel.local,"aw"
	.align 32
	.type	keydata, @object
	.size	keydata, 144
keydata:
	.quad	kExampleRSAKeyDER
	.quad	608
	.long	6
	.zero	4
	.quad	kExampleRSAKeyPKCS8
	.quad	634
	.long	6
	.zero	4
	.quad	kExampleECXKey2DER
	.quad	48
	.long	1034
	.zero	4
	.quad	kExampleECKeyDER
	.quad	121
	.long	408
	.zero	4
	.quad	kExampleECKey2DER
	.quad	80
	.long	408
	.zero	4
	.quad	kExampleDHPrivateKeyDER
	.quad	554
	.long	28
	.zero	4
	.text
	.type	pkey_has_private, @function
pkey_has_private:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L5
	leaq	-80(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r8d
	movl	$64, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, -4(%rbp)
	jmp	.L6
.L5:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L6:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	pkey_has_private, .-pkey_has_private
	.section	.rodata
.LC0:
	.string	"RSA"
.LC1:
	.string	"d"
.LC2:
	.string	"priv"
.LC3:
	.string	"X25519"
.LC4:
	.string	"1"
	.align 8
.LC5:
	.string	"EVP_PKEY_todata(key, EVP_PKEY_PUBLIC_KEY, &pub_params)"
.LC6:
	.string	"../test/evp_extra_test2.c"
	.align 8
.LC7:
	.string	"OSSL_PARAM_locate(pub_params, privtag)"
	.align 8
.LC8:
	.string	"EVP_PKEY_todata(key, EVP_PKEY_KEYPAIR, &keypair_params)"
	.align 8
.LC9:
	.string	"OSSL_PARAM_locate(keypair_params, privtag)"
	.align 8
.LC10:
	.string	"fromctx = EVP_PKEY_CTX_new_from_name(mainctx, keytype, NULL)"
	.align 8
.LC11:
	.string	"EVP_PKEY_fromdata_init(fromctx)"
	.align 8
.LC12:
	.string	"EVP_PKEY_fromdata(fromctx, &fromkey, EVP_PKEY_PUBLIC_KEY, keypair_params)"
	.align 8
.LC13:
	.string	"pkey_has_private(fromkey, privtag, use_octstring)"
	.align 8
.LC14:
	.string	"EVP_PKEY_fromdata(fromctx, &fromkeypair, EVP_PKEY_KEYPAIR, keypair_params)"
	.align 8
.LC15:
	.string	"pkey_has_private(fromkeypair, privtag, use_octstring)"
	.text
	.type	do_pkey_tofrom_data_select, @function
do_pkey_tofrom_data_select:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L9
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L10
.L9:
	leaq	.LC2(%rip), %rax
	movq	%rax, -24(%rbp)
.L10:
	leaq	.LC3(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_todata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$297, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_todata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movq	mainctx(%rip), %rax
	movq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$312, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$313, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_has_private
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$316, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L23
	movq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$322, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-64(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_has_private
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$324, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, -4(%rbp)
	jmp	.L13
.L21:
	nop
	jmp	.L13
.L22:
	nop
	jmp	.L13
.L23:
	nop
	jmp	.L13
.L24:
	nop
.L13:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	do_pkey_tofrom_data_select, .-do_pkey_tofrom_data_select
	.section	.rodata
.LC16:
	.string	"ffdhe2048"
.LC17:
	.string	"group"
.LC18:
	.string	"DHX"
	.align 8
.LC19:
	.string	"gctx = EVP_PKEY_CTX_new_from_name(mainctx, \"DHX\", NULL)"
.LC20:
	.string	"0"
.LC21:
	.string	"EVP_PKEY_keygen_init(gctx)"
	.align 8
.LC22:
	.string	"EVP_PKEY_CTX_set_params(gctx, params)"
.LC23:
	.string	"EVP_PKEY_generate(gctx, &key)"
	.align 8
.LC24:
	.string	"do_pkey_tofrom_data_select(key, \"DHX\")"
.LC25:
	.string	"dhkey = EVP_PKEY_get0_DH(key)"
	.align 8
.LC26:
	.string	"privkey = DH_get0_priv_key(dhkey)"
.LC27:
	.string	"225"
.LC28:
	.string	"BN_num_bits(privkey)"
	.text
	.type	test_dh_tofrom_data_select, @function
test_dh_tofrom_data_select:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	$0, -120(%rbp)
	movq	$0, -8(%rbp)
	leaq	-176(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC17(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC18(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$350, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$351, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-120(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L26
	movq	-120(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkey_tofrom_data_select
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$354, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L28
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$356, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$357, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$225, %r9d
	movl	%esi, %r8d
	movl	$358, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	movl	%eax, -12(%rbp)
	movq	-120(%rbp), %rax
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
.LFE476:
	.size	test_dh_tofrom_data_select, .-test_dh_tofrom_data_select
	.section	.rodata
.LC29:
	.string	"pbits"
.LC30:
	.string	"generator"
.LC31:
	.string	"type"
.LC32:
	.string	"DH"
	.align 8
.LC33:
	.string	"gctx = EVP_PKEY_CTX_new_from_name(mainctx, \"DH\", NULL)"
.LC34:
	.string	"EVP_PKEY_paramgen_init(gctx)"
	.align 8
.LC35:
	.string	"EVP_PKEY_paramgen(gctx, &pkey)"
.LC36:
	.string	"pkey"
	.align 8
.LC37:
	.string	"gctx = EVP_PKEY_CTX_new_from_pkey(mainctx, pkey, NULL)"
.LC38:
	.string	"EVP_PKEY_param_check(gctx)"
	.align 8
.LC39:
	.string	"EVP_PKEY_param_check_quick(gctx)"
	.text
	.type	test_dh_paramgen, @function
test_dh_paramgen:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	$0, -152(%rbp)
	movq	$0, -8(%rbp)
	movl	$512, -156(%rbp)
	leaq	-208(%rbp), %rax
	leaq	-156(%rbp), %rdx
	leaq	.LC29(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-208(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC32(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$378, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$379, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-144(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-152(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$381, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-152(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$382, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L34
	movq	-152(%rbp), %rcx
	movq	mainctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$387, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$388, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check_quick@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$389, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L34
	movl	$1, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_dh_paramgen, .-test_dh_paramgen
	.type	set_fromdata_string, @function
set_fromdata_string:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	cmpl	$1, %eax
	je	.L38
	movl	$-1, %eax
	jmp	.L40
.L38:
	leaq	-192(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	set_fromdata_string, .-set_fromdata_string
	.type	set_fromdata_uint, @function
set_fromdata_uint:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	cmpl	$1, %eax
	je	.L42
	movl	$-1, %eax
	jmp	.L44
.L42:
	leaq	-176(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	set_fromdata_uint, .-set_fromdata_uint
	.section	.rodata
	.align 8
.LC40:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(mainctx, \"DH\", NULL)"
	.align 8
.LC41:
	.string	"set_fromdata_uint(ctx, OSSL_PKEY_PARAM_GROUP_NAME)"
.LC42:
	.string	"bad"
	.align 8
.LC43:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_GROUP_NAME, \"bad\")"
.LC44:
	.string	"p"
	.align 8
.LC45:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_P, \"bad\")"
.LC46:
	.string	"gindex"
	.align 8
.LC47:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_GINDEX, \"bad\")"
.LC48:
	.string	"pcounter"
	.align 8
.LC49:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_PCOUNTER, \"bad\")"
.LC50:
	.string	"j"
	.align 8
.LC51:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_COFACTOR, \"bad\")"
.LC52:
	.string	"hindex"
	.align 8
.LC53:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_H, \"bad\")"
.LC54:
	.string	"seed"
	.align 8
.LC55:
	.string	"set_fromdata_uint(ctx, OSSL_PKEY_PARAM_FFC_SEED)"
.LC56:
	.string	"validate-pq"
	.align 8
.LC57:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_VALIDATE_PQ, \"bad\")"
.LC58:
	.string	"validate-g"
	.align 8
.LC59:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_VALIDATE_G, \"bad\")"
.LC60:
	.string	"validate-legacy"
	.align 8
.LC61:
	.string	"set_fromdata_string(ctx, OSSL_PKEY_PARAM_FFC_VALIDATE_LEGACY, \"bad\")"
.LC62:
	.string	"digest"
	.align 8
.LC63:
	.string	"set_fromdata_uint(ctx, OSSL_PKEY_PARAM_FFC_DIGEST)"
	.text
	.type	test_dh_paramfromdata, @function
test_dh_paramfromdata:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC32(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$433, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC17(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_uint
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$434, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$435, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC44(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$436, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC46(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$437, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC48(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$438, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC50(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$439, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC52(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$440, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC54(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_uint
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$441, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC56(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$442, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC58(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$443, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC42(%rip), %rdx
	leaq	.LC60(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_string
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$444, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC62(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_fromdata_uint
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$445, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_dh_paramfromdata, .-test_dh_paramfromdata
	.section	.rodata
.LC64:
	.string	"wb"
.LC65:
	.string	"fp = fopen(filename, \"wb\")"
.LC66:
	.string	"P-256"
.LC67:
	.string	"EC"
	.align 8
.LC68:
	.string	"key = EVP_PKEY_Q_keygen(mainctx, NULL, \"EC\", \"P-256\")"
.LC69:
	.string	"i2d_PUBKEY_fp(fp, key)"
.LC70:
	.string	"fclose(fp)"
.LC71:
	.string	"rb"
.LC72:
	.string	"fp = fopen(filename, \"rb\")"
	.align 8
.LC73:
	.string	"outkey = d2i_PUBKEY_ex_fp(fp, NULL, mainctx, NULL)"
.LC74:
	.string	"EVP_PKEY_eq(key, outkey)"
	.text
	.type	test_ec_d2i_i2d_pubkey, @function
test_ec_d2i_i2d_pubkey:
.LFB481:
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
	movq	$0, -32(%rbp)
	movq	filename.1(%rip), %rax
	leaq	.LC64(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$462, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movq	mainctx(%rip), %rax
	leaq	.LC66(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$463, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY_fp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$464, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$465, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	$0, -16(%rbp)
	movq	filename.1(%rip), %rax
	leaq	.LC71(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$469, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movq	mainctx(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PUBKEY_ex_fp@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$470, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$471, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	$1, -4(%rbp)
	jmp	.L52
.L56:
	nop
	jmp	.L52
.L57:
	nop
.L52:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_ec_d2i_i2d_pubkey, .-test_ec_d2i_i2d_pubkey
	.section	.rodata
	.align 8
.LC75:
	.string	"do_pkey_tofrom_data_select(key, \"EC\")"
	.text
	.type	test_ec_tofrom_data_select, @function
test_ec_tofrom_data_select:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC66(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$488, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	leaq	.LC67(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkey_tofrom_data_select
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$489, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movl	$1, %eax
	jmp	.L60
.L59:
	movl	$0, %eax
.L60:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_ec_tofrom_data_select, .-test_ec_tofrom_data_select
	.section	.rodata
	.align 8
.LC76:
	.string	"key = EVP_PKEY_Q_keygen(mainctx, NULL, \"X25519\")"
	.align 8
.LC77:
	.string	"do_pkey_tofrom_data_select(key, \"X25519\")"
	.text
	.type	test_ecx_tofrom_data_select, @function
test_ecx_tofrom_data_select:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$500, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkey_tofrom_data_select
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$501, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_ecx_tofrom_data_select, .-test_ecx_tofrom_data_select
	.section	.rodata
.LC78:
	.string	"SM2"
	.align 8
.LC79:
	.string	"key = EVP_PKEY_Q_keygen(mainctx, NULL, \"SM2\")"
	.align 8
.LC80:
	.string	"do_pkey_tofrom_data_select(key, \"SM2\")"
	.text
	.type	test_sm2_tofrom_data_select, @function
test_sm2_tofrom_data_select:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC78(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$514, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L67
	leaq	.LC78(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkey_tofrom_data_select
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	movl	$0, %eax
.L68:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_sm2_tofrom_data_select, .-test_sm2_tofrom_data_select
	.section	.rodata
	.align 8
.LC81:
	.string	"key = d2i_AutoPrivateKey_ex(NULL, &pdata, pdata_len, mainctx, NULL)"
	.align 8
.LC82:
	.string	"do_pkey_tofrom_data_select(key, \"RSA\")"
	.text
	.type	test_rsa_tofrom_data_select, @function
test_rsa_tofrom_data_select:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	kExampleRSAKeyDER(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$608, -12(%rbp)
	movq	mainctx(%rip), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$528, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkey_tofrom_data_select
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$530, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movl	$1, %eax
	jmp	.L72
.L71:
	movl	$0, %eax
.L72:
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_rsa_tofrom_data_select, .-test_rsa_tofrom_data_select
	.section	.rodata
	.align 8
.LC83:
	.string	"pkey = d2i_AutoPrivateKey_ex(NULL, &p, input_len, mainctx, NULL)"
.LC84:
	.string	"input + input_len"
.LC85:
	.string	"expected_id"
.LC86:
	.string	"EVP_PKEY_get_id(pkey)"
	.align 8
.LC87:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_RSA_D, &priv_bn)"
	.align 8
.LC88:
	.string	"EVP_PKEY_get_octet_string_param(pkey, OSSL_PKEY_PARAM_PRIV_KEY, buffer, sizeof(buffer), &len)"
	.align 8
.LC89:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_PRIV_KEY, &priv_bn)"
	.align 8
.LC90:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_FFC_P, &p_bn)"
.LC91:
	.string	"g"
	.align 8
.LC92:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_FFC_G, &g_bn)"
	.text
	.type	test_d2i_AutoPrivateKey_ex, @function
test_d2i_AutoPrivateKey_ex:
.LFB486:
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
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
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
	movl	16(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	mainctx(%rip), %rcx
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$550, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L85
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC84(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$552, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$553, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$6, %eax
	jne	.L78
	leaq	-80(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$557, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L79
	jmp	.L77
.L78:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1034, %eax
	jne	.L80
	leaq	-88(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$564, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L79
	jmp	.L77
.L80:
	leaq	-80(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$570, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
.L79:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$28, %eax
	jne	.L82
	leaq	-64(%rbp), %rdx
	leaq	.LC44(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$576, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	leaq	-72(%rbp), %rdx
	leaq	.LC91(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$577, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
.L82:
	movl	$1, -4(%rbp)
	jmp	.L77
.L85:
	nop
	jmp	.L77
.L86:
	nop
	jmp	.L77
.L87:
	nop
.L77:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_d2i_AutoPrivateKey_ex, .-test_d2i_AutoPrivateKey_ex
	.section	.rodata
.LC93:
	.string	"default"
	.align 8
.LC94:
	.string	"provider = OSSL_PROVIDER_load(NULL, \"default\")"
	.align 8
.LC95:
	.string	"enc_bio = BIO_new(BIO_s_mem())"
	.align 8
.LC96:
	.string	"in = BIO_new_mem_buf(kExampleRSAKeyPKCS8, sizeof(kExampleRSAKeyPKCS8))"
	.align 8
.LC97:
	.string	"pkey = d2i_PrivateKey_ex_bio(in, NULL, NULL, NULL)"
	.align 8
.LC98:
	.string	"i2d_PKCS8PrivateKey_nid_bio(enc_bio, pkey, nid, pwd, sizeof(pwd) - 1, NULL, NULL)"
	.align 8
.LC99:
	.string	"enc_datalen = BIO_get_mem_data(enc_bio, &enc_data)"
	.align 8
.LC100:
	.string	"pkey_dec = d2i_PKCS8PrivateKey_bio(enc_bio, NULL, NULL, (void *)pwd)"
.LC101:
	.string	"EVP_PKEY_eq(pkey, pkey_dec)"
	.text
	.type	test_pkcs8key_nid_bio, @function
test_pkcs8key_nid_bio:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$146, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC93(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$603, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC95(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$604, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	leaq	kExampleRSAKeyPKCS8(%rip), %rax
	movl	$634, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC96(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$605, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PrivateKey_ex_bio@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$607, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	leaq	pwd.0(%rip), %rcx
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$8, %r8d
	movq	%rax, %rdi
	call	i2d_PKCS8PrivateKey_nid_bio@PLT
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$608, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L89
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$611, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L89
	leaq	pwd.0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS8PrivateKey_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$612, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movl	$1, %eax
	jmp	.L90
.L89:
	movl	$0, %eax
.L90:
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-60(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_pkcs8key_nid_bio, .-test_pkcs8key_nid_bio
	.section	.rodata
.LC102:
	.string	"SHA2-256"
	.align 8
.LC103:
	.string	"sha256 = EVP_MD_fetch(NULL, \"SHA2-256\", NULL)"
	.align 8
.LC104:
	.string	"oldctx = OSSL_LIB_CTX_set0_default(mainctx)"
.LC105:
	.string	"mainctx"
	.align 8
.LC106:
	.string	"OSSL_LIB_CTX_set0_default(oldctx)"
	.text
	.type	test_alternative_default, @function
test_alternative_default:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	$0, -28(%rbp)
	leaq	.LC102(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$635, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L100
	movq	mainctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$642, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	leaq	.LC102(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$643, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -24(%rbp)
	movq	mainctx(%rip), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$652, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L102
	leaq	.LC102(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$653, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L102
	movl	$1, -28(%rbp)
	jmp	.L94
.L100:
	nop
	jmp	.L94
.L101:
	nop
	jmp	.L94
.L102:
	nop
.L94:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_alternative_default, .-test_alternative_default
	.type	test_provider_unload_effective, @function
test_provider_unload_effective:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	leaq	.LC93(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$668, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L111
	leaq	.LC102(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$669, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L111
	cmpl	$0, -36(%rbp)
	jle	.L107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L108
.L107:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -16(%rbp)
.L108:
	leaq	.LC102(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$688, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L112
	movl	$1, -20(%rbp)
	jmp	.L106
.L111:
	nop
	jmp	.L106
.L112:
	nop
.L106:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_provider_unload_effective, .-test_provider_unload_effective
	.section	.rodata
	.align 8
.LC107:
	.string	"key_bio = BIO_new_mem_buf(keydata[id].kder, keydata[id].size)"
	.align 8
.LC108:
	.string	"pkey = PEM_read_bio_PrivateKey(key_bio, NULL, NULL, NULL)"
.LC109:
	.string	"BIO_seek(key_bio, 0)"
	.align 8
.LC110:
	.string	"pkey = d2i_PrivateKey_bio(key_bio, NULL)"
.LC111:
	.string	"ERR_peek_error()"
	.text
	.type	test_d2i_PrivateKey_ex, @function
test_d2i_PrivateKey_ex:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L114
	movl	$0, -28(%rbp)
	jmp	.L115
.L114:
	movl	$2, -28(%rbp)
.L115:
	leaq	.LC93(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$706, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L122
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+keydata(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keydata(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$708, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L123
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$710, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L124
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$714, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L125
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PrivateKey_bio@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$716, %esi
	call	test_ptr@PLT
	movl	%eax, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$717, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	call	test_openssl_errors@PLT
	jmp	.L117
.L122:
	nop
	jmp	.L117
.L123:
	nop
	jmp	.L117
.L124:
	nop
	jmp	.L117
.L125:
	nop
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	test_d2i_PrivateKey_ex, .-test_d2i_PrivateKey_ex
	.section	.rodata
	.align 8
.LC112:
	.string	"key_bio = BIO_new_mem_buf(keydata[testid].kder, keydata[testid].size)"
	.text
	.type	test_PEM_read_bio_negative, @function
test_PEM_read_bio_negative:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+keydata(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	keydata(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC112(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$735, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L136
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$738, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L137
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$740, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L138
	leaq	.LC93(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$742, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L139
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$744, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L140
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$747, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L141
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$749, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L142
	movl	$1, -4(%rbp)
	jmp	.L128
.L136:
	nop
	jmp	.L128
.L137:
	nop
	jmp	.L128
.L138:
	nop
	jmp	.L128
.L139:
	nop
	jmp	.L128
.L140:
	nop
	jmp	.L128
.L141:
	nop
	jmp	.L128
.L142:
	nop
.L128:
	call	test_openssl_errors@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_PEM_read_bio_negative, .-test_PEM_read_bio_negative
	.section	.rodata
.LC113:
	.string	"provider"
.LC114:
	.string	"key_bio"
.LC115:
	.string	"write_pkey"
.LC116:
	.string	"pass"
	.align 8
.LC117:
	.string	"PEM_write_bio_PrivateKey(key_bio, write_pkey, EVP_aes_256_cbc(), NULL, 0, NULL, \"pass\")"
.LC118:
	.string	"read_pkey"
	.align 8
.LC119:
	.string	"PEM_R_PROBLEMS_GETTING_PASSWORD"
	.align 8
.LC120:
	.string	"ERR_GET_REASON(ERR_get_error())"
	.text
	.type	test_PEM_read_bio_negative_wrong_password, @function
test_PEM_read_bio_negative_wrong_password:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC93(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$1024, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -48(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L144
	call	UI_null@PLT
	movq	%rax, -32(%rbp)
.L144:
	movq	-40(%rbp), %rax
	leaq	.LC113(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$775, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L153
	movq	-56(%rbp), %rax
	leaq	.LC114(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$777, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L154
	movq	-48(%rbp), %rax
	leaq	.LC115(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$779, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	call	UI_get_default_method@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_set_default_method@PLT
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC116(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$785, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$791, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L157
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC119(%rip), %rcx
	leaq	.LC120(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$109, %r9d
	movl	%esi, %r8d
	movl	$794, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L158
	movl	$1, -4(%rbp)
	jmp	.L146
.L153:
	nop
	jmp	.L146
.L154:
	nop
	jmp	.L146
.L155:
	nop
	jmp	.L146
.L156:
	nop
	jmp	.L146
.L157:
	nop
	jmp	.L146
.L158:
	nop
.L146:
	call	test_openssl_errors@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_set_default_method@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	test_PEM_read_bio_negative_wrong_password, .-test_PEM_read_bio_negative_wrong_password
	.section	.rodata
	.align 8
.LC121:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(mainctx, type, NULL)"
.LC122:
	.string	"EVP_PKEY_fromdata_init(ctx)"
	.align 8
.LC123:
	.string	"EVP_PKEY_fromdata(ctx, &pkey, EVP_PKEY_KEYPAIR, (OSSL_PARAM *)params)"
.LC124:
	.string	"EVP_PKEY_eq(pkey, expected)"
	.text
	.type	do_fromdata_key_is_equal, @function
do_fromdata_key_is_equal:
.LFB493:
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
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	mainctx(%rip), %rax
	movq	-56(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC121(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$816, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L160
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$817, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L160
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$818, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L160
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$821, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L160
	movl	$1, %eax
	jmp	.L161
.L160:
	movl	$0, %eax
.L161:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	do_fromdata_key_is_equal, .-do_fromdata_key_is_equal
	.section	.rodata
	.align 32
	.type	dsa_key, @object
	.size	dsa_key, 850
dsa_key:
	.base64	"MIIDTgIBAAKCAQEA2rNGTVRXx7RhoG9mF9rrkPCj0SnJX/IhPYWjSvD4Njkb4+43cAab6OMK0vH2xEIjH3R4whb1ztaroMbomT34i/tH+F4FaG2LqK2hwjpO4K3sOHUhVSLOounlO9dE61oDWaDFepJZfXoHgPxO+FZ+8QbgurLnWyJV7ktCYWcsQ5o4KxfCYhKLCyKMDBwckrHscM4PjP+NIfkZaE0yWXhCHQzFGsso4sEaNfFCChk5+oPRtKppD8KO+Vks7hH8PktE+5oyyHgjVoVJIUMSeb2gcEcvrrbXbMYHdqmKohYCiR8a0aKWVtEfEOHlnz/dCQxAkHHv"
	.base64	"FEECgjpr4fgsXb79GwIdAOAg4HwCFqdsahm61YNz830x76fhXVt/8/zahDECggEBAIPbobw+xymlalws6HqMfui4PhNHzTZ+eTB6KAPT1NLj7jtG2uBx5s9Ghgo3V7bpz6F4GbhynzCMKgR8Lwwnp7Mj4EbydQwDTK37wcsozaBj20SI4NpsW4myW0Bt63h61a9AUkZjkhMN7u75U8otTjsT2A9Q0ERXZw9FjyEwl56A2dCRt8laadrr1eo39rO+HyTxVRQoBbXYhA9iharsd2T9gHxBAIijeX1Pb+N29LWXt+tnKLoHGlkywVPZBWtjk86h2Xqy/xwSCprlUR66"
	.base64	"/JUuKKn8TO17Bcpn4C3XVLMFHCMrNS4ZSFkOWKgBVvt4kLoId5RFBRPHa5bSo6YBnzQCggEAFhq0bZ8WbMyRZv4w645Euit6yaiV8qY42K8+kWjoUvOXN3DyR6P0Yib1O3FSUBWcbaZtkkxIdjFUSKWZetRh9yFE59iCw1DT2dRmIKtwTJebjawfeCceR/g70VVz87SObUVAVMbYlRUnt19lqsskyUmHMq3L+DVjVnJ8TmytXyaM0oBBr4gjIAOk1TxTVLA97Q6eUwpjX/0oVwkHc/QM1HFda6DXhpkpm8r7zNYv/r6U7xoOVYSnr3v67XdhKCLuaxHdsBceBuQp"
	.base64	"TMI/1nW2CARVE0hPROqNr8usIsRqs4blR6m1chcjEYF/AABnXPRYzOJGzvVt2BiRxCC/B0hF/QIcL2hEy/try40CSXzu0qbTQ7ikCbfB1EvDZqfgIQ=="
	.align 32
	.type	dsa_p, @object
	.size	dsa_p, 257
dsa_p:
	.base64	"ANqzRk1UV8e0YaBvZhfa65Dwo9EpyV/yIT2Fo0rw+DY5G+PuN3AGm+jjCtLx9sRCIx90eMIW9c7Wq6DG6Jk9+Iv7R/heBWhti6itocI6TuCt7Dh1IVUizqLp5TvXROtaA1mgxXqSWX16B4D8TvhWfvEG4Lqy51siVe5LQmFnLEOaOCsXwmISiwsijAwcHJKx7HDOD4z/jSH5GWhNMll4Qh0MxRrLKOLBGjXxQgoZOfqD0bSqaQ/CjvlZLO4R/D5LRPuaMsh4I1aFSSFDEnm9oHBHL66212zGB3apiqIWAokfGtGillbRHxDh5Z8/3QkMQJBx7xRBAoI6a+H4LF2+"
	.ascii	"\375\033"
	.align 16
	.type	dsa_q, @object
	.size	dsa_q, 29
dsa_q:
	.base64	"AOAg4HwCFqdsahm61YNz830x76fhXVt/8/zahDE="
	.align 32
	.type	dsa_g, @object
	.size	dsa_g, 257
dsa_g:
	.base64	"AIPbobw+xymlalws6HqMfui4PhNHzTZ+eTB6KAPT1NLj7jtG2uBx5s9Ghgo3V7bpz6F4GbhynzCMKgR8Lwwnp7Mj4EbydQwDTK37wcsozaBj20SI4NpsW4myW0Bt63h61a9AUkZjkhMN7u75U8otTjsT2A9Q0ERXZw9FjyEwl56A2dCRt8laadrr1eo39rO+HyTxVRQoBbXYhA9iharsd2T9gHxBAIijeX1Pb+N29LWXt+tnKLoHGlkywVPZBWtjk86h2Xqy/xwSCprlUR66/JUuKKn8TO17Bcpn4C3XVLMFHCMrNS4ZSFkOWKgBVvt4kLoId5RFBRPHa5bSo6YB"
	.ascii	"\2374"
	.align 16
	.type	dsa_priv, @object
	.size	dsa_priv, 28
dsa_priv:
	.base64	"L2hEy/try40CSXzu0qbTQ7ikCbfB1EvDZqfgIQ=="
	.align 32
	.type	dsa_pub, @object
	.size	dsa_pub, 256
dsa_pub:
	.base64	"Fhq0bZ8WbMyRZv4w645Euit6yaiV8qY42K8+kWjoUvOXN3DyR6P0Yib1O3FSUBWcbaZtkkxIdjFUSKWZetRh9yFE59iCw1DT2dRmIKtwTJebjawfeCceR/g70VVz87SObUVAVMbYlRUnt19lqsskyUmHMq3L+DVjVnJ8TmytXyaM0oBBr4gjIAOk1TxTVLA97Q6eUwpjX/0oVwkHc/QM1HFda6DXhpkpm8r7zNYv/r6U7xoOVYSnr3v67XdhKCLuaxHdsBceBuQpTMI/1nW2CARVE0hPROqNr8usIsRqs4blR6m1chcjEYF/AABnXPRYzOJGzvVt2BiRxCC/B0hF"
	.ascii	"\375"
.LC125:
	.string	"DSA"
	.align 8
.LC126:
	.string	"gen_ctx = EVP_PKEY_CTX_new_from_name(mainctx, \"DSA\", NULL)"
	.align 8
.LC127:
	.string	"EVP_PKEY_fromdata_init(gen_ctx)"
	.align 8
.LC128:
	.string	"EVP_PKEY_fromdata(gen_ctx, &pkey, EVP_PKEY_KEYPAIR, key_params)"
	.align 8
.LC129:
	.string	"check_ctx = EVP_PKEY_CTX_new_from_pkey(mainctx, pkey, NULL)"
.LC130:
	.string	"expected"
	.align 8
.LC131:
	.string	"EVP_PKEY_param_check(check_ctx)"
	.text
	.type	do_check_params, @function
do_check_params:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	mainctx(%rip), %rax
	leaq	.LC125(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$984, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC127(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$985, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$986, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movq	-32(%rbp), %rcx
	movq	mainctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$988, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC130(%rip), %rcx
	leaq	.LC131(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$990, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movl	$1, %eax
	jmp	.L165
.L164:
	movl	$0, %eax
.L165:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	do_check_params, .-do_check_params
	.section	.rodata
	.align 8
.LC132:
	.string	"p = OSSL_PARAM_locate(params, key)"
.LC133:
	.string	"OSSL_PARAM_get_BN(p, &bn)"
	.align 8
.LC134:
	.string	"len = BN_bn2binpad(bn, buffer, expected_len)"
.LC135:
	.string	"buffer"
	.text
	.type	do_check_bn, @function
do_check_bn:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	$0, -24(%rbp)
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1005, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L168
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1006, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L168
	movq	-320(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC134(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1007, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L168
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movq	-320(%rbp), %r8
	movq	-312(%rbp), %rdi
	leaq	.LC135(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	leaq	.LC6(%rip), %rax
	pushq	%rsi
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1008, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L168
	movl	$1, %eax
	jmp	.L169
.L168:
	movl	$0, %eax
.L169:
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	do_check_bn, .-do_check_bn
	.section	.rodata
.LC136:
	.string	"OSSL_PARAM_get_int(p, &val)"
.LC137:
	.string	"val"
	.text
	.type	do_check_int, @function
do_check_int:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1018, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC136(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1019, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	movl	-12(%rbp), %esi
	movl	-36(%rbp), %edi
	leaq	.LC130(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1020, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L172
	movl	$1, %eax
	jmp	.L174
.L172:
	movl	$0, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	do_check_int, .-do_check_int
	.section	.rodata
	.align 8
.LC138:
	.string	"key = d2i_AutoPrivateKey_ex(NULL, &pkeydata, sizeof(dsa_key), mainctx, NULL)"
	.align 8
.LC139:
	.string	"do_pkey_tofrom_data_select(key, \"DSA\")"
	.text
	.type	test_dsa_tofrom_data_select, @function
test_dsa_tofrom_data_select:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	dsa_key(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	mainctx(%rip), %rdx
	leaq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$850, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC138(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1029, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L176
	leaq	.LC125(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkey_tofrom_data_select
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1031, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	movl	$1, %eax
	jmp	.L177
.L176:
	movl	$0, %eax
.L177:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_dsa_tofrom_data_select, .-test_dsa_tofrom_data_select
	.section	.rodata
	.align 8
.LC140:
	.string	"pkey = d2i_AutoPrivateKey_ex(NULL, &pkeydata, sizeof(dsa_key), mainctx, NULL)"
	.align 8
.LC141:
	.string	"EVP_PKEY_todata(pkey, EVP_PKEY_KEYPAIR, &to_params)"
.LC142:
	.string	"q"
.LC143:
	.string	"pub"
	.align 8
.LC144:
	.string	"OSSL_PARAM_locate(to_params, OSSL_PKEY_PARAM_FFC_SEED)"
	.align 8
.LC145:
	.string	"all_params = OSSL_PARAM_merge(to_params, gen_params)"
	.text
	.type	test_dsa_todata, @function
test_dsa_todata:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	dsa_key(%rip), %rax
	movq	%rax, -200(%rbp)
	movabsq	$-6385086543064626500, %rax
	movabsq	$-6934994551383302749, %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movabsq	$8352807423043564338, %rax
	movabsq	$-2241735363211121309, %rdx
	movq	%rax, -228(%rbp)
	movq	%rdx, -220(%rbp)
	movl	$319, -244(%rbp)
	movl	$5, -248(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-240(%rbp), %rdx
	leaq	.LC54(%rip), %rsi
	movl	$28, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-248(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-244(%rbp), %rdx
	leaq	.LC48(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	mainctx(%rip), %rdx
	leaq	-200(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$850, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1062, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L190
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_todata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC141(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1064, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	dsa_p(%rip), %rdx
	leaq	.LC44(%rip), %rsi
	movl	$257, %ecx
	movq	%rax, %rdi
	call	do_check_bn
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	dsa_q(%rip), %rdx
	leaq	.LC142(%rip), %rsi
	movl	$29, %ecx
	movq	%rax, %rdi
	call	do_check_bn
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	dsa_g(%rip), %rdx
	leaq	.LC91(%rip), %rsi
	movl	$257, %ecx
	movq	%rax, %rdi
	call	do_check_bn
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	dsa_pub(%rip), %rdx
	leaq	.LC143(%rip), %rsi
	movl	$256, %ecx
	movq	%rax, %rdi
	call	do_check_bn
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	dsa_priv(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$28, %ecx
	movq	%rax, %rdi
	call	do_check_bn
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC46(%rip), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_check_int
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC48(%rip), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_check_int
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_check_int
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC56(%rip), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_check_int
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC58(%rip), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_check_int
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC60(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_check_int
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, %rcx
	leaq	.LC144(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1078, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L190
	movq	-32(%rbp), %rax
	leaq	.LC125(%rip), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_fromdata_key_is_equal
	testl	%eax, %eax
	je	.L191
	movq	-32(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC145(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1084, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L192
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	do_check_params
	testl	%eax, %eax
	je	.L192
	leaq	-304(%rbp), %rax
	leaq	-248(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-244(%rbp), %rdx
	leaq	.LC48(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_check_params
	testl	%eax, %eax
	je	.L193
	movl	-248(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -248(%rbp)
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_check_params
	testl	%eax, %eax
	je	.L194
	movl	-244(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -244(%rbp)
	movb	$-80, -240(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_check_params
	testl	%eax, %eax
	je	.L195
	movl	$1, -12(%rbp)
	jmp	.L182
.L190:
	nop
	jmp	.L182
.L191:
	nop
	jmp	.L182
.L192:
	nop
	jmp	.L182
.L193:
	nop
	jmp	.L182
.L194:
	nop
	jmp	.L182
.L195:
	nop
.L182:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_dsa_todata, .-test_dsa_todata
	.section	.rodata
.LC146:
	.string	"SHA512"
.LC147:
	.string	"provider=unknown"
.LC148:
	.string	"provider=default"
.LC149:
	.string	"properties"
	.align 8
.LC150:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(mainctx, \"DSA\", NULL)"
	.align 8
.LC151:
	.string	"EVP_PKEY_fromdata(ctx, &pkey, EVP_PKEY_KEY_PARAMETERS, params)"
	.align 8
.LC152:
	.string	"EVP_PKEY_paramgen(gctx, &pkey2)"
	.text
	.type	test_dsa_fromdata_digest_prop, @function
test_dsa_fromdata_digest_prop:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$0, -260(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	$512, -244(%rbp)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-244(%rbp), %rdx
	leaq	.LC29(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
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
	leaq	.LC146(%rip), %rdx
	leaq	.LC62(%rip), %rsi
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
	cmpl	$0, -260(%rbp)
	jne	.L197
	leaq	.LC147(%rip), %rax
	jmp	.L198
.L197:
	leaq	.LC148(%rip), %rax
.L198:
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rdx
	movq	%rdx, -48(%rbp)
	leaq	-320(%rbp), %rdi
	leaq	.LC149(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdx
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
	movq	mainctx(%rip), %rax
	leaq	.LC125(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC150(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L205
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1139, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L205
	leaq	-240(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1140, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L205
	movq	-64(%rbp), %rcx
	movq	mainctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1143, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1144, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L206
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	movl	%eax, %esi
	movl	-52(%rbp), %edi
	leaq	.LC130(%rip), %rcx
	leaq	.LC152(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1145, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L206
	movl	$1, -28(%rbp)
	jmp	.L201
.L205:
	nop
	jmp	.L201
.L206:
	nop
.L201:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_dsa_fromdata_digest_prop, .-test_dsa_fromdata_digest_prop
	.section	.rodata
	.align 8
.LC153:
	.string	"pkey = d2i_AutoPrivateKey_ex(NULL, &pdata, keydata[0].size, mainctx, NULL)"
	.align 8
.LC154:
	.string	"EVP_PKEY_todata(NULL, EVP_PKEY_KEYPAIR, &params)"
	.align 8
.LC155:
	.string	"EVP_PKEY_todata(pkey, EVP_PKEY_KEYPAIR, NULL)"
	.text
	.type	test_pkey_todata_null, @function
test_pkey_todata_null:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	keydata(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	mainctx(%rip), %rdx
	movq	8+keydata(%rip), %rax
	movq	%rax, %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$135, %esi
	movl	$0, %edi
	call	EVP_PKEY_todata@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1167, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_todata@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC155(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1168, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L208
	movl	$1, %eax
	jmp	.L209
.L208:
	movl	$0, %eax
.L209:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_pkey_todata_null, .-test_pkey_todata_null
	.type	test_pkey_export_cb, @function
test_pkey_export_cb:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L212
	movl	$0, %eax
	jmp	.L213
.L212:
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_fromdata_key_is_equal
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_pkey_export_cb, .-test_pkey_export_cb
	.section	.rodata
	.align 8
.LC156:
	.string	"EVP_PKEY_export(NULL, EVP_PKEY_KEYPAIR, test_pkey_export_cb, NULL)"
	.align 8
.LC157:
	.string	"EVP_PKEY_export(pkey, EVP_PKEY_KEYPAIR, NULL, NULL)"
	.text
	.type	test_pkey_export_null, @function
test_pkey_export_null:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	keydata(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	mainctx(%rip), %rdx
	movq	8+keydata(%rip), %rax
	movq	%rax, %rsi
	leaq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1188, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L215
	leaq	test_pkey_export_cb(%rip), %rax
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$135, %esi
	movl	$0, %edi
	call	EVP_PKEY_export@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC156(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1190, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L215
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_export@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC157(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1192, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L215
	movl	$1, %eax
	jmp	.L216
.L215:
	movl	$0, %eax
.L216:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	test_pkey_export_null, .-test_pkey_export_null
	.section	.rodata
	.align 8
.LC158:
	.string	"pkey = d2i_AutoPrivateKey_ex(NULL, &pdata, pdata_len, mainctx, NULL)"
	.align 8
.LC159:
	.string	"EVP_PKEY_export(pkey, EVP_PKEY_KEYPAIR, test_pkey_export_cb, pkey)"
	.align 8
.LC160:
	.string	"EVP_PKEY_export(pkey, EVP_PKEY_KEYPAIR, test_pkey_export_cb, NULL)"
	.align 8
.LC161:
	.string	"rsa = d2i_RSAPrivateKey(NULL, &pdata, pdata_len)"
.LC162:
	.string	"pkey = EVP_PKEY_new()"
	.align 8
.LC163:
	.string	"EVP_PKEY_assign_RSA(pkey, rsa)"
	.text
	.type	test_pkey_export, @function
test_pkey_export:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -12(%rbp)
	movq	keydata(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	8+keydata(%rip), %rax
	movl	%eax, -28(%rbp)
	movq	mainctx(%rip), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC158(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1207, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L219
	movq	-8(%rbp), %rdx
	leaq	test_pkey_export_cb(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC159(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L219
	leaq	test_pkey_export_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1211, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L220
.L219:
	movl	$0, -12(%rbp)
.L220:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	keydata(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	8+keydata(%rip), %rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_RSAPrivateKey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC161(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1220, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L221
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC162(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1221, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L221
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L221
	movq	-8(%rbp), %rdx
	leaq	test_pkey_export_cb(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC159(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1223, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L221
	leaq	test_pkey_export_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1225, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L222
.L221:
	movl	$0, -12(%rbp)
.L222:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	test_pkey_export, .-test_pkey_export
	.section	.rodata
.LC164:
	.string	"pad-mode"
	.align 8
.LC165:
	.string	"pctx = EVP_PKEY_CTX_new_from_pkey(mainctx, pkey, NULL)"
	.align 8
.LC166:
	.string	"EVP_PKEY_sign_init_ex(pctx, sig_params)"
	.align 8
.LC167:
	.string	"EVP_PKEY_sign(pctx, NULL, &sig_len, mdbuf, sizeof(mdbuf))"
.LC168:
	.string	"sig_len"
.LC169:
	.string	"sig = OPENSSL_malloc(sig_len)"
	.align 8
.LC170:
	.string	"EVP_PKEY_sign(pctx, sig, &sig_len, mdbuf, sizeof(mdbuf))"
	.text
	.type	test_rsa_pss_sign, @function
test_rsa_pss_sign:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
	movq	keydata(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC102(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movl	$6, -212(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -224(%rbp)
	leaq	-272(%rbp), %rax
	leaq	-212(%rbp), %rdx
	leaq	.LC164(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-272(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC62(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	mainctx(%rip), %rdx
	movq	8+keydata(%rip), %rax
	movq	%rax, %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1252, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L225
	movq	mainctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC165(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1254, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L225
	leaq	-176(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init_ex@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1255, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L225
	leaq	-208(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$32, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC167(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1256, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L225
	movq	-224(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1258, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L225
	movq	-224(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$1259, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC169(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1259, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L225
	leaq	-208(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC170(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1260, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L225
	movl	$1, %eax
	jmp	.L226
.L225:
	movl	$0, %eax
.L226:
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC6(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1264, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_rsa_pss_sign, .-test_rsa_pss_sign
	.section	.rodata
.LC171:
	.string	"mdctx = EVP_MD_CTX_new()"
	.align 8
.LC172:
	.string	"copyctx = EVP_MD_CTX_dup(mdctx)"
	.text
	.type	test_evp_md_ctx_dup, @function
test_evp_md_ctx_dup:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC171(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1277, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L229
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_dup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC172(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1278, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L229
	movl	$1, %eax
	jmp	.L230
.L229:
	movl	$0, %eax
.L230:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	test_evp_md_ctx_dup, .-test_evp_md_ctx_dup
	.section	.rodata
.LC173:
	.string	"copyctx = EVP_MD_CTX_new()"
	.align 8
.LC174:
	.string	"EVP_MD_CTX_copy_ex(copyctx, mdctx)"
	.text
	.type	test_evp_md_ctx_copy, @function
test_evp_md_ctx_copy:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC171(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1292, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L233
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC173(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1293, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L233
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC174(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L233
	movl	$1, %eax
	jmp	.L234
.L233:
	movl	$0, %eax
.L234:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_evp_md_ctx_copy, .-test_evp_md_ctx_copy
	.section	.rodata
	.align 8
.LC175:
	.string	"EVP_PBE_alg_add(NID_pbeWithMD5AndDES_CBC, EVP_des_cbc(), EVP_md5(), PKCS5_PBE_keyivgen)"
	.align 8
.LC176:
	.string	"EVP_PBE_find_ex(EVP_PBE_TYPE_OUTER, NID_pbeWithMD5AndDES_CBC, &cipher_nid, &md_nid, &keygen, &keygen_ex)"
.LC177:
	.string	"keygen != NULL"
.LC178:
	.string	"keygen_ex == NULL"
	.text
	.type	test_evp_pbe_alg_add, @function
test_evp_pbe_alg_add:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	call	EVP_md5@PLT
	movq	%rax, %rbx
	call	EVP_des_cbc@PLT
	movq	PKCS5_PBE_keyivgen@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$10, %edi
	call	EVP_PBE_alg_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L243
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$10, %esi
	movl	$0, %edi
	call	EVP_PBE_find_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC176(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1313, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1317, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L245
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$1319, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L246
	movl	$1, -20(%rbp)
	jmp	.L238
.L243:
	nop
	jmp	.L238
.L244:
	nop
	jmp	.L238
.L245:
	nop
	jmp	.L238
.L246:
	nop
.L238:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_evp_pbe_alg_add, .-test_evp_pbe_alg_add
	.section	.rodata
.LC179:
	.string	"SHA256:BogusName"
	.align 8
.LC180:
	.string	"md = EVP_MD_fetch(mainctx, \"SHA256:BogusName\", NULL)"
	.text
	.type	evp_test_name_parsing, @function
evp_test_name_parsing:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	mainctx(%rip), %rax
	leaq	.LC179(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC180(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$1339, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L248
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L249
.L248:
	movl	$1, %eax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	evp_test_name_parsing, .-evp_test_name_parsing
	.section	.rodata
.LC181:
	.string	"evp_test_name_parsing"
.LC182:
	.string	"test_alternative_default"
.LC183:
	.string	"test_d2i_AutoPrivateKey_ex"
.LC184:
	.string	"test_d2i_PrivateKey_ex"
.LC185:
	.string	"test_ec_tofrom_data_select"
.LC186:
	.string	"test_ecx_tofrom_data_select"
.LC187:
	.string	"test_ec_d2i_i2d_pubkey"
.LC188:
	.string	"test_sm2_tofrom_data_select"
.LC189:
	.string	"test_dsa_todata"
.LC190:
	.string	"test_dsa_tofrom_data_select"
.LC191:
	.string	"test_dsa_fromdata_digest_prop"
.LC192:
	.string	"test_dh_tofrom_data_select"
.LC193:
	.string	"test_dh_paramgen"
.LC194:
	.string	"test_dh_paramfromdata"
.LC195:
	.string	"test_rsa_tofrom_data_select"
.LC196:
	.string	"test_pkey_todata_null"
.LC197:
	.string	"test_pkey_export_null"
.LC198:
	.string	"test_pkey_export"
.LC199:
	.string	"test_pkcs8key_nid_bio"
.LC200:
	.string	"test_PEM_read_bio_negative"
	.align 8
.LC201:
	.string	"test_PEM_read_bio_negative_wrong_password"
.LC202:
	.string	"test_rsa_pss_sign"
.LC203:
	.string	"test_evp_md_ctx_dup"
.LC204:
	.string	"test_evp_md_ctx_copy"
	.align 8
.LC205:
	.string	"test_provider_unload_effective"
.LC206:
	.string	"test_evp_pbe_alg_add"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	nullprov(%rip), %rsi
	leaq	mainctx(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L251
	movq	mainctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	$0, mainctx(%rip)
	movl	$0, %eax
	jmp	.L252
.L251:
	leaq	evp_test_name_parsing(%rip), %rdx
	leaq	.LC181(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_alternative_default(%rip), %rdx
	leaq	.LC182(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_d2i_AutoPrivateKey_ex(%rip), %rsi
	leaq	.LC183(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_d2i_PrivateKey_ex(%rip), %rsi
	leaq	.LC184(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ec_tofrom_data_select(%rip), %rdx
	leaq	.LC185(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ecx_tofrom_data_select(%rip), %rdx
	leaq	.LC186(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_d2i_i2d_pubkey(%rip), %rdx
	leaq	.LC187(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sm2_tofrom_data_select(%rip), %rdx
	leaq	.LC188(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dsa_todata(%rip), %rdx
	leaq	.LC189(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dsa_tofrom_data_select(%rip), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dsa_fromdata_digest_prop(%rip), %rsi
	leaq	.LC191(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_dh_tofrom_data_select(%rip), %rdx
	leaq	.LC192(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dh_paramgen(%rip), %rdx
	leaq	.LC193(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dh_paramfromdata(%rip), %rdx
	leaq	.LC194(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_rsa_tofrom_data_select(%rip), %rdx
	leaq	.LC195(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_todata_null(%rip), %rdx
	leaq	.LC196(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_export_null(%rip), %rdx
	leaq	.LC197(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_export(%rip), %rdx
	leaq	.LC198(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8key_nid_bio(%rip), %rdx
	leaq	.LC199(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PEM_read_bio_negative(%rip), %rsi
	leaq	.LC200(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_PEM_read_bio_negative_wrong_password(%rip), %rsi
	leaq	.LC201(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rsa_pss_sign(%rip), %rdx
	leaq	.LC202(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_md_ctx_dup(%rip), %rdx
	leaq	.LC203(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_md_ctx_copy(%rip), %rdx
	leaq	.LC204(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_provider_unload_effective(%rip), %rsi
	leaq	.LC205(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_pbe_alg_add(%rip), %rdx
	leaq	.LC206(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L252:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	mainctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC207:
	.string	"pubkey.der"
	.section	.data.rel.local
	.align 8
	.type	filename.1, @object
	.size	filename.1, 8
filename.1:
	.quad	.LC207
	.section	.rodata
	.align 8
	.type	pwd.0, @object
	.size	pwd.0, 9
pwd.0:
	.string	"PASSWORD"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

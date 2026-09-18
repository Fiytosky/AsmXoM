	.file	"legacyprov.c"
	.text
	.section	.rodata
.LC0:
	.string	"name"
.LC1:
	.string	"version"
.LC2:
	.string	"buildinfo"
.LC3:
	.string	"status"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	legacy_param_types, @object
	.size	legacy_param_types, 200
legacy_param_types:
	.quad	.LC0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	legacy_gettable_params, @function
legacy_gettable_params:
.LFB316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	legacy_param_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE316:
	.size	legacy_gettable_params, .-legacy_gettable_params
	.section	.rodata
.LC4:
	.string	"OpenSSL Legacy Provider"
.LC5:
	.string	"3.3.5"
	.text
	.type	legacy_get_params, @function
legacy_get_params:
.LFB317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L5
.L6:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L5
.L7:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	call	ossl_prov_is_running@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L5
.L8:
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE317:
	.size	legacy_get_params, .-legacy_get_params
	.section	.rodata
.LC6:
	.string	"MD4:1.2.840.113549.2.4"
.LC7:
	.string	"provider=legacy"
.LC8:
	.string	"MDC2:2.5.8.3.101"
.LC9:
	.string	"WHIRLPOOL:1.0.10118.3.0.55"
	.align 8
.LC10:
	.string	"RIPEMD-160:RIPEMD160:RIPEMD:RMD160:1.3.36.3.2.1"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	legacy_digests, @object
	.size	legacy_digests, 160
legacy_digests:
	.quad	.LC6
	.quad	.LC7
	.quad	ossl_md4_functions
	.zero	8
	.quad	.LC8
	.quad	.LC7
	.quad	ossl_mdc2_functions
	.zero	8
	.quad	.LC9
	.quad	.LC7
	.quad	ossl_wp_functions
	.zero	8
	.quad	.LC10
	.quad	.LC7
	.quad	ossl_ripemd160_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC11:
	.string	"CAST5-ECB"
	.align 8
.LC12:
	.string	"CAST5-CBC:CAST-CBC:CAST:1.2.840.113533.7.66.10"
.LC13:
	.string	"CAST5-OFB"
.LC14:
	.string	"CAST5-CFB"
.LC15:
	.string	"BF-ECB"
	.align 8
.LC16:
	.string	"BF-CBC:BF:BLOWFISH:1.3.6.1.4.1.3029.1.2"
.LC17:
	.string	"BF-OFB"
.LC18:
	.string	"BF-CFB"
.LC19:
	.string	"IDEA-ECB"
	.align 8
.LC20:
	.string	"IDEA-CBC:IDEA:1.3.6.1.4.1.188.7.1.1.2"
.LC21:
	.string	"IDEA-OFB:IDEA-OFB64"
.LC22:
	.string	"IDEA-CFB:IDEA-CFB64"
.LC23:
	.string	"SEED-ECB:1.2.410.200004.1.3"
	.align 8
.LC24:
	.string	"SEED-CBC:SEED:1.2.410.200004.1.4"
	.align 8
.LC25:
	.string	"SEED-OFB:SEED-OFB128:1.2.410.200004.1.6"
	.align 8
.LC26:
	.string	"SEED-CFB:SEED-CFB128:1.2.410.200004.1.5"
.LC27:
	.string	"RC2-ECB"
	.align 8
.LC28:
	.string	"RC2-CBC:RC2:RC2-128:1.2.840.113549.3.2"
.LC29:
	.string	"RC2-40-CBC:RC2-40"
.LC30:
	.string	"RC2-64-CBC:RC2-64"
.LC31:
	.string	"RC2-CFB"
.LC32:
	.string	"RC2-OFB"
.LC33:
	.string	"RC4:1.2.840.113549.3.4"
.LC34:
	.string	"RC4-40"
.LC35:
	.string	"RC4-HMAC-MD5"
.LC36:
	.string	"DESX-CBC:DESX"
.LC37:
	.string	"DES-ECB:1.3.14.3.2.6"
.LC38:
	.string	"DES-CBC:DES:1.3.14.3.2.7"
.LC39:
	.string	"DES-OFB:1.3.14.3.2.8"
.LC40:
	.string	"DES-CFB:1.3.14.3.2.9"
.LC41:
	.string	"DES-CFB1"
.LC42:
	.string	"DES-CFB8"
	.section	.data.rel.ro
	.align 32
	.type	legacy_ciphers, @object
	.size	legacy_ciphers, 1056
legacy_ciphers:
	.quad	.LC11
	.quad	.LC7
	.quad	ossl_cast5128ecb_functions
	.zero	8
	.quad	.LC12
	.quad	.LC7
	.quad	ossl_cast5128cbc_functions
	.zero	8
	.quad	.LC13
	.quad	.LC7
	.quad	ossl_cast5128ofb64_functions
	.zero	8
	.quad	.LC14
	.quad	.LC7
	.quad	ossl_cast5128cfb64_functions
	.zero	8
	.quad	.LC15
	.quad	.LC7
	.quad	ossl_blowfish128ecb_functions
	.zero	8
	.quad	.LC16
	.quad	.LC7
	.quad	ossl_blowfish128cbc_functions
	.zero	8
	.quad	.LC17
	.quad	.LC7
	.quad	ossl_blowfish128ofb64_functions
	.zero	8
	.quad	.LC18
	.quad	.LC7
	.quad	ossl_blowfish128cfb64_functions
	.zero	8
	.quad	.LC19
	.quad	.LC7
	.quad	ossl_idea128ecb_functions
	.zero	8
	.quad	.LC20
	.quad	.LC7
	.quad	ossl_idea128cbc_functions
	.zero	8
	.quad	.LC21
	.quad	.LC7
	.quad	ossl_idea128ofb64_functions
	.zero	8
	.quad	.LC22
	.quad	.LC7
	.quad	ossl_idea128cfb64_functions
	.zero	8
	.quad	.LC23
	.quad	.LC7
	.quad	ossl_seed128ecb_functions
	.zero	8
	.quad	.LC24
	.quad	.LC7
	.quad	ossl_seed128cbc_functions
	.zero	8
	.quad	.LC25
	.quad	.LC7
	.quad	ossl_seed128ofb128_functions
	.zero	8
	.quad	.LC26
	.quad	.LC7
	.quad	ossl_seed128cfb128_functions
	.zero	8
	.quad	.LC27
	.quad	.LC7
	.quad	ossl_rc2128ecb_functions
	.zero	8
	.quad	.LC28
	.quad	.LC7
	.quad	ossl_rc2128cbc_functions
	.zero	8
	.quad	.LC29
	.quad	.LC7
	.quad	ossl_rc240cbc_functions
	.zero	8
	.quad	.LC30
	.quad	.LC7
	.quad	ossl_rc264cbc_functions
	.zero	8
	.quad	.LC31
	.quad	.LC7
	.quad	ossl_rc2128cfb128_functions
	.zero	8
	.quad	.LC32
	.quad	.LC7
	.quad	ossl_rc2128ofb128_functions
	.zero	8
	.quad	.LC33
	.quad	.LC7
	.quad	ossl_rc4128_functions
	.zero	8
	.quad	.LC34
	.quad	.LC7
	.quad	ossl_rc440_functions
	.zero	8
	.quad	.LC35
	.quad	.LC7
	.quad	ossl_rc4_hmac_ossl_md5_functions
	.zero	8
	.quad	.LC36
	.quad	.LC7
	.quad	ossl_tdes_desx_cbc_functions
	.zero	8
	.quad	.LC37
	.quad	.LC7
	.quad	ossl_des_ecb_functions
	.zero	8
	.quad	.LC38
	.quad	.LC7
	.quad	ossl_des_cbc_functions
	.zero	8
	.quad	.LC39
	.quad	.LC7
	.quad	ossl_des_ofb64_functions
	.zero	8
	.quad	.LC40
	.quad	.LC7
	.quad	ossl_des_cfb64_functions
	.zero	8
	.quad	.LC41
	.quad	.LC7
	.quad	ossl_des_cfb1_functions
	.zero	8
	.quad	.LC42
	.quad	.LC7
	.quad	ossl_des_cfb8_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC43:
	.string	"PBKDF1"
.LC44:
	.string	"PVKKDF"
	.section	.data.rel.ro
	.align 32
	.type	legacy_kdfs, @object
	.size	legacy_kdfs, 96
legacy_kdfs:
	.quad	.LC43
	.quad	.LC7
	.quad	ossl_kdf_pbkdf1_functions
	.zero	8
	.quad	.LC44
	.quad	.LC7
	.quad	ossl_kdf_pvk_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	legacy_query, @function
legacy_query:
.LFB318:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$4, -12(%rbp)
	je	.L10
	cmpl	$4, -12(%rbp)
	jg	.L11
	cmpl	$1, -12(%rbp)
	je	.L12
	cmpl	$2, -12(%rbp)
	je	.L13
	jmp	.L11
.L12:
	leaq	legacy_digests(%rip), %rax
	jmp	.L14
.L13:
	leaq	legacy_ciphers(%rip), %rax
	jmp	.L14
.L10:
	leaq	legacy_kdfs(%rip), %rax
	jmp	.L14
.L11:
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE318:
	.size	legacy_query, .-legacy_query
	.type	legacy_teardown, @function
legacy_teardown:
.LFB319:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE319:
	.size	legacy_teardown, .-legacy_teardown
	.section	.data.rel.ro.local
	.align 32
	.type	legacy_dispatch_table, @object
	.size	legacy_dispatch_table, 80
legacy_dispatch_table:
	.long	1024
	.zero	4
	.quad	legacy_teardown
	.long	1025
	.zero	4
	.quad	legacy_gettable_params
	.long	1026
	.zero	4
	.quad	legacy_get_params
	.long	1027
	.zero	4
	.quad	legacy_query
	.long	0
	.zero	4
	.quad	0
	.text
	.globl	ossl_legacy_provider_init
	.type	ossl_legacy_provider_init, @function
ossl_legacy_provider_init:
.LFB320:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_ctx_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_new_child@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	legacy_teardown
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_ctx_set0_libctx@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_ctx_set0_handle@PLT
	movq	-40(%rbp), %rax
	leaq	legacy_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_legacy_provider_init, .-ossl_legacy_provider_init
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

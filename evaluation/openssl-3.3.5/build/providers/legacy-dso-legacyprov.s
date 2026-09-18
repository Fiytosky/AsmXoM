	.file	"legacyprov.c"
	.text
	.type	OSSL_FUNC_core_new_error, @function
OSSL_FUNC_core_new_error:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	OSSL_FUNC_core_new_error, .-OSSL_FUNC_core_new_error
	.type	OSSL_FUNC_core_set_error_debug, @function
OSSL_FUNC_core_set_error_debug:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	OSSL_FUNC_core_set_error_debug, .-OSSL_FUNC_core_set_error_debug
	.type	OSSL_FUNC_core_vset_error, @function
OSSL_FUNC_core_vset_error:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	OSSL_FUNC_core_vset_error, .-OSSL_FUNC_core_vset_error
	.type	OSSL_FUNC_core_set_error_mark, @function
OSSL_FUNC_core_set_error_mark:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	OSSL_FUNC_core_set_error_mark, .-OSSL_FUNC_core_set_error_mark
	.type	OSSL_FUNC_core_clear_last_error_mark, @function
OSSL_FUNC_core_clear_last_error_mark:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	OSSL_FUNC_core_clear_last_error_mark, .-OSSL_FUNC_core_clear_last_error_mark
	.type	OSSL_FUNC_core_pop_error_to_mark, @function
OSSL_FUNC_core_pop_error_to_mark:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	OSSL_FUNC_core_pop_error_to_mark, .-OSSL_FUNC_core_pop_error_to_mark
	.local	c_new_error
	.comm	c_new_error,8,8
	.local	c_set_error_debug
	.comm	c_set_error_debug,8,8
	.local	c_vset_error
	.comm	c_vset_error,8,8
	.local	c_set_error_mark
	.comm	c_set_error_mark,8,8
	.local	c_clear_last_error_mark
	.comm	c_clear_last_error_mark,8,8
	.local	c_pop_error_to_mark
	.comm	c_pop_error_to_mark,8,8
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
	je	.L16
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L19
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	call	ossl_prov_is_running@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L17
.L20:
	movl	$1, %eax
.L17:
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
	je	.L22
	cmpl	$4, -12(%rbp)
	jg	.L23
	cmpl	$1, -12(%rbp)
	je	.L24
	cmpl	$2, -12(%rbp)
	je	.L25
	jmp	.L23
.L24:
	leaq	legacy_digests(%rip), %rax
	jmp	.L26
.L25:
	leaq	legacy_ciphers(%rip), %rax
	jmp	.L26
.L22:
	leaq	legacy_kdfs(%rip), %rax
	jmp	.L26
.L23:
	movl	$0, %eax
.L26:
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
	.globl	OSSL_provider_init
	.type	OSSL_provider_init, @function
OSSL_provider_init:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L29
.L50:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	je	.L30
	cmpl	$10, %eax
	jg	.L31
	cmpl	$9, %eax
	je	.L32
	cmpl	$9, %eax
	jg	.L31
	cmpl	$8, %eax
	je	.L33
	cmpl	$8, %eax
	jg	.L31
	cmpl	$7, %eax
	je	.L34
	cmpl	$7, %eax
	jg	.L31
	cmpl	$5, %eax
	je	.L35
	cmpl	$6, %eax
	je	.L36
	jmp	.L31
.L35:
	movq	c_new_error(%rip), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_new_error
	movq	%rax, c_new_error(%rip)
	jmp	.L53
.L37:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_new_error
	movq	%rax, %rdx
	movq	c_new_error(%rip), %rax
	cmpq	%rax, %rdx
	je	.L53
	movl	$0, %eax
	jmp	.L39
.L36:
	movq	c_set_error_debug(%rip), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_set_error_debug
	movq	%rax, c_set_error_debug(%rip)
	jmp	.L54
.L40:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_set_error_debug
	movq	%rax, %rdx
	movq	c_set_error_debug(%rip), %rax
	cmpq	%rax, %rdx
	je	.L54
	movl	$0, %eax
	jmp	.L39
.L34:
	movq	c_vset_error(%rip), %rax
	testq	%rax, %rax
	jne	.L42
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_vset_error
	movq	%rax, c_vset_error(%rip)
	jmp	.L55
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_vset_error
	movq	%rax, %rdx
	movq	c_vset_error(%rip), %rax
	cmpq	%rax, %rdx
	je	.L55
	movl	$0, %eax
	jmp	.L39
.L33:
	movq	c_set_error_mark(%rip), %rax
	testq	%rax, %rax
	jne	.L44
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_set_error_mark
	movq	%rax, c_set_error_mark(%rip)
	jmp	.L56
.L44:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_set_error_mark
	movq	%rax, %rdx
	movq	c_set_error_mark(%rip), %rax
	cmpq	%rax, %rdx
	je	.L56
	movl	$0, %eax
	jmp	.L39
.L32:
	movq	c_clear_last_error_mark(%rip), %rax
	testq	%rax, %rax
	jne	.L46
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_clear_last_error_mark
	movq	%rax, c_clear_last_error_mark(%rip)
	jmp	.L57
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_clear_last_error_mark
	movq	%rax, %rdx
	movq	c_clear_last_error_mark(%rip), %rax
	cmpq	%rax, %rdx
	je	.L57
	movl	$0, %eax
	jmp	.L39
.L30:
	movq	c_pop_error_to_mark(%rip), %rax
	testq	%rax, %rax
	jne	.L48
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_pop_error_to_mark
	movq	%rax, c_pop_error_to_mark(%rip)
	jmp	.L58
.L48:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_pop_error_to_mark
	movq	%rax, %rdx
	movq	c_pop_error_to_mark(%rip), %rax
	cmpq	%rax, %rdx
	je	.L58
	movl	$0, %eax
	jmp	.L39
.L53:
	nop
	jmp	.L31
.L54:
	nop
	jmp	.L31
.L55:
	nop
	jmp	.L31
.L56:
	nop
	jmp	.L31
.L57:
	nop
	jmp	.L31
.L58:
	nop
.L31:
	addq	$16, -16(%rbp)
.L29:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L50
	call	ossl_prov_ctx_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_new_child@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L52
.L51:
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
	jmp	.L39
.L52:
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
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	OSSL_provider_init, .-OSSL_provider_init
	.globl	ERR_new
	.type	ERR_new, @function
ERR_new:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	c_new_error(%rip), %rax
	movl	$0, %edi
	call	*%rax
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ERR_new, .-ERR_new
	.globl	ERR_set_debug
	.type	ERR_set_debug, @function
ERR_set_debug:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	c_set_error_debug(%rip), %r8
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ERR_set_debug, .-ERR_set_debug
	.globl	ERR_set_error
	.type	ERR_set_error, @function
ERR_set_error:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L63
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L63:
	movl	$24, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	c_vset_error(%rip), %r8
	movl	-212(%rbp), %eax
	sall	$23, %eax
	andl	$2139095040, %eax
	movl	%eax, %edx
	movl	-216(%rbp), %eax
	andl	$8388607, %eax
	movl	%edx, %esi
	orl	%eax, %esi
	leaq	-200(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %edi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ERR_set_error, .-ERR_set_error
	.globl	ERR_vset_error
	.type	ERR_vset_error, @function
ERR_vset_error:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	c_vset_error(%rip), %r8
	movl	-4(%rbp), %eax
	sall	$23, %eax
	andl	$2139095040, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	andl	$8388607, %eax
	movl	%edx, %esi
	orl	%eax, %esi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %edi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ERR_vset_error, .-ERR_vset_error
	.globl	ERR_set_mark
	.type	ERR_set_mark, @function
ERR_set_mark:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	c_set_error_mark(%rip), %rax
	movl	$0, %edi
	call	*%rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	ERR_set_mark, .-ERR_set_mark
	.globl	ERR_clear_last_mark
	.type	ERR_clear_last_mark, @function
ERR_clear_last_mark:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	c_clear_last_error_mark(%rip), %rax
	movl	$0, %edi
	call	*%rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	ERR_clear_last_mark, .-ERR_clear_last_mark
	.globl	ERR_pop_to_mark
	.type	ERR_pop_to_mark, @function
ERR_pop_to_mark:
.LFB327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	c_pop_error_to_mark(%rip), %rax
	movl	$0, %edi
	call	*%rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	ERR_pop_to_mark, .-ERR_pop_to_mark
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

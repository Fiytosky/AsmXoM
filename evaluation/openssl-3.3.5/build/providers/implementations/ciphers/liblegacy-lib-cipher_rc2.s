	.file	"cipher_rc2.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_rc2.c"
	.text
	.type	rc2_freectx, @function
rc2_freectx:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_generic_reset_ctx@PLT
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$41, %ecx
	movl	$456, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	rc2_freectx, .-rc2_freectx
	.type	rc2_dupctx, @function
rc2_dupctx:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	leaq	.LC0(%rip), %rax
	movl	$52, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$57, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	rc2_dupctx, .-rc2_dupctx
	.type	rc2_keybits_to_magic, @function
rc2_keybits_to_magic:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$128, -4(%rbp)
	je	.L11
	cmpl	$128, -4(%rbp)
	jg	.L12
	cmpl	$40, -4(%rbp)
	je	.L13
	cmpl	$64, -4(%rbp)
	je	.L14
	jmp	.L12
.L11:
	movl	$58, %eax
	jmp	.L15
.L14:
	movl	$120, %eax
	jmp	.L15
.L13:
	movl	$160, %eax
	jmp	.L15
.L12:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	rc2_keybits_to_magic, .-rc2_keybits_to_magic
	.type	rc2_magic_to_keybits, @function
rc2_magic_to_keybits:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$160, -4(%rbp)
	je	.L17
	cmpl	$160, -4(%rbp)
	jg	.L18
	cmpl	$58, -4(%rbp)
	je	.L19
	cmpl	$120, -4(%rbp)
	je	.L20
	jmp	.L18
.L19:
	movl	$128, %eax
	jmp	.L21
.L20:
	movl	$64, %eax
	jmp	.L21
.L17:
	movl	$40, %eax
	jmp	.L21
.L18:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	rc2_magic_to_keybits, .-rc2_magic_to_keybits
	.type	rc2_einit, @function
rc2_einit:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cipher_generic_einit@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rc2_set_ctx_params
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	rc2_einit, .-rc2_einit
	.type	rc2_dinit, @function
rc2_dinit:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cipher_generic_dinit@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rc2_set_ctx_params
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	rc2_dinit, .-rc2_dinit
	.section	.rodata
.LC1:
	.string	"keybits"
.LC2:
	.string	"alg_id_param"
	.text
	.type	rc2_get_ctx_params, @function
rc2_get_ctx_params:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_ctx_params@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L31:
	leaq	.LC2(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L33
	leaq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L33:
	movq	$0, -8(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L35:
	call	ASN1_TYPE_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L37:
	movq	-16(%rbp), %rax
	movq	448(%rax), %rax
	movl	%eax, %edi
	call	rc2_keybits_to_magic
	cltq
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_set_int_octetstring@PLT
	testl	%eax, %eax
	jne	.L38
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L38:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L39
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
.L39:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	cmpl	$0, -44(%rbp)
	jns	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L32:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	rc2_get_ctx_params, .-rc2_get_ctx_params
	.type	rc2_set_ctx_params, @function
rc2_set_ctx_params:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_var_keylen_set_ctx_params@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L43
.L44:
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L45
	movq	-24(%rbp), %rax
	leaq	448(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L43
.L45:
	leaq	.LC2(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L46
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	$16, %rax
	ja	.L47
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_TYPE@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %ecx
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get_int_octetstring@PLT
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L47
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initiv@PLT
	testl	%eax, %eax
	je	.L47
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	call	rc2_magic_to_keybits
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 448(%rax)
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	testq	%rax, %rax
	jne	.L48
.L47:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -12(%rbp)
.L48:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L43
.L49:
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
.L46:
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	rc2_set_ctx_params, .-rc2_set_ctx_params
	.section	.rodata
.LC3:
	.string	"keylen"
.LC4:
	.string	"ivlen"
.LC5:
	.string	"padding"
.LC6:
	.string	"num"
.LC7:
	.string	"iv"
.LC8:
	.string	"updated-iv"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rc2_known_gettable_ctx_params, @object
	.size	rc2_known_gettable_ctx_params, 360
rc2_known_gettable_ctx_params:
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC2
	.long	5
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
	.type	rc2_gettable_ctx_params, @function
rc2_gettable_ctx_params:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	rc2_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	rc2_gettable_ctx_params, .-rc2_gettable_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	rc2_known_settable_ctx_params, @object
	.size	rc2_known_settable_ctx_params, 240
rc2_known_settable_ctx_params:
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC2
	.long	5
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
	.type	rc2_settable_ctx_params, @function
rc2_settable_ctx_params:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	rc2_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	rc2_settable_ctx_params, .-rc2_settable_ctx_params
	.type	rc2_128_ecb_get_params, @function
rc2_128_ecb_get_params:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$256, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	rc2_128_ecb_get_params, .-rc2_128_ecb_get_params
	.type	rc2_128_ecb_newctx, @function
rc2_128_ecb_newctx:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	leaq	.LC0(%rip), %rax
	movl	$270, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movl	$128, %edi
	call	ossl_prov_cipher_hw_rc2_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$64, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$128, 448(%rax)
.L59:
	movq	-8(%rbp), %rax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	rc2_128_ecb_newctx, .-rc2_128_ecb_newctx
	.globl	ossl_rc2128ecb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_rc2128ecb_functions, @object
	.size	ossl_rc2128ecb_functions, 240
ossl_rc2128ecb_functions:
	.long	1
	.zero	4
	.quad	rc2_128_ecb_newctx
	.long	7
	.zero	4
	.quad	rc2_freectx
	.long	8
	.zero	4
	.quad	rc2_dupctx
	.long	2
	.zero	4
	.quad	rc2_einit
	.long	3
	.zero	4
	.quad	rc2_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	rc2_128_ecb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	rc2_get_ctx_params
	.long	13
	.zero	4
	.quad	rc2_gettable_ctx_params
	.long	11
	.zero	4
	.quad	rc2_set_ctx_params
	.long	14
	.zero	4
	.quad	rc2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rc2_128_cbc_get_params, @function
rc2_128_cbc_get_params:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$256, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	rc2_128_cbc_get_params, .-rc2_128_cbc_get_params
	.type	rc2_128_cbc_newctx, @function
rc2_128_cbc_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	leaq	.LC0(%rip), %rax
	movl	$272, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L65
	movl	$128, %edi
	call	ossl_prov_cipher_hw_rc2_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$2, %r8d
	movl	$64, %ecx
	movl	$64, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$128, 448(%rax)
.L65:
	movq	-8(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	rc2_128_cbc_newctx, .-rc2_128_cbc_newctx
	.globl	ossl_rc2128cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_rc2128cbc_functions, @object
	.size	ossl_rc2128cbc_functions, 240
ossl_rc2128cbc_functions:
	.long	1
	.zero	4
	.quad	rc2_128_cbc_newctx
	.long	7
	.zero	4
	.quad	rc2_freectx
	.long	8
	.zero	4
	.quad	rc2_dupctx
	.long	2
	.zero	4
	.quad	rc2_einit
	.long	3
	.zero	4
	.quad	rc2_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	rc2_128_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	rc2_get_ctx_params
	.long	13
	.zero	4
	.quad	rc2_gettable_ctx_params
	.long	11
	.zero	4
	.quad	rc2_set_ctx_params
	.long	14
	.zero	4
	.quad	rc2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rc2_40_cbc_get_params, @function
rc2_40_cbc_get_params:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$40, %ecx
	movl	$256, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	rc2_40_cbc_get_params, .-rc2_40_cbc_get_params
	.type	rc2_40_cbc_newctx, @function
rc2_40_cbc_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	leaq	.LC0(%rip), %rax
	movl	$274, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L71
	movl	$40, %edi
	call	ossl_prov_cipher_hw_rc2_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$2, %r8d
	movl	$64, %ecx
	movl	$64, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$40, 448(%rax)
.L71:
	movq	-8(%rbp), %rax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	rc2_40_cbc_newctx, .-rc2_40_cbc_newctx
	.globl	ossl_rc240cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_rc240cbc_functions, @object
	.size	ossl_rc240cbc_functions, 240
ossl_rc240cbc_functions:
	.long	1
	.zero	4
	.quad	rc2_40_cbc_newctx
	.long	7
	.zero	4
	.quad	rc2_freectx
	.long	8
	.zero	4
	.quad	rc2_dupctx
	.long	2
	.zero	4
	.quad	rc2_einit
	.long	3
	.zero	4
	.quad	rc2_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	rc2_40_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	rc2_get_ctx_params
	.long	13
	.zero	4
	.quad	rc2_gettable_ctx_params
	.long	11
	.zero	4
	.quad	rc2_set_ctx_params
	.long	14
	.zero	4
	.quad	rc2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rc2_64_cbc_get_params, @function
rc2_64_cbc_get_params:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$256, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	rc2_64_cbc_get_params, .-rc2_64_cbc_get_params
	.type	rc2_64_cbc_newctx, @function
rc2_64_cbc_newctx:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	leaq	.LC0(%rip), %rax
	movl	$276, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L77
	movl	$64, %edi
	call	ossl_prov_cipher_hw_rc2_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$2, %r8d
	movl	$64, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$64, 448(%rax)
.L77:
	movq	-8(%rbp), %rax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	rc2_64_cbc_newctx, .-rc2_64_cbc_newctx
	.globl	ossl_rc264cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_rc264cbc_functions, @object
	.size	ossl_rc264cbc_functions, 240
ossl_rc264cbc_functions:
	.long	1
	.zero	4
	.quad	rc2_64_cbc_newctx
	.long	7
	.zero	4
	.quad	rc2_freectx
	.long	8
	.zero	4
	.quad	rc2_dupctx
	.long	2
	.zero	4
	.quad	rc2_einit
	.long	3
	.zero	4
	.quad	rc2_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	rc2_64_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	rc2_get_ctx_params
	.long	13
	.zero	4
	.quad	rc2_gettable_ctx_params
	.long	11
	.zero	4
	.quad	rc2_set_ctx_params
	.long	14
	.zero	4
	.quad	rc2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rc2_128_ofb128_get_params, @function
rc2_128_ofb128_get_params:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$256, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	rc2_128_ofb128_get_params, .-rc2_128_ofb128_get_params
	.type	rc2_128_ofb128_newctx, @function
rc2_128_ofb128_newctx:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	leaq	.LC0(%rip), %rax
	movl	$279, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L83
	movl	$128, %edi
	call	ossl_prov_cipher_hw_rc2_ofb64@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$4, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$128, 448(%rax)
.L83:
	movq	-8(%rbp), %rax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	rc2_128_ofb128_newctx, .-rc2_128_ofb128_newctx
	.globl	ossl_rc2128ofb128_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_rc2128ofb128_functions, @object
	.size	ossl_rc2128ofb128_functions, 240
ossl_rc2128ofb128_functions:
	.long	1
	.zero	4
	.quad	rc2_128_ofb128_newctx
	.long	7
	.zero	4
	.quad	rc2_freectx
	.long	8
	.zero	4
	.quad	rc2_dupctx
	.long	2
	.zero	4
	.quad	rc2_einit
	.long	3
	.zero	4
	.quad	rc2_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	rc2_128_ofb128_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	rc2_get_ctx_params
	.long	13
	.zero	4
	.quad	rc2_gettable_ctx_params
	.long	11
	.zero	4
	.quad	rc2_set_ctx_params
	.long	14
	.zero	4
	.quad	rc2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rc2_128_cfb128_get_params, @function
rc2_128_cfb128_get_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$256, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	rc2_128_cfb128_get_params, .-rc2_128_cfb128_get_params
	.type	rc2_128_cfb128_newctx, @function
rc2_128_cfb128_newctx:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	leaq	.LC0(%rip), %rax
	movl	$281, %edx
	movq	%rax, %rsi
	movl	$456, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L89
	movl	$128, %edi
	call	ossl_prov_cipher_hw_rc2_cfb64@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$3, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$128, 448(%rax)
.L89:
	movq	-8(%rbp), %rax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	rc2_128_cfb128_newctx, .-rc2_128_cfb128_newctx
	.globl	ossl_rc2128cfb128_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_rc2128cfb128_functions, @object
	.size	ossl_rc2128cfb128_functions, 240
ossl_rc2128cfb128_functions:
	.long	1
	.zero	4
	.quad	rc2_128_cfb128_newctx
	.long	7
	.zero	4
	.quad	rc2_freectx
	.long	8
	.zero	4
	.quad	rc2_dupctx
	.long	2
	.zero	4
	.quad	rc2_einit
	.long	3
	.zero	4
	.quad	rc2_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	rc2_128_cfb128_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	rc2_get_ctx_params
	.long	13
	.zero	4
	.quad	rc2_gettable_ctx_params
	.long	11
	.zero	4
	.quad	rc2_set_ctx_params
	.long	14
	.zero	4
	.quad	rc2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"rc2_keybits_to_magic"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"rc2_magic_to_keybits"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"rc2_get_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"rc2_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

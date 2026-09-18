	.file	"dh_backend.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	dh_ffc_params_fromdata, @function
dh_ffc_params_fromdata:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_fromdata@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_cache_named_group@PLT
.L6:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	dh_ffc_params_fromdata, .-dh_ffc_params_fromdata
	.section	.rodata
.LC0:
	.string	"priv_len"
	.text
	.globl	ossl_dh_params_fromdata
	.type	ossl_dh_params_fromdata, @function
ossl_dh_params_fromdata:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_ffc_params_fromdata
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L13
.L9:
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_long@PLT
	testl	%eax, %eax
	je	.L12
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_set_length@PLT
	testl	%eax, %eax
	jne	.L11
.L12:
	movl	$0, %eax
	jmp	.L13
.L11:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ossl_dh_params_fromdata, .-ossl_dh_params_fromdata
	.section	.rodata
.LC1:
	.string	"priv"
.LC2:
	.string	"pub"
	.text
	.globl	ossl_dh_key_fromdata
	.type	ossl_dh_key_fromdata, @function
ossl_dh_key_fromdata:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L21
.L15:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L17
	cmpq	$0, -8(%rbp)
	je	.L17
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L22
.L17:
	cmpq	$0, -16(%rbp)
	je	.L19
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L23
.L19:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, %eax
	jmp	.L21
.L22:
	nop
	jmp	.L18
.L23:
	nop
	jmp	.L18
.L24:
	nop
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_dh_key_fromdata, .-ossl_dh_key_fromdata
	.globl	ossl_dh_params_todata
	.type	ossl_dh_params_todata, @function
ossl_dh_params_todata:
.LFB517:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_length@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_ffc_params_todata@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	cmpq	$0, -8(%rbp)
	jle	.L28
	movq	-8(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_long@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L27
.L28:
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_dh_params_todata, .-ossl_dh_params_todata
	.globl	ossl_dh_key_todata
	.type	ossl_dh_key_todata, @function
ossl_dh_key_todata:
.LFB518:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L30
	movl	$0, %eax
	jmp	.L34
.L30:
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L32
	cmpl	$0, -44(%rbp)
	je	.L32
	movq	-8(%rbp), %rdx
	leaq	.LC1(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L34
.L32:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L33
	movq	-16(%rbp), %rdx
	leaq	.LC2(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_dh_key_todata, .-ossl_dh_key_todata
	.globl	ossl_dh_is_foreign
	.type	ossl_dh_is_foreign, @function
ossl_dh_is_foreign:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get_method@PLT
	movq	%rax, %rbx
	call	DH_OpenSSL@PLT
	cmpq	%rax, %rbx
	je	.L37
.L36:
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_dh_is_foreign, .-ossl_dh_is_foreign
	.type	dh_bn_dup_check, @function
dh_bn_dup_check:
.LFB520:
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
	je	.L40
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	dh_bn_dup_check, .-dh_bn_dup_check
	.globl	ossl_dh_dup
	.type	ossl_dh_dup, @function
ossl_dh_dup:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_is_foreign@PLT
	testl	%eax, %eax
	je	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dh_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L44
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_length@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 104(%rax)
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	je	.L53
.L46:
	movq	-24(%rbp), %rax
	movl	128(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L48
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$112, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dh_bn_dup_check
	testl	%eax, %eax
	je	.L54
.L48:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L50
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L55
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$120, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dh_bn_dup_check
	testl	%eax, %eax
	je	.L55
.L50:
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	je	.L56
	movq	-8(%rbp), %rax
	jmp	.L44
.L53:
	nop
	jmp	.L47
.L54:
	nop
	jmp	.L47
.L55:
	nop
	jmp	.L47
.L56:
	nop
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ossl_dh_dup, .-ossl_dh_dup
	.section	.rodata
.LC3:
	.string	"../crypto/dh/dh_backend.c"
	.text
	.globl	ossl_dh_key_from_pkcs8
	.type	ossl_dh_key_from_pkcs8, @function
ossl_dh_key_from_pkcs8:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L74
.L58:
	movq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-64(%rbp), %eax
	cmpl	$16, %eax
	jne	.L75
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L76
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$28, %eax
	je	.L63
	cmpl	$920, %eax
	je	.L64
	jmp	.L61
.L63:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DHparams@PLT
	movq	%rax, -16(%rbp)
	jmp	.L66
.L64:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DHxparams@PLT
	movq	%rax, -16(%rbp)
	nop
.L66:
	cmpq	$0, -16(%rbp)
	je	.L77
	call	BN_secure_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	testq	%rax, %rax
	jne	.L69
.L68:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	jmp	.L70
.L69:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	je	.L78
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	jne	.L79
	jmp	.L70
.L75:
	nop
	jmp	.L61
.L76:
	nop
	jmp	.L61
.L77:
	nop
.L61:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$236, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L70
.L78:
	nop
.L70:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L73
.L79:
	nop
.L73:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	movq	-16(%rbp), %rax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ossl_dh_key_from_pkcs8, .-ossl_dh_key_from_pkcs8
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_dh_key_from_pkcs8"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

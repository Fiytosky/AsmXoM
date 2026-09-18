	.file	"dsa_backend.c"
	.text
	.section	.rodata
.LC0:
	.string	"priv"
.LC1:
	.string	"pub"
	.text
	.globl	ossl_dsa_key_fromdata
	.type	ossl_dsa_key_fromdata, @function
ossl_dsa_key_fromdata:
.LFB470:
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
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L10
.L2:
	cmpl	$0, -52(%rbp)
	je	.L4
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
.L4:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L5
	cmpq	$0, -16(%rbp)
	jne	.L5
	movl	$1, %eax
	jmp	.L10
.L5:
	cmpq	$0, -16(%rbp)
	je	.L6
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L11
.L6:
	cmpq	$0, -8(%rbp)
	je	.L8
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L12
.L8:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, %eax
	jmp	.L10
.L11:
	nop
	jmp	.L7
.L12:
	nop
	jmp	.L7
.L13:
	nop
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	ossl_dsa_key_fromdata, .-ossl_dsa_key_fromdata
	.globl	ossl_dsa_is_foreign
	.type	ossl_dsa_is_foreign, @function
ossl_dsa_is_foreign:
.LFB471:
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
	jne	.L15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get_method@PLT
	movq	%rax, %rbx
	call	DSA_OpenSSL@PLT
	cmpq	%rax, %rbx
	je	.L16
.L15:
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$0, %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	ossl_dsa_is_foreign, .-ossl_dsa_is_foreign
	.type	dsa_bn_dup_check, @function
dsa_bn_dup_check:
.LFB472:
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
	je	.L19
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	dsa_bn_dup_check, .-dsa_bn_dup_check
	.globl	ossl_dsa_dup
	.type	ossl_dsa_dup, @function
ossl_dsa_dup:
.LFB473:
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
	call	ossl_dsa_is_foreign@PLT
	testl	%eax, %eax
	je	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dsa_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L23
.L24:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	je	.L32
.L25:
	movq	-24(%rbp), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L27
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dsa_bn_dup_check
	testl	%eax, %eax
	je	.L33
.L27:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L29
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$112, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dsa_bn_dup_check
	testl	%eax, %eax
	je	.L34
.L29:
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	je	.L35
	movq	-8(%rbp), %rax
	jmp	.L23
.L32:
	nop
	jmp	.L26
.L33:
	nop
	jmp	.L26
.L34:
	nop
	jmp	.L26
.L35:
	nop
.L26:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ossl_dsa_dup, .-ossl_dsa_dup
	.section	.rodata
.LC2:
	.string	"../crypto/dsa/dsa_backend.c"
	.text
	.globl	ossl_dsa_key_from_pkcs8
	.type	ossl_dsa_key_from_pkcs8, @function
ossl_dsa_key_from_pkcs8:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L52
.L37:
	movq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INTEGER@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L53
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$258, %eax
	je	.L54
	movl	-96(%rbp), %eax
	cmpl	$16, %eax
	jne	.L54
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAparams@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L55
	call	BN_secure_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	testq	%rax, %rax
	jne	.L45
.L44:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L45:
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L47:
	call	BN_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L48:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_p@PLT
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_g@PLT
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L49:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L53:
	nop
	jmp	.L40
.L54:
	nop
	jmp	.L40
.L55:
	nop
.L40:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L51
.L56:
	nop
.L51:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	movq	-32(%rbp), %rax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ossl_dsa_key_from_pkcs8, .-ossl_dsa_key_from_pkcs8
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"ossl_dsa_key_from_pkcs8"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

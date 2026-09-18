	.file	"dsa_ameth.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/dsa/dsa_ameth.c"
	.text
	.type	dsa_pub_decode, @function
dsa_pub_decode:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-96(%rbp), %rsi
	leaq	-72(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L16
.L6:
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-56(%rbp), %eax
	cmpl	$16, %eax
	jne	.L8
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAparams@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L8:
	movl	-56(%rbp), %eax
	cmpl	$5, %eax
	je	.L11
	movl	-56(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L12
.L11:
	call	DSA_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524298, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L12:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L9:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L14:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$71, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L15:
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L16
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	dsa_pub_decode, .-dsa_pub_decode
	.type	dsa_pub_encode, @function
dsa_pub_encode:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L18
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L18
	call	ASN1_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAparams@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L21
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L21:
	movl	$16, -4(%rbp)
	jmp	.L22
.L18:
	movl	$-1, -4(%rbp)
.L22:
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L23:
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	cmpl	$0, -36(%rbp)
	jg	.L24
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L24:
	movl	$116, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L28
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	je	.L29
	movl	$1, %eax
	jmp	.L27
.L28:
	nop
	jmp	.L20
.L29:
	nop
.L20:
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$139, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	dsa_pub_encode, .-dsa_pub_encode
	.type	dsa_priv_decode, @function
dsa_priv_decode:
.LFB591:
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
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_dsa_key_from_pkcs8@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L31
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
.L31:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	dsa_priv_decode, .-dsa_priv_decode
	.type	dsa_priv_encode, @function
dsa_priv_encode:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L35
.L34:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L35:
	call	ASN1_STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAparams@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L38
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L38:
	movq	-24(%rbp), %rax
	movl	$16, 4(%rax)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L39:
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	cmpl	$0, -36(%rbp)
	jg	.L40
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L40:
	movq	-48(%rbp), %rbx
	movl	$116, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	movl	-36(%rbp), %edx
	pushq	%rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movl	$16, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS8_pkey_set0@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L41
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$208, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L36
.L41:
	movl	$1, %eax
	jmp	.L43
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	dsa_priv_encode, .-dsa_priv_encode
	.type	int_dsa_size, @function
int_dsa_size:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	DSA_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	int_dsa_size, .-int_dsa_size
	.type	dsa_bits, @function
dsa_bits:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	DSA_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	dsa_bits, .-dsa_bits
	.type	dsa_security_bits, @function
dsa_security_bits:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	DSA_security_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	dsa_security_bits, .-dsa_security_bits
	.type	dsa_missing_parameters, @function
dsa_missing_parameters:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L51
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L52
.L51:
	movl	$1, %eax
	jmp	.L54
.L52:
	movl	$0, %eax
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	dsa_missing_parameters, .-dsa_missing_parameters
	.type	dsa_copy_parameters, @function
dsa_copy_parameters:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	call	DSA_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L57
.L58:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	192(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 192(%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	dsa_copy_parameters, .-dsa_copy_parameters
	.type	dsa_cmp_parameters, @function
dsa_cmp_parameters:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	dsa_cmp_parameters, .-dsa_cmp_parameters
	.type	dsa_pub_cmp, @function
dsa_pub_cmp:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	104(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	dsa_pub_cmp, .-dsa_pub_cmp
	.type	int_dsa_free, @function
int_dsa_free:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	int_dsa_free, .-int_dsa_free
	.section	.rodata
.LC1:
	.string	"Private-Key"
.LC2:
	.string	"Public-Key"
.LC3:
	.string	"DSA-Parameters"
.LC4:
	.string	"%s: (%d bit)\n"
.LC5:
	.string	"Public-Key: (%d bit)\n"
.LC6:
	.string	"priv:"
.LC7:
	.string	"pub: "
	.text
	.type	do_dsa_print, @function
do_dsa_print:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_bits@PLT
	movl	%eax, -36(%rbp)
.L65:
	cmpl	$2, -72(%rbp)
	jne	.L66
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L67
.L66:
	movq	$0, -24(%rbp)
.L67:
	cmpl	$0, -72(%rbp)
	jle	.L68
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L69
.L68:
	movq	$0, -32(%rbp)
.L69:
	cmpl	$2, -72(%rbp)
	jne	.L70
	leaq	.LC1(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L70:
	cmpl	$1, -72(%rbp)
	jne	.L72
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L72:
	leaq	.LC3(%rip), %rax
	movq	%rax, -16(%rbp)
.L71:
	cmpq	$0, -24(%rbp)
	je	.L73
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L81
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L76
	jmp	.L75
.L73:
	movl	-36(%rbp), %edx
	leaq	.LC5(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L82
.L76:
	movl	-68(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L83
	movl	-68(%rbp), %ecx
	movq	-32(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L84
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_print@PLT
	testl	%eax, %eax
	je	.L85
	movl	$1, -4(%rbp)
	jmp	.L75
.L81:
	nop
	jmp	.L75
.L82:
	nop
	jmp	.L75
.L83:
	nop
	jmp	.L75
.L84:
	nop
	jmp	.L75
.L85:
	nop
.L75:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	do_dsa_print, .-do_dsa_print
	.type	dsa_param_decode, @function
dsa_param_decode:
.LFB602:
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
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAparams@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	dsa_param_decode, .-dsa_param_decode
	.type	dsa_param_encode, @function
dsa_param_encode:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAparams@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	dsa_param_encode, .-dsa_param_encode
	.type	dsa_param_print, @function
dsa_param_print:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	do_dsa_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	dsa_param_print, .-dsa_param_print
	.type	dsa_pub_print, @function
dsa_pub_print:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	do_dsa_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	dsa_pub_print, .-dsa_pub_print
	.type	dsa_priv_print, @function
dsa_priv_print:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	do_dsa_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	dsa_priv_print, .-dsa_priv_print
	.type	old_dsa_priv_decode, @function
old_dsa_priv_decode:
.LFB607:
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
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAPrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524298, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	old_dsa_priv_decode, .-old_dsa_priv_decode
	.type	old_dsa_priv_encode, @function
old_dsa_priv_encode:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAPrivateKey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	old_dsa_priv_encode, .-old_dsa_priv_encode
	.section	.rodata
.LC8:
	.string	"\n"
.LC9:
	.string	"r:   "
.LC10:
	.string	"s:   "
	.text
	.type	dsa_sig_print, @function
dsa_sig_print:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L103
	leaq	.LC8(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L104
	movl	$0, %eax
	jmp	.L112
.L104:
	movl	$1, %eax
	jmp	.L112
.L103:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSA_SIG@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L106
	movl	$0, -4(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_SIG_get0@PLT
	leaq	.LC8(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L113
	movq	-32(%rbp), %rdx
	movl	-76(%rbp), %ecx
	leaq	.LC9(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L114
	movq	-40(%rbp), %rdx
	movl	-76(%rbp), %ecx
	leaq	.LC10(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L115
	movl	$1, -4(%rbp)
	jmp	.L108
.L113:
	nop
	jmp	.L108
.L114:
	nop
	jmp	.L108
.L115:
	nop
.L108:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_SIG_free@PLT
	movl	-4(%rbp), %eax
	jmp	.L112
.L106:
	leaq	.LC8(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_dump@PLT
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	dsa_sig_print, .-dsa_sig_print
	.type	dsa_pkey_ctrl, @function
dsa_pkey_ctrl:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$3, -12(%rbp)
	jne	.L117
	movq	-32(%rbp), %rax
	movl	$672, (%rax)
	movl	$1, %eax
	jmp	.L118
.L117:
	movl	$-2, %eax
.L118:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	dsa_pkey_ctrl, .-dsa_pkey_ctrl
	.type	dsa_pkey_dirty_cnt, @function
dsa_pkey_dirty_cnt:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	192(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	dsa_pkey_dirty_cnt, .-dsa_pkey_dirty_cnt
	.section	.rodata
.LC11:
	.string	"p"
.LC12:
	.string	"q"
.LC13:
	.string	"g"
.LC14:
	.string	"pub"
.LC15:
	.string	"priv"
	.text
	.type	dsa_pkey_export_to, @function
dsa_pkey_export_to:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_p@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_g@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_q@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_priv_key@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L122
	cmpq	$0, -40(%rbp)
	je	.L122
	cmpq	$0, -32(%rbp)
	jne	.L123
.L122:
	movl	$0, %eax
	jmp	.L124
.L123:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L125
	movl	$0, %eax
	jmp	.L124
.L125:
	movq	-24(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L134
	movq	-40(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L134
	movq	-32(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L134
	orl	$4, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L129
	movq	-48(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L135
	orl	$2, -4(%rbp)
.L129:
	cmpq	$0, -56(%rbp)
	je	.L131
	movq	-56(%rbp), %rdx
	leaq	.LC15(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L136
	orl	$1, -4(%rbp)
.L131:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L137
	movq	-72(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	jmp	.L128
.L134:
	nop
	jmp	.L128
.L135:
	nop
	jmp	.L128
.L136:
	nop
	jmp	.L128
.L137:
	nop
.L128:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-8(%rbp), %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	dsa_pkey_export_to, .-dsa_pkey_export_to
	.type	dsa_pkey_import_from, @function
dsa_pkey_import_from:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dsa_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L139
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$486, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524298, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L140
.L139:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_ffc_params_fromdata@PLT
	testl	%eax, %eax
	je	.L141
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_key_fromdata@PLT
	testl	%eax, %eax
	je	.L141
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L142
.L141:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	$0, %eax
	jmp	.L140
.L142:
	movl	$1, %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	dsa_pkey_import_from, .-dsa_pkey_import_from
	.type	dsa_pkey_copy, @function
dsa_pkey_copy:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L144
	movq	-16(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ossl_dsa_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L144
	movl	$0, %eax
	jmp	.L145
.L144:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L146
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
.L146:
	movl	-20(%rbp), %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	dsa_pkey_copy, .-dsa_pkey_copy
	.globl	ossl_dsa_asn1_meths
	.section	.rodata
.LC16:
	.string	"DSA"
.LC17:
	.string	"OpenSSL DSA method"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_dsa_asn1_meths, @object
	.size	ossl_dsa_asn1_meths, 1600
ossl_dsa_asn1_meths:
	.long	66
	.long	116
	.quad	1
	.zero	304
	.long	67
	.long	116
	.quad	1
	.zero	304
	.long	70
	.long	116
	.quad	1
	.zero	304
	.long	113
	.long	116
	.quad	1
	.zero	304
	.long	116
	.long	116
	.quad	0
	.quad	.LC16
	.quad	.LC17
	.quad	dsa_pub_decode
	.quad	dsa_pub_encode
	.quad	dsa_pub_cmp
	.quad	dsa_pub_print
	.quad	dsa_priv_decode
	.quad	dsa_priv_encode
	.quad	dsa_priv_print
	.quad	int_dsa_size
	.quad	dsa_bits
	.quad	dsa_security_bits
	.quad	dsa_param_decode
	.quad	dsa_param_encode
	.quad	dsa_missing_parameters
	.quad	dsa_copy_parameters
	.quad	dsa_cmp_parameters
	.quad	dsa_param_print
	.quad	dsa_sig_print
	.quad	int_dsa_free
	.quad	dsa_pkey_ctrl
	.quad	old_dsa_priv_decode
	.quad	old_dsa_priv_encode
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dsa_pkey_dirty_cnt
	.quad	dsa_pkey_export_to
	.quad	dsa_pkey_import_from
	.quad	dsa_pkey_copy
	.zero	8
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 15
__func__.4:
	.string	"dsa_pub_decode"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"dsa_pub_encode"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"dsa_priv_encode"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"old_dsa_priv_decode"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"dsa_pkey_import_from"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

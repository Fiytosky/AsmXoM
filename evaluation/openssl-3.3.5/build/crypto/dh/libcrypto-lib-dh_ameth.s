	.file	"dh_ameth.c"
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
	.type	d2i_dhp, @function
d2i_dhp:
.LFB589:
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
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	ossl_dhx_asn1_meth@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L6
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DHxparams@PLT
	movq	%rax, -8(%rbp)
	jmp	.L7
.L6:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DHparams@PLT
	movq	%rax, -8(%rbp)
.L7:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	d2i_dhp, .-d2i_dhp
	.type	i2d_dhp, @function
i2d_dhp:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	ossl_dhx_asn1_meth@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L10
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHxparams@PLT
	jmp	.L11
.L10:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHparams@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	i2d_dhp, .-i2d_dhp
	.type	int_dh_free, @function
int_dh_free:
.LFB591:
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
	call	DH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	int_dh_free, .-int_dh_free
	.section	.rodata
.LC0:
	.string	"../crypto/dh/dh_ameth.c"
	.text
	.type	dh_pub_decode, @function
dh_pub_decode:
.LFB592:
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
	jne	.L14
	movl	$0, %eax
	jmp	.L21
.L14:
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-56(%rbp), %eax
	cmpl	$16, %eax
	je	.L16
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L16:
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
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_dhp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L18:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$91, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L21
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	dh_pub_decode, .-dh_pub_decode
	.type	dh_pub_encode, @function
dh_pub_encode:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	call	ASN1_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L23:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2d_dhp
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L25
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L25:
	movl	$16, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	cmpl	$0, -48(%rbp)
	jg	.L27
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L27:
	movq	-56(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movl	-48(%rbp), %edi
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	je	.L31
	movl	$1, %eax
	jmp	.L29
.L30:
	nop
	jmp	.L24
.L31:
	nop
.L24:
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
.L29:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	dh_pub_encode, .-dh_pub_encode
	.type	dh_priv_decode, @function
dh_priv_decode:
.LFB594:
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
	call	ossl_dh_key_from_pkcs8@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L33
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
.L33:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	dh_priv_decode, .-dh_priv_decode
	.type	dh_priv_encode, @function
dh_priv_encode:
.LFB595:
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
	call	ASN1_STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2d_dhp
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L38
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L38:
	movq	-24(%rbp), %rax
	movl	$16, 4(%rax)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
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
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L40:
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
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
	movl	$217, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L37
.L41:
	movl	$1, %eax
	jmp	.L43
.L37:
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
.LFE595:
	.size	dh_priv_encode, .-dh_priv_encode
	.type	dh_param_decode, @function
dh_param_decode:
.LFB596:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_dhp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	dh_param_decode, .-dh_param_decode
	.type	dh_param_encode, @function
dh_param_encode:
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
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2d_dhp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	dh_param_encode, .-dh_param_encode
	.section	.rodata
.LC1:
	.string	"DH Private-Key"
.LC2:
	.string	"DH Public-Key"
.LC3:
	.string	"DH Parameters"
.LC4:
	.string	"%s: (%d bit)\n"
.LC5:
	.string	"private-key:"
.LC6:
	.string	"public-key:"
	.align 8
.LC7:
	.string	"recommended-private-length: %d bits\n"
	.text
	.type	do_dh_print, @function
do_dh_print:
.LFB598:
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
	movl	%ecx, -56(%rbp)
	movl	$524295, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$2, -56(%rbp)
	jne	.L50
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L51
.L50:
	movq	$0, -24(%rbp)
.L51:
	cmpl	$0, -56(%rbp)
	jle	.L52
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L53
.L52:
	movq	$0, -32(%rbp)
.L53:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L54
	cmpl	$2, -56(%rbp)
	jne	.L55
	cmpq	$0, -24(%rbp)
	je	.L54
.L55:
	cmpl	$0, -56(%rbp)
	jle	.L56
	cmpq	$0, -32(%rbp)
	jne	.L56
.L54:
	movl	$786690, -4(%rbp)
	jmp	.L57
.L56:
	cmpl	$2, -56(%rbp)
	jne	.L58
	leaq	.LC1(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L59
.L58:
	cmpl	$1, -56(%rbp)
	jne	.L60
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L59
.L60:
	leaq	.LC3(%rip), %rax
	movq	%rax, -16(%rbp)
.L59:
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L69
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_bits@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L69
	addl	$4, -52(%rbp)
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L70
	movl	-52(%rbp), %ecx
	movq	-32(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L71
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rcx
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_print@PLT
	testl	%eax, %eax
	je	.L72
	movq	-48(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L66
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L73
	movq	-48(%rbp), %rax
	movl	104(%rax), %edx
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L73
.L66:
	movl	$1, %eax
	jmp	.L68
.L69:
	nop
	jmp	.L57
.L70:
	nop
	jmp	.L57
.L71:
	nop
	jmp	.L57
.L72:
	nop
	jmp	.L57
.L73:
	nop
.L57:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	do_dh_print, .-do_dh_print
	.type	int_dh_size, @function
int_dh_size:
.LFB599:
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
	call	DH_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	int_dh_size, .-int_dh_size
	.type	dh_bits, @function
dh_bits:
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
	call	DH_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	dh_bits, .-dh_bits
	.type	dh_security_bits, @function
dh_security_bits:
.LFB601:
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
	call	DH_security_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	dh_security_bits, .-dh_security_bits
	.type	dh_cmp_parameters, @function
dh_cmp_parameters:
.LFB602:
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
	movq	8(%rax), %rax
	movq	ossl_dhx_asn1_meth@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	setne	%al
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	leaq	8(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	leaq	8(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	ossl_ffc_params_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	dh_cmp_parameters, .-dh_cmp_parameters
	.type	int_dh_param_copy, @function
int_dh_param_copy:
.LFB603:
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
	cmpl	$-1, -20(%rbp)
	jne	.L83
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
.L83:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	cmpl	$0, -20(%rbp)
	jne	.L86
	movq	-16(%rbp), %rax
	movl	104(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 104(%rax)
.L86:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	int_dh_param_copy, .-int_dh_param_copy
	.globl	DHparams_dup
	.type	DHparams_dup, @function
DHparams_dup:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	DH_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int_dh_param_copy
	testl	%eax, %eax
	jne	.L90
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L89
.L90:
	movq	-8(%rbp), %rax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	DHparams_dup, .-DHparams_dup
	.type	dh_copy_parameters, @function
dh_copy_parameters:
.LFB605:
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
	jne	.L92
	call	DH_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	ossl_dhx_asn1_meth@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int_dh_param_copy
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	dh_copy_parameters, .-dh_copy_parameters
	.type	dh_missing_parameters, @function
dh_missing_parameters:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L96
.L95:
	movl	$1, %eax
	jmp	.L98
.L96:
	movl	$0, %eax
.L98:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	dh_missing_parameters, .-dh_missing_parameters
	.type	dh_pub_cmp, @function
dh_pub_cmp:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_cmp_parameters
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L102
	movl	$0, %eax
	jmp	.L101
.L102:
	movl	$1, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	dh_pub_cmp, .-dh_pub_cmp
	.type	dh_param_print, @function
dh_param_print:
.LFB608:
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
	call	do_dh_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	dh_param_print, .-dh_param_print
	.type	dh_public_print, @function
dh_public_print:
.LFB609:
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
	call	do_dh_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	dh_public_print, .-dh_public_print
	.type	dh_private_print, @function
dh_private_print:
.LFB610:
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
	call	do_dh_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	dh_private_print, .-dh_private_print
	.globl	DHparams_print
	.type	DHparams_print, @function
DHparams_print:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	do_dh_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	DHparams_print, .-DHparams_print
	.type	dh_pkey_ctrl, @function
dh_pkey_ctrl:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpl	$9, -28(%rbp)
	je	.L112
	cmpl	$10, -28(%rbp)
	je	.L113
	jmp	.L121
.L112:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L115
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	cltq
	testq	%rax, %rax
	jne	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get0_DH_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L118
.L119:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_buf2key@PLT
	jmp	.L118
.L113:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L118
.L120:
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_dh_key2buf@PLT
	jmp	.L118
.L121:
	movl	$-2, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	dh_pkey_ctrl, .-dh_pkey_ctrl
	.type	dhx_pkey_ctrl, @function
dhx_pkey_ctrl:
.LFB613:
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
	movl	$-2, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	dhx_pkey_ctrl, .-dhx_pkey_ctrl
	.type	dh_pkey_public_check, @function
dh_pkey_public_check:
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
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$433, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check_pub_key_ex@PLT
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	dh_pkey_public_check, .-dh_pkey_public_check
	.type	dh_pkey_param_check, @function
dh_pkey_param_check:
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
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_check_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	dh_pkey_param_check, .-dh_pkey_param_check
	.type	dh_pkey_dirty_cnt, @function
dh_pkey_dirty_cnt:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	200(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	dh_pkey_dirty_cnt, .-dh_pkey_dirty_cnt
	.section	.rodata
.LC8:
	.string	"p"
.LC9:
	.string	"g"
.LC10:
	.string	"q"
.LC11:
	.string	"priv_len"
.LC12:
	.string	"pub"
.LC13:
	.string	"priv"
	.text
	.type	dh_pkey_export_to, @function
dh_pkey_export_to:
.LFB617:
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
	call	DH_get0_p@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_g@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_q@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_length@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L132
	cmpq	$0, -32(%rbp)
	jne	.L133
.L132:
	movl	$0, %eax
	jmp	.L134
.L133:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L134
.L135:
	movq	-24(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L147
	movq	-32(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L147
	cmpq	$0, -40(%rbp)
	je	.L139
	movq	-40(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L148
.L139:
	orl	$4, -4(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.L140
	movq	-48(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_long@PLT
	testl	%eax, %eax
	je	.L149
	orl	$128, -4(%rbp)
.L140:
	cmpq	$0, -56(%rbp)
	je	.L142
	movq	-56(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L150
	orl	$2, -4(%rbp)
.L142:
	cmpq	$0, -64(%rbp)
	je	.L144
	movq	-64(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L151
	orl	$1, -4(%rbp)
.L144:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L152
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
	jmp	.L138
.L147:
	nop
	jmp	.L138
.L148:
	nop
	jmp	.L138
.L149:
	nop
	jmp	.L138
.L150:
	nop
	jmp	.L138
.L151:
	nop
	jmp	.L138
.L152:
	nop
.L138:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-8(%rbp), %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	dh_pkey_export_to, .-dh_pkey_export_to
	.type	dh_pkey_import_from_type, @function
dh_pkey_import_from_type:
.LFB618:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dh_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524293, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-24(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	DH_clear_flags@PLT
	cmpl	$28, -52(%rbp)
	jne	.L156
	movl	$0, %edx
	jmp	.L157
.L156:
	movl	$4096, %edx
.L157:
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	DH_set_flags@PLT
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_params_fromdata@PLT
	testl	%eax, %eax
	je	.L158
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_key_fromdata@PLT
	testl	%eax, %eax
	je	.L158
	movq	-24(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L159
.L158:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L155
.L159:
	movl	$1, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	dh_pkey_import_from_type, .-dh_pkey_import_from_type
	.type	dh_pkey_import_from, @function
dh_pkey_import_from:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dh_pkey_import_from_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	dh_pkey_import_from, .-dh_pkey_import_from
	.type	dhx_pkey_import_from, @function
dhx_pkey_import_from:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$920, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dh_pkey_import_from_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	dhx_pkey_import_from, .-dhx_pkey_import_from
	.type	dh_pkey_copy, @function
dh_pkey_copy:
.LFB621:
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
	je	.L165
	movq	-16(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ossl_dh_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L165
	movl	$0, %eax
	jmp	.L166
.L165:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L167
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
.L167:
	movl	-20(%rbp), %eax
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	dh_pkey_copy, .-dh_pkey_copy
	.globl	ossl_dh_asn1_meth
	.section	.rodata
.LC14:
	.string	"DH"
.LC15:
	.string	"OpenSSL PKCS#3 DH method"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_dh_asn1_meth, @object
	.size	ossl_dh_asn1_meth, 320
ossl_dh_asn1_meth:
	.long	28
	.long	28
	.quad	0
	.quad	.LC14
	.quad	.LC15
	.quad	dh_pub_decode
	.quad	dh_pub_encode
	.quad	dh_pub_cmp
	.quad	dh_public_print
	.quad	dh_priv_decode
	.quad	dh_priv_encode
	.quad	dh_private_print
	.quad	int_dh_size
	.quad	dh_bits
	.quad	dh_security_bits
	.quad	dh_param_decode
	.quad	dh_param_encode
	.quad	dh_missing_parameters
	.quad	dh_copy_parameters
	.quad	dh_cmp_parameters
	.quad	dh_param_print
	.quad	0
	.quad	int_dh_free
	.quad	dh_pkey_ctrl
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_pkey_public_check
	.quad	dh_pkey_param_check
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_pkey_dirty_cnt
	.quad	dh_pkey_export_to
	.quad	dh_pkey_import_from
	.quad	dh_pkey_copy
	.zero	8
	.globl	ossl_dhx_asn1_meth
	.section	.rodata
.LC16:
	.string	"X9.42 DH"
.LC17:
	.string	"OpenSSL X9.42 DH method"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_asn1_meth, @object
	.size	ossl_dhx_asn1_meth, 320
ossl_dhx_asn1_meth:
	.long	920
	.long	920
	.quad	0
	.quad	.LC16
	.quad	.LC17
	.quad	dh_pub_decode
	.quad	dh_pub_encode
	.quad	dh_pub_cmp
	.quad	dh_public_print
	.quad	dh_priv_decode
	.quad	dh_priv_encode
	.quad	dh_private_print
	.quad	int_dh_size
	.quad	dh_bits
	.quad	dh_security_bits
	.quad	dh_param_decode
	.quad	dh_param_encode
	.quad	dh_missing_parameters
	.quad	dh_copy_parameters
	.quad	dh_cmp_parameters
	.quad	dh_param_print
	.quad	0
	.quad	int_dh_free
	.quad	dhx_pkey_ctrl
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_pkey_public_check
	.quad	dh_pkey_param_check
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_pkey_dirty_cnt
	.quad	dh_pkey_export_to
	.quad	dhx_pkey_import_from
	.quad	dh_pkey_copy
	.zero	8
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 14
__func__.5:
	.string	"dh_pub_decode"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"dh_pub_encode"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"dh_priv_encode"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 12
__func__.2:
	.string	"do_dh_print"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"dh_pkey_public_check"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"dh_pkey_import_from_type"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

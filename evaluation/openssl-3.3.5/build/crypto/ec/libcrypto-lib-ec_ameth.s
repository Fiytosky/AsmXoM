	.file	"ec_ameth.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ec_ameth.c"
	.text
	.type	eckey_param2type, @function
eckey_param2type:
.LFB599:
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
	cmpq	$0, -56(%rbp)
	je	.L6
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
.L6:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L9
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_length@PLT
	testq	%rax, %rax
	jne	.L11
.L10:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L11:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L12
.L9:
	movq	$0, -32(%rbp)
	call	ASN1_STRING_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L8
.L13:
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECParameters@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L14
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L14:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$16, (%rax)
.L12:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	eckey_param2type, .-eckey_param2type
	.type	eckey_pub_encode, @function
eckey_pub_encode:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	eckey_param2type
	testl	%eax, %eax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L16:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2o_ECPublicKey@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L24
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2o_ECPublicKey@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L26
	movq	-48(%rbp), %r12
	movl	-52(%rbp), %ebx
	movl	$408, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movq	%r12, %rcx
	movl	%ebx, %edx
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	je	.L27
	movl	$1, %eax
	jmp	.L23
.L24:
	nop
	jmp	.L19
.L25:
	nop
	jmp	.L19
.L26:
	nop
	jmp	.L19
.L27:
	nop
.L19:
	movl	-52(%rbp), %eax
	cmpl	$16, %eax
	jne	.L22
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
.L22:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L23:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	eckey_pub_encode, .-eckey_pub_encode
	.type	eckey_pub_decode, @function
eckey_pub_decode:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_PUBKEY_get0_libctx@PLT
	testl	%eax, %eax
	je	.L29
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L35
.L30:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_param_from_x509_algor@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L32
	movl	$0, %eax
	jmp	.L35
.L32:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	o2i_ECPublicKey@PLT
	testq	%rax, %rax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
	jmp	.L35
.L33:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	eckey_pub_decode, .-eckey_pub_decode
	.type	eckey_pub_cmp, @function
eckey_pub_cmp:
.LFB602:
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
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	cmpq	$0, -16(%rbp)
	je	.L37
	cmpq	$0, -24(%rbp)
	jne	.L38
.L37:
	movl	$-2, %eax
	jmp	.L39
.L38:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L40
	movl	$1, %eax
	jmp	.L39
.L40:
	cmpl	$1, -28(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L39
.L41:
	movl	$-2, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	eckey_pub_cmp, .-eckey_pub_cmp
	.type	eckey_priv_decode_ex, @function
eckey_priv_decode_ex:
.LFB603:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_from_pkcs8@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L43
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
.L43:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	eckey_priv_decode_ex, .-eckey_priv_decode_ex
	.type	eckey_priv_encode, @function
eckey_priv_encode:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -152(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	leaq	-156(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	eckey_param2type
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L46:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_enc_flags@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_enc_flags@PLT
	leaq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPrivateKey@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.L48
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L48:
	movq	-152(%rbp), %r13
	movq	-168(%rbp), %r12
	movl	-156(%rbp), %ebx
	movl	$408, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	movl	-40(%rbp), %edx
	pushq	%rdx
	movq	%r13, %r9
	movq	%r12, %r8
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS8_pkey_set0@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-40(%rbp), %eax
	movslq	%eax, %rsi
	movq	-152(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$193, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L49
.L50:
	movl	$1, %eax
	jmp	.L52
.L49:
	movl	-156(%rbp), %eax
	cmpl	$16, %eax
	jne	.L51
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
.L51:
	movl	$0, %eax
.L52:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	eckey_priv_encode, .-eckey_priv_encode
	.type	int_ec_size, @function
int_ec_size:
.LFB605:
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
	call	ECDSA_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	int_ec_size, .-int_ec_size
	.type	ec_bits, @function
ec_bits:
.LFB606:
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
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ec_bits, .-ec_bits
	.type	ec_security_bits, @function
ec_security_bits:
.LFB607:
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
	call	ec_bits
	movl	%eax, -4(%rbp)
	cmpl	$511, -4(%rbp)
	jle	.L58
	movl	$256, %eax
	jmp	.L59
.L58:
	cmpl	$383, -4(%rbp)
	jle	.L60
	movl	$192, %eax
	jmp	.L59
.L60:
	cmpl	$255, -4(%rbp)
	jle	.L61
	movl	$128, %eax
	jmp	.L59
.L61:
	cmpl	$223, -4(%rbp)
	jle	.L62
	movl	$112, %eax
	jmp	.L59
.L62:
	cmpl	$159, -4(%rbp)
	jle	.L63
	movl	$80, %eax
	jmp	.L59
.L63:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ec_security_bits, .-ec_security_bits
	.type	ec_missing_parameters, @function
ec_missing_parameters:
.LFB608:
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
	testq	%rax, %rax
	je	.L65
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	testq	%rax, %rax
	jne	.L66
.L65:
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ec_missing_parameters, .-ec_missing_parameters
	.type	ec_copy_parameters, @function
ec_copy_parameters:
.LFB609:
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
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	call	EC_KEY_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L74
.L71:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	je	.L75
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$1, %eax
	jmp	.L70
.L74:
	nop
	jmp	.L72
.L75:
	nop
.L72:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ec_copy_parameters, .-ec_copy_parameters
	.type	ec_cmp_parameters, @function
ec_cmp_parameters:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L77
	cmpq	$0, -16(%rbp)
	jne	.L78
.L77:
	movl	$-2, %eax
	jmp	.L79
.L78:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	testl	%eax, %eax
	je	.L80
	movl	$0, %eax
	jmp	.L79
.L80:
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	ec_cmp_parameters, .-ec_cmp_parameters
	.type	int_ec_free, @function
int_ec_free:
.LFB611:
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
	call	EC_KEY_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	int_ec_free, .-int_ec_free
	.section	.rodata
.LC1:
	.string	"Private-Key"
.LC2:
	.string	"Public-Key"
.LC3:
	.string	"ECDSA-Parameters"
.LC4:
	.string	"%s: (%d bit)\n"
.LC5:
	.string	""
.LC6:
	.string	"%*spriv:\n"
.LC7:
	.string	"%*spub:\n"
	.text
	.type	do_EC_KEY_print, @function
do_EC_KEY_print:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L83
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L84
.L83:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L84:
	cmpl	$2, -88(%rbp)
	je	.L86
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	testq	%rax, %rax
	je	.L86
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_conv_form@PLT
	movl	%eax, %esi
	leaq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_KEY_key2buf@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L101
.L86:
	cmpl	$0, -88(%rbp)
	jne	.L88
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	testq	%rax, %rax
	je	.L88
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_priv2buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L102
.L88:
	cmpl	$0, -88(%rbp)
	jne	.L89
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L90
.L89:
	cmpl	$1, -88(%rbp)
	jne	.L91
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L90
.L91:
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
.L90:
	movl	-84(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L103
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L104
	cmpq	$0, -16(%rbp)
	je	.L94
	leaq	.LC5(%rip), %rcx
	movl	-84(%rbp), %edx
	leaq	.LC6(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L105
	movl	-84(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_buf_print@PLT
	testl	%eax, %eax
	je	.L106
.L94:
	cmpq	$0, -24(%rbp)
	je	.L96
	leaq	.LC5(%rip), %rcx
	movl	-84(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L107
	movl	-84(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_buf_print@PLT
	testl	%eax, %eax
	je	.L108
.L96:
	movl	-84(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ECPKParameters_print@PLT
	testl	%eax, %eax
	je	.L109
	movl	$1, -28(%rbp)
	jmp	.L87
.L101:
	nop
	jmp	.L87
.L102:
	nop
	jmp	.L87
.L103:
	nop
	jmp	.L87
.L104:
	nop
	jmp	.L87
.L105:
	nop
	jmp	.L87
.L106:
	nop
	jmp	.L87
.L107:
	nop
	jmp	.L87
.L108:
	nop
	jmp	.L87
.L109:
	nop
.L87:
	cmpl	$0, -28(%rbp)
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$340, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L99:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$341, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	do_EC_KEY_print, .-do_EC_KEY_print
	.type	eckey_param_decode, @function
eckey_param_decode:
.LFB613:
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
	call	d2i_ECParameters@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	eckey_param_decode, .-eckey_param_decode
	.type	eckey_param_encode, @function
eckey_param_encode:
.LFB614:
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
	call	i2d_ECParameters@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	eckey_param_encode, .-eckey_param_encode
	.type	eckey_param_print, @function
eckey_param_print:
.LFB615:
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
	call	do_EC_KEY_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	eckey_param_print, .-eckey_param_print
	.type	eckey_pub_print, @function
eckey_pub_print:
.LFB616:
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
	call	do_EC_KEY_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	eckey_pub_print, .-eckey_pub_print
	.type	eckey_priv_print, @function
eckey_priv_print:
.LFB617:
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
	call	do_EC_KEY_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	eckey_priv_print, .-eckey_priv_print
	.type	old_ec_priv_decode, @function
old_ec_priv_decode:
.LFB618:
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
	call	d2i_ECPrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L122
	movl	$0, %eax
	jmp	.L123
.L122:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	old_ec_priv_decode, .-old_ec_priv_decode
	.type	old_ec_priv_encode, @function
old_ec_priv_encode:
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
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPrivateKey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	old_ec_priv_encode, .-old_ec_priv_encode
	.type	ec_pkey_ctrl, @function
ec_pkey_ctrl:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpl	$10, -28(%rbp)
	je	.L127
	cmpl	$10, -28(%rbp)
	jg	.L128
	cmpl	$3, -28(%rbp)
	je	.L129
	cmpl	$9, -28(%rbp)
	je	.L130
	jmp	.L128
.L129:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1172, %eax
	jne	.L131
	movq	-48(%rbp), %rax
	movl	$1143, (%rax)
	movl	$2, %eax
	jmp	.L132
.L131:
	movq	-48(%rbp), %rax
	movl	$672, (%rax)
	movl	$1, %eax
	jmp	.L132
.L130:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L133
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	movl	$1, %eax
	jmp	.L134
.L133:
	movl	$0, %eax
.L134:
	cltq
	testq	%rax, %rax
	jne	.L135
	movl	$0, %eax
	jmp	.L132
.L135:
	movq	-40(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get0_EC_KEY_int@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	EC_KEY_oct2key@PLT
	jmp	.L132
.L127:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$4, %esi
	call	EC_KEY_key2buf@PLT
	jmp	.L132
.L128:
	movl	$-2, %eax
.L132:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	ec_pkey_ctrl, .-ec_pkey_ctrl
	.type	ec_pkey_check, @function
ec_pkey_check:
.LFB621:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_check_key@PLT
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	ec_pkey_check, .-ec_pkey_check
	.type	ec_pkey_public_check, @function
ec_pkey_public_check:
.LFB622:
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
	call	EC_KEY_check_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ec_pkey_public_check, .-ec_pkey_public_check
	.type	ec_pkey_param_check, @function
ec_pkey_param_check:
.LFB623:
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
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L142
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check@PLT
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ec_pkey_param_check, .-ec_pkey_param_check
	.type	ec_pkey_dirty_cnt, @function
ec_pkey_dirty_cnt:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ec_pkey_dirty_cnt, .-ec_pkey_dirty_cnt
	.section	.rodata
.LC8:
	.string	"pub"
.LC9:
	.string	"priv"
.LC10:
	.string	"use-cofactor-flag"
	.text
	.type	ec_pkey_export_to, @function
ec_pkey_export_to:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L147
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L147
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L148
.L147:
	movl	$0, %eax
	jmp	.L161
.L148:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L150
	movl	$0, %eax
	jmp	.L161
.L150:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L162
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %r8
	movq	-168(%rbp), %rdi
	movq	-160(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	-120(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ec_group_todata@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L163
	orl	$4, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L154
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_conv_form@PLT
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L164
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	leaq	.LC8(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L164
	orl	$2, -12(%rbp)
.L154:
	cmpq	$0, -40(%rbp)
	je	.L157
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jle	.L165
	movl	-84(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN_pad@PLT
	testl	%eax, %eax
	je	.L166
	orl	$1, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edx
	leaq	.LC10(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	je	.L167
	orl	$128, -12(%rbp)
.L157:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-144(%rbp), %rax
	movq	-152(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -16(%rbp)
	jmp	.L152
.L162:
	nop
	jmp	.L152
.L163:
	nop
	jmp	.L152
.L164:
	nop
	jmp	.L152
.L165:
	nop
	jmp	.L152
.L166:
	nop
	jmp	.L152
.L167:
	nop
.L152:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-112(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$602, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-120(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$603, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-16(%rbp), %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ec_pkey_export_to, .-ec_pkey_export_to
	.type	ec_pkey_import_from, @function
ec_pkey_import_from:
.LFB626:
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
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$616, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L170
.L169:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_group_fromdata@PLT
	testl	%eax, %eax
	je	.L171
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_otherparams_fromdata@PLT
	testl	%eax, %eax
	je	.L171
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_fromdata@PLT
	testl	%eax, %eax
	je	.L171
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L172
.L171:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
	jmp	.L170
.L172:
	movl	$1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ec_pkey_import_from, .-ec_pkey_import_from
	.type	ec_pkey_copy, @function
ec_pkey_copy:
.LFB627:
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
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L175
	movl	$0, %eax
	jmp	.L176
.L174:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	jmp	.L176
.L175:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L177
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
.L177:
	movl	-20(%rbp), %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ec_pkey_copy, .-ec_pkey_copy
	.globl	ossl_eckey_asn1_meth
	.section	.rodata
.LC11:
	.string	"EC"
.LC12:
	.string	"OpenSSL EC algorithm"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_eckey_asn1_meth, @object
	.size	ossl_eckey_asn1_meth, 320
ossl_eckey_asn1_meth:
	.long	408
	.long	408
	.quad	0
	.quad	.LC11
	.quad	.LC12
	.quad	eckey_pub_decode
	.quad	eckey_pub_encode
	.quad	eckey_pub_cmp
	.quad	eckey_pub_print
	.quad	0
	.quad	eckey_priv_encode
	.quad	eckey_priv_print
	.quad	int_ec_size
	.quad	ec_bits
	.quad	ec_security_bits
	.quad	eckey_param_decode
	.quad	eckey_param_encode
	.quad	ec_missing_parameters
	.quad	ec_copy_parameters
	.quad	ec_cmp_parameters
	.quad	eckey_param_print
	.quad	0
	.quad	int_ec_free
	.quad	ec_pkey_ctrl
	.quad	old_ec_priv_decode
	.quad	old_ec_priv_encode
	.quad	0
	.quad	0
	.quad	0
	.quad	ec_pkey_check
	.quad	ec_pkey_public_check
	.quad	ec_pkey_param_check
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ec_pkey_dirty_cnt
	.quad	ec_pkey_export_to
	.quad	ec_pkey_import_from
	.quad	ec_pkey_copy
	.quad	eckey_priv_decode_ex
	.globl	ossl_sm2_asn1_meth
	.section	.rodata
	.align 32
	.type	ossl_sm2_asn1_meth, @object
	.size	ossl_sm2_asn1_meth, 320
ossl_sm2_asn1_meth:
	.long	1172
	.long	408
	.quad	1
	.zero	304
	.text
	.globl	EC_KEY_print
	.type	EC_KEY_print, @function
EC_KEY_print:
.LFB628:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	do_EC_KEY_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	EC_KEY_print, .-EC_KEY_print
	.globl	ECParameters_print
	.type	ECParameters_print, @function
ECParameters_print:
.LFB629:
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
	movl	$2, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	do_EC_KEY_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	ECParameters_print, .-ECParameters_print
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 17
__func__.7:
	.string	"eckey_param2type"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"eckey_pub_encode"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 17
__func__.5:
	.string	"eckey_pub_decode"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"eckey_priv_encode"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"do_EC_KEY_print"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"ec_pkey_check"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"ec_pkey_param_check"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ec_pkey_import_from"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

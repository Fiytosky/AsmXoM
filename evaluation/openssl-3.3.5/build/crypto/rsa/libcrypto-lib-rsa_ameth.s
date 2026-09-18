	.file	"rsa_ameth.c"
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
	.type	sk_RSA_PRIME_INFO_num, @function
sk_RSA_PRIME_INFO_num:
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
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	sk_RSA_PRIME_INFO_num, .-sk_RSA_PRIME_INFO_num
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.type	rsa_param_encode, @function
rsa_param_encode:
.LFB620:
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
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	cmpl	$4096, %eax
	je	.L10
	movq	-40(%rbp), %rax
	movl	$5, (%rax)
	movl	$1, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	movl	$1, %eax
	jmp	.L11
.L12:
	call	RSA_PSS_PARAMS_it@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	movq	-40(%rbp), %rax
	movl	$16, (%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	rsa_param_encode, .-rsa_param_encode
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_ameth.c"
	.text
	.type	rsa_pub_encode, @function
rsa_pub_encode:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -48(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_param_encode
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L19
.L15:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_RSAPublicKey@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L17
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L19
.L17:
	movq	-48(%rbp), %r13
	movq	-56(%rbp), %r12
	movl	-60(%rbp), %ebx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movl	-36(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %r9d
	movq	%r13, %r8
	movq	%r12, %rcx
	movl	%ebx, %edx
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	je	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
.L19:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	rsa_pub_encode, .-rsa_pub_encode
	.type	rsa_pub_decode, @function
rsa_pub_decode:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L30
.L21:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_RSAPublicKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L30
.L23:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_param_decode@PLT
	testl	%eax, %eax
	jne	.L24
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
	jmp	.L30
.L24:
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	je	.L25
	cmpl	$912, %eax
	je	.L26
	jmp	.L28
.L25:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
	jmp	.L28
.L26:
	movq	-8(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
	nop
.L28:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L29
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	rsa_pub_decode, .-rsa_pub_decode
	.type	rsa_pub_cmp, @function
rsa_pub_cmp:
.LFB623:
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
	movq	%rax, %rdi
	call	RSA_flags@PLT
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L32
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	RSA_flags@PLT
	andl	$1, %eax
	testl	%eax, %eax
	je	.L33
.L32:
	movl	$1, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L36
.L35:
	movl	$0, %eax
	jmp	.L34
.L36:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	rsa_pub_cmp, .-rsa_pub_cmp
	.type	old_rsa_priv_decode, @function
old_rsa_priv_decode:
.LFB624:
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
	call	d2i_RSAPrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	old_rsa_priv_decode, .-old_rsa_priv_decode
	.type	old_rsa_priv_encode, @function
old_rsa_priv_encode:
.LFB625:
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
	call	i2d_RSAPrivateKey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	old_rsa_priv_encode, .-old_rsa_priv_encode
	.type	rsa_priv_encode, @function
rsa_priv_encode:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -48(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_param_encode
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L47
.L43:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_RSAPrivateKey@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L45
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L47
.L45:
	movq	-48(%rbp), %r13
	movq	-56(%rbp), %r12
	movl	-60(%rbp), %ebx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	movl	-36(%rbp), %edx
	pushq	%rdx
	movq	%r13, %r9
	movq	%r12, %r8
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS8_pkey_set0@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$166, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	rsa_priv_encode, .-rsa_priv_encode
	.type	rsa_priv_decode, @function
rsa_priv_decode:
.LFB627:
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
	call	ossl_rsa_key_from_pkcs8@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
.L49:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	rsa_priv_decode, .-rsa_priv_decode
	.type	int_rsa_size, @function
int_rsa_size:
.LFB628:
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
	call	RSA_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	int_rsa_size, .-int_rsa_size
	.type	rsa_bits, @function
rsa_bits:
.LFB629:
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
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	rsa_bits, .-rsa_bits
	.type	rsa_security_bits, @function
rsa_security_bits:
.LFB630:
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
	call	RSA_security_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	rsa_security_bits, .-rsa_security_bits
	.type	int_rsa_free, @function
int_rsa_free:
.LFB631:
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
	call	RSA_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	int_rsa_free, .-int_rsa_free
	.section	.rodata
	.align 8
.LC1:
	.string	"No PSS parameter restrictions\n"
.LC2:
	.string	"PSS parameter restrictions:"
.LC3:
	.string	"(INVALID PSS PARAMETERS)\n"
.LC4:
	.string	"\n"
.LC5:
	.string	"Hash Algorithm: "
.LC6:
	.string	"sha1 (default)"
.LC7:
	.string	"Mask Algorithm: "
.LC8:
	.string	" with "
.LC9:
	.string	"INVALID"
.LC10:
	.string	"mgf1 with sha1 (default)"
.LC11:
	.string	"Minimum"
.LC12:
	.string	""
.LC13:
	.string	"%s Salt Length: 0x"
.LC14:
	.string	"14 (default)"
.LC15:
	.string	"Trailer Field: 0x"
.LC16:
	.string	"01 (default)"
	.text
	.type	rsa_pss_param_print, @function
rsa_pss_param_print:
.LFB632:
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
	movl	%ecx, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L91
	cmpl	$0, -28(%rbp)
	je	.L61
	cmpq	$0, -40(%rbp)
	jne	.L62
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movl	$1, %eax
	jmp	.L64
.L62:
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L65
	movl	$0, %eax
	jmp	.L64
.L61:
	cmpq	$0, -40(%rbp)
	jne	.L65
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L66
	movl	$0, %eax
	jmp	.L64
.L66:
	movl	$1, %eax
	jmp	.L64
.L65:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L92
	cmpl	$0, -28(%rbp)
	je	.L68
	addl	$2, -32(%rbp)
.L68:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L93
	leaq	.LC5(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L94
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jg	.L72
	jmp	.L60
.L71:
	leaq	.LC6(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L95
.L72:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L96
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC7(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L98
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jle	.L99
	leaq	.LC8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L100
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_mgf1_decode@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jg	.L80
	jmp	.L60
.L79:
	leaq	.LC9(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L80
	jmp	.L60
.L76:
	leaq	.LC10(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L101
.L80:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L102
	cmpl	$0, -28(%rbp)
	je	.L82
	leaq	.LC11(%rip), %rax
	jmp	.L83
.L82:
	leaq	.LC12(%rip), %rax
.L83:
	leaq	.LC13(%rip), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L103
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	testl	%eax, %eax
	jg	.L86
	jmp	.L60
.L85:
	leaq	.LC14(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L104
.L86:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L105
	leaq	.LC15(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L106
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	testl	%eax, %eax
	jg	.L90
	jmp	.L60
.L89:
	leaq	.LC16(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L107
.L90:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -4(%rbp)
	jmp	.L60
.L91:
	nop
	jmp	.L60
.L92:
	nop
	jmp	.L60
.L93:
	nop
	jmp	.L60
.L94:
	nop
	jmp	.L60
.L95:
	nop
	jmp	.L60
.L96:
	nop
	jmp	.L60
.L97:
	nop
	jmp	.L60
.L98:
	nop
	jmp	.L60
.L99:
	nop
	jmp	.L60
.L100:
	nop
	jmp	.L60
.L101:
	nop
	jmp	.L60
.L102:
	nop
	jmp	.L60
.L103:
	nop
	jmp	.L60
.L104:
	nop
	jmp	.L60
.L105:
	nop
	jmp	.L60
.L106:
	nop
	jmp	.L60
.L107:
	nop
.L60:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-4(%rbp), %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	rsa_pss_param_print, .-rsa_pss_param_print
	.section	.rodata
.LC17:
	.string	"RSA-PSS"
.LC18:
	.string	"RSA"
.LC19:
	.string	"%s "
	.align 8
.LC20:
	.string	"Private-Key: (%d bit, %d primes)\n"
.LC21:
	.string	"modulus:"
.LC22:
	.string	"publicExponent:"
.LC23:
	.string	"Public-Key: (%d bit)\n"
.LC24:
	.string	"Modulus:"
.LC25:
	.string	"Exponent:"
.LC26:
	.string	"privateExponent:"
.LC27:
	.string	"prime1:"
.LC28:
	.string	"prime2:"
.LC29:
	.string	"exponent1:"
.LC30:
	.string	"exponent2:"
.LC31:
	.string	"coefficient:"
.LC32:
	.string	"prime%d:"
.LC33:
	.string	"exponent%d:"
.LC34:
	.string	"coefficient%d:"
	.text
	.type	pkey_rsa_print, @function
pkey_rsa_print:
.LFB633:
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
	movl	%ecx, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -24(%rbp)
.L109:
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -60(%rbp)
	movl	-100(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L144
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	jne	.L112
	leaq	.LC17(%rip), %rax
	jmp	.L113
.L112:
	leaq	.LC18(%rip), %rax
.L113:
	leaq	.LC19(%rip), %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L145
	cmpl	$0, -104(%rbp)
	je	.L115
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movl	-60(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	leal	2(%rax), %ecx
	movl	-24(%rbp), %edx
	leaq	.LC20(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L146
	leaq	.LC21(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L117
.L115:
	movl	-24(%rbp), %edx
	leaq	.LC23(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L147
	leaq	.LC24(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -16(%rbp)
.L117:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-100(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L148
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movl	-100(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L149
	cmpl	$0, -104(%rbp)
	je	.L121
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-100(%rbp), %ecx
	leaq	.LC26(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L150
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-100(%rbp), %ecx
	leaq	.LC27(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L151
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-100(%rbp), %ecx
	leaq	.LC28(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L152
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdx
	movl	-100(%rbp), %ecx
	leaq	.LC29(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L153
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-100(%rbp), %ecx
	leaq	.LC30(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L154
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdx
	movl	-100(%rbp), %ecx
	leaq	.LC31(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L155
	movl	$0, -28(%rbp)
	jmp	.L128
.L141:
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -72(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L129
.L140:
	movl	-100(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L156
	cmpl	$2, -44(%rbp)
	je	.L131
	cmpl	$2, -44(%rbp)
	jg	.L157
	cmpl	$0, -44(%rbp)
	je	.L133
	cmpl	$1, -44(%rbp)
	je	.L134
	jmp	.L157
.L133:
	movl	-28(%rbp), %eax
	leal	3(%rax), %edx
	leaq	.LC32(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L158
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L136
.L134:
	movl	-28(%rbp), %eax
	leal	3(%rax), %edx
	leaq	.LC33(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L159
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L136
.L131:
	movl	-28(%rbp), %eax
	leal	3(%rax), %edx
	leaq	.LC34(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L160
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L136
.L157:
	nop
.L136:
	movl	-100(%rbp), %ecx
	movq	-40(%rbp), %rdx
	leaq	.LC12(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L161
	addl	$1, -44(%rbp)
.L129:
	cmpl	$2, -44(%rbp)
	jle	.L140
	addl	$1, -28(%rbp)
.L128:
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	cmpl	%eax, -28(%rbp)
	jl	.L141
.L121:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	jne	.L142
	movq	-56(%rbp), %rax
	movq	128(%rax), %rdx
	movl	-100(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	rsa_pss_param_print
	testl	%eax, %eax
	je	.L162
.L142:
	movl	$1, -20(%rbp)
	jmp	.L111
.L144:
	nop
	jmp	.L111
.L145:
	nop
	jmp	.L111
.L146:
	nop
	jmp	.L111
.L147:
	nop
	jmp	.L111
.L148:
	nop
	jmp	.L111
.L149:
	nop
	jmp	.L111
.L150:
	nop
	jmp	.L111
.L151:
	nop
	jmp	.L111
.L152:
	nop
	jmp	.L111
.L153:
	nop
	jmp	.L111
.L154:
	nop
	jmp	.L111
.L155:
	nop
	jmp	.L111
.L156:
	nop
	jmp	.L111
.L158:
	nop
	jmp	.L111
.L159:
	nop
	jmp	.L111
.L160:
	nop
	jmp	.L111
.L161:
	nop
	jmp	.L111
.L162:
	nop
.L111:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	pkey_rsa_print, .-pkey_rsa_print
	.type	rsa_pub_print, @function
rsa_pub_print:
.LFB634:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	pkey_rsa_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	rsa_pub_print, .-rsa_pub_print
	.type	rsa_priv_print, @function
rsa_priv_print:
.LFB635:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	pkey_rsa_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	rsa_priv_print, .-rsa_priv_print
	.type	rsa_sig_print, @function
rsa_sig_print:
.LFB636:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$912, %eax
	jne	.L168
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_decode@PLT
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rsa_pss_param_print
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L169
	movl	$0, %eax
	jmp	.L170
.L168:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L169
	movl	$0, %eax
	jmp	.L170
.L169:
	cmpq	$0, -40(%rbp)
	je	.L171
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_dump@PLT
	jmp	.L170
.L171:
	movl	$1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	rsa_sig_print, .-rsa_sig_print
	.type	rsa_pkey_ctrl, @function
rsa_pkey_ctrl:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpl	$3, -44(%rbp)
	jne	.L173
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L174
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param@PLT
	testl	%eax, %eax
	jne	.L175
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$431, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L177
.L175:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movq	-64(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	$2, %eax
	jmp	.L177
.L174:
	movq	-64(%rbp), %rax
	movl	$672, (%rax)
	movl	$1, %eax
	jmp	.L177
.L173:
	movl	$-2, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	rsa_pkey_ctrl, .-rsa_pkey_ctrl
	.type	rsa_ctx_to_pss, @function
rsa_ctx_to_pss:
.LFB638:
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
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -32(%rbp)
	movl	$-1, -20(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_signature_md@PLT
	testl	%eax, %eax
	jg	.L179
	movl	$0, %eax
	jmp	.L189
.L179:
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_mgf1_md@PLT
	testl	%eax, %eax
	jg	.L181
	movl	$0, %eax
	jmp	.L189
.L181:
	leaq	-52(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_pss_saltlen@PLT
	testl	%eax, %eax
	jg	.L182
	movl	$0, %eax
	jmp	.L189
.L182:
	movl	-52(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L183
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -52(%rbp)
	jmp	.L184
.L183:
	movl	-52(%rbp), %eax
	cmpl	$-4, %eax
	jne	.L184
	movl	$-3, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -20(%rbp)
.L184:
	movl	-52(%rbp), %eax
	cmpl	$-3, %eax
	je	.L185
	movl	-52(%rbp), %eax
	cmpl	$-2, %eax
	jne	.L186
.L185:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	leal	-2(%rdx), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L187
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
.L187:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jns	.L188
	movl	$0, %eax
	jmp	.L189
.L188:
	cmpl	$0, -20(%rbp)
	js	.L186
	movl	-52(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L186
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
.L186:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_create@PLT
.L189:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	rsa_ctx_to_pss, .-rsa_ctx_to_pss
	.globl	ossl_rsa_pss_params_create
	.type	ossl_rsa_pss_params_create, @function
ossl_rsa_pss_params_create:
.LFB639:
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
	call	RSA_PSS_PARAMS_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L200
	cmpl	$20, -36(%rbp)
	je	.L193
	call	ASN1_INTEGER_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L201
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L202
.L193:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_algor_new_from_md@PLT
	testl	%eax, %eax
	je	.L203
	cmpq	$0, -32(%rbp)
	jne	.L196
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L196:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x509_algor_md_to_mgf1@PLT
	testl	%eax, %eax
	je	.L204
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x509_algor_new_from_md@PLT
	testl	%eax, %eax
	je	.L205
	movq	-8(%rbp), %rax
	jmp	.L199
.L200:
	nop
	jmp	.L192
.L201:
	nop
	jmp	.L192
.L202:
	nop
	jmp	.L192
.L203:
	nop
	jmp	.L192
.L204:
	nop
	jmp	.L192
.L205:
	nop
.L192:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movl	$0, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_rsa_pss_params_create, .-ossl_rsa_pss_params_create
	.globl	ossl_rsa_ctx_to_pss_string
	.type	ossl_rsa_ctx_to_pss_string, @function
ossl_rsa_ctx_to_pss_string:
.LFB640:
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
	call	rsa_ctx_to_pss
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	call	RSA_PSS_PARAMS_it@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movq	-16(%rbp), %rax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_rsa_ctx_to_pss_string, .-ossl_rsa_ctx_to_pss_string
	.globl	ossl_rsa_pss_to_ctx
	.type	ossl_rsa_pss_to_ctx, @function
ossl_rsa_pss_to_ctx:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	$-1, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$912, %eax
	je	.L210
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$547, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L222
.L210:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_decode@PLT
	movq	%rax, -32(%rbp)
	leaq	-36(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param@PLT
	testl	%eax, %eax
	jne	.L212
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$554, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L213
.L212:
	cmpq	$0, -96(%rbp)
	je	.L214
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	jne	.L215
	jmp	.L213
.L214:
	movq	-80(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_signature_md@PLT
	testl	%eax, %eax
	jle	.L223
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, %ebx
	je	.L215
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$567, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L213
.L215:
	movq	-80(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L224
	movl	-36(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	testl	%eax, %eax
	jle	.L225
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_mgf1_md@PLT
	testl	%eax, %eax
	jle	.L226
	movl	$1, -20(%rbp)
	jmp	.L213
.L223:
	nop
	jmp	.L213
.L224:
	nop
	jmp	.L213
.L225:
	nop
	jmp	.L213
.L226:
	nop
.L213:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movl	-20(%rbp), %eax
.L222:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_rsa_pss_to_ctx, .-ossl_rsa_pss_to_ctx
	.type	rsa_pss_verify_param, @function
rsa_pss_verify_param:
.LFB642:
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
	movq	%rcx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L228
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L228
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$592, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L229
.L228:
	cmpq	$0, -32(%rbp)
	je	.L230
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L230
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L229
.L230:
	movl	$1, %eax
.L229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	rsa_pss_verify_param, .-rsa_pss_verify_param
	.globl	ossl_rsa_pss_get_param
	.type	ossl_rsa_pss_get_param, @function
ossl_rsa_pss_get_param:
.LFB643:
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
	leaq	-4(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param_unverified@PLT
	testl	%eax, %eax
	je	.L232
	leaq	-4(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_pss_verify_param
	testl	%eax, %eax
	je	.L232
	movl	$1, %eax
	jmp	.L234
.L232:
	movl	$0, %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ossl_rsa_pss_get_param, .-ossl_rsa_pss_get_param
	.type	rsa_item_verify, @function
rsa_item_verify:
.LFB644:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$912, %eax
	je	.L236
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$635, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L237
.L236:
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_to_ctx@PLT
	testl	%eax, %eax
	jle	.L238
	movl	$2, %eax
	jmp	.L237
.L238:
	movl	$-1, %eax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	rsa_item_verify, .-rsa_item_verify
	.section	.rodata
.LC35:
	.string	"algorithm-id"
	.text
	.type	rsa_item_sign, @function
rsa_item_sign:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%r8, -312(%rbp)
	movq	%r9, -320(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, -8(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_padding@PLT
	testl	%eax, %eax
	jg	.L240
	movl	$0, %eax
	jmp	.L256
.L240:
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	jne	.L242
	movl	$2, %eax
	jmp	.L256
.L242:
	movl	-36(%rbp), %eax
	cmpl	$6, %eax
	jne	.L243
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L244
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_ctx_to_pss_string@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L245
	movl	$0, %eax
	jmp	.L256
.L245:
	movq	-312(%rbp), %rax
	testq	%rax, %rax
	je	.L247
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L248
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L256
.L248:
	movl	$912, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-312(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L247
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L256
.L247:
	movl	$912, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-304(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L249
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L256
.L249:
	movl	$3, %eax
	jmp	.L256
.L244:
	leaq	-368(%rbp), %rax
	leaq	-192(%rbp), %rdx
	leaq	.LC35(%rip), %rsi
	movl	$128, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-272(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jg	.L250
	movl	$0, %eax
	jmp	.L256
.L250:
	movq	-240(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L251
	movl	$0, %eax
	jmp	.L256
.L251:
	movq	-304(%rbp), %rax
	testq	%rax, %rax
	je	.L252
	leaq	-192(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_ALGOR@PLT
	testq	%rax, %rax
	jne	.L252
	movl	$0, %eax
	jmp	.L256
.L252:
	movq	-312(%rbp), %rax
	testq	%rax, %rax
	je	.L254
	leaq	-192(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_ALGOR@PLT
	testq	%rax, %rax
	jne	.L254
	movl	$0, %eax
	jmp	.L256
.L254:
	movl	$3, %eax
	jmp	.L256
.L243:
	movl	$2, %eax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	rsa_item_sign, .-rsa_item_sign
	.type	rsa_sig_info_set, @function
rsa_sig_info_set:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$912, %eax
	je	.L258
	movl	$0, %eax
	jmp	.L268
.L258:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_decode@PLT
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param@PLT
	testl	%eax, %eax
	je	.L269
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -28(%rbp)
	cmpl	$672, -28(%rbp)
	je	.L262
	cmpl	$673, -28(%rbp)
	je	.L262
	cmpl	$674, -28(%rbp)
	jne	.L263
.L262:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, -28(%rbp)
	jne	.L263
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L263
	movl	$2, -8(%rbp)
	jmp	.L264
.L263:
	movl	$0, -8(%rbp)
.L264:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	sall	$2, %eax
	movl	%eax, -12(%rbp)
	cmpl	$64, -28(%rbp)
	jne	.L265
	movl	$64, -12(%rbp)
	jmp	.L266
.L265:
	cmpl	$114, -28(%rbp)
	jne	.L267
	movl	$68, -12(%rbp)
	jmp	.L266
.L267:
	cmpl	$4, -28(%rbp)
	jne	.L266
	movl	$39, -12(%rbp)
.L266:
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$912, %edx
	movq	%rax, %rdi
	call	X509_SIG_INFO_set@PLT
	movl	$1, -4(%rbp)
	jmp	.L261
.L269:
	nop
.L261:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movl	-4(%rbp), %eax
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	rsa_sig_info_set, .-rsa_sig_info_set
	.type	rsa_pkey_check, @function
rsa_pkey_check:
.LFB647:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_check_key_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	rsa_pkey_check, .-rsa_pkey_check
	.type	rsa_pkey_dirty_cnt, @function
rsa_pkey_dirty_cnt:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	216(%rax), %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	rsa_pkey_dirty_cnt, .-rsa_pkey_dirty_cnt
	.type	rsa_int_export_to, @function
rsa_int_export_to:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L275
	movl	$0, %eax
	jmp	.L276
.L275:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	testq	%rax, %rax
	je	.L288
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_e@PLT
	testq	%rax, %rax
	je	.L288
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_rsa_todata@PLT
	testl	%eax, %eax
	je	.L289
	orl	$2, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_d@PLT
	testq	%rax, %rax
	je	.L281
	orl	$1, -12(%rbp)
.L281:
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L282
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	leaq	-64(%rbp), %rdi
	leaq	-60(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param_unverified@PLT
	testl	%eax, %eax
	je	.L290
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -40(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_defaults@PLT
	testl	%eax, %eax
	je	.L291
	movl	-36(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_hashalg@PLT
	testl	%eax, %eax
	je	.L291
	movl	-40(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_maskgenhashalg@PLT
	testl	%eax, %eax
	je	.L291
	movl	-60(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_saltlen@PLT
	testl	%eax, %eax
	je	.L291
	movq	-32(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_todata@PLT
	testl	%eax, %eax
	je	.L291
	orl	$128, -12(%rbp)
.L282:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L292
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -16(%rbp)
	jmp	.L279
.L288:
	nop
	jmp	.L279
.L289:
	nop
	jmp	.L279
.L290:
	nop
	jmp	.L279
.L291:
	nop
	jmp	.L279
.L292:
	nop
.L279:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-16(%rbp), %eax
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	rsa_int_export_to, .-rsa_int_export_to
	.type	rsa_int_import_from, @function
rsa_int_import_from:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_new_with_ctx@PLT
	movq	%rax, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movd	%xmm0, -80(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L294
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$853, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L308
.L294:
	movq	-32(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_clear_flags@PLT
	movl	-132(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-120(%rbp), %rdx
	leaq	-100(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_fromdata@PLT
	testl	%eax, %eax
	je	.L309
	cmpl	$0, -132(%rbp)
	je	.L298
	cmpl	$4096, -132(%rbp)
	je	.L299
	jmp	.L297
.L298:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L310
	jmp	.L297
.L299:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L311
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -36(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenhashalg@PLT
	movl	%eax, -40(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_create@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L312
	jmp	.L311
.L310:
	nop
	jmp	.L302
.L311:
	nop
.L302:
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_fromdata@PLT
	testl	%eax, %eax
	je	.L313
	cmpl	$0, -132(%rbp)
	je	.L305
	cmpl	$4096, -132(%rbp)
	je	.L306
	jmp	.L297
.L305:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -4(%rbp)
	jmp	.L297
.L306:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$912, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -4(%rbp)
	jmp	.L297
.L309:
	nop
	jmp	.L297
.L312:
	nop
	jmp	.L297
.L313:
	nop
.L297:
	cmpl	$0, -4(%rbp)
	jne	.L307
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
.L307:
	movl	-4(%rbp), %eax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	rsa_int_import_from, .-rsa_int_import_from
	.type	rsa_pkey_export_to, @function
rsa_pkey_export_to:
.LFB651:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	rsa_int_export_to
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	rsa_pkey_export_to, .-rsa_pkey_export_to
	.type	rsa_pss_pkey_export_to, @function
rsa_pss_pkey_export_to:
.LFB652:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$4096, %esi
	movq	%rax, %rdi
	call	rsa_int_export_to
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	rsa_pss_pkey_export_to, .-rsa_pss_pkey_export_to
	.type	rsa_pkey_import_from, @function
rsa_pkey_import_from:
.LFB653:
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
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_int_import_from
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	rsa_pkey_import_from, .-rsa_pkey_import_from
	.type	rsa_pss_pkey_import_from, @function
rsa_pss_pkey_import_from:
.LFB654:
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
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_int_import_from
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	rsa_pss_pkey_import_from, .-rsa_pss_pkey_import_from
	.type	rsa_pkey_copy, @function
rsa_pkey_copy:
.LFB655:
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
	je	.L323
	movq	-16(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ossl_rsa_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L323
	movl	$0, %eax
	jmp	.L324
.L323:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L325
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
.L325:
	movl	-20(%rbp), %eax
.L324:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	rsa_pkey_copy, .-rsa_pkey_copy
	.globl	ossl_rsa_asn1_meths
	.section	.rodata
.LC36:
	.string	"OpenSSL RSA method"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_rsa_asn1_meths, @object
	.size	ossl_rsa_asn1_meths, 640
ossl_rsa_asn1_meths:
	.long	6
	.long	6
	.quad	4
	.quad	.LC18
	.quad	.LC36
	.quad	rsa_pub_decode
	.quad	rsa_pub_encode
	.quad	rsa_pub_cmp
	.quad	rsa_pub_print
	.quad	rsa_priv_decode
	.quad	rsa_priv_encode
	.quad	rsa_priv_print
	.quad	int_rsa_size
	.quad	rsa_bits
	.quad	rsa_security_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_sig_print
	.quad	int_rsa_free
	.quad	rsa_pkey_ctrl
	.quad	old_rsa_priv_decode
	.quad	old_rsa_priv_encode
	.quad	rsa_item_verify
	.quad	rsa_item_sign
	.quad	rsa_sig_info_set
	.quad	rsa_pkey_check
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_pkey_dirty_cnt
	.quad	rsa_pkey_export_to
	.quad	rsa_pkey_import_from
	.quad	rsa_pkey_copy
	.zero	8
	.long	19
	.long	6
	.quad	1
	.zero	304
	.globl	ossl_rsa_pss_asn1_meth
	.section	.rodata
.LC37:
	.string	"OpenSSL RSA-PSS method"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_pss_asn1_meth, @object
	.size	ossl_rsa_pss_asn1_meth, 320
ossl_rsa_pss_asn1_meth:
	.long	912
	.long	912
	.quad	4
	.quad	.LC17
	.quad	.LC37
	.quad	rsa_pub_decode
	.quad	rsa_pub_encode
	.quad	rsa_pub_cmp
	.quad	rsa_pub_print
	.quad	rsa_priv_decode
	.quad	rsa_priv_encode
	.quad	rsa_priv_print
	.quad	int_rsa_size
	.quad	rsa_bits
	.quad	rsa_security_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_sig_print
	.quad	int_rsa_free
	.quad	rsa_pkey_ctrl
	.quad	0
	.quad	0
	.quad	rsa_item_verify
	.quad	rsa_item_sign
	.quad	rsa_sig_info_set
	.quad	rsa_pkey_check
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_pkey_dirty_cnt
	.quad	rsa_pss_pkey_export_to
	.quad	rsa_pss_pkey_import_from
	.quad	rsa_pkey_copy
	.zero	8
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"rsa_priv_encode"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"rsa_pkey_ctrl"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"ossl_rsa_pss_to_ctx"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"rsa_pss_verify_param"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"rsa_item_verify"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"rsa_int_import_from"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

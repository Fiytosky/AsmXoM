	.file	"sm2_crypt.c"
	.text
	.section	.rodata
.LC0:
	.string	"C1x"
.LC1:
	.string	"C1y"
.LC2:
	.string	"C3"
.LC3:
	.string	"C2"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	SM2_Ciphertext_seq_tt, @object
	.size	SM2_Ciphertext_seq_tt, 160
SM2_Ciphertext_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	SM2_Ciphertext_it
	.type	SM2_Ciphertext_it, @function
SM2_Ciphertext_it:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	SM2_Ciphertext_it, .-SM2_Ciphertext_it
	.globl	d2i_SM2_Ciphertext
	.type	d2i_SM2_Ciphertext, @function
d2i_SM2_Ciphertext:
.LFB365:
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
	call	SM2_Ciphertext_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	d2i_SM2_Ciphertext, .-d2i_SM2_Ciphertext
	.globl	i2d_SM2_Ciphertext
	.type	i2d_SM2_Ciphertext, @function
i2d_SM2_Ciphertext:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	SM2_Ciphertext_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	i2d_SM2_Ciphertext, .-i2d_SM2_Ciphertext
	.globl	SM2_Ciphertext_new
	.type	SM2_Ciphertext_new, @function
SM2_Ciphertext_new:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	SM2_Ciphertext_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	SM2_Ciphertext_new, .-SM2_Ciphertext_new
	.globl	SM2_Ciphertext_free
	.type	SM2_Ciphertext_free, @function
SM2_Ciphertext_free:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	SM2_Ciphertext_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	SM2_Ciphertext_free, .-SM2_Ciphertext_free
	.type	ec_field_size, @function
ec_field_size:
.LFB369:
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
	call	EC_GROUP_get0_field@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ec_field_size, .-ec_field_size
	.type	is_all_zeros, @function
is_all_zeros:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$0, -1(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L14
.L15:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	orb	%al, -1(%rbp)
	addq	$1, -16(%rbp)
.L14:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L15
	cmpb	$0, -1(%rbp)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	is_all_zeros, .-is_all_zeros
	.section	.rodata
.LC4:
	.string	"../crypto/sm2/sm2_crypt.c"
	.text
	.globl	ossl_sm2_plaintext_size
	.type	ossl_sm2_plaintext_size, @function
ossl_sm2_plaintext_size:
.LFB371:
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
	movq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SM2_Ciphertext@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SM2_Ciphertext_free@PLT
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ossl_sm2_plaintext_size, .-ossl_sm2_plaintext_size
	.globl	ossl_sm2_ciphertext_size
	.type	ossl_sm2_ciphertext_size, @function
ossl_sm2_ciphertext_size:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdi
	call	ec_field_size
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L21
	cmpl	$0, -28(%rbp)
	jns	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	addl	$1, %eax
	movl	$2, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	leal	(%rax,%rax), %ebx
	movl	-28(%rbp), %eax
	movl	$4, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	addl	%eax, %ebx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	addl	%ebx, %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	ASN1_object_size@PLT
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	ossl_sm2_ciphertext_size, .-ossl_sm2_ciphertext_size
	.globl	ossl_sm2_encrypt
	.type	ossl_sm2_encrypt, @function
ossl_sm2_encrypt:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -120(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -136(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -144(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -148(%rbp)
	movq	$0, -72(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, -160(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, -168(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L25
	cmpl	$0, -148(%rbp)
	jg	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L26:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ec_field_size
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L28:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L29
	cmpq	$0, -40(%rbp)
	jne	.L30
.L29:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L30:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L31:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L32:
	movq	-176(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC4(%rip), %rcx
	movl	$175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -56(%rbp)
	movl	-148(%rbp), %eax
	cltq
	leaq	.LC4(%rip), %rcx
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L54
	cmpq	$0, -64(%rbp)
	je	.L54
	movq	-272(%rbp), %rax
	movq	(%rax), %rdx
	movq	-264(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC4(%rip), %rcx
	movq	-256(%rbp), %rax
	movl	$183, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L55
	nop
.L35:
	movq	-24(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L36:
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L38:
	movq	-176(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L39
	movq	-176(%rbp), %rax
	movl	%eax, %esi
	movq	-56(%rbp), %rdx
	movq	-176(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	jns	.L40
.L39:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L40:
	movq	-176(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-168(%rbp)
	pushq	-160(%rbp)
	pushq	-240(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ecdh_kdf_X9_63@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L41:
	movq	-256(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_all_zeros
	testl	%eax, %eax
	je	.L42
	movq	-176(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L35
.L42:
	movq	$0, -16(%rbp)
	jmp	.L43
.L44:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-248(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L43:
	movq	-16(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jne	.L44
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L45:
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L46
	movq	-176(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L46
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L46
	movq	-56(%rbp), %rdx
	movq	-176(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-176(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L46
	movq	-64(%rbp), %rcx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L47:
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -208(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	je	.L48
	movq	-200(%rbp), %rax
	testq	%rax, %rax
	jne	.L49
.L48:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L49:
	movq	-208(%rbp), %rax
	movl	-148(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L50
	movq	-256(%rbp), %rax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L51
.L50:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L51:
	leaq	-264(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_SM2_Ciphertext@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jns	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L52:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L27
.L54:
	nop
	jmp	.L27
.L55:
	nop
.L27:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$265, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$266, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	ossl_sm2_encrypt, .-ossl_sm2_encrypt
	.globl	ossl_sm2_decrypt
	.type	ossl_sm2_decrypt, @function
ossl_sm2_decrypt:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ec_field_size
	movq	%rax, -96(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -100(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	$0, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L81
	cmpl	$0, -100(%rbp)
	jle	.L81
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-176(%rbp), %rdx
	leaq	-168(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SM2_Ciphertext@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L60:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -100(%rbp)
	je	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L61:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -124(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	movl	-124(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jnb	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$321, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L62:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L63:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L64:
	movl	-124(%rbp), %eax
	cltq
	leaq	.LC4(%rip), %rcx
	movl	$340, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC4(%rip), %rcx
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	movl	-100(%rbp), %eax
	cltq
	leaq	.LC4(%rip), %rcx
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L82
	cmpq	$0, -40(%rbp)
	je	.L82
	cmpq	$0, -48(%rbp)
	je	.L82
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L67:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L68
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L68
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	jne	.L69
.L68:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L69:
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L70
	movq	-96(%rbp), %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L70
	movq	-96(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movl	-124(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-144(%rbp)
	pushq	-136(%rbp)
	pushq	-160(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ecdh_kdf_X9_63@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L71
.L70:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L71:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_all_zeros
	testl	%eax, %eax
	je	.L72
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L72:
	movl	$0, -8(%rbp)
	jmp	.L73
.L74:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -8(%rbp)
.L73:
	movl	-8(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jne	.L74
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L75:
	movq	-160(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L76
	movq	-96(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L76
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L76
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L76
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L77
.L76:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L77:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L78
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$394, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L78:
	movl	$1, -4(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L59
.L81:
	nop
	jmp	.L59
.L82:
	nop
.L59:
	cmpl	$0, -4(%rbp)
	jne	.L79
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L79:
	leaq	.LC4(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$405, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$406, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$407, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SM2_Ciphertext_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	ossl_sm2_decrypt, .-ossl_sm2_decrypt
	.section	.rodata
.LC5:
	.string	"SM2_Ciphertext"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	SM2_Ciphertext_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC5
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"ossl_sm2_plaintext_size"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"ossl_sm2_encrypt"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"ossl_sm2_decrypt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

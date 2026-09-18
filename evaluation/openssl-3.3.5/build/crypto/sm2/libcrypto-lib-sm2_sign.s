	.file	"sm2_sign.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/sm2/sm2_sign.c"
	.text
	.globl	ossl_sm2_compute_z_digest
	.type	ossl_sm2_compute_z_digest, @function
ossl_sm2_compute_z_digest:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -32(%rbp)
	movw	$0, -110(%rbp)
	movb	$0, -111(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L2
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L2:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L4
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L4:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L5
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L6:
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L7:
	cmpq	$8190, -144(%rbp)
	jbe	.L8
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L8:
	movq	-144(%rbp), %rax
	sall	$3, %eax
	movw	%ax, -110(%rbp)
	movzwl	-110(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -111(%rbp)
	leaq	-111(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L9:
	movzwl	-110(%rbp), %eax
	movb	%al, -111(%rbp)
	leaq	-111(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L10:
	cmpq	$0, -144(%rbp)
	je	.L11
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L11:
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L12:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L17
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L14
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L14
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L14
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L14
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L14
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L14
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L14
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L14
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L14
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L14
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L14
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L14
	movq	-120(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L15
.L14:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L15:
	movl	$1, -4(%rbp)
	jmp	.L3
.L17:
	nop
.L3:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	ossl_sm2_compute_z_digest, .-ossl_sm2_compute_z_digest
	.type	sm2_compute_msg_hash, @function
sm2_compute_msg_hash:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, -56(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L19
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L19:
	cmpq	$0, -32(%rbp)
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L21:
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L23:
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sm2_compute_z_digest@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L25
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L25
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L25
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L26:
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L28:
	nop
	jmp	.L20
.L29:
	nop
	jmp	.L20
.L30:
	nop
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$202, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	sm2_compute_msg_hash, .-sm2_compute_msg_hash
	.type	sm2_sig_gen, @function
sm2_sig_gen:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L32:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L34:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
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
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L36:
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L37
	cmpq	$0, -40(%rbp)
	jne	.L38
.L37:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L38:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L39:
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L40
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L40
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_add@PLT
	testl	%eax, %eax
	jne	.L41
.L40:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L41:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L52
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L44:
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L53
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_group_do_inverse_ord@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L46
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L47:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L54
	call	ECDSA_SIG_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524330, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L49:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ECDSA_SIG_set0@PLT
	jmp	.L33
.L52:
	nop
	jmp	.L38
.L53:
	nop
	jmp	.L38
.L54:
	nop
	jmp	.L38
.L33:
	cmpq	$0, -8(%rbp)
	jne	.L50
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	sm2_sig_gen, .-sm2_sig_gen
	.type	sm2_sig_verify, @function
sm2_sig_verify:
.LFB361:
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
	movl	$0, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L56:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L58:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L59:
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ECDSA_SIG_get0@PLT
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L60
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L60
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L60
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jg	.L61
.L60:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L61:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_add@PLT
	testl	%eax, %eax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L62:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L63
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L63:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L64
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	jne	.L65
.L64:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L65:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_add@PLT
	testl	%eax, %eax
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L66:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$1, -4(%rbp)
	jmp	.L57
.L68:
	nop
.L57:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	sm2_sig_verify, .-sm2_sig_verify
	.globl	ossl_sm2_do_sign
	.type	ossl_sm2_do_sign, @function
ossl_sm2_do_sign:
.LFB362:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sm2_compute_msg_hash
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L73
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sm2_sig_gen
	movq	%rax, -8(%rbp)
	jmp	.L71
.L73:
	nop
.L71:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	ossl_sm2_do_sign, .-ossl_sm2_do_sign
	.globl	ossl_sm2_do_verify
	.type	ossl_sm2_do_verify, @function
ossl_sm2_do_verify:
.LFB363:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	16(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sm2_compute_msg_hash
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L78
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sm2_sig_verify
	movl	%eax, -4(%rbp)
	jmp	.L76
.L78:
	nop
.L76:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ossl_sm2_do_verify, .-ossl_sm2_do_verify
	.globl	ossl_sm2_internal_sign
	.type	ossl_sm2_internal_sign, @function
ossl_sm2_internal_sign:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -20(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L81
.L80:
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L81
.L82:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sm2_sig_gen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L81
.L83:
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECDSA_SIG@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L84
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$487, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L81
.L84:
	movl	-24(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, -20(%rbp)
.L81:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	ossl_sm2_internal_sign, .-ossl_sm2_internal_sign
	.globl	ossl_sm2_internal_verify
	.type	ossl_sm2_internal_verify, @function
ossl_sm2_internal_verify:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -16(%rbp)
	movl	$-1, -12(%rbp)
	call	ECDSA_SIG_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$513, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524330, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L87:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ECDSA_SIG@PLT
	testq	%rax, %rax
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L89:
	movq	-24(%rbp), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECDSA_SIG@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.L90
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L91
.L90:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L91:
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$529, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$53, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L92:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sm2_sig_verify
	movl	%eax, -12(%rbp)
.L88:
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$536, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	ossl_sm2_internal_verify, .-ossl_sm2_internal_verify
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"ossl_sm2_compute_z_digest"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 21
__func__.4:
	.string	"sm2_compute_msg_hash"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"sm2_sig_gen"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"sm2_sig_verify"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"ossl_sm2_internal_sign"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"ossl_sm2_internal_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

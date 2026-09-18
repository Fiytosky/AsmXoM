	.file	"prov_seed.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/rand/prov_seed.c"
	.text
	.globl	ossl_rand_get_entropy
	.type	ossl_rand_get_entropy, @function
ossl_rand_get_entropy:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	ossl_rand_pool_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pool_acquire_entropy@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_length@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_detach@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_free@PLT
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_rand_get_entropy, .-ossl_rand_get_entropy
	.globl	ossl_rand_get_user_entropy
	.type	ossl_rand_get_user_entropy, @function
ossl_rand_get_user_entropy:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_get0_seed_noncreating@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_can_seed@PLT
	testl	%eax, %eax
	je	.L6
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_rand_get_seed@PLT
	addq	$16, %rsp
	jmp	.L7
.L6:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rand_get_entropy@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_rand_get_user_entropy, .-ossl_rand_get_user_entropy
	.globl	ossl_rand_cleanup_entropy
	.type	ossl_rand_cleanup_entropy, @function
ossl_rand_cleanup_entropy:
.LFB415:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$60, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_rand_cleanup_entropy, .-ossl_rand_cleanup_entropy
	.globl	ossl_rand_cleanup_user_entropy
	.type	ossl_rand_cleanup_user_entropy, @function
ossl_rand_cleanup_user_entropy:
.LFB416:
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
	call	ossl_rand_get0_seed_noncreating@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_can_seed@PLT
	testl	%eax, %eax
	je	.L10
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_rand_clear_seed@PLT
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$71, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	nop
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_rand_cleanup_user_entropy, .-ossl_rand_cleanup_user_entropy
	.globl	ossl_rand_get_nonce
	.type	ossl_rand_get_nonce, @function
ossl_rand_get_nonce:
.LFB417:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_rand_pool_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pool_add_nonce_data@PLT
	testl	%eax, %eax
	je	.L18
	cmpq	$0, -56(%rbp)
	je	.L17
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_rand_pool_add@PLT
	testl	%eax, %eax
	je	.L19
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_length@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_detach@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L16
.L18:
	nop
	jmp	.L16
.L19:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_free@PLT
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_rand_get_nonce, .-ossl_rand_get_nonce
	.globl	ossl_rand_get_user_nonce
	.type	ossl_rand_get_user_nonce, @function
ossl_rand_get_user_nonce:
.LFB418:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_get0_seed_noncreating@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rand_get_nonce@PLT
	jmp	.L22
.L21:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L24
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$115, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L22
.L24:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ossl_rand_get_user_nonce, .-ossl_rand_get_user_nonce
	.globl	ossl_rand_cleanup_nonce
	.type	ossl_rand_cleanup_nonce, @function
ossl_rand_cleanup_nonce:
.LFB419:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$125, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_rand_cleanup_nonce, .-ossl_rand_cleanup_nonce
	.globl	ossl_rand_cleanup_user_nonce
	.type	ossl_rand_cleanup_user_nonce, @function
ossl_rand_cleanup_user_nonce:
.LFB420:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$131, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ossl_rand_cleanup_user_nonce, .-ossl_rand_cleanup_user_nonce
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"ossl_rand_get_entropy"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ossl_rand_get_nonce"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

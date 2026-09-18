	.file	"rand_pool.c"
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
	.string	"../crypto/rand/rand_pool.c"
	.text
	.globl	ossl_rand_pool_new
	.type	ossl_rand_pool_new, @function
ossl_rand_pool_new:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$25, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L6
	movq	$16, -8(%rbp)
	jmp	.L7
.L6:
	movq	$48, -8(%rbp)
.L7:
	cmpq	$0, -16(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	$12288, %edx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovb	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L10
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
.L10:
	cmpl	$0, -24(%rbp)
	je	.L11
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L12
.L11:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L12:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-16(%rbp), %rax
	jmp	.L9
.L16:
	nop
.L14:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ossl_rand_pool_new, .-ossl_rand_pool_new
	.globl	ossl_rand_pool_attach
	.type	ossl_rand_pool_attach, @function
ossl_rand_pool_attach:
.LFB516:
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
	leaq	.LC0(%rip), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_rand_pool_attach, .-ossl_rand_pool_attach
	.globl	ossl_rand_pool_free
	.type	ossl_rand_pool_free, @function
ossl_rand_pool_free:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L25
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$101, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$103, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L23:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$106, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L20
.L25:
	nop
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_rand_pool_free, .-ossl_rand_pool_free
	.globl	ossl_rand_pool_buffer
	.type	ossl_rand_pool_buffer, @function
ossl_rand_pool_buffer:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_rand_pool_buffer, .-ossl_rand_pool_buffer
	.globl	ossl_rand_pool_entropy
	.type	ossl_rand_pool_entropy, @function
ossl_rand_pool_entropy:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_rand_pool_entropy, .-ossl_rand_pool_entropy
	.globl	ossl_rand_pool_length
	.type	ossl_rand_pool_length, @function
ossl_rand_pool_length:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ossl_rand_pool_length, .-ossl_rand_pool_length
	.globl	ossl_rand_pool_detach
	.type	ossl_rand_pool_detach, @function
ossl_rand_pool_detach:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ossl_rand_pool_detach, .-ossl_rand_pool_detach
	.globl	ossl_rand_pool_reattach
	.type	ossl_rand_pool_reattach, @function
ossl_rand_pool_reattach:
.LFB522:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ossl_rand_pool_reattach, .-ossl_rand_pool_reattach
	.globl	ossl_rand_pool_entropy_available
	.type	ossl_rand_pool_entropy_available, @function
ossl_rand_pool_entropy_available:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L38
	movl	$0, %eax
	jmp	.L37
.L38:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ossl_rand_pool_entropy_available, .-ossl_rand_pool_entropy_available
	.globl	ossl_rand_pool_entropy_needed
	.type	ossl_rand_pool_entropy_needed, @function
ossl_rand_pool_entropy_needed:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L40
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	jmp	.L41
.L40:
	movl	$0, %edx
.L41:
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ossl_rand_pool_entropy_needed, .-ossl_rand_pool_entropy_needed
	.type	rand_pool_grow, @function
rand_pool_grow:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	-48(%rbp), %rdx
	jnb	.L43
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	shrq	%rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L44
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	-48(%rbp), %rdx
	jnb	.L45
.L44:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L47
	salq	-16(%rbp)
	jmp	.L48
.L47:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.L48:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	cmpq	-48(%rbp), %rdx
	jb	.L45
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L49
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L50
.L49:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
.L50:
	cmpq	$0, -8(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L46
.L51:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$223, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L53
.L52:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$225, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L53:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L43:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	rand_pool_grow, .-rand_pool_grow
	.section	.rodata
	.align 8
.LC1:
	.string	"entropy_factor=%u, entropy_needed=%zu, bytes_needed=%zu,pool->max_len=%zu, pool->len=%zu"
	.text
	.globl	ossl_rand_pool_bytes_needed
	.type	ossl_rand_pool_bytes_needed, @function
ossl_rand_pool_bytes_needed:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_entropy_needed@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L55:
	movl	-28(%rbp), %eax
	imulq	-16(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	-8(%rbp), %rdx
	jnb	.L57
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	leaq	.LC1(%rip), %rdx
	pushq	%rsi
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %ecx
	movl	$125, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L58
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	%rdx, -8(%rbp)
	jnb	.L58
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
.L58:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rand_pool_grow
	testl	%eax, %eax
	jne	.L59
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, %eax
	jmp	.L56
.L59:
	movq	-8(%rbp), %rax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ossl_rand_pool_bytes_needed, .-ossl_rand_pool_bytes_needed
	.globl	ossl_rand_pool_bytes_remaining
	.type	ossl_rand_pool_bytes_remaining, @function
ossl_rand_pool_bytes_remaining:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ossl_rand_pool_bytes_remaining, .-ossl_rand_pool_bytes_remaining
	.globl	ossl_rand_pool_add
	.type	ossl_rand_pool_add, @function
ossl_rand_pool_add:
.LFB528:
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
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	-24(%rbp), %rdx
	jnb	.L63
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L65:
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L67
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$324, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L67:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rand_pool_grow
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L64
.L68:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L66:
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	ossl_rand_pool_add, .-ossl_rand_pool_add
	.globl	ossl_rand_pool_add_begin
	.type	ossl_rand_pool_add_begin, @function
ossl_rand_pool_add_begin:
.LFB529:
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
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	-16(%rbp), %rdx
	jnb	.L72
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L73:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rand_pool_grow
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L71
.L74:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ossl_rand_pool_add_begin, .-ossl_rand_pool_add_begin
	.globl	ossl_rand_pool_add_end
	.type	ossl_rand_pool_add_end, @function
ossl_rand_pool_add_end:
.LFB530:
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
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	cmpq	-16(%rbp), %rdx
	jnb	.L76
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L76:
	cmpq	$0, -16(%rbp)
	je	.L78
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L78:
	movl	$1, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ossl_rand_pool_add_end, .-ossl_rand_pool_add_end
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 15
__func__.4:
	.string	"rand_pool_grow"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 28
__func__.3:
	.string	"ossl_rand_pool_bytes_needed"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"ossl_rand_pool_add"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"ossl_rand_pool_add_begin"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_rand_pool_add_end"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"seed_src.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/seed_src.c"
	.text
	.type	seed_src_new, @function
seed_src_new:
.LFB358:
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
	cmpq	$0, -32(%rbp)
	je	.L2
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$229, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$55, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	seed_src_new, .-seed_src_new
	.type	seed_src_free, @function
seed_src_free:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	seed_src_free, .-seed_src_free
	.type	seed_src_instantiate, @function
seed_src_instantiate:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	seed_src_instantiate, .-seed_src_instantiate
	.type	seed_src_uninstantiate, @function
seed_src_uninstantiate:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	seed_src_uninstantiate, .-seed_src_uninstantiate
	.type	seed_src_generate, @function
seed_src_generate:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L11
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L12
	movl	$192, %eax
	jmp	.L13
.L12:
	movl	$193, %eax
.L13:
	movl	$0, %edx
	movl	%eax, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L11:
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	call	ossl_rand_pool_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pool_acquire_entropy@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_length@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_buffer@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L16:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_free@PLT
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	seed_src_generate, .-seed_src_generate
	.type	seed_src_reseed, @function
seed_src_reseed:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L18
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L19
	movl	$192, %eax
	jmp	.L20
.L19:
	movl	$193, %eax
.L20:
	movl	$0, %edx
	movl	%eax, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L18:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	seed_src_reseed, .-seed_src_reseed
	.section	.rodata
.LC1:
	.string	"state"
.LC2:
	.string	"strength"
.LC3:
	.string	"max_request"
	.text
	.type	seed_src_get_ctx_params, @function
seed_src_get_ctx_params:
.LFB364:
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
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L25
	movq	-16(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L24
.L25:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L24
.L26:
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	seed_src_get_ctx_params, .-seed_src_get_ctx_params
	.type	seed_src_gettable_ctx_params, @function
seed_src_gettable_ctx_params:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	seed_src_gettable_ctx_params, .-seed_src_gettable_ctx_params
	.type	seed_src_verify_zeroization, @function
seed_src_verify_zeroization:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	seed_src_verify_zeroization, .-seed_src_verify_zeroization
	.type	seed_get_seed, @function
seed_get_seed:
.LFB367:
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
	movl	%r9d, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	ossl_rand_pool_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pool_acquire_entropy@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_length@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_detach@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	jmp	.L35
.L36:
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movzbl	(%rdx), %esi
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L35:
	movq	-16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jb	.L36
	jmp	.L37
.L34:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$186, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L37:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_free@PLT
	movq	-8(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	seed_get_seed, .-seed_get_seed
	.type	seed_clear_seed, @function
seed_clear_seed:
.LFB368:
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
	movl	$211, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	seed_clear_seed, .-seed_clear_seed
	.type	seed_src_enable_locking, @function
seed_src_enable_locking:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	seed_src_enable_locking, .-seed_src_enable_locking
	.type	seed_src_lock, @function
seed_src_lock:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	seed_src_lock, .-seed_src_lock
	.type	seed_src_unlock, @function
seed_src_unlock:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	seed_src_unlock, .-seed_src_unlock
	.globl	ossl_seed_src_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_seed_src_functions, @object
	.size	ossl_seed_src_functions, 240
ossl_seed_src_functions:
	.long	1
	.zero	4
	.quad	seed_src_new
	.long	2
	.zero	4
	.quad	seed_src_free
	.long	3
	.zero	4
	.quad	seed_src_instantiate
	.long	4
	.zero	4
	.quad	seed_src_uninstantiate
	.long	5
	.zero	4
	.quad	seed_src_generate
	.long	6
	.zero	4
	.quad	seed_src_reseed
	.long	8
	.zero	4
	.quad	seed_src_enable_locking
	.long	9
	.zero	4
	.quad	seed_src_lock
	.long	10
	.zero	4
	.quad	seed_src_unlock
	.long	12
	.zero	4
	.quad	seed_src_gettable_ctx_params
	.long	15
	.zero	4
	.quad	seed_src_get_ctx_params
	.long	17
	.zero	4
	.quad	seed_src_verify_zeroization
	.long	18
	.zero	4
	.quad	seed_get_seed
	.long	19
	.zero	4
	.quad	seed_clear_seed
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"seed_src_new"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"seed_src_generate"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"seed_src_reseed"
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params.1, @object
	.size	known_gettable_ctx_params.1, 160
known_gettable_ctx_params.1:
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"seed_get_seed"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

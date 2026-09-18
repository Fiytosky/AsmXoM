	.file	"test_rng.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/test_rng.c"
	.text
	.type	test_rng_new, @function
test_rng_new:
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
	leaq	.LC0(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	$2147483647, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	test_rng_new, .-test_rng_new
	.type	test_rng_free, @function
test_rng_free:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$75, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L4
.L7:
	nop
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	test_rng_free, .-test_rng_free
	.type	test_rng_instantiate, @function
test_rng_instantiate:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_rng_set_ctx_params
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-28(%rbp), %eax
	jnb	.L10
.L9:
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$221953166, 80(%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	test_rng_instantiate, .-test_rng_instantiate
	.type	test_rng_uninstantiate, @function
test_rng_uninstantiate:
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
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	test_rng_uninstantiate, .-test_rng_uninstantiate
	.type	gen_byte, @function
gen_byte:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$13, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$17, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$5, %eax
	xorl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 80(%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	gen_byte, .-gen_byte
	.type	test_rng_generate, @function
test_rng_generate:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-60(%rbp), %eax
	jnb	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L19
	movq	$0, -24(%rbp)
	jmp	.L20
.L21:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gen_byte
	movb	%al, (%rbx)
	addq	$1, -24(%rbp)
.L20:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L21
	jmp	.L22
.L19:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	cmpq	-56(%rbp), %rdx
	jnb	.L23
	movl	$0, %eax
	jmp	.L18
.L23:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 56(%rax)
.L22:
	movl	$1, %eax
.L18:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	test_rng_generate, .-test_rng_generate
	.type	test_rng_reseed, @function
test_rng_reseed:
.LFB364:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	test_rng_reseed, .-test_rng_reseed
	.type	test_rng_nonce, @function
test_rng_nonce:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-52(%rbp), %eax
	jnb	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L29
	movq	$0, -24(%rbp)
	jmp	.L30
.L31:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gen_byte
	movb	%al, (%rbx)
	addq	$1, -24(%rbp)
.L30:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L31
	movq	-64(%rbp), %rax
	jmp	.L28
.L29:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movl	$0, %eax
	jmp	.L28
.L32:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-72(%rbp), %rdx
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L33:
	movq	-24(%rbp), %rax
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	test_rng_nonce, .-test_rng_nonce
	.section	.rodata
.LC1:
	.string	"state"
.LC2:
	.string	"strength"
.LC3:
	.string	"max_request"
.LC4:
	.string	"generate"
	.text
	.type	test_rng_get_ctx_params, @function
test_rng_get_ctx_params:
.LFB366:
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
	je	.L35
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L37:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L38
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L36
.L38:
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	je	.L39
	movl	$0, %eax
	jmp	.L36
.L39:
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	test_rng_get_ctx_params, .-test_rng_get_ctx_params
	.type	test_rng_gettable_ctx_params, @function
test_rng_gettable_ctx_params:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	test_rng_gettable_ctx_params, .-test_rng_gettable_ctx_params
	.section	.rodata
.LC5:
	.string	"test_entropy"
.LC6:
	.string	"test_nonce"
	.text
	.type	test_rng_set_ctx_params, @function
test_rng_set_ctx_params:
.LFB368:
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
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L52
.L43:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L52
.L45:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L52
.L47:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$236, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	$0, -24(%rbp)
.L46:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L52
.L49:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$247, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
.L48:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L52
.L50:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L51
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	test_rng_set_ctx_params, .-test_rng_set_ctx_params
	.type	test_rng_settable_ctx_params, @function
test_rng_settable_ctx_params:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	test_rng_settable_ctx_params, .-test_rng_settable_ctx_params
	.type	test_rng_verify_zeroization, @function
test_rng_verify_zeroization:
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
	.size	test_rng_verify_zeroization, .-test_rng_verify_zeroization
	.type	test_rng_get_seed, @function
test_rng_get_seed:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	test_rng_get_seed, .-test_rng_get_seed
	.type	test_rng_enable_locking, @function
test_rng_enable_locking:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L60:
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	test_rng_enable_locking, .-test_rng_enable_locking
	.type	test_rng_lock, @function
test_rng_lock:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L64
.L63:
	movl	$1, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	test_rng_lock, .-test_rng_lock
	.type	test_rng_unlock, @function
test_rng_unlock:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	test_rng_unlock, .-test_rng_unlock
	.globl	ossl_test_rng_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_test_rng_functions, @object
	.size	ossl_test_rng_functions, 272
ossl_test_rng_functions:
	.long	1
	.zero	4
	.quad	test_rng_new
	.long	2
	.zero	4
	.quad	test_rng_free
	.long	3
	.zero	4
	.quad	test_rng_instantiate
	.long	4
	.zero	4
	.quad	test_rng_uninstantiate
	.long	5
	.zero	4
	.quad	test_rng_generate
	.long	6
	.zero	4
	.quad	test_rng_reseed
	.long	7
	.zero	4
	.quad	test_rng_nonce
	.long	8
	.zero	4
	.quad	test_rng_enable_locking
	.long	9
	.zero	4
	.quad	test_rng_lock
	.long	10
	.zero	4
	.quad	test_rng_unlock
	.long	13
	.zero	4
	.quad	test_rng_settable_ctx_params
	.long	16
	.zero	4
	.quad	test_rng_set_ctx_params
	.long	12
	.zero	4
	.quad	test_rng_gettable_ctx_params
	.long	15
	.zero	4
	.quad	test_rng_get_ctx_params
	.long	17
	.zero	4
	.quad	test_rng_verify_zeroization
	.long	18
	.zero	4
	.quad	test_rng_get_seed
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	known_gettable_ctx_params.2, @object
	.size	known_gettable_ctx_params.2, 200
known_gettable_ctx_params.2:
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
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 240
known_settable_ctx_params.1:
	.quad	.LC5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	5
	.zero	4
	.quad	0
	.quad	0
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
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"test_rng_enable_locking"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

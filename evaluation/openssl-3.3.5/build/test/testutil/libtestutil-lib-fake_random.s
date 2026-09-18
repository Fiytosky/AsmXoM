	.file	"fake_random.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../test/testutil/fake_random.c"
	.text
	.type	fake_rand_newctx, @function
fake_rand_newctx:
.LFB548:
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
	movl	$38, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	fake_rand_newctx, .-fake_rand_newctx
	.type	fake_rand_freectx, @function
fake_rand_freectx:
.LFB549:
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
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	fake_rand_freectx, .-fake_rand_freectx
	.type	fake_rand_instantiate, @function
fake_rand_instantiate:
.LFB550:
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
.LFE550:
	.size	fake_rand_instantiate, .-fake_rand_instantiate
	.type	fake_rand_uninstantiate, @function
fake_rand_uninstantiate:
.LFB551:
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
.LFE551:
	.size	fake_rand_uninstantiate, .-fake_rand_uninstantiate
	.type	fake_rand_generate, @function
fake_rand_generate:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L14
.L13:
	call	test_random@PLT
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movl	$4, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
.L12:
	cmpq	$0, -56(%rbp)
	jne	.L13
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	fake_rand_generate, .-fake_rand_generate
	.type	fake_rand_enable_locking, @function
fake_rand_enable_locking:
.LFB553:
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
.LFE553:
	.size	fake_rand_enable_locking, .-fake_rand_enable_locking
	.section	.rodata
.LC1:
	.string	"state"
.LC2:
	.string	"strength"
.LC3:
	.string	"max_request"
	.text
	.type	fake_rand_get_ctx_params, @function
fake_rand_get_ctx_params:
.LFB554:
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
	je	.L18
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	-16(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L20:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L21
	movq	-16(%rbp), %rax
	movl	$2147483647, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L19
.L21:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	fake_rand_get_ctx_params, .-fake_rand_get_ctx_params
	.type	fake_rand_gettable_ctx_params, @function
fake_rand_gettable_ctx_params:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	fake_rand_gettable_ctx_params, .-fake_rand_gettable_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	fake_rand_functions, @object
	.size	fake_rand_functions, 144
fake_rand_functions:
	.long	1
	.zero	4
	.quad	fake_rand_newctx
	.long	2
	.zero	4
	.quad	fake_rand_freectx
	.long	3
	.zero	4
	.quad	fake_rand_instantiate
	.long	4
	.zero	4
	.quad	fake_rand_uninstantiate
	.long	5
	.zero	4
	.quad	fake_rand_generate
	.long	8
	.zero	4
	.quad	fake_rand_enable_locking
	.long	12
	.zero	4
	.quad	fake_rand_gettable_ctx_params
	.long	15
	.zero	4
	.quad	fake_rand_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC4:
	.string	"FAKE"
.LC5:
	.string	"provider=fake"
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rand_rand, @object
	.size	fake_rand_rand, 64
fake_rand_rand:
	.quad	.LC4
	.quad	.LC5
	.quad	fake_rand_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	fake_rand_query, @function
fake_rand_query:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$5, -12(%rbp)
	jne	.L25
	leaq	fake_rand_rand(%rip), %rax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	fake_rand_query, .-fake_rand_query
	.section	.data.rel.ro,"aw"
	.align 32
	.type	fake_rand_method, @object
	.size	fake_rand_method, 48
fake_rand_method:
	.long	1024
	.zero	4
	.quad	OSSL_LIB_CTX_free
	.long	1027
	.zero	4
	.quad	fake_rand_query
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC6:
	.string	"*provctx = OSSL_LIB_CTX_new()"
	.text
	.type	fake_rand_provider_init, @function
fake_rand_provider_init:
.LFB557:
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
	call	OSSL_LIB_CTX_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	leaq	fake_rand_method(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	fake_rand_provider_init, .-fake_rand_provider_init
	.section	.rodata
.LC7:
	.string	"rng"
.LC8:
	.string	"random: %s"
	.text
	.type	check_rng, @function
check_rng:
.LFB558:
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
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$178, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$179, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	check_rng, .-check_rng
	.section	.rodata
.LC9:
	.string	"fake-rand"
	.align 8
.LC10:
	.string	"OSSL_PROVIDER_add_builtin(libctx, \"fake-rand\", fake_rand_provider_init)"
.LC11:
	.string	"fake"
	.align 8
.LC12:
	.string	"RAND_set_DRBG_type(libctx, \"fake\", NULL, NULL, NULL)"
	.align 8
.LC13:
	.string	"p = OSSL_PROVIDER_try_load(libctx, \"fake-rand\", 1)"
.LC14:
	.string	"primary"
	.align 8
.LC15:
	.string	"check_rng(RAND_get0_primary(libctx), \"primary\")"
.LC16:
	.string	"private"
	.align 8
.LC17:
	.string	"check_rng(RAND_get0_private(libctx), \"private\")"
.LC18:
	.string	"public"
	.align 8
.LC19:
	.string	"check_rng(RAND_get0_public(libctx), \"public\")"
	.text
	.globl	fake_rand_start
	.type	fake_rand_start, @function
fake_rand_start:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	fake_rand_provider_init(%rip), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L34
	leaq	.LC11(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	RAND_set_DRBG_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L34
	leaq	.LC9(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_try_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$195, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_primary@PLT
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_rng
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_private@PLT
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_rng
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_public@PLT
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_rng
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	$0, %eax
	jmp	.L36
.L38:
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	fake_rand_start, .-fake_rand_start
	.globl	fake_rand_finish
	.type	fake_rand_finish, @function
fake_rand_finish:
.LFB560:
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
	call	OSSL_PROVIDER_unload@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	fake_rand_finish, .-fake_rand_finish
	.globl	fake_rand_set_callback
	.type	fake_rand_set_callback, @function
fake_rand_set_callback:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L42:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	fake_rand_set_callback, .-fake_rand_set_callback
	.globl	fake_rand_set_public_private_callbacks
	.type	fake_rand_set_public_private_callbacks, @function
fake_rand_set_public_private_callbacks:
.LFB562:
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
	movq	%rax, %rdi
	call	RAND_get0_private@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fake_rand_set_callback@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_public@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fake_rand_set_callback@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	fake_rand_set_public_private_callbacks, .-fake_rand_set_public_private_callbacks
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 160
known_gettable_ctx_params.0:
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

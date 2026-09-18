	.file	"fuzz_rand.c"
	.text
	.section	.rodata
.LC0:
	.string	"../fuzz/fuzz_rand.c"
	.text
	.type	fuzz_rand_newctx, @function
fuzz_rand_newctx:
.LFB320:
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
	movl	$28, %edx
	movq	%rax, %rsi
	movl	$4, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	fuzz_rand_newctx, .-fuzz_rand_newctx
	.type	fuzz_rand_freectx, @function
fuzz_rand_freectx:
.LFB321:
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
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	fuzz_rand_freectx, .-fuzz_rand_freectx
	.type	fuzz_rand_instantiate, @function
fuzz_rand_instantiate:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	fuzz_rand_instantiate, .-fuzz_rand_instantiate
	.type	fuzz_rand_uninstantiate, @function
fuzz_rand_uninstantiate:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	fuzz_rand_uninstantiate, .-fuzz_rand_uninstantiate
	.type	fuzz_rand_generate, @function
fuzz_rand_generate:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movb	$1, -1(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L10
.L11:
	movzbl	-1(%rbp), %eax
	leal	1(%rax), %edx
	movb	%dl, -1(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -16(%rbp)
.L10:
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L11
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	fuzz_rand_generate, .-fuzz_rand_generate
	.type	fuzz_rand_enable_locking, @function
fuzz_rand_enable_locking:
.LFB325:
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
.LFE325:
	.size	fuzz_rand_enable_locking, .-fuzz_rand_enable_locking
	.section	.rodata
.LC1:
	.string	"state"
.LC2:
	.string	"strength"
.LC3:
	.string	"max_request"
	.text
	.type	fuzz_rand_get_ctx_params, @function
fuzz_rand_get_ctx_params:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movl	$500, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movl	$2147483647, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	fuzz_rand_get_ctx_params, .-fuzz_rand_get_ctx_params
	.type	fuzz_rand_gettable_ctx_params, @function
fuzz_rand_gettable_ctx_params:
.LFB327:
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
.LFE327:
	.size	fuzz_rand_gettable_ctx_params, .-fuzz_rand_gettable_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	fuzz_rand_functions, @object
	.size	fuzz_rand_functions, 144
fuzz_rand_functions:
	.long	1
	.zero	4
	.quad	fuzz_rand_newctx
	.long	2
	.zero	4
	.quad	fuzz_rand_freectx
	.long	3
	.zero	4
	.quad	fuzz_rand_instantiate
	.long	4
	.zero	4
	.quad	fuzz_rand_uninstantiate
	.long	5
	.zero	4
	.quad	fuzz_rand_generate
	.long	8
	.zero	4
	.quad	fuzz_rand_enable_locking
	.long	12
	.zero	4
	.quad	fuzz_rand_gettable_ctx_params
	.long	15
	.zero	4
	.quad	fuzz_rand_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC4:
	.string	"fuzz"
.LC5:
	.string	"provider=fuzz-rand"
	.section	.data.rel.ro.local
	.align 32
	.type	fuzz_rand_rand, @object
	.size	fuzz_rand_rand, 64
fuzz_rand_rand:
	.quad	.LC4
	.quad	.LC5
	.quad	fuzz_rand_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	fuzz_rand_query, @function
fuzz_rand_query:
.LFB328:
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
	jne	.L23
	leaq	fuzz_rand_rand(%rip), %rax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	fuzz_rand_query, .-fuzz_rand_query
	.section	.data.rel.ro,"aw"
	.align 32
	.type	fuzz_rand_method, @object
	.size	fuzz_rand_method, 48
fuzz_rand_method:
	.long	1024
	.zero	4
	.quad	OSSL_LIB_CTX_free
	.long	1027
	.zero	4
	.quad	fuzz_rand_query
	.long	0
	.zero	4
	.quad	0
	.text
	.type	fuzz_rand_provider_init, @function
fuzz_rand_provider_init:
.LFB329:
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
	testq	%rax, %rax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	leaq	fuzz_rand_method(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	fuzz_rand_provider_init, .-fuzz_rand_provider_init
	.local	r_prov
	.comm	r_prov,8,8
	.section	.rodata
.LC6:
	.string	"fuzz-rand"
	.text
	.globl	FuzzerSetRand
	.type	FuzzerSetRand, @function
FuzzerSetRand:
.LFB330:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	fuzz_rand_provider_init(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	je	.L29
	leaq	.LC4(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	RAND_set_DRBG_type@PLT
	testl	%eax, %eax
	je	.L29
	leaq	.LC6(%rip), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_try_load@PLT
	movq	%rax, r_prov(%rip)
	movq	r_prov(%rip), %rax
	testq	%rax, %rax
	jne	.L31
.L29:
	movl	$1, %edi
	call	exit@PLT
.L31:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	FuzzerSetRand, .-FuzzerSetRand
	.globl	FuzzerClearRand
	.type	FuzzerClearRand, @function
FuzzerClearRand:
.LFB331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	r_prov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	FuzzerClearRand, .-FuzzerClearRand
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

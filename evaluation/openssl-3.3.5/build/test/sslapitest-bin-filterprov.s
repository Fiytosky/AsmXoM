	.file	"filterprov.c"
	.text
	.local	ourglobals
	.comm	ourglobals,2040,32
	.type	get_globals, @function
get_globals:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ourglobals(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	get_globals, .-get_globals
	.type	filter_gettable_params, @function
filter_gettable_params:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	get_globals
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_gettable_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	filter_gettable_params, .-filter_gettable_params
	.type	filter_get_params, @function
filter_get_params:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	get_globals
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	filter_get_params, .-filter_get_params
	.type	filter_get_capabilities, @function
filter_get_capabilities:
.LFB471:
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
	call	get_globals
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_capabilities@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	filter_get_capabilities, .-filter_get_capabilities
	.type	filter_query, @function
filter_query:
.LFB472:
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
	call	get_globals
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	2024(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 2024(%rax)
	movl	$0, -4(%rbp)
	jmp	.L10
.L13:
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$200, %rax, %rax
	addq	%rdx, %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L11
	movq	-16(%rbp), %rax
	movl	2020(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	cltq
	imulq	$200, %rax, %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	jmp	.L12
.L11:
	addl	$1, -4(%rbp)
.L10:
	movq	-16(%rbp), %rax
	movl	2016(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L13
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_query_operation@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	filter_query, .-filter_query
	.section	.rodata
.LC0:
	.string	"0"
.LC1:
	.string	"globs->query_count"
.LC2:
	.string	"../test/filterprov.c"
	.text
	.type	filter_unquery, @function
filter_unquery:
.LFB473:
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
	call	get_globals
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	2024(%rax), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_ulong_gt@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-16(%rbp), %rax
	movl	$1, 2032(%rax)
	jmp	.L16
.L15:
	movq	-16(%rbp), %rax
	movq	2024(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 2024(%rax)
.L16:
	movl	$0, -4(%rbp)
	jmp	.L17
.L20:
	movl	-4(%rbp), %eax
	cltq
	imulq	$200, %rax, %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	cmpq	%rax, -40(%rbp)
	je	.L21
	addl	$1, -4(%rbp)
.L17:
	movq	-16(%rbp), %rax
	movl	2016(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L20
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unquery_operation@PLT
	jmp	.L14
.L21:
	nop
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	filter_unquery, .-filter_unquery
	.type	filter_teardown, @function
filter_teardown:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	get_globals
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-8(%rbp), %rax
	movl	$2040, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	filter_teardown, .-filter_teardown
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	filter_dispatch_table, @object
	.size	filter_dispatch_table, 112
filter_dispatch_table:
	.long	1025
	.zero	4
	.quad	filter_gettable_params
	.long	1026
	.zero	4
	.quad	filter_get_params
	.long	1027
	.zero	4
	.quad	filter_query
	.long	1028
	.zero	4
	.quad	filter_unquery
	.long	1030
	.zero	4
	.quad	filter_get_capabilities
	.long	1024
	.zero	4
	.quad	filter_teardown
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC3:
	.string	"default"
	.text
	.globl	filter_provider_init
	.type	filter_provider_init, @function
filter_provider_init:
.LFB475:
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
	leaq	ourglobals(%rip), %rax
	movl	$2040, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, ourglobals(%rip)
	movq	ourglobals(%rip), %rax
	testq	%rax, %rax
	je	.L28
	movq	ourglobals(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, 8+ourglobals(%rip)
	movq	8+ourglobals(%rip), %rax
	testq	%rax, %rax
	je	.L29
	movq	8+ourglobals(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	filter_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L27
.L28:
	nop
	jmp	.L25
.L29:
	nop
.L25:
	movq	8+ourglobals(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	ourglobals(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	filter_provider_init, .-filter_provider_init
	.globl	filter_provider_set_filter
	.type	filter_provider_set_filter, @function
filter_provider_set_filter:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	call	get_globals
	movq	%rax, -40(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-84(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_query_operation@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L50
	cmpq	$0, -56(%rbp)
	je	.L51
	movq	-40(%rbp), %rax
	movl	2016(%rax), %eax
	cmpl	$9, %eax
	jg	.L52
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L35
.L48:
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L36
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L37
.L36:
	movl	$1, -8(%rbp)
.L37:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L38
.L45:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L53
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L41
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L54
.L41:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -80(%rbp)
	je	.L42
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L55
.L42:
	cmpl	$4, -4(%rbp)
	jg	.L56
	movq	-40(%rbp), %rax
	movl	2016(%rax), %esi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	-40(%rbp), %rdx
	movslq	%eax, %rcx
	movslq	%esi, %rax
	salq	$5, %rcx
	imulq	$200, %rax, %rax
	addq	%rcx, %rax
	addq	%rdx, %rax
	leaq	16(%rax), %rsi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, 24(%rsi)
	movq	%rdx, 32(%rsi)
	jmp	.L44
.L53:
	nop
	jmp	.L40
.L54:
	nop
	jmp	.L40
.L55:
	nop
.L40:
	addq	$32, -32(%rbp)
.L38:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
.L44:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L57
	cmpq	$0, -64(%rbp)
	je	.L47
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L35
.L47:
	movq	$0, -24(%rbp)
.L35:
	cmpl	$0, -8(%rbp)
	je	.L48
	movq	-40(%rbp), %rax
	movl	2016(%rax), %eax
	movq	-40(%rbp), %rdx
	cltq
	imulq	$200, %rax, %rax
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movl	-100(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-84(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 2020(%rax)
	movq	-40(%rbp), %rax
	movl	2016(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 2016(%rax)
	movl	$1, -12(%rbp)
	jmp	.L32
.L50:
	nop
	jmp	.L32
.L51:
	nop
	jmp	.L32
.L52:
	nop
	jmp	.L32
.L56:
	nop
	jmp	.L32
.L57:
	nop
.L32:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unquery_operation@PLT
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$225, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	filter_provider_set_filter, .-filter_provider_set_filter
	.globl	filter_provider_check_clean_finish
	.type	filter_provider_check_clean_finish, @function
filter_provider_check_clean_finish:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	get_globals
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2024(%rax), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$237, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	-8(%rbp), %rax
	movl	2032(%rax), %eax
	testl	%eax, %eax
	jne	.L59
	movl	$1, %eax
	jmp	.L61
.L59:
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	filter_provider_check_clean_finish, .-filter_provider_check_clean_finish
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

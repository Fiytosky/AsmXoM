	.file	"provider.c"
	.text
	.section	.rodata
.LC0:
	.string	"Failed to create libctx\n"
.LC1:
	.string	"null"
	.align 8
.LC2:
	.string	"Failed to load null provider into default libctx\n"
	.align 8
.LC3:
	.string	"Error loading config from file %s\n"
.LC4:
	.string	"Failed to load provider %s\n"
	.text
	.globl	test_get_libctx
	.type	test_get_libctx, @function
test_get_libctx:
.LFB468:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2
	call	OSSL_LIB_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L3
.L2:
	cmpq	$0, -32(%rbp)
	je	.L4
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L3
.L4:
	cmpq	$0, -40(%rbp)
	je	.L5
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L3
.L5:
	cmpq	$0, -48(%rbp)
	je	.L6
	cmpq	$0, -56(%rbp)
	je	.L6
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L3
.L6:
	movl	$1, %eax
	jmp	.L7
.L3:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_libctx, .-test_get_libctx
	.section	.rodata
	.align 8
.LC5:
	.string	"module_name = test_get_argument(argn)"
.LC6:
	.string	"../test/testutil/provider.c"
.LC7:
	.string	"usage: <prog> %s"
.LC8:
	.string	"none"
	.text
	.globl	test_arg_libctx
	.type	test_arg_libctx, @function
test_arg_libctx:
.LFB469:
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
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-56(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$1, %eax
	jmp	.L10
.L11:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, %rdi
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_get_libctx@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_arg_libctx, .-test_arg_libctx
	.section	.rodata
.LC9:
	.string	"fips"
.LC10:
	.string	"version"
.LC11:
	.string	"%d.%d.%d"
	.text
	.type	fips_provider_version, @function
fips_provider_version:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L20
.L13:
	leaq	-176(%rbp), %rax
	leaq	-104(%rbp), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$-1, %eax
	jmp	.L20
.L15:
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	je	.L21
	movq	-128(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	jne	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$-1, %eax
	jmp	.L20
.L19:
	movl	$1, %eax
	jmp	.L20
.L21:
	nop
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	$-1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	fips_provider_version, .-fips_provider_version
	.globl	fips_provider_version_eq
	.type	fips_provider_version_eq, @function
fips_provider_version_eq:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L23
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L27
.L23:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L25
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L25
	movl	-8(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L25
	movl	$1, %eax
	jmp	.L27
.L25:
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	fips_provider_version_eq, .-fips_provider_version_eq
	.globl	fips_provider_version_ne
	.type	fips_provider_version_ne, @function
fips_provider_version_ne:
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
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L29
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L34
.L29:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L31
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L31
	movl	-8(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	je	.L32
.L31:
	movl	$1, %eax
	jmp	.L34
.L32:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	fips_provider_version_ne, .-fips_provider_version_ne
	.globl	fips_provider_version_le
	.type	fips_provider_version_le, @function
fips_provider_version_le:
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
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L36
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L41
.L36:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L38
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L39
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jg	.L38
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L39
	movl	-8(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L39
.L38:
	movl	$1, %eax
	jmp	.L41
.L39:
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	fips_provider_version_le, .-fips_provider_version_le
	.globl	fips_provider_version_lt
	.type	fips_provider_version_lt, @function
fips_provider_version_lt:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L43
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L48
.L43:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L45
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L46
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jg	.L45
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L46
	movl	-8(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L46
.L45:
	movl	$1, %eax
	jmp	.L48
.L46:
	movl	$0, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	fips_provider_version_lt, .-fips_provider_version_lt
	.globl	fips_provider_version_gt
	.type	fips_provider_version_gt, @function
fips_provider_version_gt:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L50
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L55
.L50:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L52
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L53
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L52
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L53
	movl	-8(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L53
.L52:
	movl	$1, %eax
	jmp	.L55
.L53:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	fips_provider_version_gt, .-fips_provider_version_gt
	.globl	fips_provider_version_ge
	.type	fips_provider_version_ge, @function
fips_provider_version_ge:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L57
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L62
.L57:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L59
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L60
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L59
	movl	-12(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L60
	movl	-8(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L60
.L59:
	movl	$1, %eax
	jmp	.L62
.L60:
	movl	$0, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	fips_provider_version_ge, .-fips_provider_version_ge
	.section	.rodata
	.align 8
.LC12:
	.string	"Error matching FIPS version: mode %s\n"
	.align 8
.LC13:
	.string	"Error matching FIPS version: version %s\n"
	.align 8
.LC14:
	.string	"Error matching FIPS version: internal error\n"
	.text
	.globl	fips_provider_version_match
	.type	fips_provider_version_match, @function
fips_provider_version_match:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	jmp	.L64
.L94:
	nop
	addq	$1, -48(%rbp)
.L65:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L94
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L95
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L69
.L96:
	nop
	addq	$1, -48(%rbp)
.L69:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L70
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L96
.L70:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L72
	movl	$1, -16(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L74
	movl	$0, -16(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L73
.L74:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L75
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L75
	movl	$2, -16(%rbp)
	addq	$2, -8(%rbp)
	jmp	.L73
.L75:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L76
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L76
	movl	$5, -16(%rbp)
	addq	$2, -8(%rbp)
	jmp	.L73
.L76:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L77
	movl	$3, -16(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L73
.L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L78
	movl	$4, -16(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L73
.L78:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L79
	movl	$0, -16(%rbp)
	jmp	.L73
.L79:
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$207, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$-1, %eax
	jmp	.L91
.L73:
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	.LC11(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	je	.L81
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$-1, %eax
	jmp	.L91
.L81:
	cmpl	$5, -16(%rbp)
	je	.L82
	cmpl	$5, -16(%rbp)
	ja	.L83
	cmpl	$4, -16(%rbp)
	je	.L84
	cmpl	$4, -16(%rbp)
	ja	.L83
	cmpl	$3, -16(%rbp)
	je	.L85
	cmpl	$3, -16(%rbp)
	ja	.L83
	cmpl	$2, -16(%rbp)
	je	.L86
	cmpl	$2, -16(%rbp)
	ja	.L83
	cmpl	$0, -16(%rbp)
	je	.L87
	cmpl	$1, -16(%rbp)
	je	.L88
	jmp	.L83
.L87:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fips_provider_version_eq@PLT
	movl	%eax, -12(%rbp)
	jmp	.L83
.L88:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fips_provider_version_ne@PLT
	movl	%eax, -12(%rbp)
	jmp	.L83
.L86:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fips_provider_version_le@PLT
	movl	%eax, -12(%rbp)
	jmp	.L83
.L85:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fips_provider_version_lt@PLT
	movl	%eax, -12(%rbp)
	jmp	.L83
.L84:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fips_provider_version_gt@PLT
	movl	%eax, -12(%rbp)
	jmp	.L83
.L82:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fips_provider_version_ge@PLT
	movl	%eax, -12(%rbp)
	nop
.L83:
	cmpl	$0, -12(%rbp)
	jns	.L89
	leaq	.LC14(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$-1, %eax
	jmp	.L91
.L89:
	cmpl	$0, -12(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L91
.L64:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L65
	jmp	.L68
.L95:
	nop
.L68:
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	fips_provider_version_match, .-fips_provider_version_match
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"fips_version_test.c"
	.text
	.local	libctx
	.comm	libctx,8,8
	.local	libprov
	.comm	libprov,8,8
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC0:
	.string	"version"
.LC1:
	.string	"../test/fips_version_test.c"
.LC2:
	.string	"1"
	.align 8
.LC3:
	.string	"fips_provider_version_match(libctx, version)"
	.text
	.type	test_fips_version, @function
test_fips_version:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	libctx(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version_match@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_fips_version, .-test_fips_version
	.section	.rodata
.LC4:
	.string	"test_fips_version"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L7
.L12:
	cmpl	$1, -12(%rbp)
	je	.L8
	cmpl	$0, -12(%rbp)
	jle	.L9
	movl	-12(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L9
	jmp	.L15
.L8:
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L7
.L15:
	jmp	.L7
.L9:
	movl	$0, %eax
	jmp	.L11
.L7:
	call	opt_next@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L12
	leaq	libprov(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	libctx(%rip), %rdi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	call	test_get_argument_count@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L11
.L14:
	movl	-16(%rbp), %eax
	leaq	test_fips_version(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	libprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC5:
	.string	"Usage: %s [options]\n"
.LC6:
	.string	"Valid options are:\n"
.LC7:
	.string	"help"
.LC8:
	.string	"Display this summary"
.LC9:
	.string	"list"
	.align 8
.LC10:
	.string	"Display the list of tests available"
.LC11:
	.string	"test"
	.align 8
.LC12:
	.string	"Run a single test by id or name"
.LC13:
	.string	"iter"
	.align 8
.LC14:
	.string	"Run a single iteration of a test"
.LC15:
	.string	"indent"
	.align 8
.LC16:
	.string	"Number of tabs added to output"
.LC17:
	.string	"seed"
	.align 8
.LC18:
	.string	"Seed value to randomize tests with"
.LC19:
	.string	"config"
	.align 8
.LC20:
	.string	"The configuration file to use for the libctx"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 240
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	500
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	501
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	502
	.long	115
	.quad	.LC12
	.quad	.LC13
	.long	503
	.long	110
	.quad	.LC14
	.quad	.LC15
	.long	504
	.long	112
	.quad	.LC16
	.quad	.LC17
	.long	505
	.long	110
	.quad	.LC18
	.quad	.LC19
	.long	1
	.long	60
	.quad	.LC20
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

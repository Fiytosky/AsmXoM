	.file	"asn1_stable_parse_test.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	config_file
	.comm	config_file,8,8
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
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC0:
	.string	"newctx"
	.align 8
.LC1:
	.string	"../test/asn1_stable_parse_test.c"
.LC2:
	.string	"0"
	.align 8
.LC3:
	.string	"OSSL_LIB_CTX_load_config(newctx, config_file)"
	.text
	.type	test_asn1_stable_parse, @function
test_asn1_stable_parse:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$44, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	config_file(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L18
	call	ERR_peek_error@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$13, %eax
	jne	.L19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$218, %eax
	jne	.L20
	call	ERR_clear_error@PLT
	movl	$1, -4(%rbp)
	jmp	.L13
.L18:
	nop
	jmp	.L13
.L19:
	nop
	jmp	.L13
.L20:
	nop
.L13:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	jmp	.L11
.L17:
	nop
.L11:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_asn1_stable_parse, .-test_asn1_stable_parse
	.section	.rodata
.LC4:
	.string	"test_asn1_stable_parse"
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
	jmp	.L22
.L25:
	cmpl	$1, -4(%rbp)
	jne	.L23
	call	opt_arg@PLT
	movq	%rax, config_file(%rip)
	jmp	.L22
.L23:
	movl	$0, %eax
	jmp	.L24
.L22:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L25
	leaq	test_asn1_stable_parse(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
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
	.type	options.0, @object
	.size	options.0, 240
options.0:
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

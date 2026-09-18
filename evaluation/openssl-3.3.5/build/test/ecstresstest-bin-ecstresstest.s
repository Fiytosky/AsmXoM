	.file	"ecstresstest.c"
	.text
	.local	num_repeats
	.comm	num_repeats,8,8
	.local	print_mode
	.comm	print_mode,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"A1E24B223B8E81BC1FFF99BAFB909EDB895FACDE7D6DA5EF5E7B3255FB378E0F"
	.section	.data.rel.local,"aw"
	.align 8
	.type	kP256DefaultResult, @object
	.size	kP256DefaultResult, 8
kP256DefaultResult:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"scalar = BN_new()"
.LC2:
	.string	"../test/ecstresstest.c"
	.align 8
.LC3:
	.string	"EC_POINT_get_affine_coordinates(group, point, scalar, NULL, NULL)"
	.align 8
.LC4:
	.string	"EC_POINT_mul(group, point, NULL, point, scalar, NULL)"
	.text
	.type	walk_curve, @function
walk_curve:
.LFB468:
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
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L10
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movq	$0, -8(%rbp)
	jmp	.L5
.L8:
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$54, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$55, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	addq	$1, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L8
	movq	-16(%rbp), %rax
	jmp	.L9
.L10:
	nop
	jmp	.L4
.L11:
	nop
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	walk_curve, .-walk_curve
	.section	.rodata
	.align 8
.LC5:
	.string	"group = EC_GROUP_new_by_curve_name(NID_X9_62_prime256v1)"
	.align 8
.LC6:
	.string	"point = EC_POINT_dup(EC_GROUP_get0_generator(group), group)"
	.align 8
.LC7:
	.string	"result = walk_curve(group, point, num_repeats)"
.LC8:
	.string	"\n"
	.align 8
.LC9:
	.string	"BN_hex2bn(&expected_result, kP256DefaultResult)"
.LC10:
	.string	"expected_result"
.LC11:
	.string	"result"
	.text
	.type	test_curve, @function
test_curve:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$415, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$78, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EC_POINT_dup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$79, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	num_repeats(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	walk_curve
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$81, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movl	print_mode(%rip), %eax
	testl	%eax, %eax
	je	.L16
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -20(%rbp)
	jmp	.L15
.L16:
	movq	kP256DefaultResult(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, -20(%rbp)
	jmp	.L15
.L20:
	nop
	jmp	.L15
.L21:
	nop
.L15:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_curve, .-test_curve
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB470:
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
.LFE470:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC12:
	.string	"1000000"
.LC13:
	.string	"Cannot parse 1000000"
.LC14:
	.string	"test_curve"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	num_repeats(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_intmax@PLT
	testl	%eax, %eax
	jne	.L27
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L26
.L33:
	cmpl	$1, -4(%rbp)
	je	.L28
	cmpl	$0, -4(%rbp)
	jle	.L29
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L29
	jmp	.L34
.L28:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	num_repeats(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_intmax@PLT
	testl	%eax, %eax
	je	.L31
	movq	num_repeats(%rip), %rax
	testq	%rax, %rax
	jns	.L32
.L31:
	movl	$0, %eax
	jmp	.L26
.L32:
	movl	$1, print_mode(%rip)
	jmp	.L27
.L34:
	jmp	.L27
.L29:
	movl	$0, %eax
	jmp	.L26
.L27:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L33
	leaq	test_curve(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC15:
	.string	"Usage: %s [options]\n"
.LC16:
	.string	"Valid options are:\n"
.LC17:
	.string	"help"
.LC18:
	.string	"Display this summary"
.LC19:
	.string	"list"
	.align 8
.LC20:
	.string	"Display the list of tests available"
.LC21:
	.string	"test"
	.align 8
.LC22:
	.string	"Run a single test by id or name"
.LC23:
	.string	"iter"
	.align 8
.LC24:
	.string	"Run a single iteration of a test"
.LC25:
	.string	"indent"
	.align 8
.LC26:
	.string	"Number of tabs added to output"
.LC27:
	.string	"seed"
	.align 8
.LC28:
	.string	"Seed value to randomize tests with"
.LC29:
	.string	"num"
.LC30:
	.string	"Number of repeats"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 240
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC15
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	500
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	501
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	502
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	503
	.long	110
	.quad	.LC24
	.quad	.LC25
	.long	504
	.long	112
	.quad	.LC26
	.quad	.LC27
	.long	505
	.long	110
	.quad	.LC28
	.quad	.LC29
	.long	1
	.long	77
	.quad	.LC30
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

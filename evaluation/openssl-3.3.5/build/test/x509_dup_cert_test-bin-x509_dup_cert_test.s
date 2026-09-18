	.file	"x509_dup_cert_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"store = X509_STORE_new()"
.LC1:
	.string	"../test/x509_dup_cert_test.c"
	.align 8
.LC2:
	.string	"lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file())"
	.align 8
.LC3:
	.string	"X509_load_cert_file(lookup, cert_f, X509_FILETYPE_PEM)"
	.text
	.type	test_509_dup_cert, @function
test_509_dup_cert:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -32(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_load_cert_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$26, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_load_cert_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$27, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, -4(%rbp)
.L2:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_509_dup_cert, .-test_509_dup_cert
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB469:
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
.LFE469:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC4:
	.string	"Error parsing test options\n"
.LC5:
	.string	"0"
.LC6:
	.string	"n"
.LC7:
	.string	"test_509_dup_cert"
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
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L7
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	call	test_get_argument_count@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	test_509_dup_cert(%rip), %rsi
	leaq	.LC7(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC8:
	.string	"Usage: %s [options] cert.pem...\n"
.LC9:
	.string	"Valid options are:\n"
.LC10:
	.string	"help"
.LC11:
	.string	"Display this summary"
.LC12:
	.string	"list"
	.align 8
.LC13:
	.string	"Display the list of tests available"
.LC14:
	.string	"test"
	.align 8
.LC15:
	.string	"Run a single test by id or name"
.LC16:
	.string	"iter"
	.align 8
.LC17:
	.string	"Run a single iteration of a test"
.LC18:
	.string	"indent"
	.align 8
.LC19:
	.string	"Number of tabs added to output"
.LC20:
	.string	"seed"
	.align 8
.LC21:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC8
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	500
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	501
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	502
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	503
	.long	110
	.quad	.LC17
	.quad	.LC18
	.long	504
	.long	112
	.quad	.LC19
	.quad	.LC20
	.long	505
	.long	110
	.quad	.LC21
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

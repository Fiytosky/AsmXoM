	.file	"ca_internals_test.c"
	.text
	.globl	default_config_file
	.bss
	.align 8
	.type	default_config_file, @object
	.size	default_config_file, 8
default_config_file:
	.zero	8
	.section	.rodata
.LC0:
	.string	"ca_internals_test"
	.align 8
.LC1:
	.string	"Usage: %s: do_updatedb dbfile testdate need64bit\n"
.LC2:
	.string	"../test/ca_internals_test.c"
	.align 8
.LC3:
	.string	"       testdate format: ASN1-String\n"
	.align 8
.LC4:
	.string	"skipping test (need64bit: %i, have64bit: %i)"
.LC5:
	.string	"0"
.LC6:
	.string	"testdateutc"
.LC7:
	.string	"db"
.LC8:
	.string	"new"
	.align 8
.LC9:
	.string	"save_index(indexfile, \"new\", db)"
.LC10:
	.string	"old"
	.align 8
.LC11:
	.string	"rotate_index(indexfile, \"new\", \"old\")"
	.text
	.type	test_do_updatedb, @function
test_do_updatedb:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	call	test_get_argument_count@PLT
	movq	%rax, -16(%rbp)
	cmpq	$4, -16(%rbp)
	je	.L2
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L9
.L2:
	movl	$3, %edi
	call	test_get_argument@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -20(%rbp)
	movl	$1, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L4
	cmpl	$0, -24(%rbp)
	jne	.L4
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L9
.L4:
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_asn1_string_to_time_t@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_time_t_lt@PLT
	testl	%eax, %eax
	je	.L5
	movl	$0, %eax
	jmp	.L9
.L5:
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_index@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L6
	movl	$0, %eax
	jmp	.L9
.L6:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_updatedb@PLT
	movl	%eax, -52(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpl	$0, -52(%rbp)
	jle	.L10
	movq	-8(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_index@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	.LC10(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_index@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
.L10:
	nop
	jmp	.L7
.L11:
	nop
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_index@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	test_do_updatedb, .-test_do_updatedb
	.section	.rodata
	.align 8
.LC12:
	.string	"%s: no command specified for testing\n"
.LC13:
	.string	"do_updatedb"
	.align 8
.LC14:
	.string	"%s: command '%s' is not supported for testing\n"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	call	test_get_argument_count@PLT
	testq	%rax, %rax
	jne	.L13
	leaq	.LC0(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	leaq	.LC13(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L15
	call	test_do_updatedb
	jmp	.L14
.L15:
	movq	-8(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r8
	movl	$90, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

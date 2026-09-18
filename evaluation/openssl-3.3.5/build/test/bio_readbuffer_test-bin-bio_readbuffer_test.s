	.file	"bio_readbuffer_test.c"
	.text
	.local	filename
	.comm	filename,8,8
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"in = BIO_new_file(filename, \"r\")"
.LC2:
	.string	"../test/bio_readbuffer_test.c"
.LC3:
	.string	"1"
	.align 8
.LC4:
	.string	"BIO_read_ex(in, expected, sizeof(expected), &readbytes)"
.LC5:
	.string	"sizeof(expected)"
.LC6:
	.string	"readbytes"
	.align 8
.LC7:
	.string	"readbuf_bio = BIO_new(BIO_f_readbuffer())"
	.align 8
.LC8:
	.string	"in_bio = BIO_new_file(filename, \"r\")"
.LC9:
	.string	"0"
.LC10:
	.string	"BIO_tell(in_bio)"
.LC11:
	.string	"BIO_eof(in_bio)"
.LC12:
	.string	"len"
.LC13:
	.string	"(int)sizeof(buf) - 1"
.LC14:
	.string	"buf[len] == 0"
.LC15:
	.string	"buf[len - 1] == '\\n'"
.LC16:
	.string	"BIO_seek(in_bio, 0)"
	.align 8
.LC17:
	.string	"BIO_read_ex(in_bio, buf, len, &bytes)"
.LC18:
	.string	"expected + count"
.LC19:
	.string	"buf"
.LC20:
	.string	"count"
	.text
	.type	test_readbuffer_file_bio, @function
test_readbuffer_file_bio:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4432, %rsp
	movl	%edi, -4420(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -4408(%rbp)
	movq	$0, -4416(%rbp)
	movq	$0, -48(%rbp)
	movq	filename(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	leaq	-4408(%rbp), %rdx
	leaq	-4400(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	BIO_read_ex@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-4408(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4096, %r9d
	movl	%esi, %r8d
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -24(%rbp)
	call	BIO_f_readbuffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$44, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	filename(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	cmpl	$0, -4420(%rbp)
	je	.L8
	movl	$4, -12(%rbp)
	jmp	.L9
.L15:
	leaq	-304(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L10
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$59, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L11
	jmp	.L4
.L10:
	movl	-8(%rbp), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$62, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L27
	movl	-8(%rbp), %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$254, %r9d
	movl	%esi, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L27
	movl	-8(%rbp), %eax
	cltq
	movzbl	-304(%rbp,%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$65, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	cmpl	$1, -8(%rbp)
	jle	.L11
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L11
	cmpl	$254, -8(%rbp)
	je	.L11
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movzbl	-304(%rbp,%rax), %eax
	cmpb	$10, %al
	sete	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
.L11:
	cmpl	$1, -4420(%rbp)
	jne	.L9
	subl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L30
.L9:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L15
	jmp	.L8
.L30:
	nop
.L8:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	$8, -8(%rbp)
	jmp	.L17
.L21:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-4416(%rbp), %rcx
	leaq	-304(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_read_ex@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	-4416(%rbp), %rsi
	leaq	-4400(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-4416(%rbp), %r9
	leaq	-304(%rbp), %r8
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L33
	movq	-4416(%rbp), %rax
	addq	%rax, -48(%rbp)
	movl	$255, -8(%rbp)
.L17:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L21
	jmp	.L19
.L32:
	nop
.L19:
	movq	-4408(%rbp), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L34
	movl	$1, -4(%rbp)
	jmp	.L4
.L24:
	nop
	jmp	.L4
.L25:
	nop
	jmp	.L4
.L26:
	nop
	jmp	.L4
.L27:
	nop
	jmp	.L4
.L28:
	nop
	jmp	.L4
.L29:
	nop
	jmp	.L4
.L31:
	nop
	jmp	.L4
.L33:
	nop
	jmp	.L4
.L34:
	nop
.L4:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_readbuffer_file_bio, .-test_readbuffer_file_bio
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
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC21:
	.string	"test_readbuffer_file_bio"
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
	jmp	.L38
.L41:
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L39
	jmp	.L38
.L39:
	movl	$0, %eax
	jmp	.L40
.L38:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L41
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, filename(%rip)
	leaq	test_readbuffer_file_bio(%rip), %rsi
	leaq	.LC21(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC22:
	.string	"Usage: %s [options] file\n"
.LC23:
	.string	"Valid options are:\n"
.LC24:
	.string	"help"
.LC25:
	.string	"Display this summary"
.LC26:
	.string	"list"
	.align 8
.LC27:
	.string	"Display the list of tests available"
.LC28:
	.string	"test"
	.align 8
.LC29:
	.string	"Run a single test by id or name"
.LC30:
	.string	"iter"
	.align 8
.LC31:
	.string	"Run a single iteration of a test"
.LC32:
	.string	"indent"
	.align 8
.LC33:
	.string	"Number of tabs added to output"
.LC34:
	.string	"seed"
	.align 8
.LC35:
	.string	"Seed value to randomize tests with"
.LC36:
	.string	"file\tFile to run tests on.\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 240
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	500
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	501
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	502
	.long	115
	.quad	.LC29
	.quad	.LC30
	.long	503
	.long	110
	.quad	.LC31
	.quad	.LC32
	.long	504
	.long	112
	.quad	.LC33
	.quad	.LC34
	.long	505
	.long	110
	.quad	.LC35
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC36
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

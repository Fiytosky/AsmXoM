	.file	"version.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.globl	version_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"Output options:\n"
.LC4:
	.string	"a"
.LC5:
	.string	"Show all data"
.LC6:
	.string	"b"
.LC7:
	.string	"Show build date"
.LC8:
	.string	"d"
.LC9:
	.string	"Show configuration directory"
.LC10:
	.string	"e"
.LC11:
	.string	"Show engines directory"
.LC12:
	.string	"m"
.LC13:
	.string	"Show modules directory"
.LC14:
	.string	"f"
.LC15:
	.string	"Show compiler flags used"
.LC16:
	.string	"o"
	.align 8
.LC17:
	.string	"Show some internal datatype options"
.LC18:
	.string	"p"
.LC19:
	.string	"Show target build platform"
.LC20:
	.string	"r"
.LC21:
	.string	"Show random seeding options"
.LC22:
	.string	"v"
.LC23:
	.string	"Show library version"
.LC24:
	.string	"c"
.LC25:
	.string	"Show CPU settings info"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	version_options, @object
	.size	version_options, 360
version_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	10
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	2
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	3
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	4
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	5
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	6
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	7
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	8
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	11
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	9
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	12
	.long	45
	.quad	.LC25
	.quad	0
	.zero	16
	.section	.rodata
.LC26:
	.string	"%s: Use -help for summary.\n"
.LC27:
	.string	"OpenSSL 3.3.5 30 Sep 2025"
.LC28:
	.string	"%s (Library: %s)\n"
.LC29:
	.string	"options: "
.LC30:
	.string	" %s"
.LC31:
	.string	"N/A"
.LC32:
	.string	"Seeding source: %s\n"
	.text
	.globl	version_main
	.type	version_main, @function
version_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	version_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L22:
	cmpl	$12, -60(%rbp)
	je	.L7
	cmpl	$12, -60(%rbp)
	jg	.L6
	cmpl	$11, -60(%rbp)
	je	.L8
	cmpl	$11, -60(%rbp)
	jg	.L6
	cmpl	$10, -60(%rbp)
	je	.L9
	cmpl	$10, -60(%rbp)
	jg	.L6
	cmpl	$9, -60(%rbp)
	je	.L10
	cmpl	$9, -60(%rbp)
	jg	.L6
	cmpl	$8, -60(%rbp)
	je	.L11
	cmpl	$8, -60(%rbp)
	jg	.L6
	cmpl	$7, -60(%rbp)
	je	.L12
	cmpl	$7, -60(%rbp)
	jg	.L6
	cmpl	$6, -60(%rbp)
	je	.L13
	cmpl	$6, -60(%rbp)
	jg	.L6
	cmpl	$5, -60(%rbp)
	je	.L14
	cmpl	$5, -60(%rbp)
	jg	.L6
	cmpl	$4, -60(%rbp)
	je	.L15
	cmpl	$4, -60(%rbp)
	jg	.L6
	cmpl	$3, -60(%rbp)
	je	.L16
	cmpl	$3, -60(%rbp)
	jg	.L6
	cmpl	$2, -60(%rbp)
	je	.L17
	cmpl	$2, -60(%rbp)
	jg	.L6
	cmpl	$0, -60(%rbp)
	jg	.L18
	cmpl	$-1, -60(%rbp)
	jge	.L19
	jmp	.L6
.L18:
	cmpl	$1, -60(%rbp)
	je	.L20
	jmp	.L6
.L38:
	nop
.L19:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC26(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L21
.L20:
	movq	version_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -4(%rbp)
	jmp	.L21
.L17:
	movl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L16:
	movl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L15:
	movl	$1, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L14:
	movl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L13:
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L12:
	movl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L11:
	movl	$1, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L8:
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L10:
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L7:
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L9:
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L22
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L38
	cmpl	$0, -8(%rbp)
	jne	.L24
	movl	$1, -20(%rbp)
.L24:
	cmpl	$0, -20(%rbp)
	je	.L25
	movl	$0, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdx
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L25:
	cmpl	$0, -24(%rbp)
	je	.L26
	movl	$2, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L26:
	cmpl	$0, -32(%rbp)
	je	.L27
	movl	$3, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L27:
	cmpl	$0, -28(%rbp)
	je	.L28
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	call	BN_options@PLT
	movq	%rax, %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
.L28:
	cmpl	$0, -16(%rbp)
	je	.L29
	movl	$1, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L29:
	cmpl	$0, -36(%rbp)
	je	.L30
	movl	$4, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L30:
	cmpl	$0, -40(%rbp)
	je	.L31
	movl	$5, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L31:
	cmpl	$0, -44(%rbp)
	je	.L32
	movl	$8, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L32:
	cmpl	$0, -12(%rbp)
	je	.L33
	movl	$1007, %edi
	call	OPENSSL_info@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L34
	movq	-72(%rbp), %rax
	jmp	.L35
.L34:
	leaq	.LC31(%rip), %rax
.L35:
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L33:
	cmpl	$0, -48(%rbp)
	je	.L36
	movl	$9, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L36:
	movl	$0, -4(%rbp)
.L21:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	version_main, .-version_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

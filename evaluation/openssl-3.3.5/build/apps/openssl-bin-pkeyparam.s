	.file	"pkeyparam.c"
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
	.globl	pkeyparam_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"engine"
	.align 8
.LC4:
	.string	"Use engine, possibly a hardware device"
.LC5:
	.string	"check"
.LC6:
	.string	"Check key param consistency"
.LC7:
	.string	"Input options:\n"
.LC8:
	.string	"in"
.LC9:
	.string	"Input file"
.LC10:
	.string	"Output options:\n"
.LC11:
	.string	"out"
.LC12:
	.string	"Output file"
.LC13:
	.string	"text"
.LC14:
	.string	"Print parameters as text"
.LC15:
	.string	"noout"
	.align 8
.LC16:
	.string	"Don't output encoded parameters"
.LC17:
	.string	"Provider options:\n"
.LC18:
	.string	"provider-path"
	.align 8
.LC19:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC20:
	.string	"provider"
	.align 8
.LC21:
	.string	"Provider to load (can be specified multiple times)"
.LC22:
	.string	"propquery"
	.align 8
.LC23:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	pkeyparam_options, @object
	.size	pkeyparam_options, 360
pkeyparam_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	6
	.long	115
	.quad	.LC4
	.quad	.LC5
	.long	7
	.long	45
	.quad	.LC6
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	2
	.long	60
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	3
	.long	62
	.quad	.LC12
	.quad	.LC13
	.long	4
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	5
	.long	45
	.quad	.LC16
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	1602
	.long	115
	.quad	.LC19
	.quad	.LC20
	.long	1601
	.long	115
	.quad	.LC21
	.quad	.LC22
	.long	1603
	.long	115
	.quad	.LC23
	.quad	0
	.zero	16
	.section	.rodata
.LC24:
	.string	"%s: Use -help for summary.\n"
.LC25:
	.string	"Error reading parameters\n"
.LC26:
	.string	"Parameters are valid\n"
.LC27:
	.string	"Parameters are invalid\n"
	.text
	.globl	pkeyparam_main
	.type	pkeyparam_main, @function
pkeyparam_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	pkeyparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movl	-116(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -96(%rbp)
	jmp	.L6
.L20:
	cmpl	$1604, -100(%rbp)
	je	.L6
	cmpl	$1604, -100(%rbp)
	jg	.L6
	cmpl	$1603, -100(%rbp)
	jg	.L6
	cmpl	$1601, -100(%rbp)
	jge	.L8
	cmpl	$1600, -100(%rbp)
	je	.L6
	cmpl	$1600, -100(%rbp)
	jg	.L6
	cmpl	$7, -100(%rbp)
	je	.L9
	cmpl	$7, -100(%rbp)
	jg	.L6
	cmpl	$6, -100(%rbp)
	je	.L10
	cmpl	$6, -100(%rbp)
	jg	.L6
	cmpl	$5, -100(%rbp)
	je	.L11
	cmpl	$5, -100(%rbp)
	jg	.L6
	cmpl	$4, -100(%rbp)
	je	.L12
	cmpl	$4, -100(%rbp)
	jg	.L6
	cmpl	$3, -100(%rbp)
	je	.L13
	cmpl	$3, -100(%rbp)
	jg	.L6
	cmpl	$2, -100(%rbp)
	je	.L14
	cmpl	$2, -100(%rbp)
	jg	.L6
	cmpl	$0, -100(%rbp)
	jg	.L15
	cmpl	$-1, -100(%rbp)
	jge	.L16
	jmp	.L6
.L15:
	cmpl	$1, -100(%rbp)
	je	.L17
	jmp	.L6
.L34:
	nop
.L16:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L17:
	movq	pkeyparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -68(%rbp)
	jmp	.L18
.L14:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L6
.L10:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L12:
	movl	$1, -60(%rbp)
	jmp	.L6
.L11:
	movl	$1, -64(%rbp)
	jmp	.L6
.L9:
	movl	$1, -72(%rbp)
	jmp	.L6
.L8:
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L33
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.L20
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L34
	movq	-80(%rbp), %rax
	movl	$32773, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L35
	movq	-88(%rbp), %rax
	movl	$32773, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L36
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rbx, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_Parameters_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L24
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L18
.L24:
	cmpl	$0, -72(%rbp)
	je	.L25
	cmpq	$0, -24(%rbp)
	jne	.L26
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -56(%rbp)
	jmp	.L27
.L26:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -56(%rbp)
.L27:
	cmpq	$0, -56(%rbp)
	jne	.L28
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L18
.L28:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	movl	%eax, -104(%rbp)
	cmpl	$1, -104(%rbp)
	jne	.L29
	leaq	.LC26(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L29:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L18
.L25:
	cmpl	$0, -64(%rbp)
	jne	.L30
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_Parameters@PLT
.L30:
	cmpl	$0, -60(%rbp)
	je	.L31
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
.L31:
	movl	$0, -68(%rbp)
	jmp	.L18
.L33:
	nop
	jmp	.L18
.L35:
	nop
	jmp	.L18
.L36:
	nop
.L18:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	pkeyparam_main, .-pkeyparam_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

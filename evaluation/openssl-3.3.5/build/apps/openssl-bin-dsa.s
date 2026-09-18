	.file	"dsa.c"
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
	.globl	dsa_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	""
.LC4:
	.string	"Any supported cipher"
.LC5:
	.string	"pvk-strong"
	.align 8
.LC6:
	.string	"Enable 'Strong' PVK encoding level (default)"
.LC7:
	.string	"pvk-weak"
	.align 8
.LC8:
	.string	"Enable 'Weak' PVK encoding level"
.LC9:
	.string	"pvk-none"
.LC10:
	.string	"Don't enforce PVK encoding"
.LC11:
	.string	"engine"
	.align 8
.LC12:
	.string	"Use engine e, possibly a hardware device"
.LC13:
	.string	"Input options:\n"
.LC14:
	.string	"in"
.LC15:
	.string	"Input key"
.LC16:
	.string	"inform"
	.align 8
.LC17:
	.string	"Input format (DER/PEM/PVK); has no effect"
.LC18:
	.string	"pubin"
	.align 8
.LC19:
	.string	"Expect a public key in input file"
.LC20:
	.string	"passin"
.LC21:
	.string	"Input file pass phrase source"
.LC22:
	.string	"Output options:\n"
.LC23:
	.string	"out"
.LC24:
	.string	"Output file"
.LC25:
	.string	"outform"
.LC26:
	.string	"Output format, DER PEM PVK"
.LC27:
	.string	"noout"
.LC28:
	.string	"Don't print key out"
.LC29:
	.string	"text"
.LC30:
	.string	"Print the key in text"
.LC31:
	.string	"modulus"
.LC32:
	.string	"Print the DSA public value"
.LC33:
	.string	"pubout"
	.align 8
.LC34:
	.string	"Output public key, not private"
.LC35:
	.string	"passout"
	.align 8
.LC36:
	.string	"Output file pass phrase source"
.LC37:
	.string	"Provider options:\n"
.LC38:
	.string	"provider-path"
	.align 8
.LC39:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC40:
	.string	"provider"
	.align 8
.LC41:
	.string	"Provider to load (can be specified multiple times)"
.LC42:
	.string	"propquery"
	.align 8
.LC43:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dsa_options, @object
	.size	dsa_options, 600
dsa_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	15
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	9
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	8
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	7
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	6
	.long	115
	.quad	.LC12
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	4
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	2
	.long	102
	.quad	.LC17
	.quad	.LC18
	.long	13
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	16
	.long	115
	.quad	.LC21
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	5
	.long	62
	.quad	.LC24
	.quad	.LC25
	.long	3
	.long	102
	.quad	.LC26
	.quad	.LC27
	.long	10
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	11
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	12
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	14
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	17
	.long	115
	.quad	.LC36
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	1602
	.long	115
	.quad	.LC39
	.quad	.LC40
	.long	1601
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	1603
	.long	115
	.quad	.LC43
	.quad	0
	.zero	16
	.section	.rodata
.LC44:
	.string	"cipher"
.LC45:
	.string	"%s: Use -help for summary.\n"
.LC46:
	.string	"Error getting passwords\n"
.LC47:
	.string	"read DSA key\n"
.LC48:
	.string	"public key"
.LC49:
	.string	"private key"
.LC50:
	.string	"unable to load Key\n"
.LC51:
	.string	"DSA"
.LC52:
	.string	"Not a DSA key\n"
.LC53:
	.string	"pub"
.LC54:
	.string	"Public Key="
.LC55:
	.string	"\n"
.LC56:
	.string	"writing DSA key\n"
.LC57:
	.string	"DER"
.LC58:
	.string	"PEM"
.LC59:
	.string	"MSBLOB"
	.align 8
.LC60:
	.string	"PVK form impossible with public key input\n"
.LC61:
	.string	"PVK"
	.align 8
.LC62:
	.string	"bad output format specified for outfile\n"
.LC63:
	.string	"SubjectPublicKeyInfo"
.LC64:
	.string	"type-specific"
.LC65:
	.string	"%s format not supported\n"
.LC66:
	.string	"encrypt-level"
.LC67:
	.string	"invalid PVK encryption level\n"
.LC68:
	.string	"unable to write key\n"
.LC69:
	.string	"../apps/dsa.c"
	.text
	.globl	dsa_main
	.type	dsa_main, @function
dsa_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -172(%rbp)
	movl	$32773, -176(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$1, -80(%rbp)
	movl	$2, -180(%rbp)
	movl	$0, -124(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -120(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	dsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx
	movl	-276(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -136(%rbp)
	jmp	.L6
.L30:
	cmpl	$1604, -140(%rbp)
	je	.L6
	cmpl	$1604, -140(%rbp)
	jg	.L6
	cmpl	$1603, -140(%rbp)
	jg	.L6
	cmpl	$1601, -140(%rbp)
	jge	.L8
	cmpl	$1600, -140(%rbp)
	je	.L6
	cmpl	$1600, -140(%rbp)
	jg	.L6
	cmpl	$17, -140(%rbp)
	je	.L9
	cmpl	$17, -140(%rbp)
	jg	.L6
	cmpl	$16, -140(%rbp)
	je	.L10
	cmpl	$16, -140(%rbp)
	jg	.L6
	cmpl	$15, -140(%rbp)
	je	.L11
	cmpl	$15, -140(%rbp)
	jg	.L6
	cmpl	$14, -140(%rbp)
	je	.L12
	cmpl	$14, -140(%rbp)
	jg	.L6
	cmpl	$13, -140(%rbp)
	je	.L13
	cmpl	$13, -140(%rbp)
	jg	.L6
	cmpl	$12, -140(%rbp)
	je	.L14
	cmpl	$12, -140(%rbp)
	jg	.L6
	cmpl	$11, -140(%rbp)
	je	.L15
	cmpl	$11, -140(%rbp)
	jg	.L6
	cmpl	$10, -140(%rbp)
	je	.L16
	cmpl	$10, -140(%rbp)
	jg	.L6
	cmpl	$9, -140(%rbp)
	jg	.L6
	cmpl	$7, -140(%rbp)
	jge	.L17
	cmpl	$6, -140(%rbp)
	je	.L18
	cmpl	$6, -140(%rbp)
	jg	.L6
	cmpl	$5, -140(%rbp)
	je	.L19
	cmpl	$5, -140(%rbp)
	jg	.L6
	cmpl	$4, -140(%rbp)
	je	.L20
	cmpl	$4, -140(%rbp)
	jg	.L6
	cmpl	$3, -140(%rbp)
	je	.L21
	cmpl	$3, -140(%rbp)
	jg	.L6
	cmpl	$2, -140(%rbp)
	je	.L22
	cmpl	$2, -140(%rbp)
	jg	.L6
	cmpl	$0, -140(%rbp)
	jg	.L23
	cmpl	$-1, -140(%rbp)
	jge	.L24
	jmp	.L6
.L23:
	cmpl	$1, -140(%rbp)
	je	.L25
	jmp	.L6
.L70:
	nop
	jmp	.L24
.L71:
	nop
	jmp	.L24
.L73:
	nop
.L24:
	movl	$0, -80(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L25:
	movq	dsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -80(%rbp)
	jmp	.L26
.L22:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-172(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L70
	jmp	.L6
.L20:
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L6
.L21:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L71
	jmp	.L6
.L19:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L6
.L18:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -16(%rbp)
	jmp	.L6
.L10:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L6
.L9:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L17:
	movl	-140(%rbp), %eax
	subl	$7, %eax
	movl	%eax, -180(%rbp)
	jmp	.L6
.L16:
	movl	$1, -64(%rbp)
	jmp	.L6
.L15:
	movl	$1, -60(%rbp)
	jmp	.L6
.L14:
	movl	$1, -68(%rbp)
	jmp	.L6
.L13:
	movl	$1, -72(%rbp)
	jmp	.L6
.L12:
	movl	$1, -76(%rbp)
	jmp	.L6
.L11:
	call	opt_unknown@PLT
	movq	%rax, -96(%rbp)
	jmp	.L6
.L8:
	movl	-140(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L72
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	jne	.L30
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L73
	leaq	-152(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L74
	cmpl	$0, -72(%rbp)
	jne	.L33
	cmpl	$0, -76(%rbp)
	je	.L34
	cmpl	$0, -60(%rbp)
	je	.L33
.L34:
	movl	$1, %eax
	jmp	.L35
.L33:
	movl	$0, %eax
.L35:
	movl	%eax, -124(%rbp)
	leaq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L36
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L36:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -72(%rbp)
	je	.L37
	movq	-160(%rbp), %rdx
	movl	-172(%rbp), %esi
	leaq	.LC48(%rip), %rdi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -24(%rbp)
	jmp	.L38
.L37:
	movq	-160(%rbp), %rdx
	movl	-172(%rbp), %esi
	leaq	.LC49(%rip), %rdi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -24(%rbp)
.L38:
	cmpq	$0, -24(%rbp)
	jne	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L26
.L39:
	leaq	.LC51(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L40
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L40:
	movl	-176(%rbp), %ecx
	movl	-124(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
	cmpl	$0, -60(%rbp)
	je	.L42
	cmpl	$0, -72(%rbp)
	je	.L43
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	testl	%eax, %eax
	jle	.L44
.L43:
	cmpl	$0, -72(%rbp)
	jne	.L42
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	testl	%eax, %eax
	jg	.L42
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L26
.L42:
	cmpl	$0, -68(%rbp)
	je	.L45
	movq	$0, -192(%rbp)
	leaq	-192(%rbp), %rdx
	leaq	.LC53(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	jne	.L46
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L26
.L46:
	leaq	.LC54(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-192(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	leaq	.LC55(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L45:
	cmpl	$0, -64(%rbp)
	je	.L47
	movl	$0, -80(%rbp)
	jmp	.L26
.L47:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-176(%rbp), %eax
	cmpl	$4, %eax
	jne	.L48
	leaq	.LC57(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L49
.L48:
	movl	-176(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L50
	leaq	.LC58(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L49
.L50:
	movl	-176(%rbp), %eax
	cmpl	$11, %eax
	jne	.L51
	leaq	.LC59(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L49
.L51:
	movl	-176(%rbp), %eax
	cmpl	$12, %eax
	jne	.L52
	cmpl	$0, -72(%rbp)
	je	.L53
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC60(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L53:
	leaq	.LC61(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L49
.L52:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC62(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L49:
	movl	-176(%rbp), %eax
	cmpl	$4, %eax
	je	.L54
	movl	-176(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L55
.L54:
	cmpl	$0, -76(%rbp)
	jne	.L56
	cmpl	$0, -72(%rbp)
	je	.L57
.L56:
	leaq	.LC63(%rip), %rax
	movq	%rax, -104(%rbp)
	jmp	.L55
.L57:
	leaq	.LC64(%rip), %rax
	movq	%rax, -104(%rbp)
.L55:
	cmpl	$0, -76(%rbp)
	jne	.L58
	cmpl	$0, -72(%rbp)
	je	.L59
.L58:
	movl	$2, -108(%rbp)
	jmp	.L60
.L59:
	movl	$135, -108(%rbp)
.L60:
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-108(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L61
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC65(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L61:
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
.L62:
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jne	.L63
	movl	-176(%rbp), %eax
	cmpl	$12, %eax
	jne	.L64
.L63:
	call	get_ui_method@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase_ui@PLT
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
.L64:
	movl	-176(%rbp), %eax
	cmpl	$12, %eax
	jne	.L65
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	leaq	-336(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	.LC66(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-272(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L65:
	movq	-8(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	jne	.L67
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L67:
	movl	$0, -80(%rbp)
	jmp	.L26
.L72:
	nop
	jmp	.L26
.L74:
	nop
	jmp	.L26
.L75:
	nop
.L26:
	cmpl	$0, -80(%rbp)
	je	.L68
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L68:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-160(%rbp), %rax
	leaq	.LC69(%rip), %rcx
	movl	$304, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-168(%rbp), %rax
	leaq	.LC69(%rip), %rcx
	movl	$305, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-80(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	dsa_main, .-dsa_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

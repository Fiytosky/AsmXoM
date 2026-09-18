	.file	"rsa.c"
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
	.globl	rsa_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"check"
.LC4:
	.string	"Verify key consistency"
.LC5:
	.string	""
.LC6:
	.string	"Any supported cipher"
.LC7:
	.string	"engine"
	.align 8
.LC8:
	.string	"Use engine, possibly a hardware device"
.LC9:
	.string	"Input options:\n"
.LC10:
	.string	"in"
.LC11:
	.string	"Input file"
.LC12:
	.string	"inform"
	.align 8
.LC13:
	.string	"Input format (DER/PEM/P12/ENGINE)"
.LC14:
	.string	"pubin"
	.align 8
.LC15:
	.string	"Expect a public key in input file"
.LC16:
	.string	"RSAPublicKey_in"
.LC17:
	.string	"Input is an RSAPublicKey"
.LC18:
	.string	"passin"
.LC19:
	.string	"Input file pass phrase source"
.LC20:
	.string	"Output options:\n"
.LC21:
	.string	"out"
.LC22:
	.string	"Output file"
.LC23:
	.string	"outform"
	.align 8
.LC24:
	.string	"Output format, one of DER PEM PVK"
.LC25:
	.string	"pubout"
.LC26:
	.string	"Output a public key"
.LC27:
	.string	"RSAPublicKey_out"
.LC28:
	.string	"Output is an RSAPublicKey"
.LC29:
	.string	"passout"
	.align 8
.LC30:
	.string	"Output file pass phrase source"
.LC31:
	.string	"noout"
.LC32:
	.string	"Don't print key out"
.LC33:
	.string	"text"
.LC34:
	.string	"Print the key in text"
.LC35:
	.string	"modulus"
.LC36:
	.string	"Print the RSA key modulus"
.LC37:
	.string	"traditional"
	.align 8
.LC38:
	.string	"Use traditional format for private keys"
.LC39:
	.string	"PVK options:\n"
.LC40:
	.string	"pvk-strong"
	.align 8
.LC41:
	.string	"Enable 'Strong' PVK encoding level (default)"
.LC42:
	.string	"pvk-weak"
	.align 8
.LC43:
	.string	"Enable 'Weak' PVK encoding level"
.LC44:
	.string	"pvk-none"
.LC45:
	.string	"Don't enforce PVK encoding"
.LC46:
	.string	"Provider options:\n"
.LC47:
	.string	"provider-path"
	.align 8
.LC48:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC49:
	.string	"provider"
	.align 8
.LC50:
	.string	"Provider to load (can be specified multiple times)"
.LC51:
	.string	"propquery"
	.align 8
.LC52:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	rsa_options, @object
	.size	rsa_options, 720
rsa_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	19
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	20
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	4
	.long	115
	.quad	.LC8
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	5
	.long	115
	.quad	.LC11
	.quad	.LC12
	.long	2
	.long	102
	.quad	.LC13
	.quad	.LC14
	.long	7
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	11
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	10
	.long	115
	.quad	.LC19
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	6
	.long	62
	.quad	.LC22
	.quad	.LC23
	.long	3
	.long	102
	.quad	.LC24
	.quad	.LC25
	.long	8
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	12
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	9
	.long	115
	.quad	.LC30
	.quad	.LC31
	.long	16
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	17
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	18
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	1605
	.long	45
	.quad	.LC38
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	15
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	14
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	13
	.long	45
	.quad	.LC45
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	1602
	.long	115
	.quad	.LC48
	.quad	.LC49
	.long	1601
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	1603
	.long	115
	.quad	.LC52
	.quad	0
	.zero	16
	.text
	.type	try_legacy_encoding, @function
try_legacy_encoding:
.LFB647:
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
	movq	%rcx, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	cmpl	$4, -28(%rbp)
	jne	.L8
	cmpl	$2, -32(%rbp)
	jne	.L9
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_RSAPublicKey_bio@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L10
.L9:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_RSA_PUBKEY_bio@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L10
.L8:
	cmpl	$32773, -28(%rbp)
	jne	.L11
	cmpl	$2, -32(%rbp)
	jne	.L12
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_RSAPublicKey@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L10
.L12:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_RSA_PUBKEY@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L10
.L11:
	cmpl	$11, -28(%rbp)
	je	.L13
	cmpl	$12, -28(%rbp)
	jne	.L10
.L13:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2b_PublicKey_bio@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	try_legacy_encoding, .-try_legacy_encoding
	.section	.rodata
.LC53:
	.string	"cipher"
.LC54:
	.string	"%s: Use -help for summary.\n"
.LC55:
	.string	"Error getting passwords\n"
	.align 8
.LC56:
	.string	"Only private keys can be checked\n"
.LC57:
	.string	"public key"
.LC58:
	.string	"private key"
.LC59:
	.string	"RSA"
.LC60:
	.string	"RSA-PSS"
.LC61:
	.string	"Not an RSA key\n"
.LC62:
	.string	"n"
.LC63:
	.string	"Modulus="
.LC64:
	.string	"\n"
	.align 8
.LC65:
	.string	"RSA unable to create PKEY context\n"
.LC66:
	.string	"RSA key ok\n"
.LC67:
	.string	"RSA key not ok\n"
.LC68:
	.string	"writing RSA key\n"
.LC69:
	.string	"DER"
.LC70:
	.string	"PEM"
.LC71:
	.string	"MSBLOB"
	.align 8
.LC72:
	.string	"PVK form impossible with public key input\n"
.LC73:
	.string	"PVK"
	.align 8
.LC74:
	.string	"bad output format specified for outfile\n"
.LC75:
	.string	"pkcs1"
.LC76:
	.string	"SubjectPublicKeyInfo"
.LC77:
	.string	"PrivateKeyInfo"
.LC78:
	.string	"%s format not supported\n"
.LC79:
	.string	"encrypt-level"
.LC80:
	.string	"invalid PVK encryption level\n"
.LC81:
	.string	"unable to write key\n"
.LC82:
	.string	"../apps/rsa.c"
	.text
	.globl	rsa_main
	.type	rsa_main, @function
rsa_main:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -196(%rbp)
	movl	$32773, -200(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$1, -92(%rbp)
	movl	$2, -204(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	$0, -128(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	rsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx
	movl	-308(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -144(%rbp)
	jmp	.L15
.L43:
	cmpl	$1605, -148(%rbp)
	je	.L16
	cmpl	$1605, -148(%rbp)
	jg	.L15
	cmpl	$1604, -148(%rbp)
	je	.L15
	cmpl	$1604, -148(%rbp)
	jg	.L15
	cmpl	$1603, -148(%rbp)
	jg	.L15
	cmpl	$1601, -148(%rbp)
	jge	.L18
	cmpl	$1600, -148(%rbp)
	je	.L15
	cmpl	$1600, -148(%rbp)
	jg	.L15
	cmpl	$20, -148(%rbp)
	je	.L19
	cmpl	$20, -148(%rbp)
	jg	.L15
	cmpl	$19, -148(%rbp)
	je	.L20
	cmpl	$19, -148(%rbp)
	jg	.L15
	cmpl	$18, -148(%rbp)
	je	.L21
	cmpl	$18, -148(%rbp)
	jg	.L15
	cmpl	$17, -148(%rbp)
	je	.L22
	cmpl	$17, -148(%rbp)
	jg	.L15
	cmpl	$16, -148(%rbp)
	je	.L23
	cmpl	$16, -148(%rbp)
	jg	.L15
	cmpl	$15, -148(%rbp)
	jg	.L15
	cmpl	$13, -148(%rbp)
	jge	.L24
	cmpl	$12, -148(%rbp)
	je	.L25
	cmpl	$12, -148(%rbp)
	jg	.L15
	cmpl	$11, -148(%rbp)
	je	.L26
	cmpl	$11, -148(%rbp)
	jg	.L15
	cmpl	$10, -148(%rbp)
	je	.L27
	cmpl	$10, -148(%rbp)
	jg	.L15
	cmpl	$9, -148(%rbp)
	je	.L28
	cmpl	$9, -148(%rbp)
	jg	.L15
	cmpl	$8, -148(%rbp)
	je	.L29
	cmpl	$8, -148(%rbp)
	jg	.L15
	cmpl	$7, -148(%rbp)
	je	.L30
	cmpl	$7, -148(%rbp)
	jg	.L15
	cmpl	$6, -148(%rbp)
	je	.L31
	cmpl	$6, -148(%rbp)
	jg	.L15
	cmpl	$5, -148(%rbp)
	je	.L32
	cmpl	$5, -148(%rbp)
	jg	.L15
	cmpl	$4, -148(%rbp)
	je	.L33
	cmpl	$4, -148(%rbp)
	jg	.L15
	cmpl	$3, -148(%rbp)
	je	.L34
	cmpl	$3, -148(%rbp)
	jg	.L15
	cmpl	$2, -148(%rbp)
	je	.L35
	cmpl	$2, -148(%rbp)
	jg	.L15
	cmpl	$0, -148(%rbp)
	jg	.L36
	cmpl	$-1, -148(%rbp)
	jge	.L37
	jmp	.L15
.L36:
	cmpl	$1, -148(%rbp)
	je	.L38
	jmp	.L15
.L97:
	nop
	jmp	.L37
.L98:
	nop
	jmp	.L37
.L100:
	nop
	jmp	.L37
.L101:
	nop
.L37:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L38:
	movq	rsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -92(%rbp)
	jmp	.L39
.L35:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-196(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L97
	jmp	.L15
.L32:
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L15
.L34:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L98
	jmp	.L15
.L31:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L15
.L27:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L15
.L28:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L15
.L33:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -8(%rbp)
	jmp	.L15
.L30:
	movl	$1, -84(%rbp)
	jmp	.L15
.L29:
	movl	$1, -88(%rbp)
	jmp	.L15
.L26:
	movl	$2, -84(%rbp)
	jmp	.L15
.L25:
	movl	$2, -88(%rbp)
	jmp	.L15
.L24:
	movl	-148(%rbp), %eax
	subl	$13, %eax
	movl	%eax, -204(%rbp)
	jmp	.L15
.L23:
	movl	$1, -76(%rbp)
	jmp	.L15
.L22:
	movl	$1, -68(%rbp)
	jmp	.L15
.L21:
	movl	$1, -80(%rbp)
	jmp	.L15
.L20:
	movl	$1, -72(%rbp)
	jmp	.L15
.L19:
	call	opt_unknown@PLT
	movq	%rax, -48(%rbp)
	jmp	.L15
.L18:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L99
	jmp	.L15
.L16:
	movl	$1, -96(%rbp)
	nop
.L15:
	call	opt_next@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L43
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-176(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L101
	cmpl	$0, -68(%rbp)
	je	.L46
	cmpl	$0, -84(%rbp)
	je	.L47
.L46:
	cmpl	$0, -88(%rbp)
	jne	.L48
	cmpl	$0, -76(%rbp)
	jne	.L48
.L47:
	movl	$1, %eax
	jmp	.L49
.L48:
	movl	$0, %eax
.L49:
	movl	%eax, -136(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L50:
	cmpl	$0, -72(%rbp)
	je	.L51
	cmpl	$0, -84(%rbp)
	je	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L51:
	cmpl	$0, -84(%rbp)
	je	.L52
	movl	$0, -132(%rbp)
	cmpl	$2, -84(%rbp)
	jne	.L53
	movl	-196(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L54
	movl	$32777, -132(%rbp)
	jmp	.L55
.L54:
	movl	-196(%rbp), %eax
	cmpl	$4, %eax
	jne	.L55
	movl	$10, -132(%rbp)
	jmp	.L55
.L53:
	movl	-196(%rbp), %eax
	movl	%eax, -132(%rbp)
.L55:
	movq	-184(%rbp), %rdx
	leaq	.LC57(%rip), %rdi
	movq	-8(%rbp), %rcx
	movl	-132(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -24(%rbp)
	jmp	.L56
.L52:
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %esi
	leaq	.LC58(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -24(%rbp)
.L56:
	cmpq	$0, -24(%rbp)
	jne	.L57
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L39
.L57:
	leaq	.LC59(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L58
	leaq	.LC60(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L58
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L58:
	movl	-200(%rbp), %ecx
	movl	-136(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L102
	cmpl	$0, -68(%rbp)
	je	.L60
	cmpl	$0, -84(%rbp)
	je	.L61
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	testl	%eax, %eax
	jle	.L62
.L61:
	cmpl	$0, -84(%rbp)
	jne	.L60
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	testl	%eax, %eax
	jg	.L60
.L62:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L39
.L60:
	cmpl	$0, -80(%rbp)
	je	.L63
	movq	$0, -216(%rbp)
	leaq	-216(%rbp), %rdx
	leaq	.LC62(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	leaq	.LC63(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-216(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	leaq	.LC64(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L63:
	cmpl	$0, -72(%rbp)
	je	.L64
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L39
.L65:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, -164(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	cmpl	$1, -164(%rbp)
	jne	.L66
	leaq	.LC66(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L64
.L66:
	cmpl	$0, -164(%rbp)
	jne	.L67
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L64
.L67:
	cmpl	$0, -164(%rbp)
	jns	.L64
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L39
.L64:
	cmpl	$0, -76(%rbp)
	je	.L68
	movl	$0, -92(%rbp)
	jmp	.L39
.L68:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-200(%rbp), %eax
	cmpl	$4, %eax
	jne	.L69
	leaq	.LC69(%rip), %rax
	movq	%rax, -104(%rbp)
	jmp	.L70
.L69:
	movl	-200(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L71
	leaq	.LC70(%rip), %rax
	movq	%rax, -104(%rbp)
	jmp	.L70
.L71:
	movl	-200(%rbp), %eax
	cmpl	$11, %eax
	jne	.L72
	leaq	.LC71(%rip), %rax
	movq	%rax, -104(%rbp)
	jmp	.L70
.L72:
	movl	-200(%rbp), %eax
	cmpl	$12, %eax
	jne	.L73
	cmpl	$0, -84(%rbp)
	je	.L74
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L74:
	leaq	.LC73(%rip), %rax
	movq	%rax, -104(%rbp)
	jmp	.L70
.L73:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L70:
	cmpl	$0, -88(%rbp)
	jne	.L75
	cmpl	$0, -84(%rbp)
	je	.L76
.L75:
	movl	$2, -116(%rbp)
	jmp	.L77
.L76:
	movl	$135, -116(%rbp)
.L77:
	movl	-200(%rbp), %eax
	cmpl	$4, %eax
	je	.L78
	movl	-200(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L79
.L78:
	cmpl	$0, -88(%rbp)
	jne	.L80
	cmpl	$0, -84(%rbp)
	je	.L81
.L80:
	cmpl	$2, -88(%rbp)
	jne	.L82
	leaq	.LC75(%rip), %rax
	movq	%rax, -112(%rbp)
	jmp	.L79
.L82:
	leaq	.LC76(%rip), %rax
	movq	%rax, -112(%rbp)
	jmp	.L79
.L81:
	cmpl	$0, -96(%rbp)
	je	.L84
	leaq	.LC75(%rip), %rax
	movq	%rax, -112(%rbp)
	jmp	.L79
.L84:
	leaq	.LC77(%rip), %rax
	movq	%rax, -112(%rbp)
.L79:
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-116(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L85
	cmpl	$0, -88(%rbp)
	jne	.L86
	cmpl	$0, -84(%rbp)
	je	.L87
.L86:
	movl	-200(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	-88(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	try_legacy_encoding
	testl	%eax, %eax
	jne	.L88
.L87:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC78(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L88:
	movl	$0, -92(%rbp)
	jmp	.L39
.L85:
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
.L90:
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	jne	.L91
	movl	-200(%rbp), %eax
	cmpl	$12, %eax
	jne	.L92
.L91:
	call	get_ui_method@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase_ui@PLT
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	je	.L92
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
.L92:
	movl	-200(%rbp), %eax
	cmpl	$12, %eax
	jne	.L93
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -304(%rbp)
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	leaq	-368(%rbp), %rax
	leaq	-204(%rbp), %rdx
	leaq	.LC79(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-304(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L93
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L93:
	movq	-16(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	jne	.L95
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L39
.L95:
	movl	$0, -92(%rbp)
	jmp	.L39
.L99:
	nop
	jmp	.L39
.L102:
	nop
.L39:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-184(%rbp), %rax
	leaq	.LC82(%rip), %rcx
	movl	$410, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-192(%rbp), %rax
	leaq	.LC82(%rip), %rcx
	movl	$411, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-92(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	rsa_main, .-rsa_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

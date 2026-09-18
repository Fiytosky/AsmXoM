	.file	"pkey.c"
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
	.section	.rodata
.LC0:
	.string	"uncompressed"
.LC1:
	.string	"compressed"
.LC2:
	.string	"hybrid"
	.section	.data.rel.local,"aw"
	.align 32
	.type	point_format_options, @object
	.size	point_format_options, 32
point_format_options:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	0
	.section	.rodata
.LC3:
	.string	"named_curve"
.LC4:
	.string	"explicit"
	.section	.data.rel.local
	.align 16
	.type	asn1_encoding_options, @object
	.size	asn1_encoding_options, 24
asn1_encoding_options:
	.quad	.LC3
	.quad	.LC4
	.quad	0
	.globl	pkey_options
	.section	.rodata
.LC5:
	.string	"General options:\n"
.LC6:
	.string	"help"
.LC7:
	.string	"Display this summary"
.LC8:
	.string	"engine"
	.align 8
.LC9:
	.string	"Use engine, possibly a hardware device"
.LC10:
	.string	"Provider options:\n"
.LC11:
	.string	"provider-path"
	.align 8
.LC12:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC13:
	.string	"provider"
	.align 8
.LC14:
	.string	"Provider to load (can be specified multiple times)"
.LC15:
	.string	"propquery"
	.align 8
.LC16:
	.string	"Property query used when fetching algorithms"
.LC17:
	.string	"check"
.LC18:
	.string	"Check key consistency"
.LC19:
	.string	"pubcheck"
.LC20:
	.string	"Check public key consistency"
.LC21:
	.string	"Input options:\n"
.LC22:
	.string	"in"
.LC23:
	.string	"Input key"
.LC24:
	.string	"inform"
	.align 8
.LC25:
	.string	"Key input format (ENGINE, other values ignored)"
.LC26:
	.string	"passin"
.LC27:
	.string	"Key input pass phrase source"
.LC28:
	.string	"pubin"
	.align 8
.LC29:
	.string	"Read only public components from key input"
.LC30:
	.string	"Output options:\n"
.LC31:
	.string	"out"
	.align 8
.LC32:
	.string	"Output file for encoded and/or text output"
.LC33:
	.string	"outform"
	.align 8
.LC34:
	.string	"Output encoding format (DER or PEM)"
.LC35:
	.string	""
	.align 8
.LC36:
	.string	"Any supported cipher to be used for encryption"
.LC37:
	.string	"passout"
	.align 8
.LC38:
	.string	"Output PEM file pass phrase source"
.LC39:
	.string	"traditional"
	.align 8
.LC40:
	.string	"Use traditional format for private key PEM output"
.LC41:
	.string	"pubout"
	.align 8
.LC42:
	.string	"Restrict encoded output to public components"
.LC43:
	.string	"noout"
	.align 8
.LC44:
	.string	"Do not output the key in encoded form"
.LC45:
	.string	"text"
	.align 8
.LC46:
	.string	"Output key components in plaintext"
.LC47:
	.string	"text_pub"
	.align 8
.LC48:
	.string	"Output only public key components in text form"
.LC49:
	.string	"ec_conv_form"
	.align 8
.LC50:
	.string	"Specifies the EC point conversion form in the encoding"
.LC51:
	.string	"ec_param_enc"
	.align 8
.LC52:
	.string	"Specifies the way the EC parameters are encoded"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	pkey_options, @object
	.size	pkey_options, 648
pkey_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	1
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	6
	.long	115
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	1602
	.long	115
	.quad	.LC12
	.quad	.LC13
	.long	1601
	.long	115
	.quad	.LC14
	.quad	.LC15
	.long	1603
	.long	115
	.quad	.LC16
	.quad	.LC17
	.long	16
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	17
	.long	45
	.quad	.LC20
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	7
	.long	115
	.quad	.LC23
	.quad	.LC24
	.long	2
	.long	102
	.quad	.LC25
	.quad	.LC26
	.long	4
	.long	115
	.quad	.LC27
	.quad	.LC28
	.long	9
	.long	45
	.quad	.LC29
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	8
	.long	62
	.quad	.LC32
	.quad	.LC33
	.long	3
	.long	70
	.quad	.LC34
	.quad	.LC35
	.long	14
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	5
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	15
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	10
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	13
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	12
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	11
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	19
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	18
	.long	115
	.quad	.LC52
	.quad	0
	.zero	16
	.section	.rodata
.LC53:
	.string	"cipher"
.LC54:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC55:
	.string	"Warning: The -text option is ignored with -text_pub\n"
	.align 8
.LC56:
	.string	"Warning: The -traditional is ignored since there is no PEM output\n"
	.align 8
.LC57:
	.string	"Warning: The -passout option is ignored without a cipher option\n"
	.align 8
.LC58:
	.string	"Error: Cipher options are supported only for PEM output\n"
.LC59:
	.string	"Error getting passwords\n"
.LC60:
	.string	"Public Key"
.LC61:
	.string	"key"
.LC62:
	.string	"EC"
.LC63:
	.string	"encoding"
.LC64:
	.string	"point-format"
.LC65:
	.string	"Key is valid\n"
.LC66:
	.string	"Key is invalid\n"
	.align 8
.LC67:
	.string	"Error: Text output cannot be combined with DER output\n"
.LC68:
	.string	"Bad format specified for key\n"
.LC69:
	.string	"../apps/pkey.c"
	.text
	.globl	pkey_main
	.type	pkey_main, @function
pkey_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -204(%rbp)
	movl	$32773, -208(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$1, -112(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	pkey_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-352(%rbp), %rcx
	movl	-340(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -168(%rbp)
	jmp	.L6
.L36:
	cmpl	$1604, -172(%rbp)
	je	.L6
	cmpl	$1604, -172(%rbp)
	jg	.L6
	cmpl	$1603, -172(%rbp)
	jg	.L6
	cmpl	$1601, -172(%rbp)
	jge	.L8
	cmpl	$1600, -172(%rbp)
	je	.L6
	cmpl	$1600, -172(%rbp)
	jg	.L6
	cmpl	$19, -172(%rbp)
	je	.L9
	cmpl	$19, -172(%rbp)
	jg	.L6
	cmpl	$18, -172(%rbp)
	je	.L10
	cmpl	$18, -172(%rbp)
	jg	.L6
	cmpl	$17, -172(%rbp)
	je	.L11
	cmpl	$17, -172(%rbp)
	jg	.L6
	cmpl	$16, -172(%rbp)
	je	.L12
	cmpl	$16, -172(%rbp)
	jg	.L6
	cmpl	$15, -172(%rbp)
	je	.L13
	cmpl	$15, -172(%rbp)
	jg	.L6
	cmpl	$14, -172(%rbp)
	je	.L14
	cmpl	$14, -172(%rbp)
	jg	.L6
	cmpl	$13, -172(%rbp)
	je	.L15
	cmpl	$13, -172(%rbp)
	jg	.L6
	cmpl	$12, -172(%rbp)
	je	.L16
	cmpl	$12, -172(%rbp)
	jg	.L6
	cmpl	$11, -172(%rbp)
	je	.L17
	cmpl	$11, -172(%rbp)
	jg	.L6
	cmpl	$10, -172(%rbp)
	je	.L18
	cmpl	$10, -172(%rbp)
	jg	.L6
	cmpl	$9, -172(%rbp)
	je	.L19
	cmpl	$9, -172(%rbp)
	jg	.L6
	cmpl	$8, -172(%rbp)
	je	.L20
	cmpl	$8, -172(%rbp)
	jg	.L6
	cmpl	$7, -172(%rbp)
	je	.L21
	cmpl	$7, -172(%rbp)
	jg	.L6
	cmpl	$6, -172(%rbp)
	je	.L22
	cmpl	$6, -172(%rbp)
	jg	.L6
	cmpl	$5, -172(%rbp)
	je	.L23
	cmpl	$5, -172(%rbp)
	jg	.L6
	cmpl	$4, -172(%rbp)
	je	.L24
	cmpl	$4, -172(%rbp)
	jg	.L6
	cmpl	$3, -172(%rbp)
	je	.L25
	cmpl	$3, -172(%rbp)
	jg	.L6
	cmpl	$2, -172(%rbp)
	je	.L26
	cmpl	$2, -172(%rbp)
	jg	.L6
	cmpl	$0, -172(%rbp)
	jg	.L27
	cmpl	$-1, -172(%rbp)
	jge	.L28
	jmp	.L6
.L27:
	cmpl	$1, -172(%rbp)
	je	.L29
	jmp	.L6
.L80:
	nop
	jmp	.L28
.L81:
	nop
	jmp	.L28
.L82:
	nop
	jmp	.L28
.L83:
	nop
	jmp	.L28
.L85:
	nop
	jmp	.L28
.L86:
	nop
.L28:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L29:
	movq	pkey_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -112(%rbp)
	jmp	.L30
.L26:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-204(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L80
	jmp	.L6
.L25:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L81
	jmp	.L6
.L24:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L23:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L22:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -32(%rbp)
	jmp	.L6
.L21:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L20:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L19:
	movl	$1, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.L6
.L18:
	movl	$1, -96(%rbp)
	jmp	.L6
.L17:
	movl	$1, -100(%rbp)
	jmp	.L6
.L16:
	movl	$1, -104(%rbp)
	jmp	.L6
.L15:
	movl	$1, -108(%rbp)
	jmp	.L6
.L13:
	movl	$1, -116(%rbp)
	jmp	.L6
.L12:
	movl	$1, -120(%rbp)
	jmp	.L6
.L11:
	movl	$1, -124(%rbp)
	jmp	.L6
.L14:
	call	opt_unknown@PLT
	movq	%rax, -88(%rbp)
	jmp	.L6
.L9:
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	leaq	point_format_options(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_string@PLT
	testl	%eax, %eax
	je	.L82
	jmp	.L6
.L10:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	leaq	asn1_encoding_options(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_string@PLT
	testl	%eax, %eax
	je	.L83
	jmp	.L6
.L8:
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L84
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -172(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.L36
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L85
	cmpl	$0, -104(%rbp)
	je	.L38
	cmpl	$0, -100(%rbp)
	je	.L38
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L38:
	cmpl	$0, -116(%rbp)
	je	.L39
	cmpl	$0, -108(%rbp)
	jne	.L40
	movl	-208(%rbp), %eax
	cmpl	$32773, %eax
	je	.L39
.L40:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L39:
	cmpl	$0, -100(%rbp)
	jne	.L41
	cmpl	$0, -96(%rbp)
	je	.L41
	cmpl	$0, -104(%rbp)
	je	.L41
	movl	$0, -104(%rbp)
	movl	$1, -100(%rbp)
.L41:
	cmpl	$0, -108(%rbp)
	jne	.L42
	cmpl	$0, -96(%rbp)
	je	.L43
.L42:
	cmpl	$0, -104(%rbp)
	je	.L44
	cmpl	$0, -100(%rbp)
	jne	.L44
.L43:
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -160(%rbp)
	leaq	-184(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L86
	movq	-184(%rbp), %rax
	testq	%rax, %rax
	jne	.L47
	cmpq	$0, -80(%rbp)
	je	.L48
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L47:
	cmpl	$0, -108(%rbp)
	jne	.L49
	movl	-208(%rbp), %eax
	cmpl	$32773, %eax
	je	.L48
.L49:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC58(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L48:
	leaq	-200(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L50:
	movl	-208(%rbp), %ecx
	movl	-160(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L87
	cmpl	$0, -92(%rbp)
	je	.L52
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %esi
	leaq	.LC60(%rip), %rdi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -40(%rbp)
	jmp	.L53
.L52:
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %esi
	leaq	.LC61(%rip), %rdi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -40(%rbp)
.L53:
	cmpq	$0, -40(%rbp)
	je	.L88
	cmpq	$0, -136(%rbp)
	jne	.L55
	cmpq	$0, -144(%rbp)
	je	.L56
.L55:
	leaq	-336(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC62(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L89
	cmpq	$0, -136(%rbp)
	je	.L59
	movq	-152(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -152(%rbp)
	leaq	-400(%rbp), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC63(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
.L59:
	cmpq	$0, -144(%rbp)
	je	.L60
	movq	-152(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -152(%rbp)
	leaq	-400(%rbp), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC64(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
.L60:
	movq	-152(%rbp), %rbx
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-336(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_params@PLT
	testl	%eax, %eax
	jle	.L90
.L56:
	cmpl	$0, -120(%rbp)
	jne	.L62
	cmpl	$0, -124(%rbp)
	je	.L63
.L62:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L64
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L30
.L64:
	cmpl	$0, -120(%rbp)
	je	.L65
	cmpl	$0, -92(%rbp)
	jne	.L65
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, -156(%rbp)
	jmp	.L66
.L65:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, -156(%rbp)
.L66:
	cmpl	$1, -156(%rbp)
	jne	.L67
	leaq	.LC65(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L63
.L67:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L30
.L63:
	cmpl	$0, -108(%rbp)
	jne	.L68
	movl	-208(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L69
	cmpl	$0, -96(%rbp)
	je	.L70
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
	testl	%eax, %eax
	jne	.L68
	jmp	.L30
.L70:
	cmpl	$0, -116(%rbp)
	je	.L71
	movq	-200(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_traditional@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L68
	jmp	.L30
.L71:
	movq	-200(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L68
	jmp	.L30
.L69:
	movl	-208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L72
	cmpl	$0, -104(%rbp)
	jne	.L73
	cmpl	$0, -100(%rbp)
	je	.L74
.L73:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L74:
	cmpl	$0, -96(%rbp)
	je	.L75
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY_bio@PLT
	testl	%eax, %eax
	jne	.L68
	jmp	.L30
.L75:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PrivateKey_bio@PLT
	testl	%eax, %eax
	jne	.L68
	jmp	.L30
.L72:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L68:
	cmpl	$0, -100(%rbp)
	je	.L76
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	testl	%eax, %eax
	jg	.L77
	jmp	.L30
.L76:
	cmpl	$0, -104(%rbp)
	je	.L77
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	testl	%eax, %eax
	jle	.L91
.L77:
	movl	$0, -112(%rbp)
	jmp	.L30
.L84:
	nop
	jmp	.L30
.L87:
	nop
	jmp	.L30
.L88:
	nop
	jmp	.L30
.L89:
	nop
	jmp	.L30
.L90:
	nop
	jmp	.L30
.L91:
	nop
.L30:
	cmpl	$0, -112(%rbp)
	je	.L78
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L78:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-192(%rbp), %rax
	leaq	.LC69(%rip), %rcx
	movl	$326, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-200(%rbp), %rax
	leaq	.LC69(%rip), %rcx
	movl	$327, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	pkey_main, .-pkey_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

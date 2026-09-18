	.file	"ec.c"
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
	.globl	ec_options
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
	.string	"Input options:\n"
.LC11:
	.string	"in"
.LC12:
	.string	"Input file"
.LC13:
	.string	"inform"
	.align 8
.LC14:
	.string	"Input format (DER/PEM/P12/ENGINE)"
.LC15:
	.string	"pubin"
	.align 8
.LC16:
	.string	"Expect a public key in input file"
.LC17:
	.string	"passin"
.LC18:
	.string	"Input file pass phrase source"
.LC19:
	.string	"check"
.LC20:
	.string	"check key consistency"
.LC21:
	.string	""
.LC22:
	.string	"Any supported cipher"
.LC23:
	.string	"param_enc"
	.align 8
.LC24:
	.string	"Specifies the way the ec parameters are encoded"
.LC25:
	.string	"conv_form"
	.align 8
.LC26:
	.string	"Specifies the point conversion form "
.LC27:
	.string	"Output options:\n"
.LC28:
	.string	"out"
.LC29:
	.string	"Output file"
.LC30:
	.string	"outform"
.LC31:
	.string	"Output format - DER or PEM"
.LC32:
	.string	"noout"
.LC33:
	.string	"Don't print key out"
.LC34:
	.string	"text"
.LC35:
	.string	"Print the key"
.LC36:
	.string	"param_out"
	.align 8
.LC37:
	.string	"Print the elliptic curve parameters"
.LC38:
	.string	"pubout"
	.align 8
.LC39:
	.string	"Output public key, not private"
.LC40:
	.string	"no_public"
	.align 8
.LC41:
	.string	"exclude public key from private key"
.LC42:
	.string	"passout"
	.align 8
.LC43:
	.string	"Output file pass phrase source"
.LC44:
	.string	"Provider options:\n"
.LC45:
	.string	"provider-path"
	.align 8
.LC46:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC47:
	.string	"provider"
	.align 8
.LC48:
	.string	"Provider to load (can be specified multiple times)"
.LC49:
	.string	"propquery"
	.align 8
.LC50:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ec_options, @object
	.size	ec_options, 624
ec_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	1
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	4
	.long	115
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	5
	.long	115
	.quad	.LC12
	.quad	.LC13
	.long	2
	.long	102
	.quad	.LC14
	.quad	.LC15
	.long	10
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	12
	.long	115
	.quad	.LC18
	.quad	.LC19
	.long	18
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	16
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	14
	.long	115
	.quad	.LC24
	.quad	.LC25
	.long	15
	.long	115
	.quad	.LC26
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	6
	.long	62
	.quad	.LC29
	.quad	.LC30
	.long	3
	.long	70
	.quad	.LC31
	.quad	.LC32
	.long	7
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	8
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	9
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	11
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	17
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	13
	.long	115
	.quad	.LC43
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	1602
	.long	115
	.quad	.LC46
	.quad	.LC47
	.long	1601
	.long	115
	.quad	.LC48
	.quad	.LC49
	.long	1603
	.long	115
	.quad	.LC50
	.quad	0
	.zero	16
	.section	.rodata
.LC51:
	.string	"cipher"
.LC52:
	.string	"%s: Use -help for summary.\n"
.LC53:
	.string	"Error getting passwords\n"
.LC54:
	.string	"read EC key\n"
.LC55:
	.string	"public key"
.LC56:
	.string	"private key"
.LC57:
	.string	"unable to load Key\n"
.LC58:
	.string	"point-format"
	.align 8
.LC59:
	.string	"unable to set point conversion format\n"
.LC60:
	.string	"encoding"
	.align 8
.LC61:
	.string	"unable to set asn1 encoding format\n"
.LC62:
	.string	"include-public"
	.align 8
.LC63:
	.string	"unable to disable public key encoding\n"
	.align 8
.LC64:
	.string	"unable to enable public key encoding\n"
.LC65:
	.string	"unable to print EC key\n"
.LC66:
	.string	"unable to check EC key\n"
.LC67:
	.string	"EC Key Invalid!\n"
.LC68:
	.string	"EC Key valid.\n"
.LC69:
	.string	"DER"
.LC70:
	.string	"PEM"
.LC71:
	.string	"type-specific"
.LC72:
	.string	"writing EC key\n"
.LC73:
	.string	"SubjectPublicKeyInfo"
.LC74:
	.string	"unable to write EC key\n"
.LC75:
	.string	"../apps/ec.c"
	.text
	.globl	ec_main
	.type	ec_main, @function
ec_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -212(%rbp)
	movl	$32773, -216(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$1, -104(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	ec_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx
	movl	-228(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -176(%rbp)
	jmp	.L6
.L35:
	cmpl	$1604, -180(%rbp)
	je	.L6
	cmpl	$1604, -180(%rbp)
	jg	.L6
	cmpl	$1603, -180(%rbp)
	jg	.L6
	cmpl	$1601, -180(%rbp)
	jge	.L8
	cmpl	$1600, -180(%rbp)
	je	.L6
	cmpl	$1600, -180(%rbp)
	jg	.L6
	cmpl	$18, -180(%rbp)
	je	.L9
	cmpl	$18, -180(%rbp)
	jg	.L6
	cmpl	$17, -180(%rbp)
	je	.L10
	cmpl	$17, -180(%rbp)
	jg	.L6
	cmpl	$16, -180(%rbp)
	je	.L11
	cmpl	$16, -180(%rbp)
	jg	.L6
	cmpl	$15, -180(%rbp)
	je	.L12
	cmpl	$15, -180(%rbp)
	jg	.L6
	cmpl	$14, -180(%rbp)
	je	.L13
	cmpl	$14, -180(%rbp)
	jg	.L6
	cmpl	$13, -180(%rbp)
	je	.L14
	cmpl	$13, -180(%rbp)
	jg	.L6
	cmpl	$12, -180(%rbp)
	je	.L15
	cmpl	$12, -180(%rbp)
	jg	.L6
	cmpl	$11, -180(%rbp)
	je	.L16
	cmpl	$11, -180(%rbp)
	jg	.L6
	cmpl	$10, -180(%rbp)
	je	.L17
	cmpl	$10, -180(%rbp)
	jg	.L6
	cmpl	$9, -180(%rbp)
	je	.L18
	cmpl	$9, -180(%rbp)
	jg	.L6
	cmpl	$8, -180(%rbp)
	je	.L19
	cmpl	$8, -180(%rbp)
	jg	.L6
	cmpl	$7, -180(%rbp)
	je	.L20
	cmpl	$7, -180(%rbp)
	jg	.L6
	cmpl	$6, -180(%rbp)
	je	.L21
	cmpl	$6, -180(%rbp)
	jg	.L6
	cmpl	$5, -180(%rbp)
	je	.L22
	cmpl	$5, -180(%rbp)
	jg	.L6
	cmpl	$4, -180(%rbp)
	je	.L23
	cmpl	$4, -180(%rbp)
	jg	.L6
	cmpl	$3, -180(%rbp)
	je	.L24
	cmpl	$3, -180(%rbp)
	jg	.L6
	cmpl	$2, -180(%rbp)
	je	.L25
	cmpl	$2, -180(%rbp)
	jg	.L6
	cmpl	$0, -180(%rbp)
	jg	.L26
	cmpl	$-1, -180(%rbp)
	jge	.L27
	jmp	.L6
.L26:
	cmpl	$1, -180(%rbp)
	je	.L28
	jmp	.L6
.L69:
	nop
	jmp	.L27
.L70:
	nop
	jmp	.L27
.L71:
	nop
	jmp	.L27
.L72:
	nop
	jmp	.L27
.L74:
	nop
	jmp	.L27
.L75:
	nop
.L27:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L28:
	movq	ec_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -104(%rbp)
	jmp	.L29
.L25:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-212(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L69
	jmp	.L6
.L22:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L6
.L24:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L70
	jmp	.L6
.L21:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L20:
	movl	$1, -88(%rbp)
	jmp	.L6
.L19:
	movl	$1, -84(%rbp)
	jmp	.L6
.L18:
	movl	$1, -100(%rbp)
	jmp	.L6
.L17:
	movl	$1, -92(%rbp)
	jmp	.L6
.L16:
	movl	$1, -96(%rbp)
	jmp	.L6
.L15:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L14:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L23:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -40(%rbp)
	jmp	.L6
.L11:
	call	opt_unknown@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L12:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	leaq	point_format_options(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_string@PLT
	testl	%eax, %eax
	je	.L71
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	leaq	asn1_encoding_options(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_string@PLT
	testl	%eax, %eax
	je	.L72
	jmp	.L6
.L10:
	movl	$1, -132(%rbp)
	jmp	.L6
.L9:
	movl	$1, -108(%rbp)
	jmp	.L6
.L8:
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L73
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L35
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L74
	leaq	-192(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L75
	cmpl	$0, -92(%rbp)
	jne	.L38
	cmpl	$0, -84(%rbp)
	jne	.L39
	cmpl	$0, -100(%rbp)
	jne	.L38
	cmpl	$0, -96(%rbp)
	jne	.L38
.L39:
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	movl	%eax, -164(%rbp)
	leaq	-208(%rbp), %rcx
	leaq	-200(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC53(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L41:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -92(%rbp)
	je	.L42
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %esi
	leaq	.LC55(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -24(%rbp)
	jmp	.L43
.L42:
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %esi
	leaq	.LC56(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -24(%rbp)
.L43:
	cmpq	$0, -24(%rbp)
	jne	.L44
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L44:
	movl	-216(%rbp), %ecx
	movl	-164(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L76
	cmpq	$0, -128(%rbp)
	je	.L46
	movq	-128(%rbp), %rdx
	leaq	.LC58(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L46
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L46:
	cmpq	$0, -120(%rbp)
	je	.L47
	movq	-120(%rbp), %rdx
	leaq	.LC60(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L47
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L47:
	cmpl	$0, -132(%rbp)
	je	.L48
	leaq	.LC62(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_int_param@PLT
	testl	%eax, %eax
	jne	.L49
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L48:
	leaq	.LC62(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_int_param@PLT
	testl	%eax, %eax
	jne	.L49
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L49:
	cmpl	$0, -84(%rbp)
	je	.L50
	cmpl	$0, -92(%rbp)
	je	.L51
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	testl	%eax, %eax
	jle	.L52
.L51:
	cmpl	$0, -92(%rbp)
	jne	.L50
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	testl	%eax, %eax
	jg	.L50
.L52:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L50:
	cmpl	$0, -108(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L54
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L54:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	testl	%eax, %eax
	jg	.L55
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L56
.L55:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L56:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L53:
	cmpl	$0, -88(%rbp)
	jne	.L57
	movl	-216(%rbp), %eax
	cmpl	$4, %eax
	jne	.L58
	leaq	.LC69(%rip), %rax
	movq	%rax, -144(%rbp)
	jmp	.L59
.L58:
	leaq	.LC70(%rip), %rax
	movq	%rax, -144(%rbp)
.L59:
	leaq	.LC71(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -100(%rbp)
	je	.L60
	movl	$4, -136(%rbp)
	jmp	.L61
.L60:
	cmpl	$0, -92(%rbp)
	jne	.L62
	cmpl	$0, -96(%rbp)
	je	.L63
.L62:
	movl	$6, -136(%rbp)
	leaq	.LC73(%rip), %rax
	movq	%rax, -152(%rbp)
	jmp	.L61
.L63:
	movl	$135, -136(%rbp)
.L61:
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movl	-136(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	call	get_ui_method@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase_ui@PLT
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
.L64:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	jne	.L57
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L29
.L57:
	movl	$0, -104(%rbp)
	jmp	.L29
.L73:
	nop
	jmp	.L29
.L76:
	nop
.L29:
	cmpl	$0, -104(%rbp)
	je	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L65:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-200(%rbp), %rax
	testq	%rax, %rax
	je	.L66
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-200(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	movl	$286, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L66:
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	je	.L67
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-208(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	movl	$288, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L67:
	movl	-104(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ec_main, .-ec_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

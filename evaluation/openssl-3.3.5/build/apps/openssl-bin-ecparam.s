	.file	"ecparam.c"
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
	.globl	ecparam_options
	.section	.rodata
.LC5:
	.string	"General options:\n"
.LC6:
	.string	"help"
.LC7:
	.string	"Display this summary"
.LC8:
	.string	"list_curves"
	.align 8
.LC9:
	.string	"Prints a list of all curve 'short names'"
.LC10:
	.string	"engine"
	.align 8
.LC11:
	.string	"Use engine, possibly a hardware device"
.LC12:
	.string	"genkey"
.LC13:
	.string	"Generate ec key"
.LC14:
	.string	"in"
.LC15:
	.string	"Input file  - default stdin"
.LC16:
	.string	"inform"
	.align 8
.LC17:
	.string	"Input format - default PEM (DER or PEM)"
.LC18:
	.string	"out"
.LC19:
	.string	"Output file - default stdout"
.LC20:
	.string	"outform"
.LC21:
	.string	"Output format - default PEM"
.LC22:
	.string	"Output options:\n"
.LC23:
	.string	"text"
	.align 8
.LC24:
	.string	"Print the ec parameters in text form"
.LC25:
	.string	"noout"
.LC26:
	.string	"Do not print the ec parameter"
.LC27:
	.string	"param_enc"
	.align 8
.LC28:
	.string	"Specifies the way the ec parameters are encoded"
.LC29:
	.string	"Parameter options:\n"
.LC30:
	.string	"check"
.LC31:
	.string	"Validate the ec parameters"
.LC32:
	.string	"check_named"
	.align 8
.LC33:
	.string	"Check that named EC curve parameters have not been modified"
.LC34:
	.string	"no_seed"
	.align 8
.LC35:
	.string	"If 'explicit' parameters are chosen do not use the seed"
.LC36:
	.string	"name"
	.align 8
.LC37:
	.string	"Use the ec parameters with specified 'short name'"
.LC38:
	.string	"conv_form"
	.align 8
.LC39:
	.string	"Specifies the point conversion form "
.LC40:
	.string	"Random state options:\n"
.LC41:
	.string	"rand"
	.align 8
.LC42:
	.string	"Load the given file(s) into the random number generator"
.LC43:
	.string	"writerand"
	.align 8
.LC44:
	.string	"Write random data to the specified file"
.LC45:
	.string	"Provider options:\n"
.LC46:
	.string	"provider-path"
	.align 8
.LC47:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC48:
	.string	"provider"
	.align 8
.LC49:
	.string	"Provider to load (can be specified multiple times)"
.LC50:
	.string	"propquery"
	.align 8
.LC51:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ecparam_options, @object
	.size	ecparam_options, 648
ecparam_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	1
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	8
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	15
	.long	115
	.quad	.LC11
	.quad	.LC12
	.long	14
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	4
	.long	60
	.quad	.LC15
	.quad	.LC16
	.long	2
	.long	70
	.quad	.LC17
	.quad	.LC18
	.long	5
	.long	62
	.quad	.LC19
	.quad	.LC20
	.long	3
	.long	70
	.quad	.LC21
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	6
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	10
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	13
	.long	115
	.quad	.LC28
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	7
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	16
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	9
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	11
	.long	115
	.quad	.LC37
	.quad	.LC38
	.long	12
	.long	115
	.quad	.LC39
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	1501
	.long	115
	.quad	.LC42
	.quad	.LC43
	.long	1502
	.long	62
	.quad	.LC44
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	1602
	.long	115
	.quad	.LC47
	.quad	.LC48
	.long	1601
	.long	115
	.quad	.LC49
	.quad	.LC50
	.long	1603
	.long	115
	.quad	.LC51
	.quad	0
	.zero	16
	.section	.rodata
.LC52:
	.string	"list curves"
	.align 8
.LC53:
	.string	"CURVE DESCRIPTION NOT AVAILABLE"
.LC54:
	.string	""
.LC55:
	.string	"  %-10s: "
.LC56:
	.string	"%s\n"
.LC57:
	.string	"../apps/ecparam.c"
	.text
	.type	list_builtin_curves, @function
list_builtin_curves:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, %esi
	movl	$0, %edi
	call	EC_get_builtin_curves@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	salq	$4, %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_get_builtin_curves@PLT
	testq	%rax, %rax
	je	.L13
	movq	$0, -16(%rbp)
	jmp	.L8
.L11:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L9
	leaq	.LC53(%rip), %rax
	movq	%rax, -24(%rbp)
.L9:
	cmpq	$0, -32(%rbp)
	jne	.L10
	leaq	.LC54(%rip), %rax
	movq	%rax, -32(%rbp)
.L10:
	movq	-32(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rdx
	leaq	.LC56(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L11
	movl	$1, -4(%rbp)
	jmp	.L7
.L13:
	nop
.L7:
	leaq	.LC57(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$92, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	list_builtin_curves, .-list_builtin_curves
	.section	.rodata
.LC58:
	.string	"%s: Use -help for summary.\n"
.LC59:
	.string	"secp192r1"
	.align 8
.LC60:
	.string	"using curve name prime192v1 instead of secp192r1\n"
.LC61:
	.string	"prime192v1"
.LC62:
	.string	"secp256r1"
	.align 8
.LC63:
	.string	"using curve name prime256v1 instead of secp256r1\n"
.LC64:
	.string	"prime256v1"
.LC65:
	.string	"group"
.LC66:
	.string	"encoding"
.LC67:
	.string	"point-format"
.LC68:
	.string	"SM2"
.LC69:
	.string	"sm2"
.LC70:
	.string	"ec"
.LC71:
	.string	"unable to generate key\n"
.LC72:
	.string	"EC parameters"
.LC73:
	.string	"EC"
.LC74:
	.string	"SM2 parameters"
	.align 8
.LC75:
	.string	"Unable to load parameters from %s\n"
	.align 8
.LC76:
	.string	"unable to set point conversion format\n"
	.align 8
.LC77:
	.string	"unable to set asn1 encoding format\n"
.LC78:
	.string	"seed"
.LC79:
	.string	"unable to clear seed\n"
.LC80:
	.string	"unable to print params\n"
	.align 8
.LC81:
	.string	"checking elliptic curve parameters: "
.LC82:
	.string	"named"
.LC83:
	.string	"group-check"
.LC84:
	.string	"unable to set check_type\n"
.LC85:
	.string	"failed\n"
.LC86:
	.string	"ok\n"
.LC87:
	.string	"DER"
.LC88:
	.string	"PEM"
	.align 8
.LC89:
	.string	"unable to write elliptic curve parameters\n"
	.text
	.globl	ecparam_main
	.type	ecparam_main, @function
ecparam_main:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$416, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -372(%rbp)
	movq	%rsi, -384(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$32773, -204(%rbp)
	movl	$32773, -208(%rbp)
	movl	$0, -116(%rbp)
	movl	$1, -120(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movq	ecparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx
	movl	-372(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -176(%rbp)
	jmp	.L15
.L45:
	cmpl	$1604, -180(%rbp)
	je	.L15
	cmpl	$1604, -180(%rbp)
	jg	.L15
	cmpl	$1603, -180(%rbp)
	jg	.L15
	cmpl	$1601, -180(%rbp)
	jge	.L17
	cmpl	$1600, -180(%rbp)
	je	.L15
	cmpl	$1600, -180(%rbp)
	jg	.L15
	cmpl	$1503, -180(%rbp)
	je	.L15
	cmpl	$1503, -180(%rbp)
	jg	.L15
	cmpl	$1502, -180(%rbp)
	jg	.L15
	cmpl	$1501, -180(%rbp)
	jge	.L19
	cmpl	$1500, -180(%rbp)
	je	.L15
	cmpl	$1500, -180(%rbp)
	jg	.L15
	cmpl	$16, -180(%rbp)
	je	.L20
	cmpl	$16, -180(%rbp)
	jg	.L15
	cmpl	$15, -180(%rbp)
	je	.L21
	cmpl	$15, -180(%rbp)
	jg	.L15
	cmpl	$14, -180(%rbp)
	je	.L22
	cmpl	$14, -180(%rbp)
	jg	.L15
	cmpl	$13, -180(%rbp)
	je	.L23
	cmpl	$13, -180(%rbp)
	jg	.L15
	cmpl	$12, -180(%rbp)
	je	.L24
	cmpl	$12, -180(%rbp)
	jg	.L15
	cmpl	$11, -180(%rbp)
	je	.L25
	cmpl	$11, -180(%rbp)
	jg	.L15
	cmpl	$10, -180(%rbp)
	je	.L26
	cmpl	$10, -180(%rbp)
	jg	.L15
	cmpl	$9, -180(%rbp)
	je	.L27
	cmpl	$9, -180(%rbp)
	jg	.L15
	cmpl	$8, -180(%rbp)
	je	.L28
	cmpl	$8, -180(%rbp)
	jg	.L15
	cmpl	$7, -180(%rbp)
	je	.L29
	cmpl	$7, -180(%rbp)
	jg	.L15
	cmpl	$6, -180(%rbp)
	je	.L30
	cmpl	$6, -180(%rbp)
	jg	.L15
	cmpl	$5, -180(%rbp)
	je	.L31
	cmpl	$5, -180(%rbp)
	jg	.L15
	cmpl	$4, -180(%rbp)
	je	.L32
	cmpl	$4, -180(%rbp)
	jg	.L15
	cmpl	$3, -180(%rbp)
	je	.L33
	cmpl	$3, -180(%rbp)
	jg	.L15
	cmpl	$2, -180(%rbp)
	je	.L34
	cmpl	$2, -180(%rbp)
	jg	.L15
	cmpl	$0, -180(%rbp)
	jg	.L35
	cmpl	$-1, -180(%rbp)
	jge	.L36
	jmp	.L15
.L35:
	cmpl	$1, -180(%rbp)
	je	.L37
	jmp	.L15
.L82:
	nop
	jmp	.L36
.L83:
	nop
	jmp	.L36
.L84:
	nop
	jmp	.L36
.L85:
	nop
	jmp	.L36
.L88:
	nop
.L36:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L37:
	movq	ecparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -120(%rbp)
	jmp	.L38
.L34:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-204(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L82
	jmp	.L15
.L32:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L15
.L33:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L83
	jmp	.L15
.L31:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L15
.L30:
	movl	$1, -136(%rbp)
	jmp	.L15
.L29:
	movl	$1, -128(%rbp)
	jmp	.L15
.L20:
	movl	$1, -132(%rbp)
	jmp	.L15
.L28:
	movl	$1, -144(%rbp)
	jmp	.L15
.L27:
	movl	$1, -124(%rbp)
	jmp	.L15
.L26:
	movl	$1, -116(%rbp)
	jmp	.L15
.L25:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L15
.L24:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	leaq	point_format_options(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_string@PLT
	testl	%eax, %eax
	je	.L84
	jmp	.L15
.L23:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	leaq	asn1_encoding_options(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_string@PLT
	testl	%eax, %eax
	je	.L85
	jmp	.L15
.L22:
	movl	$1, -140(%rbp)
	jmp	.L15
.L19:
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L86
	jmp	.L15
.L17:
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L87
	jmp	.L15
.L21:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -64(%rbp)
	nop
.L15:
	call	opt_next@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L45
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L88
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L89
	cmpl	$0, -140(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -164(%rbp)
	movl	-208(%rbp), %ecx
	movl	-164(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L90
	cmpl	$0, -144(%rbp)
	je	.L49
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	list_builtin_curves
	testl	%eax, %eax
	je	.L91
	movl	$0, -120(%rbp)
	jmp	.L91
.L49:
	cmpq	$0, -80(%rbp)
	je	.L51
	leaq	-368(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC59(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC60(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC61(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L53
.L52:
	leaq	.LC62(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L53
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC64(%rip), %rax
	movq	%rax, -80(%rbp)
.L53:
	movq	-152(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -152(%rbp)
	leaq	-432(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC65(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -88(%rbp)
	je	.L54
	movq	-152(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -152(%rbp)
	leaq	-432(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC66(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
.L54:
	cmpq	$0, -96(%rbp)
	je	.L55
	movq	-152(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -152(%rbp)
	leaq	-432(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	.LC67(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
.L55:
	movq	-152(%rbp), %rbx
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC68(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L56
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	.LC69(%rip), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	jmp	.L57
.L56:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	.LC70(%rip), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
.L57:
	cmpq	$0, -24(%rbp)
	je	.L58
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L58
	leaq	-368(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L58
	leaq	-192(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L60
.L58:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L51:
	movl	-204(%rbp), %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	movq	-104(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_keyparams_suppress@PLT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	jne	.L61
	movl	-204(%rbp), %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	movq	-104(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_keyparams_suppress@PLT
	movq	%rax, -192(%rbp)
.L61:
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	jne	.L62
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC75(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L62:
	cmpq	$0, -96(%rbp)
	je	.L63
	movq	-192(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	.LC67(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L63
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC76(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L63:
	cmpq	$0, -88(%rbp)
	je	.L60
	movq	-192(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC66(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L60
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC77(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L60:
	cmpl	$0, -124(%rbp)
	je	.L64
	movq	-192(%rbp), %rax
	leaq	.LC78(%rip), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_set_octet_string_param@PLT
	testl	%eax, %eax
	jne	.L64
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L64:
	cmpl	$0, -136(%rbp)
	je	.L65
	movq	-192(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
	testl	%eax, %eax
	jne	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L65:
	cmpl	$0, -128(%rbp)
	jne	.L66
	cmpl	$0, -132(%rbp)
	je	.L67
.L66:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -132(%rbp)
	je	.L68
	movq	-192(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC83(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L68
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L68:
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-192(%rbp), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L69
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	testl	%eax, %eax
	jg	.L70
.L69:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L70:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC86(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L67:
	movl	-208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L71
	cmpl	$0, -140(%rbp)
	je	.L71
	movl	$1, -116(%rbp)
.L71:
	cmpl	$0, -116(%rbp)
	jne	.L72
	movl	-208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L73
	leaq	.LC87(%rip), %rax
	jmp	.L74
.L73:
	leaq	.LC88(%rip), %rax
.L74:
	movq	-192(%rbp), %rdi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$4, %esi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	jne	.L72
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L72:
	cmpl	$0, -140(%rbp)
	je	.L75
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-192(%rbp), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L76
	leaq	-200(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L77
.L76:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L77:
	movl	-208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L78
	leaq	.LC87(%rip), %rax
	jmp	.L79
.L78:
	leaq	.LC88(%rip), %rax
.L79:
	movq	-200(%rbp), %rdi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$135, %esi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	jne	.L75
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L75:
	movl	$0, -120(%rbp)
	jmp	.L38
.L86:
	nop
	jmp	.L38
.L87:
	nop
	jmp	.L38
.L89:
	nop
	jmp	.L38
.L90:
	nop
	jmp	.L38
.L91:
	nop
.L38:
	cmpl	$0, -120(%rbp)
	je	.L80
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L80:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-120(%rbp), %eax
	addq	$416, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	ecparam_main, .-ecparam_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"dhparam.c"
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
	.data
	.align 4
	.type	verbose, @object
	.size	verbose, 4
verbose:
	.long	1
	.globl	dhparam_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [numbits]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"check"
.LC5:
	.string	"Check the DH parameters"
.LC6:
	.string	"dsaparam"
	.align 8
.LC7:
	.string	"Read or generate DSA parameters, convert to DH"
.LC8:
	.string	"engine"
	.align 8
.LC9:
	.string	"Use engine e, possibly a hardware device"
.LC10:
	.string	"Input options:\n"
.LC11:
	.string	"in"
.LC12:
	.string	"Input file"
.LC13:
	.string	"inform"
.LC14:
	.string	"Input format, DER or PEM"
.LC15:
	.string	"Output options:\n"
.LC16:
	.string	"out"
.LC17:
	.string	"Output file"
.LC18:
	.string	"outform"
.LC19:
	.string	"Output format, DER or PEM"
.LC20:
	.string	"text"
	.align 8
.LC21:
	.string	"Print a text form of the DH parameters"
.LC22:
	.string	"noout"
	.align 8
.LC23:
	.string	"Don't output any DH parameters"
.LC24:
	.string	"2"
	.align 8
.LC25:
	.string	"Generate parameters using 2 as the generator value"
.LC26:
	.string	"3"
	.align 8
.LC27:
	.string	"Generate parameters using 3 as the generator value"
.LC28:
	.string	"5"
	.align 8
.LC29:
	.string	"Generate parameters using 5 as the generator value"
.LC30:
	.string	"verbose"
.LC31:
	.string	"Verbose output"
.LC32:
	.string	"quiet"
.LC33:
	.string	"Terse output"
.LC34:
	.string	"Random state options:\n"
.LC35:
	.string	"rand"
	.align 8
.LC36:
	.string	"Load the given file(s) into the random number generator"
.LC37:
	.string	"writerand"
	.align 8
.LC38:
	.string	"Write random data to the specified file"
.LC39:
	.string	"Provider options:\n"
.LC40:
	.string	"provider-path"
	.align 8
.LC41:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC42:
	.string	"provider"
	.align 8
.LC43:
	.string	"Provider to load (can be specified multiple times)"
.LC44:
	.string	"propquery"
	.align 8
.LC45:
	.string	"Property query used when fetching algorithms"
.LC46:
	.string	"Parameters:\n"
.LC47:
	.string	"numbits"
	.align 8
.LC48:
	.string	"Number of bits if generating parameters (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dhparam_options, @object
	.size	dhparam_options, 696
dhparam_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC1
	.quad	.LC2
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	7
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	10
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
	.long	4
	.long	60
	.quad	.LC12
	.quad	.LC13
	.long	2
	.long	70
	.quad	.LC14
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	5
	.long	62
	.quad	.LC17
	.quad	.LC18
	.long	3
	.long	70
	.quad	.LC19
	.quad	.LC20
	.long	8
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	9
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	11
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	12
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	13
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	14
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	15
	.long	45
	.quad	.LC33
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	1501
	.long	115
	.quad	.LC36
	.quad	.LC37
	.long	1502
	.long	62
	.quad	.LC38
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	1602
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	1601
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	1603
	.long	115
	.quad	.LC45
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	0
	.long	0
	.quad	.LC48
	.quad	0
	.zero	16
	.section	.rodata
.LC49:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC50:
	.string	"Error, generator may not be chosen for DSA parameters\n"
.LC51:
	.string	"DSA"
.LC52:
	.string	"DH"
	.align 8
.LC53:
	.string	"Warning, input file %s ignored\n"
	.align 8
.LC54:
	.string	"Error, %s param generation context allocation failed\n"
.LC55:
	.string	""
.LC56:
	.string	"safe "
	.align 8
.LC57:
	.string	"Generating %s parameters, %d bit long %sprime\n"
	.align 8
.LC58:
	.string	"Error, unable to initialise %s parameters\n"
	.align 8
.LC59:
	.string	"Error, unable to set DSA prime length\n"
	.align 8
.LC60:
	.string	"Error, unable to set DH prime length\n"
	.align 8
.LC61:
	.string	"Error, unable to set generator\n"
.LC62:
	.string	"DER"
.LC63:
	.string	"PEM"
.LC64:
	.string	"DHX"
	.align 8
.LC65:
	.string	"Error, unable to load parameters\n"
	.align 8
.LC66:
	.string	"Error, unable to load DSA parameters\n"
	.align 8
.LC67:
	.string	"Error, unable to load DH parameters\n"
	.align 8
.LC68:
	.string	"Error, failed to check DH parameters\n"
	.align 8
.LC69:
	.string	"Error, invalid parameters generated\n"
	.align 8
.LC70:
	.string	"DH parameters appear to be ok.\n"
	.align 8
.LC71:
	.string	"Error, unable to write DH parameters\n"
	.text
	.globl	dhparam_main
	.type	dhparam_main, @function
dhparam_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$1, -84(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -88(%rbp)
	movl	$32773, -168(%rbp)
	movl	$32773, -172(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	dhparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx
	movl	-180(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -128(%rbp)
	jmp	.L6
.L33:
	cmpl	$1604, -132(%rbp)
	je	.L6
	cmpl	$1604, -132(%rbp)
	jg	.L6
	cmpl	$1603, -132(%rbp)
	jg	.L6
	cmpl	$1601, -132(%rbp)
	jge	.L8
	cmpl	$1600, -132(%rbp)
	je	.L6
	cmpl	$1600, -132(%rbp)
	jg	.L6
	cmpl	$1503, -132(%rbp)
	je	.L6
	cmpl	$1503, -132(%rbp)
	jg	.L6
	cmpl	$1502, -132(%rbp)
	jg	.L6
	cmpl	$1501, -132(%rbp)
	jge	.L10
	cmpl	$1500, -132(%rbp)
	je	.L6
	cmpl	$1500, -132(%rbp)
	jg	.L6
	cmpl	$15, -132(%rbp)
	je	.L11
	cmpl	$15, -132(%rbp)
	jg	.L6
	cmpl	$14, -132(%rbp)
	je	.L12
	cmpl	$14, -132(%rbp)
	jg	.L6
	cmpl	$13, -132(%rbp)
	je	.L13
	cmpl	$13, -132(%rbp)
	jg	.L6
	cmpl	$12, -132(%rbp)
	je	.L14
	cmpl	$12, -132(%rbp)
	jg	.L6
	cmpl	$11, -132(%rbp)
	je	.L15
	cmpl	$11, -132(%rbp)
	jg	.L6
	cmpl	$10, -132(%rbp)
	je	.L16
	cmpl	$10, -132(%rbp)
	jg	.L6
	cmpl	$9, -132(%rbp)
	je	.L17
	cmpl	$9, -132(%rbp)
	jg	.L6
	cmpl	$8, -132(%rbp)
	je	.L18
	cmpl	$8, -132(%rbp)
	jg	.L6
	cmpl	$7, -132(%rbp)
	je	.L19
	cmpl	$7, -132(%rbp)
	jg	.L6
	cmpl	$6, -132(%rbp)
	je	.L20
	cmpl	$6, -132(%rbp)
	jg	.L6
	cmpl	$5, -132(%rbp)
	je	.L21
	cmpl	$5, -132(%rbp)
	jg	.L6
	cmpl	$4, -132(%rbp)
	je	.L22
	cmpl	$4, -132(%rbp)
	jg	.L6
	cmpl	$3, -132(%rbp)
	je	.L23
	cmpl	$3, -132(%rbp)
	jg	.L6
	cmpl	$2, -132(%rbp)
	je	.L24
	cmpl	$2, -132(%rbp)
	jg	.L6
	cmpl	$0, -132(%rbp)
	jg	.L25
	cmpl	$-1, -132(%rbp)
	jge	.L26
	jmp	.L6
.L25:
	cmpl	$1, -132(%rbp)
	je	.L27
	jmp	.L6
.L80:
	nop
	jmp	.L26
.L81:
	nop
	jmp	.L26
.L84:
	nop
	jmp	.L26
.L85:
	nop
.L26:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L27:
	movq	dhparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -84(%rbp)
	jmp	.L28
.L24:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-168(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L80
	jmp	.L6
.L23:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-172(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L81
	jmp	.L6
.L22:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L21:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L20:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L19:
	movl	$1, -92(%rbp)
	jmp	.L6
.L18:
	movl	$1, -80(%rbp)
	jmp	.L6
.L16:
	movl	$1, -76(%rbp)
	jmp	.L6
.L15:
	movl	$2, -88(%rbp)
	jmp	.L6
.L14:
	movl	$3, -88(%rbp)
	jmp	.L6
.L13:
	movl	$5, -88(%rbp)
	jmp	.L6
.L17:
	movl	$1, -96(%rbp)
	jmp	.L6
.L12:
	movl	$1, verbose(%rip)
	jmp	.L6
.L11:
	movl	$0, verbose(%rip)
	jmp	.L6
.L10:
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L82
	jmp	.L6
.L8:
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L83
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jne	.L33
	call	opt_num_rest@PLT
	movl	%eax, -180(%rbp)
	call	opt_rest@PLT
	movq	%rax, -192(%rbp)
	cmpl	$1, -180(%rbp)
	jne	.L34
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	leaq	-164(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L84
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	jg	.L36
	jmp	.L84
.L34:
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L85
.L36:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L86
	cmpl	$0, -88(%rbp)
	je	.L38
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	jne	.L38
	movl	$2048, -164(%rbp)
.L38:
	cmpl	$0, -76(%rbp)
	je	.L39
	cmpl	$0, -88(%rbp)
	je	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L39:
	movl	-172(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L87
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	je	.L41
	cmpl	$0, -88(%rbp)
	jne	.L41
	movl	$2, -88(%rbp)
.L41:
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	je	.L42
	cmpl	$0, -76(%rbp)
	je	.L43
	leaq	.LC51(%rip), %rax
	movq	%rax, -104(%rbp)
	jmp	.L44
.L43:
	leaq	.LC52(%rip), %rax
	movq	%rax, -104(%rbp)
.L44:
	cmpq	$0, -56(%rbp)
	je	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC53(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L45:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L46
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L46:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_app_data@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L47
	movq	progress_cb@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_cb@PLT
	cmpl	$0, -76(%rbp)
	je	.L48
	leaq	.LC55(%rip), %rax
	jmp	.L49
.L48:
	leaq	.LC56(%rip), %rax
.L49:
	movl	-164(%rbp), %ecx
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-104(%rbp), %rdx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %r8
	movl	$0, %eax
	call	BIO_printf@PLT
.L47:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jg	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L50:
	cmpl	$0, -76(%rbp)
	je	.L51
	movl	-164(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_bits@PLT
	testl	%eax, %eax
	jg	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L51:
	movl	-164(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_paramgen_prime_len@PLT
	testl	%eax, %eax
	jg	.L53
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC60(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L53:
	movl	-88(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_paramgen_generator@PLT
	testl	%eax, %eax
	jg	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L52:
	movq	-104(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_paramgen@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L88
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -48(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L55
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_to_dh
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L89
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L57
.L55:
	movq	-160(%rbp), %rax
	movq	%rax, -40(%rbp)
.L57:
	movq	$0, -160(%rbp)
	jmp	.L58
.L42:
	movq	$0, -144(%rbp)
	leaq	.LC52(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	-168(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L90
.L59:
	movl	$1, -116(%rbp)
	movl	-168(%rbp), %eax
	cmpl	$4, %eax
	jne	.L60
	movq	-112(%rbp), %rdx
	jmp	.L61
.L60:
	movl	$0, %edx
.L61:
	movl	-168(%rbp), %eax
	cmpl	$4, %eax
	jne	.L62
	leaq	.LC62(%rip), %rax
	jmp	.L63
.L62:
	leaq	.LC63(%rip), %rax
.L63:
	leaq	-160(%rbp), %rdi
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L64
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	testl	%eax, %eax
	jne	.L64
	movl	-168(%rbp), %eax
	cmpl	$4, %eax
	jne	.L64
	leaq	.LC52(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L64
	leaq	.LC64(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, -116(%rbp)
.L64:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	cmpl	$0, -116(%rbp)
	je	.L59
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L65:
	cmpl	$0, -76(%rbp)
	je	.L66
	movq	-160(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L67
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L67:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_to_dh
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L58
	jmp	.L28
.L66:
	movq	-160(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L68
	movq	-160(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L68
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L68:
	movq	-160(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -160(%rbp)
.L58:
	cmpl	$0, -80(%rbp)
	je	.L69
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
.L69:
	cmpl	$0, -92(%rbp)
	je	.L70
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L71
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L71:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	testl	%eax, %eax
	jg	.L72
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC69(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L72:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L70:
	cmpl	$0, -96(%rbp)
	jne	.L73
	movl	-172(%rbp), %eax
	cmpl	$4, %eax
	jne	.L74
	leaq	.LC62(%rip), %rax
	jmp	.L75
.L74:
	leaq	.LC63(%rip), %rax
.L75:
	movq	-40(%rbp), %rdi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$4, %esi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L76
	movq	-32(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	jne	.L77
.L76:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L77:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
.L73:
	movl	$0, -84(%rbp)
	jmp	.L28
.L82:
	nop
	jmp	.L28
.L83:
	nop
	jmp	.L28
.L86:
	nop
	jmp	.L28
.L87:
	nop
	jmp	.L28
.L88:
	nop
	jmp	.L28
.L89:
	nop
	jmp	.L28
.L90:
	nop
.L28:
	cmpl	$0, -84(%rbp)
	je	.L78
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L78:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	dhparam_main, .-dhparam_main
	.section	.rodata
.LC72:
	.string	"p"
.LC73:
	.string	"q"
.LC74:
	.string	"g"
	.align 8
.LC75:
	.string	"Error, failed to set DH parameters\n"
	.text
	.type	dsa_to_dh, @function
dsa_to_dh:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -72(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	.LC72(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L92
	leaq	-56(%rbp), %rdx
	leaq	.LC73(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L92
	leaq	-64(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	jne	.L93
.L92:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L94
.L93:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L95
	movq	-48(%rbp), %rdx
	leaq	.LC72(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L95
	movq	-56(%rbp), %rdx
	leaq	.LC73(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L95
	movq	-64(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L95
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L96
.L95:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L94
.L96:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	.LC64(%rip), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L97
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jle	.L97
	movq	-32(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jg	.L99
.L97:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L94
.L99:
	nop
.L94:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	dsa_to_dh, .-dsa_to_dh
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

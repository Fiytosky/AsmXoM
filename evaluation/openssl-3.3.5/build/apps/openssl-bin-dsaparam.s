	.file	"dsaparam.c"
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
	.local	verbose
	.comm	verbose,4,4
	.globl	dsaparam_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [numbits] [numqbits]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"engine"
	.align 8
.LC5:
	.string	"Use engine e, possibly a hardware device"
.LC6:
	.string	"Input options:\n"
.LC7:
	.string	"in"
.LC8:
	.string	"Input file"
.LC9:
	.string	"inform"
.LC10:
	.string	"Input format - DER or PEM"
.LC11:
	.string	"Output options:\n"
.LC12:
	.string	"out"
.LC13:
	.string	"Output file"
.LC14:
	.string	"outform"
.LC15:
	.string	"Output format - DER or PEM"
.LC16:
	.string	"text"
.LC17:
	.string	"Print as text"
.LC18:
	.string	"noout"
.LC19:
	.string	"No output"
.LC20:
	.string	"verbose"
.LC21:
	.string	"Verbose output"
.LC22:
	.string	"quiet"
.LC23:
	.string	"Terse output"
.LC24:
	.string	"genkey"
.LC25:
	.string	"Generate a DSA key"
.LC26:
	.string	"Random state options:\n"
.LC27:
	.string	"rand"
	.align 8
.LC28:
	.string	"Load the given file(s) into the random number generator"
.LC29:
	.string	"writerand"
	.align 8
.LC30:
	.string	"Write random data to the specified file"
.LC31:
	.string	"Provider options:\n"
.LC32:
	.string	"provider-path"
	.align 8
.LC33:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC34:
	.string	"provider"
	.align 8
.LC35:
	.string	"Provider to load (can be specified multiple times)"
.LC36:
	.string	"propquery"
	.align 8
.LC37:
	.string	"Property query used when fetching algorithms"
.LC38:
	.string	"Parameters:\n"
.LC39:
	.string	"numbits"
	.align 8
.LC40:
	.string	"Number of bits if generating parameters or key (optional)"
.LC41:
	.string	"numqbits"
	.align 8
.LC42:
	.string	"Number of bits in the subprime parameter q if generating parameters or key (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dsaparam_options, @object
	.size	dsaparam_options, 624
dsaparam_options:
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
	.long	9
	.long	115
	.quad	.LC5
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	4
	.long	60
	.quad	.LC8
	.quad	.LC9
	.long	2
	.long	70
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	5
	.long	62
	.quad	.LC13
	.quad	.LC14
	.long	3
	.long	70
	.quad	.LC15
	.quad	.LC16
	.long	6
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	7
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	10
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	11
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	8
	.long	45
	.quad	.LC25
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	1501
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	1502
	.long	62
	.quad	.LC30
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	1602
	.long	115
	.quad	.LC33
	.quad	.LC34
	.long	1601
	.long	115
	.quad	.LC35
	.quad	.LC36
	.long	1603
	.long	115
	.quad	.LC37
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	0
	.long	0
	.quad	.LC40
	.quad	.LC41
	.long	0
	.long	0
	.quad	.LC42
	.quad	0
	.zero	16
	.section	.rodata
.LC43:
	.string	"%s: Use -help for summary.\n"
.LC44:
	.string	"DSA"
	.align 8
.LC45:
	.string	"Error, DSA parameter generation context allocation failed\n"
	.align 8
.LC46:
	.string	"Warning: It is not recommended to use more than %d bit for DSA keys.\n         Your key size is %d! Larger key size may behave not as expected.\n"
	.align 8
.LC47:
	.string	"Generating DSA parameters, %d bit long prime\n"
.LC48:
	.string	"This could take some time\n"
	.align 8
.LC49:
	.string	"Error, DSA key generation paramgen init failed\n"
	.align 8
.LC50:
	.string	"Error, DSA key generation setting bit length failed\n"
	.align 8
.LC51:
	.string	"Error, DSA key generation setting subprime bit length failed\n"
.LC52:
	.string	"DSA parameters"
	.align 8
.LC53:
	.string	"Error, unable to write DSA parameters\n"
	.align 8
.LC54:
	.string	"Error, DSA key generation context allocation failed\n"
	.align 8
.LC55:
	.string	"Error, unable to initialise for key generation\n"
	.text
	.globl	dsaparam_main
	.type	dsaparam_main, @function
dsaparam_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$-1, -100(%rbp)
	movl	$-1, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -128(%rbp)
	movl	$32773, -132(%rbp)
	movl	$0, -64(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -104(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	dsaparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx
	movl	-148(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -112(%rbp)
	jmp	.L6
.L29:
	cmpl	$1604, -116(%rbp)
	je	.L6
	cmpl	$1604, -116(%rbp)
	jg	.L6
	cmpl	$1603, -116(%rbp)
	jg	.L6
	cmpl	$1601, -116(%rbp)
	jge	.L8
	cmpl	$1600, -116(%rbp)
	je	.L6
	cmpl	$1600, -116(%rbp)
	jg	.L6
	cmpl	$1503, -116(%rbp)
	je	.L6
	cmpl	$1503, -116(%rbp)
	jg	.L6
	cmpl	$1502, -116(%rbp)
	jg	.L6
	cmpl	$1501, -116(%rbp)
	jge	.L10
	cmpl	$1500, -116(%rbp)
	je	.L6
	cmpl	$1500, -116(%rbp)
	jg	.L6
	cmpl	$11, -116(%rbp)
	je	.L11
	cmpl	$11, -116(%rbp)
	jg	.L6
	cmpl	$10, -116(%rbp)
	je	.L12
	cmpl	$10, -116(%rbp)
	jg	.L6
	cmpl	$9, -116(%rbp)
	je	.L13
	cmpl	$9, -116(%rbp)
	jg	.L6
	cmpl	$8, -116(%rbp)
	je	.L14
	cmpl	$8, -116(%rbp)
	jg	.L6
	cmpl	$7, -116(%rbp)
	je	.L15
	cmpl	$7, -116(%rbp)
	jg	.L6
	cmpl	$6, -116(%rbp)
	je	.L16
	cmpl	$6, -116(%rbp)
	jg	.L6
	cmpl	$5, -116(%rbp)
	je	.L17
	cmpl	$5, -116(%rbp)
	jg	.L6
	cmpl	$4, -116(%rbp)
	je	.L18
	cmpl	$4, -116(%rbp)
	jg	.L6
	cmpl	$3, -116(%rbp)
	je	.L19
	cmpl	$3, -116(%rbp)
	jg	.L6
	cmpl	$2, -116(%rbp)
	je	.L20
	cmpl	$2, -116(%rbp)
	jg	.L6
	cmpl	$0, -116(%rbp)
	jg	.L21
	cmpl	$-1, -116(%rbp)
	jge	.L22
	jmp	.L6
.L21:
	cmpl	$1, -116(%rbp)
	je	.L23
	jmp	.L6
.L60:
	nop
	jmp	.L22
.L61:
	nop
	jmp	.L22
.L64:
	nop
	jmp	.L22
.L65:
	nop
	jmp	.L22
.L66:
	nop
	jmp	.L22
.L67:
	nop
.L22:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L23:
	movq	dsaparam_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -68(%rbp)
	jmp	.L24
.L20:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L60
	jmp	.L6
.L18:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L6
.L19:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L61
	jmp	.L6
.L17:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L16:
	movl	$1, -76(%rbp)
	jmp	.L6
.L14:
	movl	$1, -60(%rbp)
	jmp	.L6
.L10:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L62
	jmp	.L6
.L8:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L63
	jmp	.L6
.L15:
	movl	$1, -64(%rbp)
	jmp	.L6
.L12:
	movl	$1, verbose(%rip)
	jmp	.L6
.L11:
	movl	$0, verbose(%rip)
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L29
	call	opt_num_rest@PLT
	movl	%eax, -148(%rbp)
	call	opt_rest@PLT
	movq	%rax, -160(%rbp)
	cmpl	$2, -148(%rbp)
	jne	.L30
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	leaq	-124(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L64
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	js	.L64
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L65
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	jns	.L34
	jmp	.L65
.L30:
	cmpl	$1, -148(%rbp)
	jne	.L35
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	leaq	-124(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L66
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	jns	.L34
	jmp	.L66
.L35:
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L67
.L34:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L68
	movl	-124(%rbp), %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -60(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -104(%rbp)
	movl	-132(%rbp), %ecx
	movl	-104(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L69
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L39:
	cmpl	$0, -100(%rbp)
	jle	.L40
	cmpl	$10000, -100(%rbp)
	jle	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	leaq	.LC46(%rip), %rsi
	movl	%edx, %ecx
	movl	$10000, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L41:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_app_data@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L42
	movq	progress_cb@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_cb@PLT
	movl	-124(%rbp), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L42:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jg	.L43
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L43:
	movl	-124(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_bits@PLT
	testl	%eax, %eax
	jg	.L44
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L44:
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	jle	.L45
	movl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_q_bits@PLT
	testl	%eax, %eax
	jg	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L45:
	leaq	.LC44(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_paramgen@PLT
	movq	%rax, -40(%rbp)
	jmp	.L46
.L40:
	movl	-128(%rbp), %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_keyparams@PLT
	movq	%rax, -40(%rbp)
.L46:
	cmpq	$0, -40(%rbp)
	je	.L70
	cmpl	$0, -76(%rbp)
	je	.L48
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
.L48:
	movl	-132(%rbp), %eax
	cmpl	$4, %eax
	jne	.L49
	cmpl	$0, -60(%rbp)
	je	.L49
	movl	$1, -64(%rbp)
.L49:
	cmpl	$0, -64(%rbp)
	jne	.L50
	movl	-132(%rbp), %eax
	cmpl	$4, %eax
	jne	.L51
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_KeyParams_bio@PLT
	movl	%eax, -72(%rbp)
	jmp	.L52
.L51:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_Parameters@PLT
	movl	%eax, -72(%rbp)
.L52:
	cmpl	$0, -72(%rbp)
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC53(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L50:
	cmpl	$0, -60(%rbp)
	je	.L53
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L54
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L54:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L55
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L24
.L55:
	movl	verbose(%rip), %ecx
	movl	-100(%rbp), %edx
	leaq	.LC44(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	app_keygen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L71
	movl	-132(%rbp), %eax
	cmpl	$4, %eax
	jne	.L57
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PrivateKey_bio@PLT
	movl	%eax, -72(%rbp)
	jmp	.L53
.L57:
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	movl	%eax, -72(%rbp)
.L53:
	movl	$0, -68(%rbp)
	jmp	.L24
.L62:
	nop
	jmp	.L24
.L63:
	nop
	jmp	.L24
.L68:
	nop
	jmp	.L24
.L69:
	nop
	jmp	.L24
.L70:
	nop
	jmp	.L24
.L71:
	nop
.L24:
	cmpl	$0, -68(%rbp)
	je	.L58
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L58:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	dsaparam_main, .-dsaparam_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

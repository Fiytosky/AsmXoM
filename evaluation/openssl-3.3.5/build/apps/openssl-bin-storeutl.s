	.file	"storeutl.c"
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
	.globl	storeutl_options
	.section	.rodata
.LC0:
	.string	"Usage: %s [options] uri\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	""
.LC5:
	.string	"Any supported digest"
.LC6:
	.string	"engine"
	.align 8
.LC7:
	.string	"Use engine, possibly a hardware device"
.LC8:
	.string	"Search options:\n"
.LC9:
	.string	"certs"
.LC10:
	.string	"Search for certificates only"
.LC11:
	.string	"keys"
.LC12:
	.string	"Search for keys only"
.LC13:
	.string	"crls"
.LC14:
	.string	"Search for CRLs only"
.LC15:
	.string	"subject"
.LC16:
	.string	"Search by subject"
.LC17:
	.string	"issuer"
	.align 8
.LC18:
	.string	"Search by issuer and serial, issuer name"
.LC19:
	.string	"serial"
	.align 8
.LC20:
	.string	"Search by issuer and serial, serial number"
.LC21:
	.string	"fingerprint"
	.align 8
.LC22:
	.string	"Search by public key fingerprint, given in hex"
.LC23:
	.string	"alias"
.LC24:
	.string	"Search by alias"
.LC25:
	.string	"r"
.LC26:
	.string	"Recurse through names"
.LC27:
	.string	"Input options:\n"
.LC28:
	.string	"passin"
.LC29:
	.string	"Input file pass phrase source"
.LC30:
	.string	"Output options:\n"
.LC31:
	.string	"out"
.LC32:
	.string	"Output file - default stdout"
.LC33:
	.string	"text"
	.align 8
.LC34:
	.string	"Print a text form of the objects"
.LC35:
	.string	"noout"
.LC36:
	.string	"No PEM output, just status"
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
.LC44:
	.string	"Parameters:\n"
.LC45:
	.string	"uri"
.LC46:
	.string	"URI of the store object"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	storeutl_options, @object
	.size	storeutl_options, 672
storeutl_options:
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
	.long	16
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	2
	.long	115
	.quad	.LC7
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	8
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	9
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	10
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	11
	.long	115
	.quad	.LC16
	.quad	.LC17
	.long	12
	.long	115
	.quad	.LC18
	.quad	.LC19
	.long	13
	.long	115
	.quad	.LC20
	.quad	.LC21
	.long	14
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	15
	.long	115
	.quad	.LC24
	.quad	.LC25
	.long	7
	.long	45
	.quad	.LC26
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	4
	.long	115
	.quad	.LC29
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	3
	.long	62
	.quad	.LC32
	.quad	.LC33
	.long	6
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	5
	.long	45
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
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	0
	.long	0
	.quad	.LC46
	.quad	0
	.zero	16
	.section	.rodata
.LC47:
	.string	"digest"
.LC48:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC49:
	.string	"%s: only one search type can be given.\n"
.LC50:
	.string	"../apps/storeutl.c"
	.align 8
.LC51:
	.string	"assertion failed: expected != 0"
.LC52:
	.string	"%s: criterion already given.\n"
.LC53:
	.string	"%s: subject already given.\n"
.LC54:
	.string	"%s: issuer already given.\n"
	.align 8
.LC55:
	.string	"%s: serial number already given.\n"
	.align 8
.LC56:
	.string	"%s: can't parse serial number argument.\n"
	.align 8
.LC57:
	.string	"%s: fingerprint already given.\n"
	.align 8
.LC58:
	.string	"%s: can't parse fingerprint argument.\n"
.LC59:
	.string	"%s: alias already given.\n"
	.align 8
.LC60:
	.string	"%s: can't parse alias argument.\n"
.LC61:
	.string	"URI"
	.align 8
.LC62:
	.string	"%s: both -issuer and -serial must be given.\n"
.LC63:
	.string	"Error getting passwords\n"
	.text
	.globl	storeutl_main
	.type	storeutl_main, @function
storeutl_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -184(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -136(%rbp)
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	storeutl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx
	movl	-196(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -144(%rbp)
	jmp	.L6
.L48:
	cmpl	$1604, -148(%rbp)
	je	.L6
	cmpl	$1604, -148(%rbp)
	jg	.L6
	cmpl	$1603, -148(%rbp)
	jg	.L6
	cmpl	$1601, -148(%rbp)
	jge	.L8
	cmpl	$1600, -148(%rbp)
	je	.L6
	cmpl	$1600, -148(%rbp)
	jg	.L6
	cmpl	$16, -148(%rbp)
	je	.L9
	cmpl	$16, -148(%rbp)
	jg	.L6
	cmpl	$15, -148(%rbp)
	je	.L10
	cmpl	$15, -148(%rbp)
	jg	.L6
	cmpl	$14, -148(%rbp)
	je	.L11
	cmpl	$14, -148(%rbp)
	jg	.L6
	cmpl	$13, -148(%rbp)
	je	.L12
	cmpl	$13, -148(%rbp)
	jg	.L6
	cmpl	$12, -148(%rbp)
	je	.L13
	cmpl	$12, -148(%rbp)
	jg	.L6
	cmpl	$11, -148(%rbp)
	je	.L14
	cmpl	$11, -148(%rbp)
	jg	.L6
	cmpl	$10, -148(%rbp)
	jg	.L6
	cmpl	$8, -148(%rbp)
	jge	.L15
	cmpl	$7, -148(%rbp)
	je	.L16
	cmpl	$7, -148(%rbp)
	jg	.L6
	cmpl	$6, -148(%rbp)
	je	.L17
	cmpl	$6, -148(%rbp)
	jg	.L6
	cmpl	$5, -148(%rbp)
	je	.L18
	cmpl	$5, -148(%rbp)
	jg	.L6
	cmpl	$4, -148(%rbp)
	je	.L19
	cmpl	$4, -148(%rbp)
	jg	.L6
	cmpl	$3, -148(%rbp)
	je	.L20
	cmpl	$3, -148(%rbp)
	jg	.L6
	cmpl	$2, -148(%rbp)
	je	.L21
	cmpl	$2, -148(%rbp)
	jg	.L6
	cmpl	$0, -148(%rbp)
	jg	.L22
	cmpl	$-1, -148(%rbp)
	jge	.L23
	jmp	.L6
.L22:
	cmpl	$1, -148(%rbp)
	je	.L24
	jmp	.L6
.L68:
	nop
	jmp	.L23
.L69:
	nop
.L23:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC48(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L24:
	movq	storeutl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -4(%rbp)
	jmp	.L25
.L20:
	call	opt_arg@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L19:
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L6
.L18:
	movl	$1, -8(%rbp)
	jmp	.L6
.L17:
	movl	$1, -12(%rbp)
	jmp	.L6
.L16:
	movl	$1, -16(%rbp)
	jmp	.L6
.L15:
	cmpl	$0, -52(%rbp)
	je	.L26
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L26:
	movq	$0, -128(%rbp)
	jmp	.L27
.L30:
	movq	-128(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	map.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -148(%rbp)
	jne	.L28
	movq	-128(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+map.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -52(%rbp)
	jmp	.L29
.L28:
	addq	$1, -128(%rbp)
.L27:
	cmpq	$2, -128(%rbp)
	jbe	.L30
.L29:
	cmpl	$0, -52(%rbp)
	jne	.L6
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rax
	movl	$147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L14:
	cmpl	$0, -56(%rbp)
	je	.L32
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L32:
	movl	$1, -56(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC53(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L33:
	call	opt_arg@PLT
	movq	%rax, %rdi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4096, %esi
	call	parse_name@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L65
	jmp	.L6
.L13:
	cmpl	$0, -56(%rbp)
	je	.L35
	cmpl	$2, -56(%rbp)
	je	.L35
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L35:
	movl	$2, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L36
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L36:
	call	opt_arg@PLT
	movq	%rax, %rdi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4096, %esi
	call	parse_name@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L66
	jmp	.L6
.L12:
	cmpl	$0, -56(%rbp)
	je	.L38
	cmpl	$2, -56(%rbp)
	je	.L38
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L38:
	movl	$2, -56(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L39:
	call	opt_arg@PLT
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L6
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC56(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L11:
	cmpl	$0, -56(%rbp)
	je	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L41:
	movl	$3, -56(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L42
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L42:
	movq	$0, -192(%rbp)
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L43
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L43:
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L6
.L10:
	cmpl	$0, -56(%rbp)
	je	.L44
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L44:
	movl	$4, -56(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L45:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rax
	movl	$239, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L6
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC60(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L21:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -48(%rbp)
	jmp	.L6
.L9:
	call	opt_unknown@PLT
	movq	%rax, -112(%rbp)
	jmp	.L6
.L8:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L67
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L48
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L68
	call	opt_rest@PLT
	movq	%rax, -208(%rbp)
	leaq	-184(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L69
	cmpl	$0, -56(%rbp)
	je	.L51
	cmpl	$4, -56(%rbp)
	je	.L52
	cmpl	$4, -56(%rbp)
	jg	.L51
	cmpl	$3, -56(%rbp)
	je	.L53
	cmpl	$3, -56(%rbp)
	jg	.L51
	cmpl	$1, -56(%rbp)
	je	.L54
	cmpl	$2, -56(%rbp)
	je	.L55
	jmp	.L51
.L54:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_name@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L70
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L55:
	cmpq	$0, -72(%rbp)
	je	.L57
	cmpq	$0, -80(%rbp)
	jne	.L58
.L57:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC62(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L58:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_issuer_serial@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L71
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L53:
	movq	-184(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_key_fingerprint@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L72
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L52:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_alias@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L73
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L70:
	nop
	jmp	.L51
.L71:
	nop
	jmp	.L51
.L72:
	nop
	jmp	.L51
.L73:
	nop
.L51:
	leaq	-160(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L62
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L62:
	movq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movl	$32769, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L74
	call	get_ui_method@PLT
	movq	%rax, %rdi
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %r9
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	leaq	-176(%rbp), %rdx
	subq	$8, %rsp
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-40(%rbp)
	pushq	$0
	movl	-16(%rbp), %esi
	pushq	%rsi
	movl	-8(%rbp), %esi
	pushq	%rsi
	movl	-12(%rbp), %esi
	pushq	%rsi
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	process
	addq	$64, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L25
.L65:
	nop
	jmp	.L25
.L66:
	nop
	jmp	.L25
.L67:
	nop
	jmp	.L25
.L74:
	nop
.L25:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$322, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-160(%rbp), %rax
	leaq	.LC50(%rip), %rcx
	movl	$329, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	storeutl_main, .-storeutl_main
	.section	.rodata
.LC64:
	.string	"%*s"
	.text
	.type	indent_printf, @function
indent_printf:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L82
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L82:
	leaq	.LC4(%rip), %rcx
	movl	-212(%rbp), %edx
	leaq	.LC64(%rip), %rsi
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jns	.L77
	movl	-180(%rbp), %eax
	jmp	.L81
.L77:
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jns	.L79
	movl	-184(%rbp), %eax
	jmp	.L81
.L79:
	movl	$2147483647, %eax
	subl	-180(%rbp), %eax
	cmpl	%eax, -184(%rbp)
	jle	.L80
	movl	$2147483647, %eax
	jmp	.L81
.L80:
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %eax
	addl	%edx, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	indent_printf, .-indent_printf
	.section	.rodata
.LC65:
	.string	"Couldn't open file or uri %s\n"
	.align 8
.LC66:
	.string	"%s: the store scheme doesn't support the given search criteria.\n"
	.align 8
.LC67:
	.string	"ERROR: OSSL_STORE_load() returned NULL without eof or error indications\n"
	.align 8
.LC68:
	.string	"       This is an error in the loader\n"
.LC69:
	.string	"%d: %s: %s\n"
.LC70:
	.string	"%s\n"
.LC71:
	.string	"%d: %s\n"
.LC72:
	.string	"!!! Unknown code\n"
.LC73:
	.string	"Total found: %d\n"
	.text
	.type	process, @function
process:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movl	%r8d, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L84
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC65(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	-4(%rbp), %eax
	jmp	.L85
.L84:
	cmpl	$0, -92(%rbp)
	je	.L86
	movl	-92(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_expect@PLT
	testl	%eax, %eax
	jne	.L86
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L87
.L86:
	cmpl	$0, -96(%rbp)
	je	.L88
	movl	-96(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_supports_search@PLT
	testl	%eax, %eax
	jne	.L89
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	56(%rbp), %rdx
	leaq	.LC66(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L87
.L89:
	movq	-104(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_find@PLT
	testl	%eax, %eax
	jne	.L88
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L87
.L88:
	movl	$0, -4(%rbp)
.L123:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L90
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	movl	%eax, -12(%rbp)
	jmp	.L91
.L90:
	movl	$0, -12(%rbp)
.L91:
	cmpq	$0, -40(%rbp)
	je	.L92
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OSSL_STORE_INFO_type_string@PLT
	movq	%rax, -24(%rbp)
	jmp	.L93
.L92:
	movq	$0, -24(%rbp)
.L93:
	cmpq	$0, -40(%rbp)
	jne	.L94
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_error@PLT
	testl	%eax, %eax
	je	.L95
	cmpl	$0, 32(%rbp)
	je	.L96
	call	ERR_clear_error@PLT
	jmp	.L97
.L96:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L97:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	jne	.L125
	addl	$1, -4(%rbp)
	jmp	.L100
.L95:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	jne	.L126
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	addl	$1, -4(%rbp)
	jmp	.L99
.L94:
	cmpl	$1, -12(%rbp)
	jne	.L102
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_NAME@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_NAME_description@PLT
	movq	%rax, -56(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %r8
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	leaq	.LC69(%rip), %rdi
	movl	40(%rbp), %eax
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	indent_printf
	cmpq	$0, -56(%rbp)
	je	.L103
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rdx
	leaq	.LC70(%rip), %rdi
	movl	40(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	indent_printf
	jmp	.L103
.L102:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	leaq	.LC71(%rip), %rdi
	movl	40(%rbp), %eax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	indent_printf
.L103:
	cmpl	$6, -12(%rbp)
	je	.L104
	cmpl	$6, -12(%rbp)
	jg	.L105
	cmpl	$5, -12(%rbp)
	je	.L106
	cmpl	$5, -12(%rbp)
	jg	.L105
	cmpl	$4, -12(%rbp)
	je	.L107
	cmpl	$4, -12(%rbp)
	jg	.L105
	cmpl	$3, -12(%rbp)
	je	.L108
	cmpl	$3, -12(%rbp)
	jg	.L105
	cmpl	$1, -12(%rbp)
	je	.L109
	cmpl	$2, -12(%rbp)
	je	.L110
	jmp	.L105
.L109:
	cmpl	$0, 32(%rbp)
	je	.L127
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_NAME@PLT
	movq	%rax, -64(%rbp)
	movl	40(%rbp), %eax
	leal	2(%rax), %edi
	movq	-104(%rbp), %r9
	movl	-96(%rbp), %r8d
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	%rdi
	movl	32(%rbp), %edi
	pushq	%rdi
	movl	24(%rbp), %edi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	process
	addq	$64, %rsp
	addl	%eax, -4(%rbp)
	jmp	.L127
.L110:
	cmpl	$0, 16(%rbp)
	je	.L113
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_PARAMS@PLT
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
.L113:
	cmpl	$0, 24(%rbp)
	jne	.L128
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_PARAMS@PLT
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_Parameters@PLT
	jmp	.L128
.L108:
	cmpl	$0, 16(%rbp)
	je	.L115
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_PUBKEY@PLT
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
.L115:
	cmpl	$0, 24(%rbp)
	jne	.L129
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_PUBKEY@PLT
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
	jmp	.L129
.L107:
	cmpl	$0, 16(%rbp)
	je	.L117
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_PKEY@PLT
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
.L117:
	cmpl	$0, 24(%rbp)
	jne	.L130
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_PKEY@PLT
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	jmp	.L130
.L106:
	cmpl	$0, 16(%rbp)
	je	.L119
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CERT@PLT
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
.L119:
	cmpl	$0, 24(%rbp)
	jne	.L131
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CERT@PLT
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	jmp	.L131
.L104:
	cmpl	$0, 16(%rbp)
	je	.L121
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CRL@PLT
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_print@PLT
.L121:
	cmpl	$0, 24(%rbp)
	jne	.L132
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CRL@PLT
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_CRL@PLT
	jmp	.L132
.L105:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
	jmp	.L112
.L127:
	nop
	jmp	.L112
.L128:
	nop
	jmp	.L112
.L129:
	nop
	jmp	.L112
.L130:
	nop
	jmp	.L112
.L131:
	nop
	jmp	.L112
.L132:
	nop
.L112:
	addl	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
.L100:
	jmp	.L123
.L125:
	nop
	jmp	.L99
.L126:
	nop
.L99:
	movl	-8(%rbp), %edx
	leaq	.LC73(%rip), %rdi
	movq	48(%rbp), %rsi
	movl	40(%rbp), %eax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	indent_printf
.L87:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	testl	%eax, %eax
	jne	.L124
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	addl	$1, -4(%rbp)
.L124:
	movl	-4(%rbp), %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	process, .-process
	.section	.rodata
	.align 16
	.type	map.0, @object
	.size	map.0, 24
map.0:
	.long	8
	.long	5
	.long	9
	.long	4
	.long	10
	.long	6
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

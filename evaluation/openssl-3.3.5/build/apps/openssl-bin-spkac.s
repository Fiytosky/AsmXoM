	.file	"spkac.c"
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
	.globl	spkac_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"spksect"
	.align 8
.LC4:
	.string	"Specify the name of an SPKAC-dedicated section of configuration"
.LC5:
	.string	"engine"
	.align 8
.LC6:
	.string	"Use engine, possibly a hardware device"
.LC7:
	.string	"Input options:\n"
.LC8:
	.string	"in"
.LC9:
	.string	"Input file"
.LC10:
	.string	"key"
	.align 8
.LC11:
	.string	"Create SPKAC using private key"
.LC12:
	.string	"keyform"
	.align 8
.LC13:
	.string	"Private key file format (ENGINE, other values ignored)"
.LC14:
	.string	"passin"
.LC15:
	.string	"Input file pass phrase source"
.LC16:
	.string	"challenge"
.LC17:
	.string	"Challenge string"
.LC18:
	.string	"spkac"
.LC19:
	.string	"Alternative SPKAC name"
.LC20:
	.string	"Output options:\n"
.LC21:
	.string	"digest"
	.align 8
.LC22:
	.string	"Sign new SPKAC with the specified digest (default: MD5)"
.LC23:
	.string	"out"
.LC24:
	.string	"Output file"
.LC25:
	.string	"noout"
.LC26:
	.string	"Don't print SPKAC"
.LC27:
	.string	"pubkey"
.LC28:
	.string	"Output public key"
.LC29:
	.string	"verify"
.LC30:
	.string	"Verify SPKAC signature"
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
	.section	.data.rel.ro,"aw"
	.align 32
	.type	spkac_options, @object
	.size	spkac_options, 528
spkac_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	12
	.long	115
	.quad	.LC4
	.quad	.LC5
	.long	7
	.long	115
	.quad	.LC6
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	5
	.long	60
	.quad	.LC9
	.quad	.LC10
	.long	8
	.long	60
	.quad	.LC11
	.quad	.LC12
	.long	13
	.long	102
	.quad	.LC13
	.quad	.LC14
	.long	10
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	9
	.long	115
	.quad	.LC17
	.quad	.LC18
	.long	11
	.long	115
	.quad	.LC19
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	14
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	6
	.long	62
	.quad	.LC24
	.quad	.LC25
	.long	2
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	3
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	4
	.long	45
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
	.quad	0
	.zero	16
	.section	.rodata
.LC38:
	.string	"SPKAC"
.LC39:
	.string	"default"
.LC40:
	.string	"MD5"
.LC41:
	.string	"%s: Use -help for summary.\n"
.LC42:
	.string	"Error getting password\n"
.LC43:
	.string	"-"
.LC44:
	.string	"private key"
.LC45:
	.string	"Error setting public key\n"
.LC46:
	.string	"Error signing SPKAC\n"
.LC47:
	.string	"../apps/spkac.c"
.LC48:
	.string	"SPKAC=%s\n"
.LC49:
	.string	"Can't find SPKAC called \"%s\"\n"
.LC50:
	.string	"Error loading SPKAC\n"
.LC51:
	.string	"Signature OK\n"
.LC52:
	.string	"Signature Failure\n"
	.text
	.globl	spkac_main
	.type	spkac_main, @function
spkac_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -144(%rbp)
	leaq	.LC38(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	$0, -176(%rbp)
	movl	$1, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -180(%rbp)
	movq	spkac_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx
	movl	-196(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -152(%rbp)
	jmp	.L6
.L28:
	cmpl	$1604, -156(%rbp)
	je	.L6
	cmpl	$1604, -156(%rbp)
	jg	.L6
	cmpl	$1603, -156(%rbp)
	jg	.L6
	cmpl	$1601, -156(%rbp)
	jge	.L8
	cmpl	$1600, -156(%rbp)
	je	.L6
	cmpl	$1600, -156(%rbp)
	jg	.L6
	cmpl	$14, -156(%rbp)
	je	.L9
	cmpl	$14, -156(%rbp)
	jg	.L6
	cmpl	$13, -156(%rbp)
	je	.L10
	cmpl	$13, -156(%rbp)
	jg	.L6
	cmpl	$12, -156(%rbp)
	je	.L11
	cmpl	$12, -156(%rbp)
	jg	.L6
	cmpl	$11, -156(%rbp)
	je	.L12
	cmpl	$11, -156(%rbp)
	jg	.L6
	cmpl	$10, -156(%rbp)
	je	.L13
	cmpl	$10, -156(%rbp)
	jg	.L6
	cmpl	$9, -156(%rbp)
	je	.L14
	cmpl	$9, -156(%rbp)
	jg	.L6
	cmpl	$8, -156(%rbp)
	je	.L15
	cmpl	$8, -156(%rbp)
	jg	.L6
	cmpl	$7, -156(%rbp)
	je	.L16
	cmpl	$7, -156(%rbp)
	jg	.L6
	cmpl	$6, -156(%rbp)
	je	.L17
	cmpl	$6, -156(%rbp)
	jg	.L6
	cmpl	$5, -156(%rbp)
	je	.L18
	cmpl	$5, -156(%rbp)
	jg	.L6
	cmpl	$4, -156(%rbp)
	je	.L19
	cmpl	$4, -156(%rbp)
	jg	.L6
	cmpl	$3, -156(%rbp)
	je	.L20
	cmpl	$3, -156(%rbp)
	jg	.L6
	cmpl	$2, -156(%rbp)
	je	.L21
	cmpl	$2, -156(%rbp)
	jg	.L6
	cmpl	$0, -156(%rbp)
	jg	.L22
	cmpl	$-1, -156(%rbp)
	jge	.L23
	jmp	.L6
.L22:
	cmpl	$1, -156(%rbp)
	je	.L24
	jmp	.L6
.L51:
	nop
	jmp	.L23
.L53:
	nop
.L23:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L24:
	movq	spkac_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -124(%rbp)
	jmp	.L25
.L18:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L17:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L6
.L21:
	movl	$1, -132(%rbp)
	jmp	.L6
.L20:
	movl	$1, -136(%rbp)
	jmp	.L6
.L19:
	movl	$1, -128(%rbp)
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L6
.L15:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L10:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-180(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L51
	jmp	.L6
.L14:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L12:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L6
.L11:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L6
.L9:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L6
.L16:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -40(%rbp)
	jmp	.L6
.L8:
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L52
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.L28
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L53
	leaq	-168(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L30
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L30:
	cmpq	$0, -72(%rbp)
	je	.L31
	leaq	-176(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L54
	movq	-168(%rbp), %r12
	movl	-180(%rbp), %ebx
	leaq	.LC43(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L33
	movq	-72(%rbp), %rax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	leaq	.LC44(%rip), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%r12, %rcx
	movl	$1, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L55
	call	NETSCAPE_SPKI_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L56
	cmpq	$0, -64(%rbp)
	je	.L37
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L57
.L37:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_set_pubkey@PLT
	testl	%eax, %eax
	jne	.L38
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L38:
	movq	-176(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_sign@PLT
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jg	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L39:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_b64_encode@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L58
	movq	-88(%rbp), %rax
	movl	$32769, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L41
	leaq	.LC47(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$174, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L25
.L41:
	movq	-144(%rbp), %rdx
	leaq	.LC48(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC47(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$178, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -124(%rbp)
	jmp	.L25
.L31:
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_internal@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L59
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L43
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L43:
	movq	-144(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_b64_decode@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L44
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
	jmp	.L25
.L44:
	movq	-88(%rbp), %rax
	movl	$32769, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L60
	cmpl	$0, -132(%rbp)
	jne	.L46
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_print@PLT
.L46:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_get_pubkey@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -128(%rbp)
	je	.L47
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_verify@PLT
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jle	.L48
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L47
.L48:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L47:
	cmpl	$0, -136(%rbp)
	je	.L49
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
.L49:
	movl	$0, -124(%rbp)
	jmp	.L25
.L52:
	nop
	jmp	.L25
.L54:
	nop
	jmp	.L25
.L55:
	nop
	jmp	.L25
.L56:
	nop
	jmp	.L25
.L57:
	nop
	jmp	.L25
.L58:
	nop
	jmp	.L25
.L59:
	nop
	jmp	.L25
.L60:
	nop
.L25:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-168(%rbp), %rax
	leaq	.LC47(%rip), %rcx
	movl	$231, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-124(%rbp), %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	spkac_main, .-spkac_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

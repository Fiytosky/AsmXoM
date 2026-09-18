	.file	"genpkey.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
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
	.globl	genpkey_options
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
	.string	"paramfile"
.LC6:
	.string	"Parameters file"
.LC7:
	.string	"algorithm"
.LC8:
	.string	"The public key algorithm"
.LC9:
	.string	"verbose"
	.align 8
.LC10:
	.string	"Output status while generating keys"
.LC11:
	.string	"quiet"
	.align 8
.LC12:
	.string	"Do not output status while generating keys"
.LC13:
	.string	"pkeyopt"
	.align 8
.LC14:
	.string	"Set the public key algorithm option as opt:value"
.LC15:
	.string	"config"
	.align 8
.LC16:
	.string	"Load a configuration file (this may load modules)"
.LC17:
	.string	"Output options:\n"
.LC18:
	.string	"out"
.LC19:
	.string	"Output (private key) file"
.LC20:
	.string	"outpubkey"
.LC21:
	.string	"Output public key file"
.LC22:
	.string	"outform"
.LC23:
	.string	"output format (DER or PEM)"
.LC24:
	.string	"pass"
	.align 8
.LC25:
	.string	"Output file pass phrase source"
.LC26:
	.string	"genparam"
.LC27:
	.string	"Generate parameters, not key"
.LC28:
	.string	"text"
.LC29:
	.string	"Print the private key in text"
.LC30:
	.string	""
	.align 8
.LC31:
	.string	"Cipher to use to encrypt the key"
.LC32:
	.string	"Provider options:\n"
.LC33:
	.string	"provider-path"
	.align 8
.LC34:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC35:
	.string	"provider"
	.align 8
.LC36:
	.string	"Provider to load (can be specified multiple times)"
.LC37:
	.string	"propquery"
	.align 8
.LC38:
	.string	"Property query used when fetching algorithms"
.LC39:
	.string	"Random state options:\n"
.LC40:
	.string	"rand"
	.align 8
.LC41:
	.string	"Load the given file(s) into the random number generator"
.LC42:
	.string	"writerand"
	.align 8
.LC43:
	.string	"Write random data to the specified file"
	.align 8
.LC44:
	.string	"Order of options may be important!  See the documentation.\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	genpkey_options, @object
	.size	genpkey_options, 624
genpkey_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	2
	.long	115
	.quad	.LC4
	.quad	.LC5
	.long	6
	.long	60
	.quad	.LC6
	.quad	.LC7
	.long	7
	.long	115
	.quad	.LC8
	.quad	.LC9
	.long	12
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	13
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	8
	.long	115
	.quad	.LC14
	.quad	.LC15
	.long	14
	.long	60
	.quad	.LC16
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	4
	.long	62
	.quad	.LC19
	.quad	.LC20
	.long	15
	.long	62
	.quad	.LC21
	.quad	.LC22
	.long	3
	.long	70
	.quad	.LC23
	.quad	.LC24
	.long	5
	.long	115
	.quad	.LC25
	.quad	.LC26
	.long	9
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	10
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	11
	.long	45
	.quad	.LC31
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	1602
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	1601
	.long	115
	.quad	.LC36
	.quad	.LC37
	.long	1603
	.long	115
	.quad	.LC38
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	1501
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	1502
	.long	62
	.quad	.LC43
	.quad	OPT_HELP_STR
	.long	1
	.long	1
	.quad	.LC44
	.quad	0
	.zero	16
	.section	.rodata
.LC45:
	.string	"int"
.LC46:
	.string	"uint"
.LC47:
	.string	"float"
.LC48:
	.string	"string"
	.text
	.type	param_datatype_2name, @function
param_datatype_2name:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$5, -4(%rbp)
	je	.L12
	cmpl	$5, -4(%rbp)
	ja	.L13
	cmpl	$4, -4(%rbp)
	je	.L14
	cmpl	$4, -4(%rbp)
	ja	.L13
	cmpl	$3, -4(%rbp)
	je	.L15
	cmpl	$3, -4(%rbp)
	ja	.L13
	cmpl	$1, -4(%rbp)
	je	.L16
	cmpl	$2, -4(%rbp)
	je	.L17
	jmp	.L13
.L16:
	leaq	.LC45(%rip), %rax
	jmp	.L18
.L17:
	leaq	.LC46(%rip), %rax
	jmp	.L18
.L15:
	leaq	.LC47(%rip), %rax
	jmp	.L18
.L12:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	leaq	.LC48(%rip), %rax
	jmp	.L18
.L14:
	leaq	.LC48(%rip), %rax
	jmp	.L18
.L13:
	movl	$0, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	param_datatype_2name, .-param_datatype_2name
	.section	.rodata
	.align 8
.LC49:
	.string	"\nThe possible -pkeyopt arguments are:\n"
.LC50:
	.string	"hex"
.LC51:
	.string	"    %s%s:%s\n"
	.text
	.type	show_gen_pkeyopt, @function
show_gen_pkeyopt:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L32
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L33
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L34
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_settable_params@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L26
.L30:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	leaq	-36(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	param_datatype_2name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L27
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L28
	leaq	.LC50(%rip), %rax
	jmp	.L29
.L28:
	leaq	.LC30(%rip), %rax
.L29:
	movq	bio_err@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rcx
	leaq	.LC51(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
.L27:
	addl	$1, -4(%rbp)
.L26:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	jmp	.L24
.L34:
	nop
	jmp	.L24
.L35:
	nop
.L24:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	jmp	.L19
.L32:
	nop
	jmp	.L19
.L33:
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	show_gen_pkeyopt, .-show_gen_pkeyopt
	.section	.rodata
.LC52:
	.string	"cipher"
.LC53:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC54:
	.string	"%s: Error setting %s parameter:\n"
	.align 8
.LC55:
	.string	"Cannot use cipher with -genparam option\n"
.LC56:
	.string	"Error getting password\n"
.LC57:
	.string	"Bad format specified for key\n"
.LC58:
	.string	"Error writing key(s)\n"
.LC59:
	.string	"Error printing key\n"
.LC60:
	.string	"../apps/genpkey.c"
	.text
	.globl	genpkey_main
	.type	genpkey_main, @function
genpkey_main:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -208(%rbp)
	movl	$32773, -212(%rbp)
	movl	$0, -108(%rbp)
	movl	$1, -112(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -140(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -152(%rbp)
	movq	$0, -160(%rbp)
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	genpkey_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx
	movl	-228(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -168(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L94
	jmp	.L39
.L67:
	cmpl	$1604, -172(%rbp)
	je	.L39
	cmpl	$1604, -172(%rbp)
	jg	.L39
	cmpl	$1603, -172(%rbp)
	jg	.L39
	cmpl	$1601, -172(%rbp)
	jge	.L41
	cmpl	$1600, -172(%rbp)
	je	.L39
	cmpl	$1600, -172(%rbp)
	jg	.L39
	cmpl	$1503, -172(%rbp)
	je	.L39
	cmpl	$1503, -172(%rbp)
	jg	.L39
	cmpl	$1502, -172(%rbp)
	jg	.L39
	cmpl	$1501, -172(%rbp)
	jge	.L43
	cmpl	$1500, -172(%rbp)
	je	.L39
	cmpl	$1500, -172(%rbp)
	jg	.L39
	cmpl	$15, -172(%rbp)
	je	.L44
	cmpl	$15, -172(%rbp)
	jg	.L39
	cmpl	$14, -172(%rbp)
	je	.L45
	cmpl	$14, -172(%rbp)
	jg	.L39
	cmpl	$13, -172(%rbp)
	je	.L46
	cmpl	$13, -172(%rbp)
	jg	.L39
	cmpl	$12, -172(%rbp)
	je	.L47
	cmpl	$12, -172(%rbp)
	jg	.L39
	cmpl	$11, -172(%rbp)
	je	.L48
	cmpl	$11, -172(%rbp)
	jg	.L39
	cmpl	$10, -172(%rbp)
	je	.L49
	cmpl	$10, -172(%rbp)
	jg	.L39
	cmpl	$9, -172(%rbp)
	je	.L50
	cmpl	$9, -172(%rbp)
	jg	.L39
	cmpl	$8, -172(%rbp)
	je	.L51
	cmpl	$8, -172(%rbp)
	jg	.L39
	cmpl	$7, -172(%rbp)
	je	.L52
	cmpl	$7, -172(%rbp)
	jg	.L39
	cmpl	$6, -172(%rbp)
	je	.L53
	cmpl	$6, -172(%rbp)
	jg	.L39
	cmpl	$5, -172(%rbp)
	je	.L54
	cmpl	$5, -172(%rbp)
	jg	.L39
	cmpl	$4, -172(%rbp)
	je	.L55
	cmpl	$4, -172(%rbp)
	jg	.L39
	cmpl	$3, -172(%rbp)
	je	.L56
	cmpl	$3, -172(%rbp)
	jg	.L39
	cmpl	$2, -172(%rbp)
	je	.L57
	cmpl	$2, -172(%rbp)
	jg	.L39
	cmpl	$0, -172(%rbp)
	jg	.L58
	cmpl	$-1, -172(%rbp)
	jge	.L59
	jmp	.L39
.L58:
	cmpl	$1, -172(%rbp)
	je	.L60
	jmp	.L39
.L95:
	nop
	jmp	.L59
.L96:
	nop
	jmp	.L59
.L101:
	nop
	jmp	.L59
.L105:
	nop
	jmp	.L59
.L106:
	nop
.L59:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC53(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L60:
	movl	$0, -112(%rbp)
	movq	genpkey_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	call	app_get0_propq@PLT
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	show_gen_pkeyopt
	jmp	.L38
.L56:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-212(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L95
	jmp	.L39
.L55:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L39
.L44:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L39
.L54:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L39
.L57:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -48(%rbp)
	jmp	.L39
.L53:
	cmpl	$1, -120(%rbp)
	je	.L96
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L39
.L52:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L39
.L51:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L97
	jmp	.L39
.L46:
	movl	$0, verbose(%rip)
	jmp	.L39
.L47:
	movl	$1, verbose(%rip)
	jmp	.L39
.L50:
	movl	$1, -120(%rbp)
	jmp	.L39
.L49:
	movl	$1, -108(%rbp)
	jmp	.L39
.L48:
	call	opt_unknown@PLT
	movq	%rax, -88(%rbp)
	jmp	.L39
.L45:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	app_load_config_modules@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L98
	jmp	.L39
.L41:
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L99
	jmp	.L39
.L43:
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L100
	nop
.L39:
	call	opt_next@PLT
	movl	%eax, -172(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.L67
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L101
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L102
	cmpq	$0, -96(%rbp)
	je	.L70
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movq	-152(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	init_keygen_file
	testl	%eax, %eax
	je	.L103
.L70:
	cmpq	$0, -104(%rbp)
	je	.L71
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movq	-152(%rbp), %r8
	movl	-120(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	init_gen_str@PLT
	testl	%eax, %eax
	je	.L104
.L71:
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	je	.L105
	movl	$0, -124(%rbp)
	jmp	.L73
.L75:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L74
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	-168(%rbp), %rdx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L38
.L74:
	addl	$1, -124(%rbp)
.L73:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -124(%rbp)
	jl	.L75
	leaq	-208(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L106
	cmpq	$0, -88(%rbp)
	je	.L77
	cmpl	$1, -120(%rbp)
	jne	.L77
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L59
.L77:
	cmpl	$0, -120(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	leaq	-200(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L78
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L38
.L78:
	movl	-212(%rbp), %ecx
	movl	-140(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L107
	cmpq	$0, -80(%rbp)
	je	.L80
	movl	-212(%rbp), %ecx
	movl	-140(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L108
.L80:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L81
	movq	-192(%rbp), %rax
	movq	progress_cb@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_cb@PLT
.L81:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_app_data@PLT
	cmpl	$0, -120(%rbp)
	je	.L82
	movq	-192(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_paramgen@PLT
	movq	%rax, -56(%rbp)
	jmp	.L83
.L82:
	movq	-192(%rbp), %rax
	movq	-104(%rbp), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	app_keygen@PLT
	movq	%rax, -56(%rbp)
.L83:
	cmpq	$0, -56(%rbp)
	je	.L109
	cmpl	$0, -120(%rbp)
	je	.L85
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_Parameters@PLT
	movl	%eax, -116(%rbp)
	jmp	.L86
.L85:
	movl	-212(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L87
	movq	-200(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jle	.L86
	cmpq	$0, -40(%rbp)
	je	.L86
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
	movl	%eax, -116(%rbp)
	jmp	.L86
.L87:
	movl	-212(%rbp), %eax
	cmpl	$4, %eax
	jne	.L88
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PrivateKey_bio@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jle	.L86
	cmpq	$0, -40(%rbp)
	je	.L86
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY_bio@PLT
	movl	%eax, -116(%rbp)
	jmp	.L86
.L88:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L86:
	movl	$0, -112(%rbp)
	cmpl	$0, -116(%rbp)
	jg	.L89
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC58(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -112(%rbp)
.L89:
	cmpl	$0, -108(%rbp)
	je	.L110
	cmpl	$0, -120(%rbp)
	je	.L90
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
	movl	%eax, -116(%rbp)
	jmp	.L91
.L90:
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	movl	%eax, -116(%rbp)
.L91:
	cmpl	$0, -116(%rbp)
	jg	.L110
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -112(%rbp)
	jmp	.L38
.L94:
	nop
	jmp	.L38
.L97:
	nop
	jmp	.L38
.L98:
	nop
	jmp	.L38
.L99:
	nop
	jmp	.L38
.L100:
	nop
	jmp	.L38
.L102:
	nop
	jmp	.L38
.L103:
	nop
	jmp	.L38
.L104:
	nop
	jmp	.L38
.L107:
	nop
	jmp	.L38
.L108:
	nop
	jmp	.L38
.L109:
	nop
	jmp	.L38
.L110:
	nop
.L38:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpl	$0, -112(%rbp)
	je	.L92
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L92:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-200(%rbp), %rax
	leaq	.LC60(%rip), %rcx
	movl	$306, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	genpkey_main, .-genpkey_main
	.section	.rodata
.LC61:
	.string	"Parameters already set!\n"
.LC62:
	.string	"r"
.LC63:
	.string	"Can't open parameter file %s\n"
	.align 8
.LC64:
	.string	"Error reading parameter file %s\n"
.LC65:
	.string	"Error initializing context\n"
	.text
	.type	init_keygen_file, @function
init_keygen_file:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, %eax
	jmp	.L113
.L112:
	leaq	.LC62(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L114
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC63(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L113
.L114:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_Parameters_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpq	$0, -16(%rbp)
	jne	.L115
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L113
.L115:
	cmpq	$0, -56(%rbp)
	je	.L116
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.L117
.L116:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
.L117:
	cmpq	$0, -8(%rbp)
	je	.L121
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L122
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L113
.L121:
	nop
	jmp	.L119
.L122:
	nop
.L119:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	init_keygen_file, .-init_keygen_file
	.section	.rodata
.LC66:
	.string	"Algorithm already set!\n"
	.align 8
.LC67:
	.string	"Error initializing %s context\n"
	.text
	.globl	init_gen_str
	.type	init_gen_str, @function
init_gen_str:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_legacy_pkey_id@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L126
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -8(%rbp)
	jmp	.L127
.L126:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
.L127:
	cmpq	$0, -8(%rbp)
	je	.L132
	cmpl	$0, -44(%rbp)
	je	.L130
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jg	.L131
	jmp	.L129
.L130:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L133
.L131:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L125
.L132:
	nop
	jmp	.L129
.L133:
	nop
.L129:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC67(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	init_gen_str, .-init_gen_str
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

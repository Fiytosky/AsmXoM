	.file	"dgst.c"
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
	.globl	dgst_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [file...]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"list"
.LC5:
	.string	"List digests"
.LC6:
	.string	"engine"
	.align 8
.LC7:
	.string	"Use engine e, possibly a hardware device"
.LC8:
	.string	"engine_impl"
	.align 8
.LC9:
	.string	"Also use engine given by -engine for digest operations"
.LC10:
	.string	"passin"
.LC11:
	.string	"Input file pass phrase source"
.LC12:
	.string	"Output options:\n"
.LC13:
	.string	"c"
	.align 8
.LC14:
	.string	"Print the digest with separating colons"
.LC15:
	.string	"r"
	.align 8
.LC16:
	.string	"Print the digest in coreutils format"
.LC17:
	.string	"out"
	.align 8
.LC18:
	.string	"Output to filename rather than stdout"
.LC19:
	.string	"keyform"
	.align 8
.LC20:
	.string	"Key file format (ENGINE, other values ignored)"
.LC21:
	.string	"hex"
.LC22:
	.string	"Print as hex dump"
.LC23:
	.string	"binary"
.LC24:
	.string	"Print in binary form"
.LC25:
	.string	"xoflen"
	.align 8
.LC26:
	.string	"Output length for XOF algorithms. To obtain the maximum security strength set this to 32 (or greater) for SHAKE128, and 64 (or greater) for SHAKE256"
.LC27:
	.string	"d"
.LC28:
	.string	"Print debug info"
.LC29:
	.string	"debug"
.LC30:
	.string	"Signing options:\n"
.LC31:
	.string	"sign"
.LC32:
	.string	"Sign digest using private key"
.LC33:
	.string	"verify"
	.align 8
.LC34:
	.string	"Verify a signature using public key"
.LC35:
	.string	"prverify"
	.align 8
.LC36:
	.string	"Verify a signature using private key"
.LC37:
	.string	"sigopt"
	.align 8
.LC38:
	.string	"Signature parameter in n:v form"
.LC39:
	.string	"signature"
.LC40:
	.string	"File with signature to verify"
.LC41:
	.string	"hmac"
.LC42:
	.string	"Create hashed MAC with key"
.LC43:
	.string	"mac"
	.align 8
.LC44:
	.string	"Create MAC (not necessarily HMAC)"
.LC45:
	.string	"macopt"
	.align 8
.LC46:
	.string	"MAC algorithm parameters in n:v form or key"
.LC47:
	.string	""
.LC48:
	.string	"Any supported digest"
.LC49:
	.string	"fips-fingerprint"
	.align 8
.LC50:
	.string	"Compute HMAC with the key used in OpenSSL-FIPS fingerprint"
.LC51:
	.string	"Random state options:\n"
.LC52:
	.string	"rand"
	.align 8
.LC53:
	.string	"Load the given file(s) into the random number generator"
.LC54:
	.string	"writerand"
	.align 8
.LC55:
	.string	"Write random data to the specified file"
.LC56:
	.string	"Provider options:\n"
.LC57:
	.string	"provider-path"
	.align 8
.LC58:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC59:
	.string	"provider"
	.align 8
.LC60:
	.string	"Provider to load (can be specified multiple times)"
.LC61:
	.string	"propquery"
	.align 8
.LC62:
	.string	"Property query used when fetching algorithms"
.LC63:
	.string	"Parameters:\n"
.LC64:
	.string	"file"
	.align 8
.LC65:
	.string	"Files to digest (optional; default is stdin)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dgst_options, @object
	.size	dgst_options, 912
dgst_options:
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
	.long	2
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	12
	.long	115
	.quad	.LC7
	.quad	.LC8
	.long	13
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	7
	.long	115
	.quad	.LC11
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	3
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	4
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	5
	.long	62
	.quad	.LC18
	.quad	.LC19
	.long	11
	.long	102
	.quad	.LC20
	.quad	.LC21
	.long	14
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	15
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	22
	.long	112
	.quad	.LC26
	.quad	.LC27
	.long	16
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	16
	.long	45
	.quad	.LC28
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	6
	.long	115
	.quad	.LC32
	.quad	.LC33
	.long	8
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	9
	.long	115
	.quad	.LC36
	.quad	.LC37
	.long	20
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	10
	.long	60
	.quad	.LC40
	.quad	.LC41
	.long	18
	.long	115
	.quad	.LC42
	.quad	.LC43
	.long	19
	.long	115
	.quad	.LC44
	.quad	.LC45
	.long	21
	.long	115
	.quad	.LC46
	.quad	.LC47
	.long	23
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	17
	.long	45
	.quad	.LC50
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC51
	.quad	.LC52
	.long	1501
	.long	115
	.quad	.LC53
	.quad	.LC54
	.long	1502
	.long	62
	.quad	.LC55
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC56
	.quad	.LC57
	.long	1602
	.long	115
	.quad	.LC58
	.quad	.LC59
	.long	1601
	.long	115
	.quad	.LC60
	.quad	.LC61
	.long	1603
	.long	115
	.quad	.LC62
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC63
	.quad	.LC64
	.long	0
	.long	0
	.quad	.LC65
	.quad	0
	.zero	16
	.section	.rodata
.LC66:
	.string	"I/O buffer"
.LC67:
	.string	"digest"
.LC68:
	.string	"%s: Use -help for summary.\n"
.LC69:
	.string	"Supported digests:\n"
.LC70:
	.string	"\n"
.LC71:
	.string	"etaonrishdlcupfm"
	.align 8
.LC72:
	.string	"%s: Can only sign or verify one file.\n"
	.align 8
.LC73:
	.string	"No signature to verify: use the -signature option\n"
.LC74:
	.string	"Error getting password\n"
	.align 8
.LC75:
	.string	"MAC and signing key cannot both be specified\n"
.LC76:
	.string	"public key"
.LC77:
	.string	"private key"
	.align 8
.LC78:
	.string	"Key type not supported for this operation\n"
.LC79:
	.string	"MAC parameter error \"%s\"\n"
.LC80:
	.string	"SHA256"
.LC81:
	.string	"Error getting context\n"
.LC82:
	.string	"Error setting context\n"
	.align 8
.LC83:
	.string	"Signature parameter error \"%s\"\n"
.LC84:
	.string	"Error setting digest\n"
.LC85:
	.string	"rb"
	.align 8
.LC86:
	.string	"Error opening signature file %s\n"
.LC87:
	.string	"signature buffer"
	.align 8
.LC88:
	.string	"Error reading signature file %s\n"
	.align 8
.LC89:
	.string	"Length can only be specified for XOF\n"
	.align 8
.LC90:
	.string	"Signing key cannot be specified for XOF\n"
.LC91:
	.string	"stdin"
.LC92:
	.string	"../apps/dgst.c"
	.text
	.globl	dgst_main
	.type	dgst_main, @function
dgst_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	movl	%edi, -356(%rbp)
	movq	%rsi, -368(%rbp)
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
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -284(%rbp)
	movl	$0, -156(%rbp)
	movl	$1, -164(%rbp)
	movl	$-1, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -192(%rbp)
	movl	$0, -196(%rbp)
	leaq	.LC66(%rip), %rax
	movq	%rax, %rsi
	movl	$8192, %edi
	call	app_malloc@PLT
	movq	%rax, -224(%rbp)
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L12
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.L12:
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	dgst_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx
	movl	-356(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -216(%rbp)
	jmp	.L13
.L53:
	cmpl	$1604, -228(%rbp)
	je	.L13
	cmpl	$1604, -228(%rbp)
	jg	.L13
	cmpl	$1603, -228(%rbp)
	jg	.L13
	cmpl	$1601, -228(%rbp)
	jge	.L15
	cmpl	$1600, -228(%rbp)
	je	.L13
	cmpl	$1600, -228(%rbp)
	jg	.L13
	cmpl	$1503, -228(%rbp)
	je	.L13
	cmpl	$1503, -228(%rbp)
	jg	.L13
	cmpl	$1502, -228(%rbp)
	jg	.L13
	cmpl	$1501, -228(%rbp)
	jge	.L17
	cmpl	$1500, -228(%rbp)
	je	.L13
	cmpl	$1500, -228(%rbp)
	jg	.L13
	cmpl	$23, -228(%rbp)
	je	.L18
	cmpl	$23, -228(%rbp)
	jg	.L13
	cmpl	$22, -228(%rbp)
	je	.L19
	cmpl	$22, -228(%rbp)
	jg	.L13
	cmpl	$21, -228(%rbp)
	je	.L20
	cmpl	$21, -228(%rbp)
	jg	.L13
	cmpl	$20, -228(%rbp)
	je	.L21
	cmpl	$20, -228(%rbp)
	jg	.L13
	cmpl	$19, -228(%rbp)
	je	.L22
	cmpl	$19, -228(%rbp)
	jg	.L13
	cmpl	$18, -228(%rbp)
	je	.L23
	cmpl	$18, -228(%rbp)
	jg	.L13
	cmpl	$17, -228(%rbp)
	je	.L24
	cmpl	$17, -228(%rbp)
	jg	.L13
	cmpl	$16, -228(%rbp)
	je	.L25
	cmpl	$16, -228(%rbp)
	jg	.L13
	cmpl	$15, -228(%rbp)
	je	.L26
	cmpl	$15, -228(%rbp)
	jg	.L13
	cmpl	$14, -228(%rbp)
	je	.L27
	cmpl	$14, -228(%rbp)
	jg	.L13
	cmpl	$13, -228(%rbp)
	je	.L28
	cmpl	$13, -228(%rbp)
	jg	.L13
	cmpl	$12, -228(%rbp)
	je	.L29
	cmpl	$12, -228(%rbp)
	jg	.L13
	cmpl	$11, -228(%rbp)
	je	.L30
	cmpl	$11, -228(%rbp)
	jg	.L13
	cmpl	$10, -228(%rbp)
	je	.L31
	cmpl	$10, -228(%rbp)
	jg	.L13
	cmpl	$9, -228(%rbp)
	je	.L32
	cmpl	$9, -228(%rbp)
	jg	.L13
	cmpl	$8, -228(%rbp)
	je	.L33
	cmpl	$8, -228(%rbp)
	jg	.L13
	cmpl	$7, -228(%rbp)
	je	.L34
	cmpl	$7, -228(%rbp)
	jg	.L13
	cmpl	$6, -228(%rbp)
	je	.L35
	cmpl	$6, -228(%rbp)
	jg	.L13
	cmpl	$5, -228(%rbp)
	je	.L36
	cmpl	$5, -228(%rbp)
	jg	.L13
	cmpl	$4, -228(%rbp)
	je	.L37
	cmpl	$4, -228(%rbp)
	jg	.L13
	cmpl	$3, -228(%rbp)
	je	.L38
	cmpl	$3, -228(%rbp)
	jg	.L13
	cmpl	$2, -228(%rbp)
	je	.L39
	cmpl	$2, -228(%rbp)
	jg	.L13
	cmpl	$0, -228(%rbp)
	jg	.L40
	cmpl	$-1, -228(%rbp)
	jge	.L41
	jmp	.L13
.L40:
	cmpl	$1, -228(%rbp)
	je	.L42
	jmp	.L13
.L117:
	nop
	jmp	.L41
.L118:
	nop
	jmp	.L41
.L119:
	nop
	jmp	.L41
.L122:
	nop
.L41:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	leaq	.LC68(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L42:
	movq	dgst_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -164(%rbp)
	jmp	.L43
.L39:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC69(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movl	$0, -296(%rbp)
	leaq	-304(%rbp), %rax
	leaq	show_digests(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$1, %edi
	call	OBJ_NAME_do_all_sorted@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -164(%rbp)
	jmp	.L43
.L38:
	movl	$1, -148(%rbp)
	jmp	.L13
.L37:
	movl	$2, -148(%rbp)
	jmp	.L13
.L17:
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L116
	jmp	.L13
.L36:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L13
.L35:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	jmp	.L13
.L34:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L13
.L33:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	movl	$1, -176(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -172(%rbp)
	jmp	.L13
.L32:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	movl	$1, -176(%rbp)
	jmp	.L13
.L31:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L13
.L30:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-284(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L117
	jmp	.L13
.L29:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -48(%rbp)
	jmp	.L13
.L28:
	movl	$1, -196(%rbp)
	jmp	.L13
.L27:
	movl	$0, -168(%rbp)
	jmp	.L13
.L26:
	movl	$1, -168(%rbp)
	jmp	.L13
.L19:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -180(%rbp)
	jmp	.L13
.L25:
	movl	$1, -152(%rbp)
	jmp	.L13
.L24:
	leaq	.LC71(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L13
.L23:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L13
.L22:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L13
.L21:
	cmpq	$0, -72(%rbp)
	jne	.L46
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -72(%rbp)
.L46:
	cmpq	$0, -72(%rbp)
	je	.L118
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L118
	jmp	.L13
.L20:
	cmpq	$0, -80(%rbp)
	jne	.L49
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -80(%rbp)
.L49:
	cmpq	$0, -80(%rbp)
	je	.L119
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L119
	jmp	.L13
.L18:
	call	opt_unknown@PLT
	movq	%rax, -104(%rbp)
	jmp	.L13
.L15:
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L120
	nop
.L13:
	call	opt_next@PLT
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	jne	.L53
	call	opt_num_rest@PLT
	movl	%eax, -356(%rbp)
	call	opt_rest@PLT
	movq	%rax, -368(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L54
	cmpl	$1, -356(%rbp)
	jle	.L54
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	leaq	.LC72(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L54:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L121
	cmpq	$0, -104(%rbp)
	je	.L56
	leaq	-280(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L122
.L56:
	cmpl	$0, -176(%rbp)
	je	.L57
	cmpq	$0, -136(%rbp)
	jne	.L57
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC73(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L57:
	cmpl	$0, -196(%rbp)
	je	.L58
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.L58:
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	call	BIO_f_md@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L123
	cmpq	$0, -32(%rbp)
	je	.L123
	cmpl	$0, -152(%rbp)
	je	.L61
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
.L61:
	leaq	-272(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L62
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L62:
	cmpl	$-1, -168(%rbp)
	jne	.L63
	cmpq	$0, -128(%rbp)
	je	.L64
	movl	$1, -168(%rbp)
	jmp	.L63
.L64:
	movl	$0, -168(%rbp)
.L63:
	cmpl	$0, -168(%rbp)
	je	.L65
	movl	$2, %edx
	jmp	.L66
.L65:
	movl	$32769, %edx
.L66:
	movq	-120(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L124
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %edx
	cmpq	$0, -128(%rbp)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L68
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L68:
	cmpq	$0, -128(%rbp)
	je	.L69
	cmpl	$0, -172(%rbp)
	je	.L70
	movl	-284(%rbp), %esi
	leaq	.LC76(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -64(%rbp)
	jmp	.L71
.L70:
	movq	-272(%rbp), %rdx
	movl	-284(%rbp), %esi
	leaq	.LC77(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -64(%rbp)
.L71:
	cmpq	$0, -64(%rbp)
	je	.L125
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, -232(%rbp)
	cmpl	$1087, -232(%rbp)
	je	.L73
	cmpl	$1088, -232(%rbp)
	jne	.L69
.L73:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC78(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L69:
	cmpq	$0, -96(%rbp)
	je	.L74
	movq	$0, -312(%rbp)
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-312(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	init_gen_str@PLT
	testl	%eax, %eax
	je	.L126
	cmpq	$0, -80(%rbp)
	je	.L77
	movl	$0, -160(%rbp)
	jmp	.L78
.L80:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -240(%rbp)
	movq	-312(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L79
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC79(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L79:
	addl	$1, -160(%rbp)
.L78:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -160(%rbp)
	jl	.L80
.L77:
	movq	-312(%rbp), %rax
	movq	-96(%rbp), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	app_keygen@PLT
	movq	%rax, -64(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	cmpq	$0, -64(%rbp)
	je	.L127
.L74:
	cmpq	$0, -88(%rbp)
	je	.L82
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	jne	.L83
	call	EVP_sha256@PLT
	movq	%rax, -280(%rbp)
	leaq	.LC80(%rip), %rax
	movq	%rax, -104(%rbp)
.L83:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$855, %edi
	call	EVP_PKEY_new_raw_private_key@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L128
.L82:
	cmpq	$0, -64(%rbp)
	je	.L84
	movq	$0, -320(%rbp)
	movq	$0, -328(%rbp)
	leaq	-320(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L85
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L85:
	cmpl	$0, -176(%rbp)
	je	.L87
	cmpq	$0, -56(%rbp)
	jne	.L88
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-320(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rdx
	leaq	-328(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	movl	%eax, -200(%rbp)
	jmp	.L89
.L88:
	movq	-280(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	leaq	-328(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	movl	%eax, -200(%rbp)
	jmp	.L89
.L87:
	cmpq	$0, -56(%rbp)
	jne	.L90
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-320(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rdx
	leaq	-328(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	movl	%eax, -200(%rbp)
	jmp	.L89
.L90:
	movq	-280(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	leaq	-328(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	movl	%eax, -200(%rbp)
.L89:
	cmpl	$0, -200(%rbp)
	jne	.L91
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L91:
	cmpq	$0, -72(%rbp)
	je	.L96
	movl	$0, -160(%rbp)
	jmp	.L93
.L95:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -248(%rbp)
	movq	-328(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L94
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	leaq	.LC83(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L94:
	addl	$1, -160(%rbp)
.L93:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -160(%rbp)
	jl	.L95
	jmp	.L96
.L84:
	movq	$0, -336(%rbp)
	leaq	-336(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L97
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L97:
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	jne	.L99
	call	EVP_sha256@PLT
	movq	%rax, -280(%rbp)
.L99:
	movq	-280(%rbp), %rcx
	movq	-336(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jne	.L96
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L96:
	cmpq	$0, -136(%rbp)
	je	.L101
	cmpq	$0, -64(%rbp)
	je	.L101
	leaq	.LC85(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.L102
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC86(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L102:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	cltq
	leaq	.LC87(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -192(%rbp)
	movl	-156(%rbp), %edx
	movq	-192(%rbp), %rcx
	movq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -156(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -156(%rbp)
	jg	.L101
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC88(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L101:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -264(%rbp)
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	jne	.L103
	leaq	-344(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get1_md@PLT
	movq	%rax, -280(%rbp)
.L103:
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L104
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -144(%rbp)
.L104:
	cmpl	$0, -180(%rbp)
	jle	.L105
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_flags@PLT
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L106
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L106:
	cmpq	$0, -64(%rbp)
	je	.L105
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC90(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L105:
	cmpl	$0, -356(%rbp)
	jne	.L107
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-180(%rbp), %r9d
	movl	-168(%rbp), %r8d
	movl	-148(%rbp), %ecx
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	.LC91(%rip), %rdi
	pushq	%rdi
	pushq	-144(%rbp)
	pushq	$0
	movl	-156(%rbp), %edi
	pushq	%rdi
	pushq	-192(%rbp)
	pushq	-64(%rbp)
	movq	%rax, %rdi
	call	do_fp@PLT
	addq	$48, %rsp
	movl	%eax, -164(%rbp)
	jmp	.L43
.L107:
	movq	$0, -208(%rbp)
	cmpl	$0, -168(%rbp)
	jne	.L108
	cmpq	$0, -64(%rbp)
	je	.L108
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_type_name@PLT
	movq	%rax, -208(%rbp)
.L108:
	movl	$0, -164(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L109
.L113:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L110
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$1, -164(%rbp)
	jmp	.L111
.L110:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movl	-180(%rbp), %r9d
	movl	-168(%rbp), %r8d
	movl	-148(%rbp), %ecx
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rdi
	pushq	-144(%rbp)
	pushq	-208(%rbp)
	movl	-156(%rbp), %edi
	pushq	%rdi
	pushq	-192(%rbp)
	pushq	-64(%rbp)
	movq	%rax, %rdi
	call	do_fp@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L112
	movl	$1, -164(%rbp)
.L112:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L111:
	addl	$1, -160(%rbp)
.L109:
	movl	-160(%rbp), %eax
	cmpl	-356(%rbp), %eax
	jl	.L113
	jmp	.L43
.L116:
	nop
	jmp	.L43
.L120:
	nop
	jmp	.L43
.L121:
	nop
	jmp	.L43
.L123:
	nop
	jmp	.L43
.L124:
	nop
	jmp	.L43
.L125:
	nop
	jmp	.L43
.L126:
	nop
	jmp	.L43
.L127:
	nop
	jmp	.L43
.L128:
	nop
.L43:
	cmpl	$0, -164(%rbp)
	je	.L114
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L114:
	leaq	.LC92(%rip), %rdx
	movq	-224(%rbp), %rax
	movl	$465, %ecx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-272(%rbp), %rax
	leaq	.LC92(%rip), %rcx
	movl	$467, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC92(%rip), %rcx
	movq	-192(%rbp), %rax
	movl	$473, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movl	-164(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	dgst_main, .-dgst_main
	.section	.rodata
.LC93:
	.string	"rsa"
.LC94:
	.string	"RSA"
.LC95:
	.string	"-%-25s"
.LC96:
	.string	" "
	.text
	.type	show_digests, @function
show_digests:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC93(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L137
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC94(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L137
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L138
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L134
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	testq	%rax, %rax
	je	.L139
.L134:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC95(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L135
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L136
.L135:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC96(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L136:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	jmp	.L129
.L137:
	nop
	jmp	.L129
.L138:
	nop
	jmp	.L129
.L139:
	nop
.L129:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	show_digests, .-show_digests
	.type	newline_escape_filename, @function
newline_escape_filename:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L141
.L143:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L142
	addq	$1, -24(%rbp)
.L142:
	addq	$1, -8(%rbp)
.L141:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L143
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L144
.L147:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	cmpb	$10, -49(%rbp)
	jne	.L145
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movb	$92, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movb	$110, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movb	%al, (%rdx)
.L146:
	addq	$1, -16(%rbp)
.L144:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L147
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	newline_escape_filename, .-newline_escape_filename
	.section	.rodata
.LC97:
	.string	"Read error in %s\n"
.LC98:
	.string	"Verified OK\n"
.LC99:
	.string	"Verification failure\n"
.LC100:
	.string	"Error verifying data\n"
	.align 8
.LC101:
	.string	"Error getting maximum length of signed data\n"
.LC102:
	.string	"Signature buffer"
.LC103:
	.string	"Error signing data\n"
.LC104:
	.string	"Digest buffer"
.LC105:
	.string	"Error Digesting Data\n"
.LC106:
	.string	"\\"
.LC107:
	.string	"%02x"
.LC108:
	.string	" *%s\n"
.LC109:
	.string	"-%s"
.LC110:
	.string	"(%s)= "
.LC111:
	.string	"%s(%s)= "
.LC112:
	.string	":"
	.text
	.globl	do_fp
	.type	do_fp, @function
do_fp:
.LFB650:
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
	movl	%r9d, -100(%rbp)
	movq	$8192, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L150
.L154:
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L151
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	56(%rbp), %rdx
	leaq	.LC97(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L152
.L151:
	cmpl	$0, -4(%rbp)
	je	.L184
.L150:
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L154
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L154
	jmp	.L153
.L184:
	nop
.L153:
	cmpq	$0, 24(%rbp)
	je	.L155
	leaq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	32(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L156
	leaq	.LC98(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L152
.L156:
	cmpl	$0, -4(%rbp)
	jne	.L158
	leaq	.LC99(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L152
.L158:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L152
.L155:
	cmpq	$0, 16(%rbp)
	je	.L160
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jne	.L161
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L152
.L161:
	movq	-56(%rbp), %rax
	cmpq	$8192, %rax
	jbe	.L163
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC102(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
.L163:
	movq	-48(%rbp), %rax
	leaq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jne	.L165
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC103(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L152
.L160:
	cmpl	$0, -100(%rbp)
	jle	.L166
	movl	-100(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$8192, %rax
	jbe	.L167
	movq	-24(%rbp), %rax
	leaq	.LC104(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
.L167:
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	jne	.L165
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC105(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L152
.L166:
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testl	%eax, %eax
	js	.L185
.L165:
	cmpl	$0, -96(%rbp)
	je	.L169
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L170
.L169:
	cmpl	$2, -92(%rbp)
	jne	.L171
	leaq	-28(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	newline_escape_filename
	movq	%rax, 56(%rbp)
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	jne	.L172
	leaq	.LC106(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L172:
	movl	$0, -4(%rbp)
	jmp	.L173
.L174:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC107(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
.L173:
	movq	-24(%rbp), %rax
	cmpl	%eax, -4(%rbp)
	jl	.L174
	movq	56(%rbp), %rdx
	leaq	.LC108(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC92(%rip), %rcx
	movq	56(%rbp), %rax
	movl	$633, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L170
.L171:
	cmpq	$0, 40(%rbp)
	je	.L175
	movq	40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	cmpq	$0, 48(%rbp)
	je	.L176
	movq	48(%rbp), %rdx
	leaq	.LC109(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L176:
	movq	56(%rbp), %rdx
	leaq	.LC110(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L177
.L175:
	cmpq	$0, 48(%rbp)
	je	.L178
	movq	56(%rbp), %rcx
	movq	48(%rbp), %rdx
	leaq	.LC111(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L177
.L178:
	movq	56(%rbp), %rdx
	leaq	.LC110(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L177:
	movl	$0, -4(%rbp)
	jmp	.L179
.L181:
	cmpl	$0, -92(%rbp)
	je	.L180
	cmpl	$0, -4(%rbp)
	je	.L180
	leaq	.LC112(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L180:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC107(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
.L179:
	movq	-24(%rbp), %rax
	cmpl	%eax, -4(%rbp)
	jl	.L181
	leaq	.LC70(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L170:
	movl	$0, -8(%rbp)
	jmp	.L152
.L185:
	nop
.L152:
	cmpq	$0, -16(%rbp)
	je	.L182
	movq	-24(%rbp), %rsi
	leaq	.LC92(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$656, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L182:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	do_fp, .-do_fp
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

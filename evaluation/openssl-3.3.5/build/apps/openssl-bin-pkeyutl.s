	.file	"pkeyutl.c"
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
	.globl	pkeyutl_options
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
	.string	"engine_impl"
	.align 8
.LC6:
	.string	"Also use engine given by -engine for crypto operations"
.LC7:
	.string	"sign"
	.align 8
.LC8:
	.string	"Sign input data with private key"
.LC9:
	.string	"verify"
.LC10:
	.string	"Verify with public key"
.LC11:
	.string	"encrypt"
	.align 8
.LC12:
	.string	"Encrypt input data with public key"
.LC13:
	.string	"decrypt"
	.align 8
.LC14:
	.string	"Decrypt input data with private key"
.LC15:
	.string	"derive"
.LC16:
	.string	"Derive shared secret"
.LC17:
	.string	"config"
	.align 8
.LC18:
	.string	"Load a configuration file (this may load modules)"
.LC19:
	.string	"Input options:\n"
.LC20:
	.string	"in"
.LC21:
	.string	"Input file - default stdin"
.LC22:
	.string	"rawin"
	.align 8
.LC23:
	.string	"Indicate the input data is in raw form"
.LC24:
	.string	"inkey"
	.align 8
.LC25:
	.string	"Input key, by default private key"
.LC26:
	.string	"pubin"
.LC27:
	.string	"Input key is a public key"
.LC28:
	.string	"passin"
.LC29:
	.string	"Input file pass phrase source"
.LC30:
	.string	"peerkey"
	.align 8
.LC31:
	.string	"Peer key file used in key derivation"
.LC32:
	.string	"peerform"
	.align 8
.LC33:
	.string	"Peer key format (DER/PEM/P12/ENGINE)"
.LC34:
	.string	"certin"
	.align 8
.LC35:
	.string	"Input is a cert with a public key"
.LC36:
	.string	"rev"
	.align 8
.LC37:
	.string	"Reverse the order of the input buffer"
.LC38:
	.string	"sigfile"
	.align 8
.LC39:
	.string	"Signature file (verify operation only)"
.LC40:
	.string	"keyform"
	.align 8
.LC41:
	.string	"Private key format (ENGINE, other values ignored)"
.LC42:
	.string	"Output options:\n"
.LC43:
	.string	"out"
.LC44:
	.string	"Output file - default stdout"
.LC45:
	.string	"asn1parse"
	.align 8
.LC46:
	.string	"parse the output as ASN.1 data to check its DER encoding and print errors"
.LC47:
	.string	"hexdump"
.LC48:
	.string	"Hex dump output"
.LC49:
	.string	"verifyrecover"
	.align 8
.LC50:
	.string	"Verify RSA signature, recovering original signature input data"
.LC51:
	.string	"Signing/Derivation options:\n"
.LC52:
	.string	"digest"
	.align 8
.LC53:
	.string	"Specify the digest algorithm when signing the raw input data"
.LC54:
	.string	"pkeyopt"
	.align 8
.LC55:
	.string	"Public key options as opt:value"
.LC56:
	.string	"pkeyopt_passin"
	.align 8
.LC57:
	.string	"Public key option that is read as a passphrase argument opt:passphrase"
.LC58:
	.string	"kdf"
.LC59:
	.string	"Use KDF algorithm"
.LC60:
	.string	"kdflen"
.LC61:
	.string	"KDF algorithm output length"
.LC62:
	.string	"Random state options:\n"
.LC63:
	.string	"rand"
	.align 8
.LC64:
	.string	"Load the given file(s) into the random number generator"
.LC65:
	.string	"writerand"
	.align 8
.LC66:
	.string	"Write random data to the specified file"
.LC67:
	.string	"Provider options:\n"
.LC68:
	.string	"provider-path"
	.align 8
.LC69:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC70:
	.string	"provider"
	.align 8
.LC71:
	.string	"Provider to load (can be specified multiple times)"
.LC72:
	.string	"propquery"
	.align 8
.LC73:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	pkeyutl_options, @object
	.size	pkeyutl_options, 984
pkeyutl_options:
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
	.long	3
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	10
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	11
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	14
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	15
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	16
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	1605
	.long	60
	.quad	.LC18
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	4
	.long	60
	.quad	.LC21
	.quad	.LC22
	.long	1606
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	18
	.long	115
	.quad	.LC25
	.quad	.LC26
	.long	6
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	20
	.long	115
	.quad	.LC29
	.quad	.LC30
	.long	19
	.long	115
	.quad	.LC31
	.quad	.LC32
	.long	21
	.long	69
	.quad	.LC33
	.quad	.LC34
	.long	7
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	13
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	17
	.long	60
	.quad	.LC39
	.quad	.LC40
	.long	22
	.long	69
	.quad	.LC41
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	5
	.long	62
	.quad	.LC44
	.quad	.LC45
	.long	8
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	9
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	12
	.long	45
	.quad	.LC50
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC51
	.quad	.LC52
	.long	1607
	.long	115
	.quad	.LC53
	.quad	.LC54
	.long	23
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	24
	.long	115
	.quad	.LC57
	.quad	.LC58
	.long	25
	.long	115
	.quad	.LC59
	.quad	.LC60
	.long	26
	.long	112
	.quad	.LC61
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC62
	.quad	.LC63
	.long	1501
	.long	115
	.quad	.LC64
	.quad	.LC65
	.long	1502
	.long	62
	.quad	.LC66
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC67
	.quad	.LC68
	.long	1602
	.long	115
	.quad	.LC69
	.quad	.LC70
	.long	1601
	.long	115
	.quad	.LC71
	.quad	.LC72
	.long	1603
	.long	115
	.quad	.LC73
	.quad	0
	.zero	16
	.section	.rodata
.LC74:
	.string	"%s: Use -help for summary.\n"
.LC75:
	.string	"out of memory\n"
	.align 8
.LC76:
	.string	"%s: -rawin can only be used with -sign or -verify\n"
	.align 8
.LC77:
	.string	"%s: -digest can only be used with -rawin\n"
	.align 8
.LC78:
	.string	"%s: -rev cannot be used with raw input\n"
	.align 8
.LC79:
	.string	"%s: no KDF length given (-kdflen parameter).\n"
	.align 8
.LC80:
	.string	"%s: no private key given (-inkey parameter).\n"
	.align 8
.LC81:
	.string	"%s: no peer key given (-peerkey parameter).\n"
.LC82:
	.string	"Error: out of memory\n"
	.align 8
.LC83:
	.string	"%s: Error initializing context\n"
	.align 8
.LC84:
	.string	"%s: Error setting up peer key\n"
	.align 8
.LC85:
	.string	"%s: Can't set parameter \"%s\":\n"
.LC86:
	.string	"Enter %s: "
.LC87:
	.string	"user abort\n"
.LC88:
	.string	"entry failed\n"
.LC89:
	.string	"../apps/pkeyutl.c"
.LC90:
	.string	"failed to get '%s'\n"
	.align 8
.LC91:
	.string	"%s: Signature file specified for non verify\n"
	.align 8
.LC92:
	.string	"%s: No signature file specified for verify\n"
.LC93:
	.string	"rb"
.LC94:
	.string	"Can't open signature file %s\n"
.LC95:
	.string	"Error reading signature data\n"
.LC96:
	.string	"Error reading input Data\n"
	.align 8
.LC97:
	.string	"Error: The input data looks too long to be a hash\n"
	.align 8
.LC98:
	.string	"Signature Verified Successfully\n"
	.align 8
.LC99:
	.string	"Signature Verification Failure\n"
.LC100:
	.string	"buffer output"
.LC101:
	.string	"Public Key operation error\n"
.LC102:
	.string	"Key derivation failed\n"
	.text
	.globl	pkeyutl_main
	.type	pkeyutl_main, @function
pkeyutl_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4488, %rsp
	.cfi_offset 3, -24
	movl	%edi, -4484(%rbp)
	movq	%rsi, -4496(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movb	$0, -89(%rbp)
	movb	$0, -90(%rbp)
	movb	$0, -91(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -344(%rbp)
	movl	$0, -96(%rbp)
	movl	$-1, -100(%rbp)
	movl	$0, -348(%rbp)
	movl	$0, -352(%rbp)
	movl	$-1, -356(%rbp)
	movl	$16, -104(%rbp)
	movl	$1, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$1, -116(%rbp)
	movl	$-1, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -156(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -224(%rbp)
	movl	$-1, -196(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -232(%rbp)
	movq	pkeyutl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-4496(%rbp), %rcx
	movl	-4484(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -240(%rbp)
	jmp	.L12
.L60:
	cmpl	$1607, -244(%rbp)
	je	.L13
	cmpl	$1607, -244(%rbp)
	jg	.L12
	cmpl	$1606, -244(%rbp)
	je	.L14
	cmpl	$1606, -244(%rbp)
	jg	.L12
	cmpl	$1605, -244(%rbp)
	je	.L15
	cmpl	$1605, -244(%rbp)
	jg	.L12
	cmpl	$1604, -244(%rbp)
	je	.L12
	cmpl	$1604, -244(%rbp)
	jg	.L12
	cmpl	$1603, -244(%rbp)
	jg	.L12
	cmpl	$1601, -244(%rbp)
	jge	.L17
	cmpl	$1600, -244(%rbp)
	je	.L12
	cmpl	$1600, -244(%rbp)
	jg	.L12
	cmpl	$1503, -244(%rbp)
	je	.L12
	cmpl	$1503, -244(%rbp)
	jg	.L12
	cmpl	$1502, -244(%rbp)
	jg	.L12
	cmpl	$1501, -244(%rbp)
	jge	.L19
	cmpl	$1500, -244(%rbp)
	je	.L12
	cmpl	$1500, -244(%rbp)
	jg	.L12
	cmpl	$26, -244(%rbp)
	je	.L20
	cmpl	$26, -244(%rbp)
	jg	.L12
	cmpl	$25, -244(%rbp)
	je	.L21
	cmpl	$25, -244(%rbp)
	jg	.L12
	cmpl	$24, -244(%rbp)
	je	.L22
	cmpl	$24, -244(%rbp)
	jg	.L12
	cmpl	$23, -244(%rbp)
	je	.L23
	cmpl	$23, -244(%rbp)
	jg	.L12
	cmpl	$22, -244(%rbp)
	je	.L24
	cmpl	$22, -244(%rbp)
	jg	.L12
	cmpl	$21, -244(%rbp)
	je	.L25
	cmpl	$21, -244(%rbp)
	jg	.L12
	cmpl	$20, -244(%rbp)
	je	.L26
	cmpl	$20, -244(%rbp)
	jg	.L12
	cmpl	$19, -244(%rbp)
	je	.L27
	cmpl	$19, -244(%rbp)
	jg	.L12
	cmpl	$18, -244(%rbp)
	je	.L28
	cmpl	$18, -244(%rbp)
	jg	.L12
	cmpl	$17, -244(%rbp)
	je	.L29
	cmpl	$17, -244(%rbp)
	jg	.L12
	cmpl	$16, -244(%rbp)
	je	.L30
	cmpl	$16, -244(%rbp)
	jg	.L12
	cmpl	$15, -244(%rbp)
	je	.L31
	cmpl	$15, -244(%rbp)
	jg	.L12
	cmpl	$14, -244(%rbp)
	je	.L32
	cmpl	$14, -244(%rbp)
	jg	.L12
	cmpl	$13, -244(%rbp)
	je	.L33
	cmpl	$13, -244(%rbp)
	jg	.L12
	cmpl	$12, -244(%rbp)
	je	.L34
	cmpl	$12, -244(%rbp)
	jg	.L12
	cmpl	$11, -244(%rbp)
	je	.L35
	cmpl	$11, -244(%rbp)
	jg	.L12
	cmpl	$10, -244(%rbp)
	je	.L36
	cmpl	$10, -244(%rbp)
	jg	.L12
	cmpl	$9, -244(%rbp)
	je	.L37
	cmpl	$9, -244(%rbp)
	jg	.L12
	cmpl	$8, -244(%rbp)
	je	.L38
	cmpl	$8, -244(%rbp)
	jg	.L12
	cmpl	$7, -244(%rbp)
	je	.L39
	cmpl	$7, -244(%rbp)
	jg	.L12
	cmpl	$6, -244(%rbp)
	je	.L40
	cmpl	$6, -244(%rbp)
	jg	.L12
	cmpl	$5, -244(%rbp)
	je	.L41
	cmpl	$5, -244(%rbp)
	jg	.L12
	cmpl	$4, -244(%rbp)
	je	.L42
	cmpl	$4, -244(%rbp)
	jg	.L12
	cmpl	$3, -244(%rbp)
	je	.L43
	cmpl	$3, -244(%rbp)
	jg	.L12
	cmpl	$2, -244(%rbp)
	je	.L44
	cmpl	$2, -244(%rbp)
	jg	.L12
	cmpl	$0, -244(%rbp)
	jg	.L45
	cmpl	$-1, -244(%rbp)
	jge	.L46
	jmp	.L12
.L45:
	cmpl	$1, -244(%rbp)
	je	.L47
	jmp	.L12
.L118:
	nop
	jmp	.L46
.L119:
	nop
	jmp	.L46
.L123:
	nop
.L46:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L47:
	movq	pkeyutl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -116(%rbp)
	jmp	.L48
.L42:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L12
.L41:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L12
.L29:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L12
.L43:
	movl	$1, -112(%rbp)
	jmp	.L12
.L28:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	jmp	.L12
.L27:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L12
.L26:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L12
.L25:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L118
	jmp	.L12
.L24:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-348(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L119
	jmp	.L12
.L19:
	movl	-244(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L120
	jmp	.L12
.L15:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	app_load_config_modules@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L121
	jmp	.L12
.L17:
	movl	-244(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L122
	jmp	.L12
.L44:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -48(%rbp)
	jmp	.L12
.L40:
	movl	$2, -108(%rbp)
	jmp	.L12
.L39:
	movl	$3, -108(%rbp)
	jmp	.L12
.L38:
	movb	$1, -90(%rbp)
	jmp	.L12
.L37:
	movb	$1, -89(%rbp)
	jmp	.L12
.L36:
	movl	$16, -104(%rbp)
	jmp	.L12
.L35:
	movl	$32, -104(%rbp)
	jmp	.L12
.L34:
	movl	$64, -104(%rbp)
	jmp	.L12
.L32:
	movl	$512, -104(%rbp)
	jmp	.L12
.L31:
	movl	$1024, -104(%rbp)
	jmp	.L12
.L30:
	movl	$2048, -104(%rbp)
	jmp	.L12
.L21:
	movl	$2048, -104(%rbp)
	movl	$0, -108(%rbp)
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	jmp	.L12
.L20:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -156(%rbp)
	jmp	.L12
.L33:
	movb	$1, -91(%rbp)
	jmp	.L12
.L23:
	cmpq	$0, -168(%rbp)
	jne	.L54
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L55
.L54:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L12
.L55:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L22:
	cmpq	$0, -176(%rbp)
	jne	.L57
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.L58
.L57:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L12
.L58:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L14:
	movl	$1, -180(%rbp)
	jmp	.L12
.L13:
	call	opt_arg@PLT
	movq	%rax, -152(%rbp)
	nop
.L12:
	call	opt_next@PLT
	movl	%eax, -244(%rbp)
	cmpl	$0, -244(%rbp)
	jne	.L60
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L123
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L124
	cmpl	$0, -180(%rbp)
	je	.L63
	cmpl	$16, -104(%rbp)
	je	.L63
	cmpl	$32, -104(%rbp)
	je	.L63
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC76(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L46
.L63:
	cmpq	$0, -152(%rbp)
	je	.L64
	cmpl	$0, -180(%rbp)
	jne	.L64
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC77(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L46
.L64:
	cmpl	$0, -180(%rbp)
	je	.L65
	cmpb	$0, -91(%rbp)
	je	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC78(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L46
.L65:
	cmpq	$0, -144(%rbp)
	je	.L66
	cmpl	$0, -156(%rbp)
	jne	.L67
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC79(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L46
.L66:
	cmpq	$0, -128(%rbp)
	jne	.L68
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC80(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L46
.L68:
	cmpq	$0, -136(%rbp)
	je	.L67
	cmpl	$2048, -104(%rbp)
	je	.L67
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC81(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L46
.L67:
	cmpl	$0, -180(%rbp)
	je	.L69
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L69
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L69:
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movl	-348(%rbp), %ecx
	movq	-88(%rbp), %r9
	movl	-108(%rbp), %r8d
	movq	-128(%rbp), %rdx
	leaq	-356(%rbp), %rsi
	movq	-144(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	pushq	-232(%rbp)
	pushq	-152(%rbp)
	pushq	-192(%rbp)
	leaq	-320(%rbp), %rdi
	pushq	%rdi
	movl	-180(%rbp), %edi
	pushq	%rdi
	movl	-112(%rbp), %edi
	pushq	%rdi
	pushq	-48(%rbp)
	movl	-104(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	init_ctx
	addq	$80, %rsp
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L70
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC83(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L70:
	cmpq	$0, -136(%rbp)
	je	.L71
	movl	-352(%rbp), %esi
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	setup_peer
	testl	%eax, %eax
	jne	.L71
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC84(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L71:
	cmpq	$0, -168(%rbp)
	je	.L72
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -248(%rbp)
	movl	$0, -200(%rbp)
	jmp	.L73
.L75:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L74
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rcx
	movq	-240(%rbp), %rdx
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L74:
	addl	$1, -200(%rbp)
.L73:
	movl	-200(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jl	.L75
.L72:
	cmpq	$0, -176(%rbp)
	je	.L76
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -260(%rbp)
	movl	$0, -204(%rbp)
	jmp	.L77
.L87:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.L78
	movq	-272(%rbp), %rdx
	leaq	.LC86(%rip), %rsi
	leaq	-4480(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$4096, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-4480(%rbp), %rdx
	leaq	-4480(%rbp), %rax
	movl	$0, %ecx
	movl	$4095, %esi
	movq	%rax, %rdi
	call	EVP_read_pw_string@PLT
	movl	%eax, -284(%rbp)
	cmpl	$0, -284(%rbp)
	jns	.L79
	cmpl	$-2, -284(%rbp)
	jne	.L80
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC87(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L80:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC88(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L79:
	leaq	.LC89(%rip), %rcx
	leaq	-4480(%rbp), %rax
	movl	$354, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	testq	%rax, %rax
	jne	.L84
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L78:
	movq	-280(%rbp), %rax
	movb	$0, (%rax)
	addq	$1, -280(%rbp)
	leaq	-376(%rbp), %rdx
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L84
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC90(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L84:
	movq	-376(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl_str@PLT
	testl	%eax, %eax
	jg	.L86
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rcx
	movq	-240(%rbp), %rdx
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-376(%rbp), %rax
	leaq	.LC89(%rip), %rcx
	movl	$373, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L48
.L86:
	movq	-376(%rbp), %rax
	leaq	.LC89(%rip), %rcx
	movl	$376, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -204(%rbp)
.L77:
	movl	-204(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L87
.L76:
	cmpq	$0, -80(%rbp)
	je	.L88
	cmpl	$32, -104(%rbp)
	je	.L88
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC91(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L88:
	cmpq	$0, -80(%rbp)
	jne	.L89
	cmpl	$32, -104(%rbp)
	jne	.L89
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	leaq	.LC92(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L89:
	cmpl	$2048, -104(%rbp)
	je	.L90
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L91
	leaq	-4480(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	jne	.L91
	movq	-4432(%rbp), %rax
	cmpq	$2147483647, %rax
	jg	.L91
	movq	-4432(%rbp), %rax
	movl	%eax, -196(%rbp)
.L91:
	cmpq	$0, -32(%rbp)
	je	.L125
.L90:
	movq	-72(%rbp), %rax
	movl	$2, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L126
	cmpq	$0, -80(%rbp)
	je	.L94
	leaq	.LC93(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.L95
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC94(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L95:
	movl	-356(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-296(%rbp), %rdx
	leaq	-344(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_to_mem@PLT
	movl	%eax, -100(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -100(%rbp)
	jns	.L94
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC95(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L94:
	cmpq	$0, -32(%rbp)
	je	.L96
	cmpl	$0, -180(%rbp)
	jne	.L96
	movq	-32(%rbp), %rdx
	leaq	-328(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	bio_to_mem@PLT
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jns	.L97
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC96(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L97:
	cmpb	$0, -91(%rbp)
	je	.L96
	movl	-96(%rbp), %eax
	cltq
	movq	%rax, -304(%rbp)
	movq	$0, -216(%rbp)
	jmp	.L98
.L99:
	movq	-328(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -305(%rbp)
	movq	-328(%rbp), %rdx
	movq	-304(%rbp), %rax
	subq	-216(%rbp), %rax
	subq	$1, %rax
	addq	%rdx, %rax
	movq	-328(%rbp), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-328(%rbp), %rdx
	movq	-304(%rbp), %rax
	subq	-216(%rbp), %rax
	subq	$1, %rax
	addq	%rax, %rdx
	movzbl	-305(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -216(%rbp)
.L98:
	movq	-304(%rbp), %rax
	shrq	%rax
	cmpq	%rax, -216(%rbp)
	jb	.L99
.L96:
	cmpl	$0, -180(%rbp)
	jne	.L100
	cmpl	$64, -96(%rbp)
	jle	.L100
	cmpl	$16, -104(%rbp)
	je	.L101
	cmpl	$32, -104(%rbp)
	jne	.L100
.L101:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC97(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L48
.L100:
	cmpl	$32, -104(%rbp)
	jne	.L102
	cmpl	$0, -180(%rbp)
	je	.L103
	movq	-344(%rbp), %r9
	movq	-320(%rbp), %rdx
	movl	-196(%rbp), %r8d
	movq	-32(%rbp), %rcx
	movq	-192(%rbp), %rsi
	movl	-104(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	-100(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	do_raw_keyop
	addq	$32, %rsp
	movl	%eax, -120(%rbp)
	jmp	.L104
.L103:
	movl	-96(%rbp), %eax
	movslq	%eax, %rdi
	movq	-328(%rbp), %rcx
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-344(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, -120(%rbp)
.L104:
	cmpl	$1, -120(%rbp)
	jne	.L105
	leaq	.LC98(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, -116(%rbp)
	jmp	.L48
.L105:
	leaq	.LC99(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L102:
	cmpl	$0, -180(%rbp)
	je	.L107
	movq	-320(%rbp), %rdx
	movl	-196(%rbp), %r8d
	movq	-32(%rbp), %rcx
	movq	-192(%rbp), %rsi
	movl	-104(%rbp), %eax
	subq	$8, %rsp
	leaq	-368(%rbp), %rdi
	pushq	%rdi
	leaq	-336(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	movl	$0, %r9d
	movl	%eax, %edi
	call	do_raw_keyop
	addq	$32, %rsp
	movl	%eax, -120(%rbp)
	jmp	.L108
.L107:
	cmpl	$0, -156(%rbp)
	je	.L109
	movl	-156(%rbp), %eax
	cltq
	movq	%rax, -368(%rbp)
	movl	$1, -120(%rbp)
	jmp	.L110
.L109:
	movl	-96(%rbp), %eax
	movslq	%eax, %rdi
	movq	-328(%rbp), %rcx
	leaq	-368(%rbp), %rdx
	movl	-104(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_keyop
	movl	%eax, -120(%rbp)
.L110:
	cmpl	$0, -120(%rbp)
	jle	.L108
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	je	.L108
	movq	-368(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -336(%rbp)
	movl	-96(%rbp), %eax
	movslq	%eax, %r8
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rdx
	leaq	-368(%rbp), %rcx
	movl	-104(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_keyop
	movl	%eax, -120(%rbp)
.L108:
	cmpl	$0, -120(%rbp)
	jg	.L111
	cmpl	$2048, -104(%rbp)
	je	.L112
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L112:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC102(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L48
.L111:
	movl	$0, -116(%rbp)
	cmpb	$0, -90(%rbp)
	je	.L114
	movq	-368(%rbp), %rax
	movq	%rax, %rdx
	movq	-336(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$-1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ASN1_parse_dump@PLT
	testl	%eax, %eax
	jne	.L48
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L48
.L114:
	cmpb	$0, -89(%rbp)
	je	.L115
	movq	-368(%rbp), %rax
	movl	%eax, %edx
	movq	-336(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	jmp	.L48
.L115:
	movq	-368(%rbp), %rax
	movl	%eax, %edx
	movq	-336(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L48
.L120:
	nop
	jmp	.L48
.L121:
	nop
	jmp	.L48
.L122:
	nop
	jmp	.L48
.L124:
	nop
	jmp	.L48
.L125:
	nop
	jmp	.L48
.L126:
	nop
.L48:
	cmpl	$0, -116(%rbp)
	je	.L116
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L116:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-328(%rbp), %rax
	leaq	.LC89(%rip), %rcx
	movl	$515, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-336(%rbp), %rax
	leaq	.LC89(%rip), %rcx
	movl	$516, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-344(%rbp), %rax
	leaq	.LC89(%rip), %rcx
	movl	$517, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-116(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	pkeyutl_main, .-pkeyutl_main
	.section	.rodata
	.align 8
.LC103:
	.string	"A private key is needed for this operation\n"
.LC104:
	.string	"Error getting password\n"
.LC105:
	.string	"private key"
.LC106:
	.string	"public key"
.LC107:
	.string	"Certificate"
	.align 8
.LC108:
	.string	"The given KDF \"%s\" is unknown.\n"
	.text
	.type	init_ctx, @function
init_ctx:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$-1, -28(%rbp)
	cmpl	$16, 16(%rbp)
	je	.L128
	cmpl	$1024, 16(%rbp)
	je	.L128
	cmpl	$2048, 16(%rbp)
	jne	.L129
.L128:
	cmpl	$1, -80(%rbp)
	je	.L129
	cmpq	$0, -56(%rbp)
	jne	.L129
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC103(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L130
.L129:
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L131
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC104(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L130
.L131:
	cmpl	$3, -80(%rbp)
	je	.L132
	cmpl	$3, -80(%rbp)
	jg	.L133
	cmpl	$2, -80(%rbp)
	je	.L134
	cmpl	$2, -80(%rbp)
	jg	.L133
	cmpl	$0, -80(%rbp)
	je	.L159
	cmpl	$1, -80(%rbp)
	jne	.L133
	movq	-48(%rbp), %rdx
	leaq	.LC105(%rip), %rdi
	movq	24(%rbp), %rcx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -8(%rbp)
	jmp	.L133
.L134:
	leaq	.LC106(%rip), %rcx
	movq	24(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -8(%rbp)
	jmp	.L133
.L132:
	leaq	.LC107(%rip), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L160
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L160
.L159:
	nop
	jmp	.L133
.L160:
	nop
.L133:
	cmpl	$0, 32(%rbp)
	je	.L137
	movq	24(%rbp), %rax
	movq	%rax, -24(%rbp)
.L137:
	cmpq	$0, -56(%rbp)
	je	.L138
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L139
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L139
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC108(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L130
.L139:
	cmpq	$0, -24(%rbp)
	je	.L140
	movq	-24(%rbp), %rdx
	movl	-32(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	jmp	.L141
.L140:
	movq	80(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	jmp	.L141
.L138:
	cmpq	$0, -8(%rbp)
	je	.L161
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movq	-64(%rbp), %rdx
	movl	%eax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L143
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.L144
.L143:
	movq	80(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
.L144:
	cmpq	$0, 48(%rbp)
	je	.L145
	movq	48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L145:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L141:
	cmpq	$0, -16(%rbp)
	je	.L162
	cmpl	$0, 40(%rbp)
	je	.L147
	movq	-16(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_pkey_ctx@PLT
	cmpl	$16, 16(%rbp)
	je	.L148
	cmpl	$32, 16(%rbp)
	je	.L149
	jmp	.L151
.L148:
	movq	-8(%rbp), %rdi
	movq	80(%rbp), %rsi
	movq	72(%rbp), %rcx
	movq	64(%rbp), %rdx
	movq	56(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	jmp	.L151
.L149:
	movq	-8(%rbp), %rdi
	movq	80(%rbp), %rsi
	movq	72(%rbp), %rcx
	movq	64(%rbp), %rdx
	movq	56(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	jmp	.L151
.L147:
	cmpl	$2048, 16(%rbp)
	je	.L152
	cmpl	$2048, 16(%rbp)
	jg	.L151
	cmpl	$1024, 16(%rbp)
	je	.L153
	cmpl	$1024, 16(%rbp)
	jg	.L151
	cmpl	$512, 16(%rbp)
	je	.L154
	cmpl	$512, 16(%rbp)
	jg	.L151
	cmpl	$64, 16(%rbp)
	je	.L155
	cmpl	$64, 16(%rbp)
	jg	.L151
	cmpl	$16, 16(%rbp)
	je	.L156
	cmpl	$32, 16(%rbp)
	je	.L157
	jmp	.L151
.L156:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	movl	%eax, -28(%rbp)
	jmp	.L151
.L157:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	movl	%eax, -28(%rbp)
	jmp	.L151
.L155:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_recover_init@PLT
	movl	%eax, -28(%rbp)
	jmp	.L151
.L154:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, -28(%rbp)
	jmp	.L151
.L153:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	movl	%eax, -28(%rbp)
	jmp	.L151
.L152:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, -28(%rbp)
	nop
.L151:
	cmpl	$0, -28(%rbp)
	jg	.L163
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L130
.L161:
	nop
	jmp	.L130
.L162:
	nop
	jmp	.L130
.L163:
	nop
.L130:
	movq	-48(%rbp), %rax
	leaq	.LC89(%rip), %rcx
	movl	$656, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	init_ctx, .-init_ctx
	.section	.rodata
.LC109:
	.string	"peer key"
.LC110:
	.string	"Error reading peer key %s\n"
	.text
	.type	setup_peer, @function
setup_peer:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$8, -44(%rbp)
	jne	.L165
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L165:
	leaq	.LC109(%rip), %rcx
	movq	-8(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L166
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC110(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	setup_peer, .-setup_peer
	.type	do_keyop, @function
do_keyop:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$2048, -28(%rbp)
	je	.L169
	cmpl	$2048, -28(%rbp)
	jg	.L170
	cmpl	$1024, -28(%rbp)
	je	.L171
	cmpl	$1024, -28(%rbp)
	jg	.L170
	cmpl	$512, -28(%rbp)
	je	.L172
	cmpl	$512, -28(%rbp)
	jg	.L170
	cmpl	$16, -28(%rbp)
	je	.L173
	cmpl	$64, -28(%rbp)
	jne	.L170
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify_recover@PLT
	movl	%eax, -4(%rbp)
	jmp	.L170
.L173:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, -4(%rbp)
	jmp	.L170
.L172:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, -4(%rbp)
	jmp	.L170
.L171:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	movl	%eax, -4(%rbp)
	jmp	.L170
.L169:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, -4(%rbp)
	nop
.L170:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	do_keyop, .-do_keyop
	.section	.rodata
	.align 8
.LC111:
	.string	"Error: unable to determine file size for oneshot operation\n"
.LC112:
	.string	"oneshot sign/verify buffer"
.LC113:
	.string	"Error reading raw input data\n"
	.align 8
.LC114:
	.string	"Error verifying raw input data\n"
.LC115:
	.string	"Error signing raw input data\n"
	.text
	.type	do_raw_keyop, @function
do_raw_keyop:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2128, %rsp
	movl	%edi, -2084(%rbp)
	movq	%rsi, -2096(%rbp)
	movq	%rdx, -2104(%rbp)
	movq	%rcx, -2112(%rbp)
	movl	%r8d, -2088(%rbp)
	movq	%r9, -2120(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-2104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1087, %eax
	je	.L176
	movq	-2104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1088, %eax
	jne	.L177
.L176:
	cmpl	$0, -2088(%rbp)
	jns	.L178
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC111(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L178:
	movl	-2088(%rbp), %eax
	cltq
	leaq	.LC112(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpl	$16, -2084(%rbp)
	je	.L180
	cmpl	$32, -2084(%rbp)
	jne	.L199
	movl	-2088(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-2112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-2088(%rbp), %eax
	je	.L182
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L182:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdi
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-2120(%rbp), %rsi
	movq	-2096(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -4(%rbp)
	jmp	.L181
.L180:
	movl	-2088(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-2112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-2088(%rbp), %eax
	je	.L183
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L183:
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-2096(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L200
	cmpq	$0, 24(%rbp)
	je	.L200
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	24(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdi
	movq	24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-2096(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, -4(%rbp)
.L200:
	nop
.L181:
	jmp	.L199
.L177:
	cmpl	$16, -2084(%rbp)
	je	.L185
	cmpl	$32, -2084(%rbp)
	jne	.L179
.L190:
	leaq	-2080(%rbp), %rcx
	movq	-2112(%rbp), %rax
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L201
	cmpl	$0, -20(%rbp)
	jns	.L188
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L188:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-2080(%rbp), %rcx
	movq	-2096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L190
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC114(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L201:
	nop
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2120(%rbp), %rcx
	movq	-2096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, -4(%rbp)
	jmp	.L179
.L185:
	leaq	-2080(%rbp), %rcx
	movq	-2112(%rbp), %rax
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L202
	cmpl	$0, -20(%rbp)
	jns	.L193
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L193:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-2080(%rbp), %rcx
	movq	-2096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L185
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC115(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L202:
	nop
	movq	32(%rbp), %rdx
	movq	-2096(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L203
	cmpq	$0, 24(%rbp)
	je	.L203
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	(%rax), %rcx
	movq	32(%rbp), %rdx
	movq	-2096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	movl	%eax, -4(%rbp)
	jmp	.L203
.L199:
	nop
	jmp	.L179
.L203:
	nop
.L179:
	leaq	.LC89(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$800, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	do_raw_keyop, .-do_raw_keyop
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

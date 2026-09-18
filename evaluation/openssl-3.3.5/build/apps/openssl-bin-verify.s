	.file	"verify.c"
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB330:
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
.LFE330:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB343:
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
.LFE343:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.type	ossl_check_X509_CRL_freefunc_type, @function
ossl_check_X509_CRL_freefunc_type:
.LFB346:
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
.LFE346:
	.size	ossl_check_X509_CRL_freefunc_type, .-ossl_check_X509_CRL_freefunc_type
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
	.local	v_verbose
	.comm	v_verbose,4,4
	.local	vflags
	.comm	vflags,4,4
	.globl	verify_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [cert...]\n"
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
	.string	"Use engine, possibly a hardware device"
.LC6:
	.string	"verbose"
	.align 8
.LC7:
	.string	"Print extra information about the operations being performed."
.LC8:
	.string	"nameopt"
	.align 8
.LC9:
	.string	"Certificate subject/issuer name printing options"
.LC10:
	.string	"Certificate chain options:\n"
.LC11:
	.string	"trusted"
	.align 8
.LC12:
	.string	"A file of trusted certificates"
.LC13:
	.string	"CAfile"
.LC14:
	.string	"CApath"
	.align 8
.LC15:
	.string	"A directory of files with trusted certificates"
.LC16:
	.string	"CAstore"
	.align 8
.LC17:
	.string	"URI to a store of trusted certificates"
.LC18:
	.string	"no-CAfile"
	.align 8
.LC19:
	.string	"Do not load the default trusted certificates file"
.LC20:
	.string	"no-CApath"
	.align 8
.LC21:
	.string	"Do not load trusted certificates from the default directory"
.LC22:
	.string	"no-CAstore"
	.align 8
.LC23:
	.string	"Do not load trusted certificates from the default certificates store"
.LC24:
	.string	"untrusted"
	.align 8
.LC25:
	.string	"A file of untrusted certificates"
.LC26:
	.string	"CRLfile"
	.align 8
.LC27:
	.string	"File containing one or more CRL's (in PEM format) to load"
.LC28:
	.string	"crl_download"
	.align 8
.LC29:
	.string	"Try downloading CRL information for certificates via their CDP entries"
.LC30:
	.string	"show_chain"
	.align 8
.LC31:
	.string	"Display information about the certificate chain"
.LC32:
	.string	"Validation options:\n"
.LC33:
	.string	"policy"
	.align 8
.LC34:
	.string	"adds policy to the acceptable policy set"
.LC35:
	.string	"purpose"
.LC36:
	.string	"certificate chain purpose"
.LC37:
	.string	"verify_name"
.LC38:
	.string	"verification policy name"
.LC39:
	.string	"verify_depth"
.LC40:
	.string	"chain depth limit"
.LC41:
	.string	"auth_level"
	.align 8
.LC42:
	.string	"chain authentication security level"
.LC43:
	.string	"attime"
.LC44:
	.string	"verification epoch time"
.LC45:
	.string	"verify_hostname"
.LC46:
	.string	"expected peer hostname"
.LC47:
	.string	"verify_email"
.LC48:
	.string	"expected peer email"
.LC49:
	.string	"verify_ip"
.LC50:
	.string	"expected peer IP address"
.LC51:
	.string	"ignore_critical"
	.align 8
.LC52:
	.string	"permit unhandled critical extensions"
.LC53:
	.string	"issuer_checks"
.LC54:
	.string	"(deprecated)"
.LC55:
	.string	"crl_check"
	.align 8
.LC56:
	.string	"check leaf certificate revocation"
.LC57:
	.string	"crl_check_all"
.LC58:
	.string	"check full chain revocation"
.LC59:
	.string	"policy_check"
.LC60:
	.string	"perform rfc5280 policy checks"
.LC61:
	.string	"explicit_policy"
	.align 8
.LC62:
	.string	"set policy variable require-explicit-policy"
.LC63:
	.string	"inhibit_any"
	.align 8
.LC64:
	.string	"set policy variable inhibit-any-policy"
.LC65:
	.string	"inhibit_map"
	.align 8
.LC66:
	.string	"set policy variable inhibit-policy-mapping"
.LC67:
	.string	"x509_strict"
	.align 8
.LC68:
	.string	"disable certificate compatibility work-arounds"
.LC69:
	.string	"extended_crl"
.LC70:
	.string	"enable extended CRL features"
.LC71:
	.string	"use_deltas"
.LC72:
	.string	"use delta CRLs"
.LC73:
	.string	"policy_print"
	.align 8
.LC74:
	.string	"print policy processing diagnostics"
.LC75:
	.string	"check_ss_sig"
.LC76:
	.string	"check root CA self-signatures"
.LC77:
	.string	"trusted_first"
	.align 8
.LC78:
	.string	"search trust store first (default)"
.LC79:
	.string	"suiteB_128_only"
.LC80:
	.string	"Suite B 128-bit-only mode"
.LC81:
	.string	"suiteB_128"
	.align 8
.LC82:
	.string	"Suite B 128-bit mode allowing 192-bit algorithms"
.LC83:
	.string	"suiteB_192"
.LC84:
	.string	"Suite B 192-bit-only mode"
.LC85:
	.string	"partial_chain"
	.align 8
.LC86:
	.string	"accept chains anchored by intermediate trust-store CAs"
.LC87:
	.string	"no_alt_chains"
.LC88:
	.string	"no_check_time"
	.align 8
.LC89:
	.string	"ignore certificate validity time"
.LC90:
	.string	"allow_proxy_certs"
	.align 8
.LC91:
	.string	"allow the use of proxy certificates"
.LC92:
	.string	"vfyopt"
	.align 8
.LC93:
	.string	"Verification parameter in n:v form"
.LC94:
	.string	"Provider options:\n"
.LC95:
	.string	"provider-path"
	.align 8
.LC96:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC97:
	.string	"provider"
	.align 8
.LC98:
	.string	"Provider to load (can be specified multiple times)"
.LC99:
	.string	"propquery"
	.align 8
.LC100:
	.string	"Property query used when fetching algorithms"
.LC101:
	.string	"Parameters:\n"
.LC102:
	.string	"cert"
	.align 8
.LC103:
	.string	"Certificate(s) to verify (optional; stdin used otherwise)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	verify_options, @object
	.size	verify_options, 1368
verify_options:
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
	.long	115
	.quad	.LC5
	.quad	.LC6
	.long	2034
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	2032
	.long	115
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	10
	.long	60
	.quad	.LC12
	.quad	.LC13
	.long	4
	.long	60
	.quad	.LC12
	.quad	.LC14
	.long	3
	.long	47
	.quad	.LC15
	.quad	.LC16
	.long	5
	.long	58
	.quad	.LC17
	.quad	.LC18
	.long	7
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	6
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	8
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	9
	.long	60
	.quad	.LC25
	.quad	.LC26
	.long	11
	.long	60
	.quad	.LC27
	.quad	.LC28
	.long	12
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	13
	.long	45
	.quad	.LC31
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	2001
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	2002
	.long	115
	.quad	.LC36
	.quad	.LC37
	.long	2003
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	2004
	.long	110
	.quad	.LC40
	.quad	.LC41
	.long	2029
	.long	110
	.quad	.LC42
	.quad	.LC43
	.long	2005
	.long	77
	.quad	.LC44
	.quad	.LC45
	.long	2006
	.long	115
	.quad	.LC46
	.quad	.LC47
	.long	2007
	.long	115
	.quad	.LC48
	.quad	.LC49
	.long	2008
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	2009
	.long	45
	.quad	.LC52
	.quad	.LC53
	.long	2010
	.long	45
	.quad	.LC54
	.quad	.LC55
	.long	2011
	.long	45
	.quad	.LC56
	.quad	.LC57
	.long	2012
	.long	45
	.quad	.LC58
	.quad	.LC59
	.long	2013
	.long	45
	.quad	.LC60
	.quad	.LC61
	.long	2014
	.long	45
	.quad	.LC62
	.quad	.LC63
	.long	2015
	.long	45
	.quad	.LC64
	.quad	.LC65
	.long	2016
	.long	45
	.quad	.LC66
	.quad	.LC67
	.long	2017
	.long	45
	.quad	.LC68
	.quad	.LC69
	.long	2018
	.long	45
	.quad	.LC70
	.quad	.LC71
	.long	2019
	.long	45
	.quad	.LC72
	.quad	.LC73
	.long	2020
	.long	45
	.quad	.LC74
	.quad	.LC75
	.long	2021
	.long	45
	.quad	.LC76
	.quad	.LC77
	.long	2022
	.long	45
	.quad	.LC78
	.quad	.LC79
	.long	2023
	.long	45
	.quad	.LC80
	.quad	.LC81
	.long	2024
	.long	45
	.quad	.LC82
	.quad	.LC83
	.long	2025
	.long	45
	.quad	.LC84
	.quad	.LC85
	.long	2026
	.long	45
	.quad	.LC86
	.quad	.LC87
	.long	2027
	.long	45
	.quad	.LC54
	.quad	.LC88
	.long	2028
	.long	45
	.quad	.LC89
	.quad	.LC90
	.long	2030
	.long	45
	.quad	.LC91
	.quad	.LC92
	.long	2033
	.long	115
	.quad	.LC93
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC94
	.quad	.LC95
	.long	1602
	.long	115
	.quad	.LC96
	.quad	.LC97
	.long	1601
	.long	115
	.quad	.LC98
	.quad	.LC99
	.long	1603
	.long	115
	.quad	.LC100
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC101
	.quad	.LC102
	.long	0
	.long	0
	.quad	.LC103
	.quad	0
	.zero	16
	.section	.rodata
.LC104:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC105:
	.string	"\nRecognized certificate chain purposes:\n"
.LC106:
	.string	"  %-15s  %s\n"
	.align 8
.LC107:
	.string	"Recognized certificate policy names:\n"
.LC108:
	.string	"  %s\n"
.LC109:
	.string	"untrusted certificates"
.LC110:
	.string	"trusted certificates"
.LC111:
	.string	"other CRLs"
	.align 8
.LC112:
	.string	"%s: Cannot use -trusted with -CAfile, -CApath or -CAstore\n"
	.text
	.globl	verify_main
	.type	verify_main, @function
verify_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$1, -96(%rbp)
	call	X509_VERIFY_PARAM_new@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L70
	movq	verify_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx
	movl	-164(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -112(%rbp)
	jmp	.L20
.L57:
	cmpl	$2034, -116(%rbp)
	je	.L21
	cmpl	$2034, -116(%rbp)
	jg	.L20
	cmpl	$2033, -116(%rbp)
	je	.L22
	cmpl	$2033, -116(%rbp)
	jg	.L20
	cmpl	$2032, -116(%rbp)
	je	.L23
	cmpl	$2032, -116(%rbp)
	jg	.L20
	cmpl	$2031, -116(%rbp)
	je	.L20
	cmpl	$2031, -116(%rbp)
	jg	.L20
	cmpl	$2030, -116(%rbp)
	jg	.L20
	cmpl	$2001, -116(%rbp)
	jge	.L25
	cmpl	$2000, -116(%rbp)
	je	.L20
	cmpl	$2000, -116(%rbp)
	jg	.L20
	cmpl	$1604, -116(%rbp)
	je	.L20
	cmpl	$1604, -116(%rbp)
	jg	.L20
	cmpl	$1603, -116(%rbp)
	jg	.L20
	cmpl	$1601, -116(%rbp)
	jge	.L27
	cmpl	$1600, -116(%rbp)
	je	.L20
	cmpl	$1600, -116(%rbp)
	jg	.L20
	cmpl	$13, -116(%rbp)
	je	.L28
	cmpl	$13, -116(%rbp)
	jg	.L20
	cmpl	$12, -116(%rbp)
	je	.L29
	cmpl	$12, -116(%rbp)
	jg	.L20
	cmpl	$11, -116(%rbp)
	je	.L30
	cmpl	$11, -116(%rbp)
	jg	.L20
	cmpl	$10, -116(%rbp)
	je	.L31
	cmpl	$10, -116(%rbp)
	jg	.L20
	cmpl	$9, -116(%rbp)
	je	.L32
	cmpl	$9, -116(%rbp)
	jg	.L20
	cmpl	$8, -116(%rbp)
	je	.L33
	cmpl	$8, -116(%rbp)
	jg	.L20
	cmpl	$7, -116(%rbp)
	je	.L34
	cmpl	$7, -116(%rbp)
	jg	.L20
	cmpl	$6, -116(%rbp)
	je	.L35
	cmpl	$6, -116(%rbp)
	jg	.L20
	cmpl	$5, -116(%rbp)
	je	.L36
	cmpl	$5, -116(%rbp)
	jg	.L20
	cmpl	$4, -116(%rbp)
	je	.L37
	cmpl	$4, -116(%rbp)
	jg	.L20
	cmpl	$3, -116(%rbp)
	je	.L38
	cmpl	$3, -116(%rbp)
	jg	.L20
	cmpl	$2, -116(%rbp)
	je	.L39
	cmpl	$2, -116(%rbp)
	jg	.L20
	cmpl	$0, -116(%rbp)
	jg	.L40
	cmpl	$-1, -116(%rbp)
	jge	.L41
	jmp	.L20
.L40:
	cmpl	$1, -116(%rbp)
	je	.L42
	jmp	.L20
.L77:
	nop
.L41:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC104(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L19
.L42:
	movq	verify_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC105(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -92(%rbp)
	jmp	.L43
.L44:
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PURPOSE_get0_name@PLT
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PURPOSE_get0_sname@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -92(%rbp)
.L43:
	call	X509_PURPOSE_get_count@PLT
	cmpl	%eax, -92(%rbp)
	jl	.L44
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC107(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -92(%rbp)
	jmp	.L45
.L46:
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	X509_VERIFY_PARAM_get0@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC108(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -92(%rbp)
.L45:
	call	X509_VERIFY_PARAM_get_count@PLT
	cmpl	%eax, -92(%rbp)
	jl	.L46
	movl	$0, -96(%rbp)
	jmp	.L19
.L25:
	movq	-104(%rbp), %rdx
	movl	-116(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	opt_verify@PLT
	testl	%eax, %eax
	je	.L71
	addl	$1, -80(%rbp)
	jmp	.L20
.L38:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L20
.L37:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L20
.L36:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L20
.L35:
	movl	$1, -68(%rbp)
	jmp	.L20
.L34:
	movl	$1, -72(%rbp)
	jmp	.L20
.L33:
	movl	$1, -76(%rbp)
	jmp	.L20
.L32:
	call	opt_arg@PLT
	movq	%rax, %rdi
	leaq	.LC109(%rip), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	call	load_certs@PLT
	testl	%eax, %eax
	je	.L72
	jmp	.L20
.L31:
	movl	$1, -72(%rbp)
	movl	$1, -68(%rbp)
	movl	$1, -76(%rbp)
	call	opt_arg@PLT
	movq	%rax, %rdi
	leaq	.LC110(%rip), %rdx
	leaq	-152(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	call	load_certs@PLT
	testl	%eax, %eax
	je	.L73
	jmp	.L20
.L30:
	call	opt_arg@PLT
	movq	%rax, %rdi
	leaq	.LC111(%rip), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	load_crls@PLT
	testl	%eax, %eax
	je	.L74
	jmp	.L20
.L29:
	movl	$1, -84(%rbp)
	jmp	.L20
.L39:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L75
	jmp	.L20
.L28:
	movl	$1, -88(%rbp)
	jmp	.L20
.L23:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	set_nameopt@PLT
	testl	%eax, %eax
	je	.L76
	jmp	.L20
.L22:
	cmpq	$0, -32(%rbp)
	jne	.L53
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
.L53:
	cmpq	$0, -32(%rbp)
	je	.L77
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L77
	jmp	.L20
.L21:
	movl	$1, v_verbose(%rip)
	jmp	.L20
.L27:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L78
	nop
.L20:
	call	opt_next@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L57
	call	opt_num_rest@PLT
	movl	%eax, -164(%rbp)
	call	opt_rest@PLT
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	je	.L58
	cmpq	$0, -56(%rbp)
	jne	.L59
	cmpq	$0, -48(%rbp)
	jne	.L59
	cmpq	$0, -64(%rbp)
	je	.L58
.L59:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC112(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L19
.L58:
	movl	-76(%rbp), %r8d
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-72(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	setup_verify@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L79
	leaq	cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_verify_cb@PLT
	cmpl	$0, -80(%rbp)
	je	.L61
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set1_param@PLT
.L61:
	call	ERR_clear_error@PLT
	cmpl	$0, -84(%rbp)
	je	.L62
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	store_setup_crl_download@PLT
.L62:
	movl	$0, -96(%rbp)
	cmpl	$0, -164(%rbp)
	jg	.L63
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movl	-88(%rbp), %edi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	addq	$16, %rsp
	cmpl	$1, %eax
	je	.L19
	movl	$-1, -96(%rbp)
	jmp	.L19
.L63:
	movl	$0, -92(%rbp)
	jmp	.L64
.L66:
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-176(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-88(%rbp), %r8d
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	check
	addq	$16, %rsp
	cmpl	$1, %eax
	je	.L65
	movl	$-1, -96(%rbp)
.L65:
	addl	$1, -92(%rbp)
.L64:
	movl	-92(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jl	.L66
	jmp	.L19
.L70:
	nop
	jmp	.L19
.L71:
	nop
	jmp	.L19
.L72:
	nop
	jmp	.L19
.L73:
	nop
	jmp	.L19
.L74:
	nop
	jmp	.L19
.L75:
	nop
	jmp	.L19
.L76:
	nop
	jmp	.L19
.L78:
	nop
	jmp	.L19
.L79:
	nop
.L19:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	X509_CRL_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_freefunc_type
	movq	%rax, %rbx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	cmpl	$0, -96(%rbp)
	js	.L67
	movl	-96(%rbp), %eax
	jmp	.L69
.L67:
	movl	$2, %eax
.L69:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	verify_main, .-verify_main
	.section	.rodata
.LC113:
	.string	"certificate file"
.LC114:
	.string	"parameter error \"%s\"\n"
.LC115:
	.string	"stdin"
	.align 8
.LC116:
	.string	"error %s: X.509 store context allocation failed\n"
	.align 8
.LC117:
	.string	"error %s: X.509 store context initialization failed\n"
.LC118:
	.string	"%s: OK\n"
.LC119:
	.string	"Chain:\n"
.LC120:
	.string	"depth=%d: "
.LC121:
	.string	" (untrusted)"
.LC122:
	.string	"\n"
	.align 8
.LC123:
	.string	"error %s: verification failed\n"
	.text
	.type	check, @function
check:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -124(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	leaq	.LC113(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L107
	cmpq	$0, 16(%rbp)
	je	.L83
	movl	$0, -20(%rbp)
	jmp	.L84
.L87:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x509_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L85
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC114(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L86
.L85:
	addl	$1, -20(%rbp)
.L84:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L87
.L83:
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L88
	cmpq	$0, -96(%rbp)
	je	.L89
	movq	-96(%rbp), %rax
	jmp	.L90
.L89:
	leaq	.LC115(%rip), %rax
.L90:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC116(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L88:
	movl	vflags(%rip), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_flags@PLT
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L91
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	cmpq	$0, -96(%rbp)
	je	.L92
	movq	-96(%rbp), %rax
	jmp	.L93
.L92:
	leaq	.LC115(%rip), %rax
.L93:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L91:
	cmpq	$0, -112(%rbp)
	je	.L94
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_trusted_stack@PLT
.L94:
	cmpq	$0, -120(%rbp)
	je	.L95
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_crls@PLT
.L95:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L96
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	testl	%eax, %eax
	jne	.L96
	cmpq	$0, -96(%rbp)
	je	.L97
	movq	-96(%rbp), %rax
	jmp	.L98
.L97:
	leaq	.LC115(%rip), %rax
.L98:
	movq	bio_out@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC118(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -24(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L103
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get1_chain@PLT
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_num_untrusted@PLT
	movl	%eax, -68(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC119(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -28(%rbp)
	jmp	.L100
.L102:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	leaq	.LC120(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rsi
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex_fp@PLT
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L101
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC121(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L101:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC122(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -28(%rbp)
.L100:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L102
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	jmp	.L103
.L96:
	cmpq	$0, -96(%rbp)
	je	.L104
	movq	-96(%rbp), %rax
	jmp	.L105
.L104:
	leaq	.LC115(%rip), %rax
.L105:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC123(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L103:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	jmp	.L82
.L107:
	nop
.L82:
	cmpl	$0, -20(%rbp)
	jg	.L106
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L106:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-24(%rbp), %eax
.L86:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	check, .-check
	.section	.rodata
.LC124:
	.string	"[CRL path] "
.LC125:
	.string	""
	.align 8
.LC126:
	.string	"%serror %d at %d depth lookup: %s\n"
	.text
	.type	cb, @function
cb:
.LFB649:
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
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_current_cert@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L109
	cmpq	$0, -32(%rbp)
	je	.L110
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rsi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC122(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L110:
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_parent_ctx@PLT
	testq	%rax, %rax
	je	.L111
	leaq	.LC124(%rip), %rax
	jmp	.L112
.L111:
	leaq	.LC125(%rip), %rax
.L112:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	-20(%rbp), %edx
	leaq	.LC126(%rip), %rsi
	movq	%r12, %r9
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$93, -20(%rbp)
	jg	.L113
	cmpl	$78, -20(%rbp)
	jge	.L114
	cmpl	$43, -20(%rbp)
	je	.L115
	cmpl	$43, -20(%rbp)
	jg	.L113
	cmpl	$37, -20(%rbp)
	je	.L114
	cmpl	$37, -20(%rbp)
	jg	.L113
	cmpl	$34, -20(%rbp)
	je	.L114
	cmpl	$34, -20(%rbp)
	jg	.L113
	cmpl	$26, -20(%rbp)
	jg	.L113
	cmpl	$25, -20(%rbp)
	jge	.L114
	cmpl	$12, -20(%rbp)
	jg	.L116
	cmpl	$10, -20(%rbp)
	jge	.L114
	jmp	.L113
.L116:
	cmpl	$18, -20(%rbp)
	je	.L114
	jmp	.L113
.L115:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	policies_print@PLT
.L114:
	movl	$1, -36(%rbp)
.L113:
	movl	-36(%rbp), %eax
	jmp	.L117
.L109:
	cmpl	$0, -20(%rbp)
	jne	.L118
	cmpl	$2, -36(%rbp)
	jne	.L118
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	policies_print@PLT
.L118:
	movl	v_verbose(%rip), %eax
	testl	%eax, %eax
	jne	.L119
	call	ERR_clear_error@PLT
.L119:
	movl	-36(%rbp), %eax
.L117:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	cb, .-cb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"ts.c"
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
	.globl	ts_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"config"
.LC4:
	.string	"Configuration file"
.LC5:
	.string	"section"
	.align 8
.LC6:
	.string	"Section to use within config file"
.LC7:
	.string	"engine"
	.align 8
.LC8:
	.string	"Use engine, possibly a hardware device"
.LC9:
	.string	"inkey"
	.align 8
.LC10:
	.string	"File with private key for reply"
.LC11:
	.string	"signer"
.LC12:
	.string	"Signer certificate file"
.LC13:
	.string	"chain"
.LC14:
	.string	"File with signer CA chain"
.LC15:
	.string	"CAfile"
.LC16:
	.string	"File with trusted CA certs"
.LC17:
	.string	"CApath"
.LC18:
	.string	"Path to trusted CA files"
.LC19:
	.string	"CAstore"
.LC20:
	.string	"URI to trusted CA store"
.LC21:
	.string	"untrusted"
.LC22:
	.string	"Extra untrusted certs"
.LC23:
	.string	"token_in"
.LC24:
	.string	"Input is a PKCS#7 file"
.LC25:
	.string	"token_out"
.LC26:
	.string	"Output is a PKCS#7 file"
.LC27:
	.string	"passin"
.LC28:
	.string	"Input file pass phrase source"
.LC29:
	.string	""
.LC30:
	.string	"Any supported digest"
.LC31:
	.string	"Query options:\n"
.LC32:
	.string	"query"
.LC33:
	.string	"Generate a TS query"
.LC34:
	.string	"data"
.LC35:
	.string	"File to hash"
.LC36:
	.string	"digest"
.LC37:
	.string	"Digest (as a hex string)"
.LC38:
	.string	"queryfile"
.LC39:
	.string	"File containing a TS query"
.LC40:
	.string	"cert"
.LC41:
	.string	"Put cert request into query"
.LC42:
	.string	"in"
.LC43:
	.string	"Input file"
.LC44:
	.string	"Verify options:\n"
.LC45:
	.string	"verify"
.LC46:
	.string	"Verify a TS response"
.LC47:
	.string	"reply"
.LC48:
	.string	"Generate a TS reply"
.LC49:
	.string	"tspolicy"
.LC50:
	.string	"Policy OID to use"
.LC51:
	.string	"no_nonce"
.LC52:
	.string	"Do not include a nonce"
.LC53:
	.string	"out"
.LC54:
	.string	"Output file"
.LC55:
	.string	"text"
.LC56:
	.string	"Output text (not DER)"
.LC57:
	.string	"Random state options:\n"
.LC58:
	.string	"rand"
	.align 8
.LC59:
	.string	"Load the given file(s) into the random number generator"
.LC60:
	.string	"writerand"
	.align 8
.LC61:
	.string	"Write random data to the specified file"
.LC62:
	.string	"Validation options:\n"
.LC63:
	.string	"policy"
	.align 8
.LC64:
	.string	"adds policy to the acceptable policy set"
.LC65:
	.string	"purpose"
.LC66:
	.string	"certificate chain purpose"
.LC67:
	.string	"verify_name"
.LC68:
	.string	"verification policy name"
.LC69:
	.string	"verify_depth"
.LC70:
	.string	"chain depth limit"
.LC71:
	.string	"auth_level"
	.align 8
.LC72:
	.string	"chain authentication security level"
.LC73:
	.string	"attime"
.LC74:
	.string	"verification epoch time"
.LC75:
	.string	"verify_hostname"
.LC76:
	.string	"expected peer hostname"
.LC77:
	.string	"verify_email"
.LC78:
	.string	"expected peer email"
.LC79:
	.string	"verify_ip"
.LC80:
	.string	"expected peer IP address"
.LC81:
	.string	"ignore_critical"
	.align 8
.LC82:
	.string	"permit unhandled critical extensions"
.LC83:
	.string	"issuer_checks"
.LC84:
	.string	"(deprecated)"
.LC85:
	.string	"crl_check"
	.align 8
.LC86:
	.string	"check leaf certificate revocation"
.LC87:
	.string	"crl_check_all"
.LC88:
	.string	"check full chain revocation"
.LC89:
	.string	"policy_check"
.LC90:
	.string	"perform rfc5280 policy checks"
.LC91:
	.string	"explicit_policy"
	.align 8
.LC92:
	.string	"set policy variable require-explicit-policy"
.LC93:
	.string	"inhibit_any"
	.align 8
.LC94:
	.string	"set policy variable inhibit-any-policy"
.LC95:
	.string	"inhibit_map"
	.align 8
.LC96:
	.string	"set policy variable inhibit-policy-mapping"
.LC97:
	.string	"x509_strict"
	.align 8
.LC98:
	.string	"disable certificate compatibility work-arounds"
.LC99:
	.string	"extended_crl"
.LC100:
	.string	"enable extended CRL features"
.LC101:
	.string	"use_deltas"
.LC102:
	.string	"use delta CRLs"
.LC103:
	.string	"policy_print"
	.align 8
.LC104:
	.string	"print policy processing diagnostics"
.LC105:
	.string	"check_ss_sig"
.LC106:
	.string	"check root CA self-signatures"
.LC107:
	.string	"trusted_first"
	.align 8
.LC108:
	.string	"search trust store first (default)"
.LC109:
	.string	"suiteB_128_only"
.LC110:
	.string	"Suite B 128-bit-only mode"
.LC111:
	.string	"suiteB_128"
	.align 8
.LC112:
	.string	"Suite B 128-bit mode allowing 192-bit algorithms"
.LC113:
	.string	"suiteB_192"
.LC114:
	.string	"Suite B 192-bit-only mode"
.LC115:
	.string	"partial_chain"
	.align 8
.LC116:
	.string	"accept chains anchored by intermediate trust-store CAs"
.LC117:
	.string	"no_alt_chains"
.LC118:
	.string	"no_check_time"
	.align 8
.LC119:
	.string	"ignore certificate validity time"
.LC120:
	.string	"allow_proxy_certs"
	.align 8
.LC121:
	.string	"allow the use of proxy certificates"
.LC122:
	.string	"Provider options:\n"
.LC123:
	.string	"provider-path"
	.align 8
.LC124:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC125:
	.string	"provider"
	.align 8
.LC126:
	.string	"Provider to load (can be specified multiple times)"
.LC127:
	.string	"propquery"
	.align 8
.LC128:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ts_options, @object
	.size	ts_options, 1656
ts_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	3
	.long	60
	.quad	.LC4
	.quad	.LC5
	.long	4
	.long	115
	.quad	.LC6
	.quad	.LC7
	.long	2
	.long	115
	.quad	.LC8
	.quad	.LC9
	.long	19
	.long	115
	.quad	.LC10
	.quad	.LC11
	.long	20
	.long	115
	.quad	.LC12
	.quad	.LC13
	.long	21
	.long	60
	.quad	.LC14
	.quad	.LC15
	.long	24
	.long	60
	.quad	.LC16
	.quad	.LC17
	.long	23
	.long	47
	.quad	.LC18
	.quad	.LC19
	.long	25
	.long	58
	.quad	.LC20
	.quad	.LC21
	.long	26
	.long	60
	.quad	.LC22
	.quad	.LC23
	.long	12
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	14
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	18
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	27
	.long	45
	.quad	.LC30
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	5
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	6
	.long	60
	.quad	.LC35
	.quad	.LC36
	.long	7
	.long	115
	.quad	.LC37
	.quad	.LC38
	.long	17
	.long	60
	.quad	.LC39
	.quad	.LC40
	.long	10
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	11
	.long	60
	.quad	.LC43
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	22
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	16
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	8
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	9
	.long	45
	.quad	.LC52
	.quad	.LC53
	.long	13
	.long	62
	.quad	.LC54
	.quad	.LC55
	.long	15
	.long	45
	.quad	.LC56
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC57
	.quad	.LC58
	.long	1501
	.long	115
	.quad	.LC59
	.quad	.LC60
	.long	1502
	.long	62
	.quad	.LC61
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC62
	.quad	.LC63
	.long	2001
	.long	115
	.quad	.LC64
	.quad	.LC65
	.long	2002
	.long	115
	.quad	.LC66
	.quad	.LC67
	.long	2003
	.long	115
	.quad	.LC68
	.quad	.LC69
	.long	2004
	.long	110
	.quad	.LC70
	.quad	.LC71
	.long	2029
	.long	110
	.quad	.LC72
	.quad	.LC73
	.long	2005
	.long	77
	.quad	.LC74
	.quad	.LC75
	.long	2006
	.long	115
	.quad	.LC76
	.quad	.LC77
	.long	2007
	.long	115
	.quad	.LC78
	.quad	.LC79
	.long	2008
	.long	115
	.quad	.LC80
	.quad	.LC81
	.long	2009
	.long	45
	.quad	.LC82
	.quad	.LC83
	.long	2010
	.long	45
	.quad	.LC84
	.quad	.LC85
	.long	2011
	.long	45
	.quad	.LC86
	.quad	.LC87
	.long	2012
	.long	45
	.quad	.LC88
	.quad	.LC89
	.long	2013
	.long	45
	.quad	.LC90
	.quad	.LC91
	.long	2014
	.long	45
	.quad	.LC92
	.quad	.LC93
	.long	2015
	.long	45
	.quad	.LC94
	.quad	.LC95
	.long	2016
	.long	45
	.quad	.LC96
	.quad	.LC97
	.long	2017
	.long	45
	.quad	.LC98
	.quad	.LC99
	.long	2018
	.long	45
	.quad	.LC100
	.quad	.LC101
	.long	2019
	.long	45
	.quad	.LC102
	.quad	.LC103
	.long	2020
	.long	45
	.quad	.LC104
	.quad	.LC105
	.long	2021
	.long	45
	.quad	.LC106
	.quad	.LC107
	.long	2022
	.long	45
	.quad	.LC108
	.quad	.LC109
	.long	2023
	.long	45
	.quad	.LC110
	.quad	.LC111
	.long	2024
	.long	45
	.quad	.LC112
	.quad	.LC113
	.long	2025
	.long	45
	.quad	.LC114
	.quad	.LC115
	.long	2026
	.long	45
	.quad	.LC116
	.quad	.LC117
	.long	2027
	.long	45
	.quad	.LC84
	.quad	.LC118
	.long	2028
	.long	45
	.quad	.LC119
	.quad	.LC120
	.long	2030
	.long	45
	.quad	.LC121
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC122
	.quad	.LC123
	.long	1602
	.long	115
	.quad	.LC124
	.quad	.LC125
	.long	1601
	.long	115
	.quad	.LC126
	.quad	.LC127
	.long	1603
	.long	115
	.quad	.LC128
	.quad	0
	.zero	16
	.section	.rodata
.LC129:
	.string	"Typical uses:"
	.align 8
.LC130:
	.string	" openssl ts -query [-rand file...] [-config file] [-data file]"
	.align 8
.LC131:
	.string	"    [-digest hexstring] [-tspolicy oid] [-no_nonce] [-cert]"
	.align 8
.LC132:
	.string	"    [-in file] [-out file] [-text]"
	.align 8
.LC133:
	.string	" openssl ts -reply [-config file] [-section tsa_section]"
	.align 8
.LC134:
	.string	"    [-queryfile file] [-passin password]"
	.align 8
.LC135:
	.string	"    [-signer tsa_cert.pem] [-inkey private_key.pem]"
	.align 8
.LC136:
	.string	"    [-chain certs_file.pem] [-tspolicy oid]"
	.align 8
.LC137:
	.string	"    [-in file] [-token_in] [-out file] [-token_out]"
.LC138:
	.string	"    [-text] [-engine id]"
	.align 8
.LC139:
	.string	" openssl ts -verify -CApath dir -CAfile root-cert.pem -CAstore uri"
	.align 8
.LC140:
	.string	"   -untrusted extra-certs.pem [-data file] [-digest hexstring]"
	.align 8
.LC141:
	.string	"    [-queryfile request.tsq] -in response.tsr [-token_in] ..."
	.section	.data.rel.local,"aw"
	.align 32
	.type	opt_helplist, @object
	.size	opt_helplist, 136
opt_helplist:
	.quad	.LC29
	.quad	.LC129
	.quad	.LC130
	.quad	.LC131
	.quad	.LC132
	.quad	.LC29
	.quad	.LC133
	.quad	.LC134
	.quad	.LC135
	.quad	.LC136
	.quad	.LC137
	.quad	.LC138
	.quad	.LC29
	.quad	.LC139
	.quad	.LC140
	.quad	.LC141
	.quad	0
	.section	.rodata
.LC142:
	.string	"%s: Use -help for summary.\n"
.LC143:
	.string	"%s\n"
	.align 8
.LC144:
	.string	"%s: Must give only one of -query, -reply, or -verify\n"
	.align 8
.LC145:
	.string	"%s: Must give one of -query, -reply, or -verify\n"
.LC146:
	.string	"Error getting password.\n"
.LC147:
	.string	"../apps/ts.c"
	.text
	.globl	ts_main
	.type	ts_main, @function
ts_main:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -232(%rbp)
	movl	$-1, -164(%rbp)
	movl	$1, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -184(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -192(%rbp)
	call	X509_VERIFY_PARAM_new@PLT
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L72
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	ts_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx
	movl	-244(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -208(%rbp)
	jmp	.L8
.L48:
	cmpl	$2031, -212(%rbp)
	je	.L8
	cmpl	$2031, -212(%rbp)
	jg	.L8
	cmpl	$2030, -212(%rbp)
	jg	.L8
	cmpl	$2001, -212(%rbp)
	jge	.L10
	cmpl	$2000, -212(%rbp)
	je	.L8
	cmpl	$2000, -212(%rbp)
	jg	.L8
	cmpl	$1604, -212(%rbp)
	je	.L8
	cmpl	$1604, -212(%rbp)
	jg	.L8
	cmpl	$1603, -212(%rbp)
	jg	.L8
	cmpl	$1601, -212(%rbp)
	jge	.L12
	cmpl	$1600, -212(%rbp)
	je	.L8
	cmpl	$1600, -212(%rbp)
	jg	.L8
	cmpl	$1503, -212(%rbp)
	je	.L8
	cmpl	$1503, -212(%rbp)
	jg	.L8
	cmpl	$1502, -212(%rbp)
	jg	.L8
	cmpl	$1501, -212(%rbp)
	jge	.L14
	cmpl	$1500, -212(%rbp)
	je	.L8
	cmpl	$1500, -212(%rbp)
	jg	.L8
	cmpl	$27, -212(%rbp)
	je	.L15
	cmpl	$27, -212(%rbp)
	jg	.L8
	cmpl	$26, -212(%rbp)
	je	.L16
	cmpl	$26, -212(%rbp)
	jg	.L8
	cmpl	$25, -212(%rbp)
	je	.L17
	cmpl	$25, -212(%rbp)
	jg	.L8
	cmpl	$24, -212(%rbp)
	je	.L18
	cmpl	$24, -212(%rbp)
	jg	.L8
	cmpl	$23, -212(%rbp)
	je	.L19
	cmpl	$23, -212(%rbp)
	jg	.L8
	cmpl	$22, -212(%rbp)
	je	.L20
	cmpl	$22, -212(%rbp)
	jg	.L8
	cmpl	$21, -212(%rbp)
	je	.L21
	cmpl	$21, -212(%rbp)
	jg	.L8
	cmpl	$20, -212(%rbp)
	je	.L22
	cmpl	$20, -212(%rbp)
	jg	.L8
	cmpl	$19, -212(%rbp)
	je	.L23
	cmpl	$19, -212(%rbp)
	jg	.L8
	cmpl	$18, -212(%rbp)
	je	.L24
	cmpl	$18, -212(%rbp)
	jg	.L8
	cmpl	$17, -212(%rbp)
	je	.L25
	cmpl	$17, -212(%rbp)
	jg	.L8
	cmpl	$16, -212(%rbp)
	je	.L20
	cmpl	$16, -212(%rbp)
	jg	.L8
	cmpl	$15, -212(%rbp)
	je	.L26
	cmpl	$15, -212(%rbp)
	jg	.L8
	cmpl	$14, -212(%rbp)
	je	.L27
	cmpl	$14, -212(%rbp)
	jg	.L8
	cmpl	$13, -212(%rbp)
	je	.L28
	cmpl	$13, -212(%rbp)
	jg	.L8
	cmpl	$12, -212(%rbp)
	je	.L29
	cmpl	$12, -212(%rbp)
	jg	.L8
	cmpl	$11, -212(%rbp)
	je	.L30
	cmpl	$11, -212(%rbp)
	jg	.L8
	cmpl	$10, -212(%rbp)
	je	.L31
	cmpl	$10, -212(%rbp)
	jg	.L8
	cmpl	$9, -212(%rbp)
	je	.L32
	cmpl	$9, -212(%rbp)
	jg	.L8
	cmpl	$8, -212(%rbp)
	je	.L33
	cmpl	$8, -212(%rbp)
	jg	.L8
	cmpl	$7, -212(%rbp)
	je	.L34
	cmpl	$7, -212(%rbp)
	jg	.L8
	cmpl	$6, -212(%rbp)
	je	.L35
	cmpl	$6, -212(%rbp)
	jg	.L8
	cmpl	$5, -212(%rbp)
	je	.L20
	cmpl	$5, -212(%rbp)
	jg	.L8
	cmpl	$4, -212(%rbp)
	je	.L36
	cmpl	$4, -212(%rbp)
	jg	.L8
	cmpl	$3, -212(%rbp)
	je	.L37
	cmpl	$3, -212(%rbp)
	jg	.L8
	cmpl	$2, -212(%rbp)
	je	.L38
	cmpl	$2, -212(%rbp)
	jg	.L8
	cmpl	$0, -212(%rbp)
	jg	.L39
	cmpl	$-1, -212(%rbp)
	jge	.L40
	jmp	.L8
.L39:
	cmpl	$1, -212(%rbp)
	je	.L41
	jmp	.L8
.L76:
	nop
	jmp	.L40
.L78:
	nop
	jmp	.L40
.L81:
	nop
	jmp	.L40
.L82:
	nop
	jmp	.L40
.L83:
	nop
	jmp	.L40
.L84:
	nop
	jmp	.L40
.L85:
	nop
	jmp	.L40
.L86:
	nop
	jmp	.L40
.L87:
	nop
.L40:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC142(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L7
.L41:
	movq	ts_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	leaq	opt_helplist(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L42
.L43:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC143(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$8, -64(%rbp)
.L42:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movl	$0, -168(%rbp)
	jmp	.L7
.L37:
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L8
.L36:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L8
.L20:
	cmpl	$-1, -164(%rbp)
	je	.L44
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC144(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L40
.L44:
	movl	-212(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.L8
.L35:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L8
.L34:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L8
.L14:
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L73
	jmp	.L8
.L12:
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L74
	jmp	.L8
.L33:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L8
.L32:
	movl	$1, -172(%rbp)
	jmp	.L8
.L31:
	movl	$1, -176(%rbp)
	jmp	.L8
.L30:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L8
.L29:
	movl	$1, -188(%rbp)
	jmp	.L8
.L28:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L8
.L27:
	movl	$1, -192(%rbp)
	jmp	.L8
.L26:
	movl	$1, -180(%rbp)
	jmp	.L8
.L25:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L8
.L24:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L8
.L23:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	jmp	.L8
.L22:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L8
.L21:
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	jmp	.L8
.L19:
	call	opt_arg@PLT
	movq	%rax, -152(%rbp)
	jmp	.L8
.L18:
	call	opt_arg@PLT
	movq	%rax, -16(%rbp)
	jmp	.L8
.L17:
	call	opt_arg@PLT
	movq	%rax, -160(%rbp)
	jmp	.L8
.L16:
	call	opt_arg@PLT
	movq	%rax, -24(%rbp)
	jmp	.L8
.L38:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L8
.L15:
	call	opt_unknown@PLT
	movq	%rax, -56(%rbp)
	jmp	.L8
.L10:
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	opt_verify@PLT
	testl	%eax, %eax
	je	.L75
	addl	$1, -184(%rbp)
	nop
.L8:
	call	opt_next@PLT
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jne	.L48
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L76
	cmpl	$-1, -164(%rbp)
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC145(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L40
.L50:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L77
	leaq	-232(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L78
	cmpl	$16, -164(%rbp)
	jne	.L53
	cmpq	$0, -120(%rbp)
	je	.L53
	leaq	-224(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L53
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC146(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L7
.L53:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	load_config_file
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L79
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	app_load_modules@PLT
	testl	%eax, %eax
	je	.L80
.L55:
	cmpl	$5, -164(%rbp)
	jne	.L56
	cmpl	$0, -184(%rbp)
	jne	.L81
	cmpq	$0, -72(%rbp)
	je	.L58
	cmpq	$0, -80(%rbp)
	jne	.L82
.L58:
	movq	-232(%rbp), %rdx
	movl	-176(%rbp), %r9d
	movl	-172(%rbp), %r8d
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	movl	-180(%rbp), %edi
	pushq	%rdi
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	movq	%rax, %rdi
	call	query_command
	addq	$32, %rsp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -168(%rbp)
	jmp	.L7
.L56:
	cmpl	$16, -164(%rbp)
	jne	.L59
	cmpl	$0, -184(%rbp)
	jne	.L83
	cmpq	$0, -96(%rbp)
	je	.L61
	cmpq	$0, -112(%rbp)
	jne	.L84
.L61:
	cmpq	$0, -96(%rbp)
	jne	.L62
	cmpq	$0, -8(%rbp)
	je	.L85
	cmpl	$0, -188(%rbp)
	jne	.L85
.L62:
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	-128(%rbp), %r9
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-180(%rbp), %r8d
	pushq	%r8
	movl	-192(%rbp), %r8d
	pushq	%r8
	pushq	-104(%rbp)
	movl	-188(%rbp), %r8d
	pushq	%r8
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	-144(%rbp)
	pushq	-136(%rbp)
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	reply_command
	addq	$80, %rsp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -168(%rbp)
	jmp	.L7
.L59:
	cmpl	$22, -164(%rbp)
	jne	.L86
	cmpq	$0, -96(%rbp)
	je	.L87
	cmpq	$0, -112(%rbp)
	je	.L66
	cmpq	$0, -72(%rbp)
	jne	.L66
	cmpq	$0, -80(%rbp)
	je	.L67
.L66:
	cmpq	$0, -72(%rbp)
	je	.L68
	cmpq	$0, -112(%rbp)
	jne	.L68
	cmpq	$0, -80(%rbp)
	je	.L67
.L68:
	cmpq	$0, -80(%rbp)
	je	.L87
	cmpq	$0, -112(%rbp)
	jne	.L87
	cmpq	$0, -72(%rbp)
	jne	.L87
.L67:
	cmpl	$0, -184(%rbp)
	je	.L69
	movq	-200(%rbp), %rdi
	jmp	.L70
.L69:
	movl	$0, %edi
.L70:
	movq	-152(%rbp), %r9
	movl	-188(%rbp), %r8d
	movq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rdi
	pushq	-24(%rbp)
	pushq	-160(%rbp)
	pushq	-16(%rbp)
	movq	%rax, %rdi
	call	verify_command
	addq	$32, %rsp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -168(%rbp)
	jmp	.L7
.L72:
	nop
	jmp	.L7
.L73:
	nop
	jmp	.L7
.L74:
	nop
	jmp	.L7
.L75:
	nop
	jmp	.L7
.L77:
	nop
	jmp	.L7
.L79:
	nop
	jmp	.L7
.L80:
	nop
.L7:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-224(%rbp), %rax
	leaq	.LC147(%rip), %rcx
	movl	$352, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-168(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	ts_main, .-ts_main
	.section	.rodata
.LC148:
	.string	"cannot convert %s to OID\n"
	.text
	.type	txt2obj, @function
txt2obj:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC148(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L89:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	txt2obj, .-txt2obj
	.section	.rodata
.LC149:
	.string	"Using configuration from %s\n"
.LC150:
	.string	"oid_file"
.LC151:
	.string	"r"
	.text
	.type	load_config_file, @function
load_config_file:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_internal@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L92
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC149(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC150(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L93
	leaq	.LC151(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L94
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L93
.L94:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_create_objects@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
.L93:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_oid_section@PLT
	testl	%eax, %eax
	jne	.L92
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L92:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	load_config_file, .-load_config_file
	.type	query_command, @function
query_command:
.LFB662:
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
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L97
	movq	16(%rbp), %rax
	movl	$4, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L108
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_TS_REQ_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L100
.L97:
	cmpq	$0, -64(%rbp)
	jne	.L101
	movq	-56(%rbp), %rax
	movl	$4, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L109
.L101:
	movl	-88(%rbp), %r8d
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	create_query
	movq	%rax, -16(%rbp)
.L100:
	cmpq	$0, -16(%rbp)
	je	.L110
	cmpl	$0, 32(%rbp)
	je	.L103
	movq	24(%rbp), %rax
	movl	$32769, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L111
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_REQ_print_bio@PLT
	testl	%eax, %eax
	jne	.L105
	jmp	.L99
.L103:
	movq	24(%rbp), %rax
	movl	$4, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L112
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_REQ_bio@PLT
	testl	%eax, %eax
	je	.L113
.L105:
	movl	$1, -4(%rbp)
	jmp	.L99
.L108:
	nop
	jmp	.L99
.L109:
	nop
	jmp	.L99
.L110:
	nop
	jmp	.L99
.L111:
	nop
	jmp	.L99
.L112:
	nop
	jmp	.L99
.L113:
	nop
.L99:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_REQ_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	query_command, .-query_command
	.section	.rodata
.LC152:
	.string	"sha256"
.LC153:
	.string	"could not create query\n"
	.text
	.type	create_query, @function
create_query:
.LFB663:
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
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L115
	leaq	.LC152(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L134
.L115:
	call	TS_REQ_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L135
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	TS_REQ_set_version@PLT
	testl	%eax, %eax
	je	.L136
	call	TS_MSG_IMPRINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L137
	call	X509_ALGOR_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L138
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L139
	call	ASN1_TYPE_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$5, (%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_set_algo@PLT
	testl	%eax, %eax
	je	.L141
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	create_digest
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L142
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_set_msg@PLT
	testl	%eax, %eax
	je	.L143
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_REQ_set_msg_imprint@PLT
	testl	%eax, %eax
	je	.L144
	cmpq	$0, -96(%rbp)
	je	.L127
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	txt2obj
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L145
.L127:
	cmpq	$0, -40(%rbp)
	je	.L128
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_REQ_set_policy_id@PLT
	testl	%eax, %eax
	je	.L146
.L128:
	cmpl	$0, -100(%rbp)
	jne	.L129
	movl	$64, %edi
	call	create_nonce
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L147
.L129:
	cmpq	$0, -48(%rbp)
	je	.L130
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_REQ_set_nonce@PLT
	testl	%eax, %eax
	je	.L148
.L130:
	movl	-104(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	TS_REQ_set_cert_req@PLT
	testl	%eax, %eax
	je	.L149
	movl	$1, -4(%rbp)
	jmp	.L116
.L134:
	nop
	jmp	.L116
.L135:
	nop
	jmp	.L116
.L136:
	nop
	jmp	.L116
.L137:
	nop
	jmp	.L116
.L138:
	nop
	jmp	.L116
.L139:
	nop
	jmp	.L116
.L140:
	nop
	jmp	.L116
.L141:
	nop
	jmp	.L116
.L142:
	nop
	jmp	.L116
.L143:
	nop
	jmp	.L116
.L144:
	nop
	jmp	.L116
.L145:
	nop
	jmp	.L116
.L146:
	nop
	jmp	.L116
.L147:
	nop
	jmp	.L116
.L148:
	nop
	jmp	.L116
.L149:
	nop
.L116:
	cmpl	$0, -4(%rbp)
	jne	.L132
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_REQ_free@PLT
	movq	$0, -16(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC153(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L132:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-64(%rbp), %rax
	leaq	.LC147(%rip), %rcx
	movl	$502, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	create_query, .-create_query
	.section	.rodata
.LC154:
	.string	"digest buffer"
	.align 8
.LC155:
	.string	"bad digest, %d bytes must be specified\n"
	.text
	.type	create_digest, @function
create_digest:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4160, %rsp
	movq	%rdi, -4136(%rbp)
	movq	%rsi, -4144(%rbp)
	movq	%rdx, -4152(%rbp)
	movq	%rcx, -4160(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-4152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L151
	movl	$0, %eax
	jmp	.L152
.L151:
	cmpq	$0, -4136(%rbp)
	je	.L153
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L154
	movl	$0, %eax
	jmp	.L152
.L154:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC154(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	-4160(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-4152(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L165
	jmp	.L157
.L158:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-4128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L166
.L157:
	leaq	-4128(%rbp), %rcx
	movq	-4136(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L158
	movq	-4160(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	je	.L167
	movq	-4152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	jmp	.L160
.L153:
	leaq	-32(%rbp), %rdx
	movq	-4144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	-4160(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-4160(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L162
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L160
.L162:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	leaq	.LC155(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L161
.L160:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L161
.L165:
	nop
	jmp	.L161
.L166:
	nop
	jmp	.L161
.L167:
	nop
.L161:
	cmpl	$0, -8(%rbp)
	jg	.L164
	movq	-4160(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC147(%rip), %rcx
	movl	$549, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-4160(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -8(%rbp)
.L164:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-8(%rbp), %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	create_digest, .-create_digest
	.section	.rodata
.LC156:
	.string	"nonce buffer"
.LC157:
	.string	"could not create nonce\n"
	.text
	.type	create_nonce, @function
create_nonce:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -8(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$20, -16(%rbp)
	jg	.L179
	movl	-16(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L180
	movl	$0, -12(%rbp)
	jmp	.L172
.L181:
	nop
	addl	$1, -12(%rbp)
.L172:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L173
	movl	-12(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	testb	%al, %al
	je	.L181
.L173:
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L182
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC147(%rip), %rcx
	movl	$574, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	.LC156(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	-48(%rbp), %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	jmp	.L177
.L179:
	nop
	jmp	.L170
.L180:
	nop
	jmp	.L170
.L182:
	nop
.L170:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC157(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	create_nonce, .-create_nonce
	.section	.rodata
.LC158:
	.string	"rb"
.LC159:
	.string	"Response has been generated.\n"
.LC160:
	.string	"Response is not generated.\n"
	.text
	.type	reply_command, @function
reply_command:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, 48(%rbp)
	je	.L184
	leaq	.LC158(%rip), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L198
	cmpl	$0, 56(%rbp)
	je	.L187
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	read_PKCS7
	movq	%rax, -16(%rbp)
	jmp	.L188
.L187:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_TS_RESP_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L188
.L184:
	movq	-128(%rbp), %r8
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	create_response
	addq	$32, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L189
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC159(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L188
.L189:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC160(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L188:
	cmpq	$0, -16(%rbp)
	je	.L199
	cmpl	$0, 80(%rbp)
	je	.L191
	movq	64(%rbp), %rax
	movl	$32769, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L200
	cmpl	$0, 72(%rbp)
	je	.L193
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_get_tst_info@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_print_bio@PLT
	testl	%eax, %eax
	jne	.L194
	jmp	.L186
.L193:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_print_bio@PLT
	testl	%eax, %eax
	jne	.L194
	jmp	.L186
.L191:
	movq	64(%rbp), %rax
	movl	$4, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L201
	cmpl	$0, 72(%rbp)
	je	.L196
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_get_token@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS7_bio@PLT
	testl	%eax, %eax
	jne	.L194
	jmp	.L186
.L196:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_RESP_bio@PLT
	testl	%eax, %eax
	je	.L202
.L194:
	movl	$1, -4(%rbp)
	jmp	.L186
.L198:
	nop
	jmp	.L186
.L199:
	nop
	jmp	.L186
.L200:
	nop
	jmp	.L186
.L201:
	nop
	jmp	.L186
.L202:
	nop
.L186:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	reply_command, .-reply_command
	.type	read_PKCS7, @function
read_PKCS7:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS7_bio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L213
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_to_TS_TST_INFO@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L214
	call	TS_RESP_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L215
	call	TS_STATUS_INFO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L216
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	TS_STATUS_INFO_set_status@PLT
	testl	%eax, %eax
	je	.L217
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_set_status_info@PLT
	testl	%eax, %eax
	je	.L218
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_set_tst_info@PLT
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L205
.L213:
	nop
	jmp	.L205
.L214:
	nop
	jmp	.L205
.L215:
	nop
	jmp	.L205
.L216:
	nop
	jmp	.L205
.L217:
	nop
	jmp	.L205
.L218:
	nop
.L205:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
	cmpl	$0, -4(%rbp)
	jne	.L211
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
	movq	$0, -32(%rbp)
.L211:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_STATUS_INFO_free@PLT
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	read_PKCS7, .-read_PKCS7
	.type	create_response, @function
create_response:
.LFB668:
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
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC158(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L243
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_get_tsa_section@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L244
	call	TS_RESP_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L245
	movq	-24(%rbp), %rdx
	leaq	serial_cb(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	TS_CONF_set_serial@PLT
	testl	%eax, %eax
	je	.L246
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_crypto_device@PLT
	testl	%eax, %eax
	je	.L247
	movq	-24(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_CONF_set_signer_cert@PLT
	testl	%eax, %eax
	je	.L248
	movq	-24(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_CONF_set_certs@PLT
	testl	%eax, %eax
	je	.L249
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	TS_CONF_set_signer_key@PLT
	testl	%eax, %eax
	je	.L250
	cmpq	$0, 16(%rbp)
	je	.L229
	movq	16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_signer_digest@PLT
	testl	%eax, %eax
	jne	.L230
	jmp	.L221
.L229:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	TS_CONF_set_signer_digest@PLT
	testl	%eax, %eax
	je	.L251
.L230:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_ess_cert_id_digest@PLT
	testl	%eax, %eax
	je	.L252
	movq	-24(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_CONF_set_def_policy@PLT
	testl	%eax, %eax
	je	.L253
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_policies@PLT
	testl	%eax, %eax
	je	.L254
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_digests@PLT
	testl	%eax, %eax
	je	.L255
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_accuracy@PLT
	testl	%eax, %eax
	je	.L256
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_clock_precision_digits@PLT
	testl	%eax, %eax
	je	.L257
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_ordering@PLT
	testl	%eax, %eax
	je	.L258
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_tsa_name@PLT
	testl	%eax, %eax
	je	.L259
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_set_ess_cert_id_chain@PLT
	testl	%eax, %eax
	je	.L260
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_create_response@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L261
	movl	$1, -4(%rbp)
	jmp	.L221
.L243:
	nop
	jmp	.L221
.L244:
	nop
	jmp	.L221
.L245:
	nop
	jmp	.L221
.L246:
	nop
	jmp	.L221
.L247:
	nop
	jmp	.L221
.L248:
	nop
	jmp	.L221
.L249:
	nop
	jmp	.L221
.L250:
	nop
	jmp	.L221
.L251:
	nop
	jmp	.L221
.L252:
	nop
	jmp	.L221
.L253:
	nop
	jmp	.L221
.L254:
	nop
	jmp	.L221
.L255:
	nop
	jmp	.L221
.L256:
	nop
	jmp	.L221
.L257:
	nop
	jmp	.L221
.L258:
	nop
	jmp	.L221
.L259:
	nop
	jmp	.L221
.L260:
	nop
	jmp	.L221
.L261:
	nop
.L221:
	cmpl	$0, -4(%rbp)
	jne	.L241
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
	movq	$0, -16(%rbp)
.L241:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	create_response, .-create_response
	.section	.rodata
	.align 8
.LC161:
	.string	"Error during serial number generation."
	.text
	.type	serial_cb, @function
serial_cb:
.LFB669:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	next_serial
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L263
	leaq	.LC161(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-24(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	jmp	.L264
.L263:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_ts_serial
.L264:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	serial_cb, .-serial_cb
	.section	.rodata
	.align 8
.LC162:
	.string	"Warning: could not open file %s for reading, using serial number: 1\n"
	.align 8
.LC163:
	.string	"unable to load number from %s\n"
	.text
	.type	next_serial, @function
next_serial:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L278
	leaq	.LC151(%rip), %rdx
	movq	-1064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L269
	call	ERR_clear_error@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-1064(%rbp), %rdx
	leaq	.LC162(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L270
	jmp	.L268
.L269:
	leaq	-1056(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1024, %ecx
	movq	%rax, %rdi
	call	a2i_ASN1_INTEGER@PLT
	testl	%eax, %eax
	jne	.L271
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-1064(%rbp), %rdx
	leaq	.LC163(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L268
.L271:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L279
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L280
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L281
.L270:
	movl	$1, -4(%rbp)
	jmp	.L268
.L278:
	nop
	jmp	.L268
.L279:
	nop
	jmp	.L268
.L280:
	nop
	jmp	.L268
.L281:
	nop
.L268:
	cmpl	$0, -4(%rbp)
	jne	.L276
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	$0, -24(%rbp)
.L276:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	next_serial, .-next_serial
	.section	.rodata
.LC164:
	.string	"w"
.LC165:
	.string	"\n"
	.align 8
.LC166:
	.string	"could not save serial number to %s\n"
	.text
	.type	save_ts_serial, @function
save_ts_serial:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC164(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L289
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	testl	%eax, %eax
	jle	.L290
	leaq	.LC165(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L291
	movl	$1, -4(%rbp)
	jmp	.L284
.L289:
	nop
	jmp	.L284
.L290:
	nop
	jmp	.L284
.L291:
	nop
.L284:
	cmpl	$0, -4(%rbp)
	jne	.L287
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC166(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L287:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	save_ts_serial, .-save_ts_serial
	.section	.rodata
.LC167:
	.string	"Verification: "
.LC168:
	.string	"OK"
.LC169:
	.string	"FAILED"
	.text
	.type	verify_command, @function
verify_command:
.LFB672:
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
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	.LC158(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L302
	cmpl	$0, -84(%rbp)
	je	.L295
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS7_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L296
	jmp	.L294
.L295:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_TS_RESP_bio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L303
.L296:
	movq	24(%rbp), %r8
	movq	16(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	create_verify_ctx
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L304
	cmpl	$0, -84(%rbp)
	je	.L298
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_verify_token@PLT
	movl	%eax, -28(%rbp)
	jmp	.L294
.L298:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_verify_response@PLT
	movl	%eax, -28(%rbp)
	jmp	.L294
.L302:
	nop
	jmp	.L294
.L303:
	nop
	jmp	.L294
.L304:
	nop
.L294:
	leaq	.LC167(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -28(%rbp)
	je	.L299
	leaq	.LC168(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L300
.L299:
	leaq	.LC169(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L300:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	verify_command, .-verify_command
	.section	.rodata
.LC170:
	.string	"invalid digest string\n"
.LC171:
	.string	"extra untrusted certs"
	.text
	.type	create_verify_ctx, @function
create_verify_ctx:
.LFB673:
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
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L306
	cmpq	$0, -80(%rbp)
	je	.L307
.L306:
	call	TS_VERIFY_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L323
	movl	$66, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L310
	movq	$0, -48(%rbp)
	movl	-32(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -32(%rbp)
	leaq	.LC158(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L324
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_set_data@PLT
	testq	%rax, %rax
	jne	.L325
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	jmp	.L309
.L310:
	cmpq	$0, -80(%rbp)
	je	.L325
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -40(%rbp)
	movl	-32(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_set_imprint@PLT
	testq	%rax, %rax
	jne	.L325
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC170(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L309
.L307:
	cmpq	$0, -88(%rbp)
	je	.L315
	leaq	.LC158(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L326
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_TS_REQ_bio@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L327
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	TS_REQ_to_TS_VERIFY_CTX@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L314
	jmp	.L309
.L315:
	movl	$0, %eax
	jmp	.L318
.L325:
	nop
.L314:
	movl	-32(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_add_flags@PLT
	movq	24(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	create_cert_store
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_set_store@PLT
	testq	%rax, %rax
	je	.L328
	cmpq	$0, 16(%rbp)
	je	.L320
	movq	24(%rbp), %rdx
	leaq	.LC171(%rip), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_certs_multifile@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L329
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_set_certs@PLT
	testq	%rax, %rax
	je	.L329
.L320:
	movl	$1, -28(%rbp)
	jmp	.L309
.L323:
	nop
	jmp	.L309
.L324:
	nop
	jmp	.L309
.L326:
	nop
	jmp	.L309
.L327:
	nop
	jmp	.L309
.L328:
	nop
	jmp	.L309
.L329:
	nop
.L309:
	cmpl	$0, -28(%rbp)
	jne	.L322
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_free@PLT
	movq	$0, -8(%rbp)
.L322:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_REQ_free@PLT
	movq	-8(%rbp), %rax
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	create_verify_ctx, .-create_verify_ctx
	.section	.rodata
.LC172:
	.string	"memory allocation failure\n"
.LC173:
	.string	"Error loading directory %s\n"
.LC174:
	.string	"Error loading file %s\n"
.LC175:
	.string	"Error loading store URI %s\n"
	.text
	.type	create_cert_store, @function
create_cert_store:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -32(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L331
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L332
.L331:
	leaq	verify_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_verify_cb@PLT
	cmpq	$0, -40(%rbp)
	je	.L333
	call	X509_LOOKUP_hash_dir@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L334
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L335
.L334:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl@PLT
	testl	%eax, %eax
	jg	.L333
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC173(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L335
.L333:
	cmpq	$0, -48(%rbp)
	je	.L336
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L337
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L335
.L337:
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L336
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC174(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L335
.L336:
	cmpq	$0, -56(%rbp)
	je	.L338
	call	X509_LOOKUP_store@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L339
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L335
.L339:
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L338
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC175(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L335
.L338:
	cmpq	$0, -64(%rbp)
	je	.L340
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set1_param@PLT
.L340:
	movq	-8(%rbp), %rax
	jmp	.L332
.L335:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	$0, %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	create_cert_store, .-create_cert_store
	.type	verify_cb, @function
verify_cb:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	verify_cb, .-verify_cb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

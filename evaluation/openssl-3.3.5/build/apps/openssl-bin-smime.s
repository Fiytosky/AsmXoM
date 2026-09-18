	.file	"smime.c"
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
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB329:
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
.LFE329:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
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
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB331:
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
.LFE331:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
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
	.globl	smime_options
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
	.string	"in"
.LC5:
	.string	"Input file"
.LC6:
	.string	"inform"
	.align 8
.LC7:
	.string	"Input format SMIME (default), PEM or DER"
.LC8:
	.string	"out"
.LC9:
	.string	"Output file"
.LC10:
	.string	"outform"
	.align 8
.LC11:
	.string	"Output format SMIME (default), PEM or DER"
.LC12:
	.string	"inkey"
	.align 8
.LC13:
	.string	"Input private key (if not signer or recipient)"
.LC14:
	.string	"keyform"
	.align 8
.LC15:
	.string	"Input private key format (ENGINE, other values ignored)"
.LC16:
	.string	"engine"
	.align 8
.LC17:
	.string	"Use engine, possibly a hardware device"
.LC18:
	.string	"stream"
.LC19:
	.string	"Enable CMS streaming"
.LC20:
	.string	"indef"
.LC21:
	.string	"Same as -stream"
.LC22:
	.string	"noindef"
.LC23:
	.string	"Disable CMS streaming"
.LC24:
	.string	"config"
	.align 8
.LC25:
	.string	"Load a configuration file (this may load modules)"
.LC26:
	.string	"Action options:\n"
.LC27:
	.string	"encrypt"
.LC28:
	.string	"Encrypt message"
.LC29:
	.string	"decrypt"
.LC30:
	.string	"Decrypt encrypted message"
.LC31:
	.string	"sign"
.LC32:
	.string	"Sign message"
.LC33:
	.string	"resign"
.LC34:
	.string	"Resign a signed message"
.LC35:
	.string	"verify"
.LC36:
	.string	"Verify signed message"
.LC37:
	.string	"pk7out"
.LC38:
	.string	"Output PKCS#7 structure"
.LC39:
	.string	"Signing/Encryption options:\n"
.LC40:
	.string	"passin"
.LC41:
	.string	"Input file pass phrase source"
.LC42:
	.string	"md"
	.align 8
.LC43:
	.string	"Digest algorithm to use when signing or resigning"
.LC44:
	.string	""
.LC45:
	.string	"Any supported cipher"
.LC46:
	.string	"nointern"
	.align 8
.LC47:
	.string	"Don't search certificates in message for signer"
.LC48:
	.string	"nodetach"
.LC49:
	.string	"Use opaque signing"
.LC50:
	.string	"noattr"
	.align 8
.LC51:
	.string	"Don't include any signed attributes"
.LC52:
	.string	"binary"
	.align 8
.LC53:
	.string	"Don't translate message to text"
.LC54:
	.string	"signer"
.LC55:
	.string	"Signer certificate file"
.LC56:
	.string	"content"
	.align 8
.LC57:
	.string	"Supply or override content for detached signature"
.LC58:
	.string	"nocerts"
	.align 8
.LC59:
	.string	"Don't include signers certificate when signing"
	.align 8
.LC60:
	.string	"Verification/Decryption options:\n"
.LC61:
	.string	"nosigs"
	.align 8
.LC62:
	.string	"Don't verify message signature"
.LC63:
	.string	"noverify"
	.align 8
.LC64:
	.string	"Don't verify signers certificate"
.LC65:
	.string	"certfile"
.LC66:
	.string	"Other certificates file"
.LC67:
	.string	"recip"
	.align 8
.LC68:
	.string	"Recipient certificate file for decryption"
.LC69:
	.string	"Email options:\n"
.LC70:
	.string	"to"
.LC71:
	.string	"To address"
.LC72:
	.string	"from"
.LC73:
	.string	"From address"
.LC74:
	.string	"subject"
.LC75:
	.string	"Subject"
.LC76:
	.string	"text"
	.align 8
.LC77:
	.string	"Include or delete text MIME headers"
.LC78:
	.string	"nosmimecap"
	.align 8
.LC79:
	.string	"Omit the SMIMECapabilities attribute"
.LC80:
	.string	"Certificate chain options:\n"
.LC81:
	.string	"CApath"
	.align 8
.LC82:
	.string	"Trusted certificates directory"
.LC83:
	.string	"CAfile"
.LC84:
	.string	"Trusted certificates file"
.LC85:
	.string	"CAstore"
	.align 8
.LC86:
	.string	"Trusted certificates store URI"
.LC87:
	.string	"no-CAfile"
	.align 8
.LC88:
	.string	"Do not load the default certificates file"
.LC89:
	.string	"no-CApath"
	.align 8
.LC90:
	.string	"Do not load certificates from the default certificates directory"
.LC91:
	.string	"no-CAstore"
	.align 8
.LC92:
	.string	"Do not load certificates from the default certificates store"
.LC93:
	.string	"nochain"
	.align 8
.LC94:
	.string	"set PKCS7_NOCHAIN so certificates contained in the message are not used as untrusted CAs"
.LC95:
	.string	"crlfeol"
	.align 8
.LC96:
	.string	"Use CRLF as EOL termination instead of LF only"
.LC97:
	.string	"Random state options:\n"
.LC98:
	.string	"rand"
	.align 8
.LC99:
	.string	"Load the given file(s) into the random number generator"
.LC100:
	.string	"writerand"
	.align 8
.LC101:
	.string	"Write random data to the specified file"
.LC102:
	.string	"Validation options:\n"
.LC103:
	.string	"policy"
	.align 8
.LC104:
	.string	"adds policy to the acceptable policy set"
.LC105:
	.string	"purpose"
.LC106:
	.string	"certificate chain purpose"
.LC107:
	.string	"verify_name"
.LC108:
	.string	"verification policy name"
.LC109:
	.string	"verify_depth"
.LC110:
	.string	"chain depth limit"
.LC111:
	.string	"auth_level"
	.align 8
.LC112:
	.string	"chain authentication security level"
.LC113:
	.string	"attime"
.LC114:
	.string	"verification epoch time"
.LC115:
	.string	"verify_hostname"
.LC116:
	.string	"expected peer hostname"
.LC117:
	.string	"verify_email"
.LC118:
	.string	"expected peer email"
.LC119:
	.string	"verify_ip"
.LC120:
	.string	"expected peer IP address"
.LC121:
	.string	"ignore_critical"
	.align 8
.LC122:
	.string	"permit unhandled critical extensions"
.LC123:
	.string	"issuer_checks"
.LC124:
	.string	"(deprecated)"
.LC125:
	.string	"crl_check"
	.align 8
.LC126:
	.string	"check leaf certificate revocation"
.LC127:
	.string	"crl_check_all"
.LC128:
	.string	"check full chain revocation"
.LC129:
	.string	"policy_check"
.LC130:
	.string	"perform rfc5280 policy checks"
.LC131:
	.string	"explicit_policy"
	.align 8
.LC132:
	.string	"set policy variable require-explicit-policy"
.LC133:
	.string	"inhibit_any"
	.align 8
.LC134:
	.string	"set policy variable inhibit-any-policy"
.LC135:
	.string	"inhibit_map"
	.align 8
.LC136:
	.string	"set policy variable inhibit-policy-mapping"
.LC137:
	.string	"x509_strict"
	.align 8
.LC138:
	.string	"disable certificate compatibility work-arounds"
.LC139:
	.string	"extended_crl"
.LC140:
	.string	"enable extended CRL features"
.LC141:
	.string	"use_deltas"
.LC142:
	.string	"use delta CRLs"
.LC143:
	.string	"policy_print"
	.align 8
.LC144:
	.string	"print policy processing diagnostics"
.LC145:
	.string	"check_ss_sig"
.LC146:
	.string	"check root CA self-signatures"
.LC147:
	.string	"trusted_first"
	.align 8
.LC148:
	.string	"search trust store first (default)"
.LC149:
	.string	"suiteB_128_only"
.LC150:
	.string	"Suite B 128-bit-only mode"
.LC151:
	.string	"suiteB_128"
	.align 8
.LC152:
	.string	"Suite B 128-bit mode allowing 192-bit algorithms"
.LC153:
	.string	"suiteB_192"
.LC154:
	.string	"Suite B 192-bit-only mode"
.LC155:
	.string	"partial_chain"
	.align 8
.LC156:
	.string	"accept chains anchored by intermediate trust-store CAs"
.LC157:
	.string	"no_alt_chains"
.LC158:
	.string	"no_check_time"
	.align 8
.LC159:
	.string	"ignore certificate validity time"
.LC160:
	.string	"allow_proxy_certs"
	.align 8
.LC161:
	.string	"allow the use of proxy certificates"
.LC162:
	.string	"Provider options:\n"
.LC163:
	.string	"provider-path"
	.align 8
.LC164:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC165:
	.string	"provider"
	.align 8
.LC166:
	.string	"Provider to load (can be specified multiple times)"
.LC167:
	.string	"propquery"
	.align 8
.LC168:
	.string	"Property query used when fetching algorithms"
.LC169:
	.string	"Parameters:\n"
.LC170:
	.string	"cert"
	.align 8
.LC171:
	.string	"Recipient certs, used when encrypting"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	smime_options, @object
	.size	smime_options, 2232
smime_options:
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
	.long	2032
	.long	60
	.quad	.LC5
	.quad	.LC6
	.long	2033
	.long	99
	.quad	.LC7
	.quad	.LC8
	.long	2034
	.long	62
	.quad	.LC9
	.quad	.LC10
	.long	2035
	.long	99
	.quad	.LC11
	.quad	.LC12
	.long	31
	.long	115
	.quad	.LC13
	.quad	.LC14
	.long	32
	.long	102
	.quad	.LC15
	.quad	.LC16
	.long	22
	.long	115
	.quad	.LC17
	.quad	.LC18
	.long	18
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	19
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	20
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	1605
	.long	60
	.quad	.LC25
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	2
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	3
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	4
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	5
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	6
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	7
	.long	45
	.quad	.LC38
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	23
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	29
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	30
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	9
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	14
	.long	45
	.quad	.LC49
	.quad	.LC50
	.long	13
	.long	45
	.quad	.LC51
	.quad	.LC52
	.long	16
	.long	45
	.quad	.LC53
	.quad	.LC54
	.long	27
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	2036
	.long	60
	.quad	.LC57
	.quad	.LC58
	.long	12
	.long	45
	.quad	.LC59
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC60
	.quad	.LC61
	.long	17
	.long	45
	.quad	.LC62
	.quad	.LC63
	.long	10
	.long	45
	.quad	.LC64
	.quad	.LC65
	.long	33
	.long	60
	.quad	.LC66
	.quad	.LC67
	.long	28
	.long	60
	.quad	.LC68
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC69
	.quad	.LC70
	.long	24
	.long	115
	.quad	.LC71
	.quad	.LC72
	.long	25
	.long	115
	.quad	.LC73
	.quad	.LC74
	.long	26
	.long	115
	.quad	.LC75
	.quad	.LC76
	.long	8
	.long	45
	.quad	.LC77
	.quad	.LC78
	.long	15
	.long	45
	.quad	.LC79
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC80
	.quad	.LC81
	.long	35
	.long	47
	.quad	.LC82
	.quad	.LC83
	.long	34
	.long	60
	.quad	.LC84
	.quad	.LC85
	.long	36
	.long	58
	.quad	.LC86
	.quad	.LC87
	.long	37
	.long	45
	.quad	.LC88
	.quad	.LC89
	.long	38
	.long	45
	.quad	.LC90
	.quad	.LC91
	.long	39
	.long	45
	.quad	.LC92
	.quad	.LC93
	.long	11
	.long	45
	.quad	.LC94
	.quad	.LC95
	.long	21
	.long	45
	.quad	.LC96
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC97
	.quad	.LC98
	.long	1501
	.long	115
	.quad	.LC99
	.quad	.LC100
	.long	1502
	.long	62
	.quad	.LC101
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC102
	.quad	.LC103
	.long	2001
	.long	115
	.quad	.LC104
	.quad	.LC105
	.long	2002
	.long	115
	.quad	.LC106
	.quad	.LC107
	.long	2003
	.long	115
	.quad	.LC108
	.quad	.LC109
	.long	2004
	.long	110
	.quad	.LC110
	.quad	.LC111
	.long	2029
	.long	110
	.quad	.LC112
	.quad	.LC113
	.long	2005
	.long	77
	.quad	.LC114
	.quad	.LC115
	.long	2006
	.long	115
	.quad	.LC116
	.quad	.LC117
	.long	2007
	.long	115
	.quad	.LC118
	.quad	.LC119
	.long	2008
	.long	115
	.quad	.LC120
	.quad	.LC121
	.long	2009
	.long	45
	.quad	.LC122
	.quad	.LC123
	.long	2010
	.long	45
	.quad	.LC124
	.quad	.LC125
	.long	2011
	.long	45
	.quad	.LC126
	.quad	.LC127
	.long	2012
	.long	45
	.quad	.LC128
	.quad	.LC129
	.long	2013
	.long	45
	.quad	.LC130
	.quad	.LC131
	.long	2014
	.long	45
	.quad	.LC132
	.quad	.LC133
	.long	2015
	.long	45
	.quad	.LC134
	.quad	.LC135
	.long	2016
	.long	45
	.quad	.LC136
	.quad	.LC137
	.long	2017
	.long	45
	.quad	.LC138
	.quad	.LC139
	.long	2018
	.long	45
	.quad	.LC140
	.quad	.LC141
	.long	2019
	.long	45
	.quad	.LC142
	.quad	.LC143
	.long	2020
	.long	45
	.quad	.LC144
	.quad	.LC145
	.long	2021
	.long	45
	.quad	.LC146
	.quad	.LC147
	.long	2022
	.long	45
	.quad	.LC148
	.quad	.LC149
	.long	2023
	.long	45
	.quad	.LC150
	.quad	.LC151
	.long	2024
	.long	45
	.quad	.LC152
	.quad	.LC153
	.long	2025
	.long	45
	.quad	.LC154
	.quad	.LC155
	.long	2026
	.long	45
	.quad	.LC156
	.quad	.LC157
	.long	2027
	.long	45
	.quad	.LC124
	.quad	.LC158
	.long	2028
	.long	45
	.quad	.LC159
	.quad	.LC160
	.long	2030
	.long	45
	.quad	.LC161
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC162
	.quad	.LC163
	.long	1602
	.long	115
	.quad	.LC164
	.quad	.LC165
	.long	1601
	.long	115
	.quad	.LC166
	.quad	.LC167
	.long	1603
	.long	115
	.quad	.LC168
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC169
	.quad	.LC170
	.long	0
	.long	0
	.quad	.LC171
	.quad	0
	.zero	16
	.section	.rodata
.LC172:
	.string	"(invalid operation)"
	.text
	.type	operation_name, @function
operation_name:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$118, -4(%rbp)
	je	.L18
	cmpl	$118, -4(%rbp)
	jg	.L19
	cmpl	$83, -4(%rbp)
	je	.L20
	cmpl	$83, -4(%rbp)
	jg	.L19
	cmpl	$53, -4(%rbp)
	je	.L21
	cmpl	$53, -4(%rbp)
	jg	.L19
	cmpl	$36, -4(%rbp)
	je	.L22
	cmpl	$36, -4(%rbp)
	jg	.L19
	cmpl	$17, -4(%rbp)
	je	.L23
	cmpl	$34, -4(%rbp)
	je	.L24
	jmp	.L19
.L23:
	leaq	.LC27(%rip), %rax
	jmp	.L25
.L24:
	leaq	.LC29(%rip), %rax
	jmp	.L25
.L20:
	leaq	.LC31(%rip), %rax
	jmp	.L25
.L18:
	leaq	.LC33(%rip), %rax
	jmp	.L25
.L22:
	leaq	.LC35(%rip), %rax
	jmp	.L25
.L21:
	leaq	.LC37(%rip), %rax
	jmp	.L25
.L19:
	leaq	.LC172(%rip), %rax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	operation_name, .-operation_name
	.section	.rodata
.LC173:
	.string	"\n"
.LC174:
	.string	"cipher"
.LC175:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC176:
	.string	"%s: Cannot use -%s together with -%s\n"
.LC177:
	.string	"\r\n"
	.align 8
.LC178:
	.string	"%s: Must have -signer before -inkey\n"
	.align 8
.LC179:
	.string	"Multiple signers or keys not allowed\n"
	.align 8
.LC180:
	.string	"No operation (-encrypt|-sign|...) specified\n"
	.align 8
.LC181:
	.string	"Illegal -inkey without -signer\n"
	.align 8
.LC182:
	.string	"No signer certificate specified\n"
	.align 8
.LC183:
	.string	"No recipient certificate or key specified\n"
	.align 8
.LC184:
	.string	"No recipient(s) certificate(s) specified\n"
.LC185:
	.string	"Error getting password\n"
.LC186:
	.string	"recipient certificate file"
.LC187:
	.string	"certificates"
.LC188:
	.string	"signing key"
	.align 8
.LC189:
	.string	"Error allocating PKCS7 object\n"
	.align 8
.LC190:
	.string	"Bad input format for PKCS#7 file\n"
.LC191:
	.string	"Error reading S/MIME message\n"
.LC192:
	.string	"rb"
.LC193:
	.string	"Can't read content file %s\n"
.LC194:
	.string	"signer certificate"
	.align 8
.LC195:
	.string	"Error creating PKCS#7 structure\n"
	.align 8
.LC196:
	.string	"Error decrypting PKCS#7 structure\n"
.LC197:
	.string	"Verification successful\n"
.LC198:
	.string	"Verification failure\n"
.LC199:
	.string	"Error writing signers to %s\n"
.LC200:
	.string	"To: %s%s"
.LC201:
	.string	"From: %s%s"
.LC202:
	.string	"Subject: %s%s"
	.align 8
.LC203:
	.string	"Bad output format for PKCS#7 file\n"
.LC204:
	.string	"Error writing output\n"
.LC205:
	.string	"../apps/smime.c"
	.text
	.globl	smime_main
	.type	smime_main, @function
smime_main:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 3, -24
	movl	%edi, -420(%rbp)
	movq	%rsi, -432(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movl	$0, -236(%rbp)
	movl	$0, -240(%rbp)
	movl	$0, -244(%rbp)
	movl	$64, -248(%rbp)
	movl	$0, -252(%rbp)
	movl	$0, -256(%rbp)
	movl	$0, -260(%rbp)
	movl	$32775, -404(%rbp)
	movl	$32775, -408(%rbp)
	movl	$0, -412(%rbp)
	movl	$0, -264(%rbp)
	movl	$0, -268(%rbp)
	movq	$0, -280(%rbp)
	leaq	.LC173(%rip), %rax
	movq	%rax, -288(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -328(%rbp)
	call	X509_VERIFY_PARAM_new@PLT
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.L27
	movl	$1, %eax
	jmp	.L196
.L27:
	leaq	.LC174(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	smime_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx
	movl	-420(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -320(%rbp)
	jmp	.L29
.L119:
	cmpl	$2036, -332(%rbp)
	je	.L30
	cmpl	$2036, -332(%rbp)
	jg	.L29
	cmpl	$2035, -332(%rbp)
	je	.L31
	cmpl	$2035, -332(%rbp)
	jg	.L29
	cmpl	$2034, -332(%rbp)
	je	.L32
	cmpl	$2034, -332(%rbp)
	jg	.L29
	cmpl	$2033, -332(%rbp)
	je	.L33
	cmpl	$2033, -332(%rbp)
	jg	.L29
	cmpl	$2032, -332(%rbp)
	je	.L34
	cmpl	$2032, -332(%rbp)
	jg	.L29
	cmpl	$2031, -332(%rbp)
	je	.L29
	cmpl	$2031, -332(%rbp)
	jg	.L29
	cmpl	$2030, -332(%rbp)
	jg	.L29
	cmpl	$2001, -332(%rbp)
	jge	.L36
	cmpl	$2000, -332(%rbp)
	je	.L29
	cmpl	$2000, -332(%rbp)
	jg	.L29
	cmpl	$1605, -332(%rbp)
	je	.L37
	cmpl	$1605, -332(%rbp)
	jg	.L29
	cmpl	$1604, -332(%rbp)
	je	.L29
	cmpl	$1604, -332(%rbp)
	jg	.L29
	cmpl	$1603, -332(%rbp)
	jg	.L29
	cmpl	$1601, -332(%rbp)
	jge	.L39
	cmpl	$1600, -332(%rbp)
	je	.L29
	cmpl	$1600, -332(%rbp)
	jg	.L29
	cmpl	$1503, -332(%rbp)
	je	.L29
	cmpl	$1503, -332(%rbp)
	jg	.L29
	cmpl	$1502, -332(%rbp)
	jg	.L29
	cmpl	$1501, -332(%rbp)
	jge	.L41
	cmpl	$1500, -332(%rbp)
	je	.L29
	cmpl	$1500, -332(%rbp)
	jg	.L29
	cmpl	$39, -332(%rbp)
	je	.L42
	cmpl	$39, -332(%rbp)
	jg	.L29
	cmpl	$38, -332(%rbp)
	je	.L43
	cmpl	$38, -332(%rbp)
	jg	.L29
	cmpl	$37, -332(%rbp)
	je	.L44
	cmpl	$37, -332(%rbp)
	jg	.L29
	cmpl	$36, -332(%rbp)
	je	.L45
	cmpl	$36, -332(%rbp)
	jg	.L29
	cmpl	$35, -332(%rbp)
	je	.L46
	cmpl	$35, -332(%rbp)
	jg	.L29
	cmpl	$34, -332(%rbp)
	je	.L47
	cmpl	$34, -332(%rbp)
	jg	.L29
	cmpl	$33, -332(%rbp)
	je	.L48
	cmpl	$33, -332(%rbp)
	jg	.L29
	cmpl	$32, -332(%rbp)
	je	.L49
	cmpl	$32, -332(%rbp)
	jg	.L29
	cmpl	$31, -332(%rbp)
	je	.L50
	cmpl	$31, -332(%rbp)
	jg	.L29
	cmpl	$30, -332(%rbp)
	je	.L51
	cmpl	$30, -332(%rbp)
	jg	.L29
	cmpl	$29, -332(%rbp)
	je	.L52
	cmpl	$29, -332(%rbp)
	jg	.L29
	cmpl	$28, -332(%rbp)
	je	.L53
	cmpl	$28, -332(%rbp)
	jg	.L29
	cmpl	$27, -332(%rbp)
	je	.L54
	cmpl	$27, -332(%rbp)
	jg	.L29
	cmpl	$26, -332(%rbp)
	je	.L55
	cmpl	$26, -332(%rbp)
	jg	.L29
	cmpl	$25, -332(%rbp)
	je	.L56
	cmpl	$25, -332(%rbp)
	jg	.L29
	cmpl	$24, -332(%rbp)
	je	.L57
	cmpl	$24, -332(%rbp)
	jg	.L29
	cmpl	$23, -332(%rbp)
	je	.L58
	cmpl	$23, -332(%rbp)
	jg	.L29
	cmpl	$22, -332(%rbp)
	je	.L59
	cmpl	$22, -332(%rbp)
	jg	.L29
	cmpl	$21, -332(%rbp)
	je	.L60
	cmpl	$21, -332(%rbp)
	jg	.L29
	cmpl	$20, -332(%rbp)
	je	.L61
	cmpl	$20, -332(%rbp)
	jg	.L29
	cmpl	$19, -332(%rbp)
	jg	.L29
	cmpl	$18, -332(%rbp)
	jge	.L62
	cmpl	$17, -332(%rbp)
	je	.L63
	cmpl	$17, -332(%rbp)
	jg	.L29
	cmpl	$16, -332(%rbp)
	je	.L64
	cmpl	$16, -332(%rbp)
	jg	.L29
	cmpl	$15, -332(%rbp)
	je	.L65
	cmpl	$15, -332(%rbp)
	jg	.L29
	cmpl	$14, -332(%rbp)
	je	.L66
	cmpl	$14, -332(%rbp)
	jg	.L29
	cmpl	$13, -332(%rbp)
	je	.L67
	cmpl	$13, -332(%rbp)
	jg	.L29
	cmpl	$12, -332(%rbp)
	je	.L68
	cmpl	$12, -332(%rbp)
	jg	.L29
	cmpl	$11, -332(%rbp)
	je	.L69
	cmpl	$11, -332(%rbp)
	jg	.L29
	cmpl	$10, -332(%rbp)
	je	.L70
	cmpl	$10, -332(%rbp)
	jg	.L29
	cmpl	$9, -332(%rbp)
	je	.L71
	cmpl	$9, -332(%rbp)
	jg	.L29
	cmpl	$8, -332(%rbp)
	je	.L72
	cmpl	$8, -332(%rbp)
	jg	.L29
	cmpl	$7, -332(%rbp)
	je	.L73
	cmpl	$7, -332(%rbp)
	jg	.L29
	cmpl	$6, -332(%rbp)
	je	.L74
	cmpl	$6, -332(%rbp)
	jg	.L29
	cmpl	$5, -332(%rbp)
	je	.L75
	cmpl	$5, -332(%rbp)
	jg	.L29
	cmpl	$4, -332(%rbp)
	je	.L76
	cmpl	$4, -332(%rbp)
	jg	.L29
	cmpl	$3, -332(%rbp)
	je	.L77
	cmpl	$3, -332(%rbp)
	jg	.L29
	cmpl	$2, -332(%rbp)
	je	.L78
	cmpl	$2, -332(%rbp)
	jg	.L29
	cmpl	$0, -332(%rbp)
	jg	.L79
	cmpl	$-1, -332(%rbp)
	jge	.L80
	jmp	.L29
.L79:
	cmpl	$1, -332(%rbp)
	je	.L81
	jmp	.L29
.L198:
	nop
	jmp	.L80
.L199:
	nop
	jmp	.L80
.L217:
	nop
	jmp	.L80
.L218:
	nop
	jmp	.L80
.L220:
	nop
	jmp	.L80
.L221:
	nop
.L80:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC175(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L81:
	movq	smime_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -256(%rbp)
	jmp	.L82
.L33:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-404(%rbp), %rax
	movq	%rax, %rdx
	movl	$38, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L198
	jmp	.L29
.L34:
	call	opt_arg@PLT
	movq	%rax, -160(%rbp)
	jmp	.L29
.L31:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-408(%rbp), %rax
	movq	%rax, %rdx
	movl	$38, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L199
	jmp	.L29
.L32:
	call	opt_arg@PLT
	movq	%rax, -168(%rbp)
	jmp	.L29
.L78:
	cmpl	$0, -252(%rbp)
	je	.L85
	cmpl	$17, -252(%rbp)
	je	.L85
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	operation_name
	movq	%rax, %rbx
	movl	$17, %edi
	call	operation_name
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC176(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L86
.L85:
	movl	$17, -252(%rbp)
	movl	$0, %eax
.L86:
	testb	%al, %al
	jne	.L200
	jmp	.L29
.L77:
	cmpl	$0, -252(%rbp)
	je	.L88
	cmpl	$34, -252(%rbp)
	je	.L88
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	operation_name
	movq	%rax, %rbx
	movl	$34, %edi
	call	operation_name
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC176(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	$34, -252(%rbp)
	movl	$0, %eax
.L89:
	testb	%al, %al
	jne	.L201
	jmp	.L29
.L76:
	cmpl	$0, -252(%rbp)
	je	.L91
	cmpl	$83, -252(%rbp)
	je	.L91
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	operation_name
	movq	%rax, %rbx
	movl	$83, %edi
	call	operation_name
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC176(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L92
.L91:
	movl	$83, -252(%rbp)
	movl	$0, %eax
.L92:
	testb	%al, %al
	jne	.L202
	jmp	.L29
.L75:
	cmpl	$0, -252(%rbp)
	je	.L94
	cmpl	$118, -252(%rbp)
	je	.L94
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	operation_name
	movq	%rax, %rbx
	movl	$118, %edi
	call	operation_name
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC176(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L95
.L94:
	movl	$118, -252(%rbp)
	movl	$0, %eax
.L95:
	testb	%al, %al
	jne	.L203
	jmp	.L29
.L74:
	cmpl	$0, -252(%rbp)
	je	.L97
	cmpl	$36, -252(%rbp)
	je	.L97
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	operation_name
	movq	%rax, %rbx
	movl	$36, %edi
	call	operation_name
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC176(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L98
.L97:
	movl	$36, -252(%rbp)
	movl	$0, %eax
.L98:
	testb	%al, %al
	jne	.L204
	jmp	.L29
.L73:
	cmpl	$0, -252(%rbp)
	je	.L100
	cmpl	$53, -252(%rbp)
	je	.L100
	movl	-252(%rbp), %eax
	movl	%eax, %edi
	call	operation_name
	movq	%rax, %rbx
	movl	$53, %edi
	call	operation_name
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC176(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L101
.L100:
	movl	$53, -252(%rbp)
	movl	$0, %eax
.L101:
	testb	%al, %al
	jne	.L205
	jmp	.L29
.L72:
	orl	$1, -248(%rbp)
	jmp	.L29
.L71:
	orl	$16, -248(%rbp)
	jmp	.L29
.L70:
	orl	$32, -248(%rbp)
	jmp	.L29
.L69:
	orl	$8, -248(%rbp)
	jmp	.L29
.L68:
	orl	$2, -248(%rbp)
	jmp	.L29
.L67:
	orl	$256, -248(%rbp)
	jmp	.L29
.L66:
	andl	$-65, -248(%rbp)
	jmp	.L29
.L65:
	orl	$512, -248(%rbp)
	jmp	.L29
.L64:
	orl	$128, -248(%rbp)
	jmp	.L29
.L63:
	orl	$4, -248(%rbp)
	jmp	.L29
.L62:
	movl	$1, -260(%rbp)
	jmp	.L29
.L61:
	movl	$0, -260(%rbp)
	jmp	.L29
.L60:
	orl	$2048, -248(%rbp)
	leaq	.LC177(%rip), %rax
	movq	%rax, -288(%rbp)
	jmp	.L29
.L41:
	movl	-332(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L206
	jmp	.L29
.L39:
	movl	-332(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L207
	jmp	.L29
.L37:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	app_load_config_modules@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L208
	jmp	.L29
.L59:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -280(%rbp)
	jmp	.L29
.L58:
	call	opt_arg@PLT
	movq	%rax, -192(%rbp)
	jmp	.L29
.L57:
	call	opt_arg@PLT
	movq	%rax, -200(%rbp)
	jmp	.L29
.L56:
	call	opt_arg@PLT
	movq	%rax, -208(%rbp)
	jmp	.L29
.L55:
	call	opt_arg@PLT
	movq	%rax, -216(%rbp)
	jmp	.L29
.L54:
	cmpq	$0, -176(%rbp)
	je	.L106
	cmpq	$0, -56(%rbp)
	jne	.L107
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L209
.L107:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L210
	cmpq	$0, -144(%rbp)
	jne	.L109
	movq	-176(%rbp), %rax
	movq	%rax, -144(%rbp)
.L109:
	cmpq	$0, -64(%rbp)
	jne	.L110
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L211
.L110:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L212
	movq	$0, -144(%rbp)
.L106:
	call	opt_arg@PLT
	movq	%rax, -176(%rbp)
	jmp	.L29
.L53:
	call	opt_arg@PLT
	movq	%rax, -184(%rbp)
	jmp	.L29
.L52:
	call	opt_arg@PLT
	movq	%rax, -224(%rbp)
	jmp	.L29
.L51:
	call	opt_unknown@PLT
	movq	%rax, -232(%rbp)
	jmp	.L29
.L50:
	cmpq	$0, -144(%rbp)
	je	.L112
	cmpq	$0, -176(%rbp)
	jne	.L113
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-320(%rbp), %rdx
	leaq	.LC178(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L80
.L113:
	cmpq	$0, -56(%rbp)
	jne	.L114
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L213
.L114:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L214
	movq	$0, -176(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L116
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L215
.L116:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L216
.L112:
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	jmp	.L29
.L49:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-412(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L217
	jmp	.L29
.L48:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L29
.L47:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L29
.L46:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L29
.L45:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	jmp	.L29
.L44:
	movl	$1, -240(%rbp)
	jmp	.L29
.L43:
	movl	$1, -236(%rbp)
	jmp	.L29
.L42:
	movl	$1, -244(%rbp)
	jmp	.L29
.L30:
	call	opt_arg@PLT
	movq	%rax, -152(%rbp)
	jmp	.L29
.L36:
	movq	-312(%rbp), %rdx
	movl	-332(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	opt_verify@PLT
	testl	%eax, %eax
	je	.L218
	addl	$1, -264(%rbp)
	nop
.L29:
	call	opt_next@PLT
	movl	%eax, -332(%rbp)
	cmpl	$0, -332(%rbp)
	jne	.L119
	call	opt_num_rest@PLT
	movl	%eax, -420(%rbp)
	call	opt_rest@PLT
	movq	%rax, -432(%rbp)
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L219
	cmpq	$0, -224(%rbp)
	je	.L121
	leaq	-392(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L220
.L121:
	leaq	-384(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_any@PLT
	testl	%eax, %eax
	je	.L221
	movl	-252(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L123
	cmpq	$0, -64(%rbp)
	jne	.L124
	cmpq	$0, -56(%rbp)
	je	.L123
.L124:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC179(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L80
.L123:
	cmpl	$0, -252(%rbp)
	jne	.L125
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC180(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L80
.L125:
	movl	-252(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L126
	cmpq	$0, -144(%rbp)
	je	.L127
	cmpq	$0, -176(%rbp)
	jne	.L127
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC181(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L80
.L127:
	cmpq	$0, -176(%rbp)
	je	.L128
	cmpq	$0, -56(%rbp)
	jne	.L129
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L222
.L129:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L223
	cmpq	$0, -64(%rbp)
	jne	.L131
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L224
.L131:
	cmpq	$0, -144(%rbp)
	jne	.L132
	movq	-176(%rbp), %rax
	movq	%rax, -144(%rbp)
.L132:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L225
.L128:
	cmpq	$0, -56(%rbp)
	jne	.L133
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC182(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L80
.L133:
	movq	$0, -176(%rbp)
	movq	$0, -144(%rbp)
	jmp	.L134
.L126:
	cmpl	$34, -252(%rbp)
	jne	.L135
	cmpq	$0, -184(%rbp)
	jne	.L134
	cmpq	$0, -144(%rbp)
	jne	.L134
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC183(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L80
.L135:
	cmpl	$17, -252(%rbp)
	jne	.L134
	cmpl	$0, -420(%rbp)
	jne	.L134
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC184(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L80
.L134:
	leaq	-400(%rbp), %rdx
	movq	-192(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L136
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC185(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L136:
	movl	$2, -256(%rbp)
	movl	-252(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L137
	andl	$-65, -248(%rbp)
.L137:
	movl	-252(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L138
	movl	-248(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L138
	movl	$2, -408(%rbp)
.L138:
	movl	-252(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L139
	movl	-248(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L139
	movl	$2, -404(%rbp)
.L139:
	cmpl	$17, -252(%rbp)
	jne	.L140
	movq	-384(%rbp), %rax
	testq	%rax, %rax
	jne	.L141
	call	EVP_des_ede3_cbc@PLT
	movq	%rax, -384(%rbp)
.L141:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L226
	jmp	.L143
.L146:
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC186(%rip), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L227
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L228
	movq	$0, -80(%rbp)
	addq	$8, -432(%rbp)
.L143:
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L146
.L140:
	cmpq	$0, -136(%rbp)
	je	.L147
	leaq	.LC187(%rip), %rcx
	leaq	-376(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_certs@PLT
	testl	%eax, %eax
	jne	.L147
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L82
.L147:
	cmpq	$0, -184(%rbp)
	je	.L148
	cmpl	$34, -252(%rbp)
	jne	.L148
	leaq	.LC186(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L148
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L82
.L148:
	cmpl	$34, -252(%rbp)
	jne	.L149
	cmpq	$0, -144(%rbp)
	jne	.L150
	movq	-184(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.L150
.L149:
	cmpl	$83, -252(%rbp)
	jne	.L151
	cmpq	$0, -144(%rbp)
	jne	.L150
	movq	-176(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.L150
.L151:
	movq	$0, -144(%rbp)
.L150:
	cmpq	$0, -144(%rbp)
	je	.L152
	movq	-400(%rbp), %rdx
	movl	-412(%rbp), %esi
	leaq	.LC188(%rip), %rdi
	movq	-280(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L229
.L152:
	movl	-404(%rbp), %edx
	movq	-160(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L230
	movl	-252(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L154
	movq	$0, -296(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_new_ex@PLT
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	jne	.L155
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC189(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L155:
	movl	-404(%rbp), %eax
	cmpl	$32775, %eax
	jne	.L156
	leaq	-368(%rbp), %rdx
	leaq	-360(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_read_PKCS7_ex@PLT
	movq	%rax, -296(%rbp)
	jmp	.L157
.L156:
	movl	-404(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L158
	leaq	-368(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_PKCS7@PLT
	movq	%rax, -296(%rbp)
	jmp	.L157
.L158:
	movl	-404(%rbp), %eax
	cmpl	$4, %eax
	jne	.L159
	leaq	-368(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_PKCS7_bio@PLT
	movq	%rax, -296(%rbp)
	jmp	.L157
.L159:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC190(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L157:
	cmpq	$0, -296(%rbp)
	jne	.L160
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC191(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L160:
	cmpq	$0, -152(%rbp)
	je	.L154
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC192(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	testq	%rax, %rax
	jne	.L154
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC193(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L154:
	movl	-408(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L231
	cmpl	$36, -252(%rbp)
	jne	.L162
	movl	-244(%rbp), %r8d
	movq	-128(%rbp), %rdi
	movl	-236(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movl	-240(%rbp), %esi
	movq	-112(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	setup_verify@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L232
	leaq	smime_cb(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_verify_cb@PLT
	cmpl	$0, -264(%rbp)
	je	.L162
	movq	-312(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set1_param@PLT
.L162:
	movl	$3, -256(%rbp)
	cmpl	$17, -252(%rbp)
	jne	.L164
	cmpl	$0, -260(%rbp)
	je	.L165
	orl	$4096, -248(%rbp)
.L165:
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movq	-384(%rbp), %rdx
	movq	-328(%rbp), %r8
	movl	-248(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	PKCS7_encrypt_ex@PLT
	movq	%rax, -368(%rbp)
	jmp	.L166
.L164:
	movl	-252(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L166
	cmpl	$83, -252(%rbp)
	jne	.L167
	movl	-248(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L168
	movl	-408(%rbp), %eax
	cmpl	$32775, %eax
	jne	.L169
	orl	$4096, -248(%rbp)
	jmp	.L169
.L168:
	cmpl	$0, -260(%rbp)
	je	.L169
	orl	$4096, -248(%rbp)
.L169:
	orl	$16384, -248(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rcx
	movq	-376(%rbp), %rax
	movq	-328(%rbp), %rdi
	movl	-248(%rbp), %esi
	movq	-32(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS7_sign_ex@PLT
	addq	$16, %rsp
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	je	.L233
	movl	-248(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L171
	movl	$0, -300(%rbp)
	jmp	.L172
.L173:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-300(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -344(%rbp)
	movq	-368(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_certificate@PLT
	addl	$1, -300(%rbp)
.L172:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -300(%rbp)
	jl	.L173
	jmp	.L171
.L167:
	orl	$32768, -248(%rbp)
.L171:
	movl	$0, -300(%rbp)
	jmp	.L174
.L178:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-300(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -176(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-300(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -144(%rbp)
	leaq	.LC194(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L234
	movq	-400(%rbp), %rdx
	movl	-412(%rbp), %esi
	leaq	.LC188(%rip), %rdi
	movq	-280(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L235
	movq	-392(%rbp), %rcx
	movq	-368(%rbp), %rax
	movl	-248(%rbp), %edi
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS7_sign_add_signer@PLT
	testq	%rax, %rax
	je	.L236
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -48(%rbp)
	addl	$1, -300(%rbp)
.L174:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -300(%rbp)
	jl	.L178
	cmpl	$83, -252(%rbp)
	jne	.L166
	movl	-248(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L166
	movq	-368(%rbp), %rax
	movl	-248(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_final@PLT
	testl	%eax, %eax
	je	.L237
.L166:
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	jne	.L179
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC195(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L179:
	movl	$4, -256(%rbp)
	cmpl	$34, -252(%rbp)
	jne	.L180
	movq	-368(%rbp), %rax
	movl	-248(%rbp), %edi
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS7_decrypt@PLT
	testl	%eax, %eax
	jne	.L181
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC196(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L180:
	cmpl	$36, -252(%rbp)
	jne	.L182
	movq	-360(%rbp), %rcx
	movq	-376(%rbp), %rsi
	movq	-368(%rbp), %rax
	movl	-248(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS7_verify@PLT
	testl	%eax, %eax
	je	.L183
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC197(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-376(%rbp), %rcx
	movq	-368(%rbp), %rax
	movl	-248(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_get0_signers@PLT
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_certs
	testl	%eax, %eax
	jne	.L185
	jmp	.L197
.L183:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC198(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L197:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC199(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$5, -256(%rbp)
	jmp	.L82
.L185:
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L181
.L182:
	cmpl	$53, -252(%rbp)
	jne	.L186
	movq	-368(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS7@PLT
	jmp	.L181
.L186:
	cmpq	$0, -200(%rbp)
	je	.L187
	movq	-288(%rbp), %rcx
	movq	-200(%rbp), %rdx
	leaq	.LC200(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L187:
	cmpq	$0, -208(%rbp)
	je	.L188
	movq	-288(%rbp), %rcx
	movq	-208(%rbp), %rdx
	leaq	.LC201(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L188:
	cmpq	$0, -216(%rbp)
	je	.L189
	movq	-288(%rbp), %rcx
	movq	-216(%rbp), %rdx
	leaq	.LC202(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L189:
	movl	-408(%rbp), %eax
	cmpl	$32775, %eax
	jne	.L190
	cmpl	$118, -252(%rbp)
	jne	.L191
	movq	-360(%rbp), %rdx
	movq	-368(%rbp), %rsi
	movl	-248(%rbp), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SMIME_write_PKCS7@PLT
	movl	%eax, -268(%rbp)
	jmp	.L192
.L191:
	movq	-368(%rbp), %rsi
	movl	-248(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SMIME_write_PKCS7@PLT
	movl	%eax, -268(%rbp)
	jmp	.L192
.L190:
	movl	-408(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L193
	movq	-368(%rbp), %rsi
	movl	-248(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS7_stream@PLT
	movl	%eax, -268(%rbp)
	jmp	.L192
.L193:
	movl	-408(%rbp), %eax
	cmpl	$4, %eax
	jne	.L194
	movq	-368(%rbp), %rsi
	movl	-248(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	i2d_PKCS7_bio_stream@PLT
	movl	%eax, -268(%rbp)
	jmp	.L192
.L194:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC203(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L192:
	cmpl	$0, -268(%rbp)
	jne	.L181
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$3, -256(%rbp)
	jmp	.L82
.L181:
	movl	$0, -256(%rbp)
	jmp	.L82
.L200:
	nop
	jmp	.L82
.L201:
	nop
	jmp	.L82
.L202:
	nop
	jmp	.L82
.L203:
	nop
	jmp	.L82
.L204:
	nop
	jmp	.L82
.L205:
	nop
	jmp	.L82
.L206:
	nop
	jmp	.L82
.L207:
	nop
	jmp	.L82
.L208:
	nop
	jmp	.L82
.L209:
	nop
	jmp	.L82
.L210:
	nop
	jmp	.L82
.L211:
	nop
	jmp	.L82
.L212:
	nop
	jmp	.L82
.L213:
	nop
	jmp	.L82
.L214:
	nop
	jmp	.L82
.L215:
	nop
	jmp	.L82
.L216:
	nop
	jmp	.L82
.L219:
	nop
	jmp	.L82
.L222:
	nop
	jmp	.L82
.L223:
	nop
	jmp	.L82
.L224:
	nop
	jmp	.L82
.L225:
	nop
	jmp	.L82
.L226:
	nop
	jmp	.L82
.L227:
	nop
	jmp	.L82
.L228:
	nop
	jmp	.L82
.L229:
	nop
	jmp	.L82
.L230:
	nop
	jmp	.L82
.L231:
	nop
	jmp	.L82
.L232:
	nop
	jmp	.L82
.L233:
	nop
	jmp	.L82
.L234:
	nop
	jmp	.L82
.L235:
	nop
	jmp	.L82
.L236:
	nop
	jmp	.L82
.L237:
	nop
.L82:
	cmpl	$0, -256(%rbp)
	je	.L195
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L195:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-400(%rbp), %rax
	leaq	.LC205(%rip), %rcx
	movl	$711, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-256(%rbp), %eax
.L196:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	smime_main, .-smime_main
	.section	.rodata
.LC206:
	.string	"w"
	.text
	.type	save_certs, @function
save_certs:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L239
	movl	$1, %eax
	jmp	.L240
.L239:
	leaq	.LC206(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L241
	movl	$0, %eax
	jmp	.L240
.L241:
	movl	$0, -4(%rbp)
	jmp	.L242
.L243:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	addl	$1, -4(%rbp)
.L242:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L243
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$1, %eax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	save_certs, .-save_certs
	.type	smime_cb, @function
smime_cb:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -4(%rbp)
	cmpl	$43, -4(%rbp)
	je	.L245
	cmpl	$0, -4(%rbp)
	jne	.L246
	cmpl	$2, -20(%rbp)
	je	.L245
.L246:
	movl	-20(%rbp), %eax
	jmp	.L247
.L245:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	policies_print@PLT
	movl	-20(%rbp), %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	smime_cb, .-smime_cb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

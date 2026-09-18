	.file	"ca.c"
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	sk_OPENSSL_PSTRING_num, @function
sk_OPENSSL_PSTRING_num:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	sk_OPENSSL_PSTRING_num, .-sk_OPENSSL_PSTRING_num
	.type	sk_OPENSSL_PSTRING_value, @function
sk_OPENSSL_PSTRING_value:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	sk_OPENSSL_PSTRING_value, .-sk_OPENSSL_PSTRING_value
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB406:
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
.LFE406:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB407:
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
.LFE407:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB408:
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
.LFE408:
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
	.local	extfile_conf
	.comm	extfile_conf,8,8
	.local	preserve
	.comm	preserve,4,4
	.local	msie_hack
	.comm	msie_hack,4,4
	.globl	ca_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [certreq...]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"verbose"
	.align 8
.LC5:
	.string	"Verbose output during processing"
.LC6:
	.string	"quiet"
	.align 8
.LC7:
	.string	"Terse output during processing"
.LC8:
	.string	"outdir"
.LC9:
	.string	"Where to put output cert"
.LC10:
	.string	"in"
.LC11:
	.string	"The input cert request(s)"
.LC12:
	.string	"inform"
	.align 8
.LC13:
	.string	"CSR input format to use (PEM or DER; by default try PEM first)"
.LC14:
	.string	"infiles"
	.align 8
.LC15:
	.string	"The last argument, requests to process"
.LC16:
	.string	"out"
	.align 8
.LC17:
	.string	"Where to put the output file(s)"
.LC18:
	.string	"dateopt"
	.align 8
.LC19:
	.string	"Datetime format used for printing. (rfc_822/iso_8601). Default is rfc_822."
.LC20:
	.string	"notext"
	.align 8
.LC21:
	.string	"Do not print the generated certificate"
.LC22:
	.string	"batch"
.LC23:
	.string	"Don't ask questions"
.LC24:
	.string	"msie_hack"
	.align 8
.LC25:
	.string	"msie modifications to handle all Universal Strings"
.LC26:
	.string	"ss_cert"
	.align 8
.LC27:
	.string	"File contains a self signed cert to sign"
.LC28:
	.string	"spkac"
	.align 8
.LC29:
	.string	"File contains DN and signed public key and challenge"
.LC30:
	.string	"engine"
	.align 8
.LC31:
	.string	"Use engine, possibly a hardware device"
.LC32:
	.string	"Configuration options:\n"
.LC33:
	.string	"config"
.LC34:
	.string	"A config file"
.LC35:
	.string	"name"
	.align 8
.LC36:
	.string	"The particular CA definition to use"
.LC37:
	.string	"section"
.LC38:
	.string	"An alias for -name"
.LC39:
	.string	"policy"
.LC40:
	.string	"The CA 'policy' to support"
.LC41:
	.string	"Certificate options:\n"
.LC42:
	.string	"subj"
	.align 8
.LC43:
	.string	"Use arg instead of request's subject"
.LC44:
	.string	"utf8"
	.align 8
.LC45:
	.string	"Input characters are UTF8; default ASCII"
.LC46:
	.string	"create_serial"
	.align 8
.LC47:
	.string	"If reading serial fails, create a new random serial"
.LC48:
	.string	"rand_serial"
	.align 8
.LC49:
	.string	"Always create a random serial; do not store it"
.LC50:
	.string	"multivalue-rdn"
	.align 8
.LC51:
	.string	"Deprecated; multi-valued RDNs support is always on."
.LC52:
	.string	"startdate"
.LC53:
	.string	"Cert notBefore, YYMMDDHHMMSSZ"
.LC54:
	.string	"enddate"
	.align 8
.LC55:
	.string	"YYMMDDHHMMSSZ cert notAfter (overrides -days)"
.LC56:
	.string	"days"
	.align 8
.LC57:
	.string	"Number of days to certify the cert for"
.LC58:
	.string	"extensions"
	.align 8
.LC59:
	.string	"Extension section (override value in config file)"
.LC60:
	.string	"extfile"
	.align 8
.LC61:
	.string	"Configuration file with X509v3 extensions to add"
.LC62:
	.string	"preserveDN"
.LC63:
	.string	"Don't re-order the DN"
.LC64:
	.string	"noemailDN"
	.align 8
.LC65:
	.string	"Don't add the EMAIL field to the DN"
.LC66:
	.string	"Signing options:\n"
.LC67:
	.string	"md"
.LC68:
	.string	"Digest to use, such as sha256"
.LC69:
	.string	"keyfile"
.LC70:
	.string	"The CA private key"
.LC71:
	.string	"keyform"
	.align 8
.LC72:
	.string	"Private key file format (ENGINE, other values ignored)"
.LC73:
	.string	"passin"
	.align 8
.LC74:
	.string	"Key and cert input file pass phrase source"
.LC75:
	.string	"key"
	.align 8
.LC76:
	.string	"Key to decrypt the private key or cert files if encrypted. Better use -passin"
.LC77:
	.string	"cert"
.LC78:
	.string	"The CA cert"
.LC79:
	.string	"certform"
	.align 8
.LC80:
	.string	"Certificate input format (DER/PEM/P12); has no effect"
.LC81:
	.string	"selfsign"
	.align 8
.LC82:
	.string	"Sign a cert with the key associated with it"
.LC83:
	.string	"sigopt"
	.align 8
.LC84:
	.string	"Signature parameter in n:v form"
.LC85:
	.string	"vfyopt"
	.align 8
.LC86:
	.string	"Verification parameter in n:v form"
.LC87:
	.string	"Revocation options:\n"
.LC88:
	.string	"gencrl"
.LC89:
	.string	"Generate a new CRL"
.LC90:
	.string	"valid"
	.align 8
.LC91:
	.string	"Add a Valid(not-revoked) DB entry about a cert (given in file)"
.LC92:
	.string	"status"
	.align 8
.LC93:
	.string	"Shows cert status given the serial number"
.LC94:
	.string	"updatedb"
.LC95:
	.string	"Updates db for expired cert"
.LC96:
	.string	"crlexts"
	.align 8
.LC97:
	.string	"CRL extension section (override value in config file)"
.LC98:
	.string	"crl_reason"
.LC99:
	.string	"revocation reason"
.LC100:
	.string	"crl_hold"
	.align 8
.LC101:
	.string	"the hold instruction, an OID. Sets revocation reason to certificateHold"
.LC102:
	.string	"crl_compromise"
	.align 8
.LC103:
	.string	"sets compromise time to val and the revocation reason to keyCompromise"
.LC104:
	.string	"crl_CA_compromise"
	.align 8
.LC105:
	.string	"sets compromise time to val and the revocation reason to CACompromise"
.LC106:
	.string	"crl_lastupdate"
	.align 8
.LC107:
	.string	"Sets the CRL lastUpdate time to val (YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ)"
.LC108:
	.string	"crl_nextupdate"
	.align 8
.LC109:
	.string	"Sets the CRL nextUpdate time to val (YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ)"
.LC110:
	.string	"crldays"
	.align 8
.LC111:
	.string	"Days until the next CRL is due"
.LC112:
	.string	"crlhours"
	.align 8
.LC113:
	.string	"Hours until the next CRL is due"
.LC114:
	.string	"crlsec"
	.align 8
.LC115:
	.string	"Seconds until the next CRL is due"
.LC116:
	.string	"revoke"
.LC117:
	.string	"Revoke a cert (given in file)"
.LC118:
	.string	"Random state options:\n"
.LC119:
	.string	"rand"
	.align 8
.LC120:
	.string	"Load the given file(s) into the random number generator"
.LC121:
	.string	"writerand"
	.align 8
.LC122:
	.string	"Write random data to the specified file"
.LC123:
	.string	"Provider options:\n"
.LC124:
	.string	"provider-path"
	.align 8
.LC125:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC126:
	.string	"provider"
	.align 8
.LC127:
	.string	"Provider to load (can be specified multiple times)"
.LC128:
	.string	"propquery"
	.align 8
.LC129:
	.string	"Property query used when fetching algorithms"
.LC130:
	.string	"Parameters:\n"
.LC131:
	.string	"certreq"
	.align 8
.LC132:
	.string	"Certificate requests to be signed (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ca_options, @object
	.size	ca_options, 1728
ca_options:
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
	.long	3
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	51
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	26
	.long	47
	.quad	.LC9
	.quad	.LC10
	.long	22
	.long	60
	.quad	.LC11
	.quad	.LC12
	.long	23
	.long	70
	.quad	.LC13
	.quad	.LC14
	.long	40
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	24
	.long	62
	.quad	.LC17
	.quad	.LC18
	.long	25
	.long	115
	.quad	.LC19
	.quad	.LC20
	.long	29
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	30
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	34
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	41
	.long	60
	.quad	.LC27
	.quad	.LC28
	.long	42
	.long	60
	.quad	.LC29
	.quad	.LC30
	.long	2
	.long	115
	.quad	.LC31
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	4
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	5
	.long	115
	.quad	.LC36
	.quad	.LC37
	.long	5
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	14
	.long	115
	.quad	.LC40
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	6
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	7
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	8
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	50
	.long	45
	.quad	.LC49
	.quad	.LC50
	.long	9
	.long	45
	.quad	.LC51
	.quad	.LC52
	.long	10
	.long	115
	.quad	.LC53
	.quad	.LC54
	.long	11
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	12
	.long	112
	.quad	.LC57
	.quad	.LC58
	.long	45
	.long	115
	.quad	.LC59
	.quad	.LC60
	.long	46
	.long	60
	.quad	.LC61
	.quad	.LC62
	.long	31
	.long	45
	.quad	.LC63
	.quad	.LC64
	.long	32
	.long	45
	.quad	.LC65
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC66
	.quad	.LC67
	.long	13
	.long	115
	.quad	.LC68
	.quad	.LC69
	.long	15
	.long	115
	.quad	.LC70
	.quad	.LC71
	.long	16
	.long	102
	.quad	.LC72
	.quad	.LC73
	.long	17
	.long	115
	.quad	.LC74
	.quad	.LC75
	.long	18
	.long	115
	.quad	.LC76
	.quad	.LC77
	.long	19
	.long	60
	.quad	.LC78
	.quad	.LC79
	.long	20
	.long	70
	.quad	.LC80
	.quad	.LC81
	.long	21
	.long	45
	.quad	.LC82
	.quad	.LC83
	.long	28
	.long	115
	.quad	.LC84
	.quad	.LC85
	.long	27
	.long	115
	.quad	.LC86
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC87
	.quad	.LC88
	.long	33
	.long	45
	.quad	.LC89
	.quad	.LC90
	.long	44
	.long	115
	.quad	.LC91
	.quad	.LC92
	.long	47
	.long	115
	.quad	.LC93
	.quad	.LC94
	.long	48
	.long	45
	.quad	.LC95
	.quad	.LC96
	.long	49
	.long	115
	.quad	.LC97
	.quad	.LC98
	.long	1605
	.long	115
	.quad	.LC99
	.quad	.LC100
	.long	1606
	.long	115
	.quad	.LC101
	.quad	.LC102
	.long	1607
	.long	115
	.quad	.LC103
	.quad	.LC104
	.long	1608
	.long	115
	.quad	.LC105
	.quad	.LC106
	.long	35
	.long	115
	.quad	.LC107
	.quad	.LC108
	.long	36
	.long	115
	.quad	.LC109
	.quad	.LC110
	.long	37
	.long	112
	.quad	.LC111
	.quad	.LC112
	.long	38
	.long	112
	.quad	.LC113
	.quad	.LC114
	.long	39
	.long	112
	.quad	.LC115
	.quad	.LC116
	.long	43
	.long	60
	.quad	.LC117
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC118
	.quad	.LC119
	.long	1501
	.long	115
	.quad	.LC120
	.quad	.LC121
	.long	1502
	.long	62
	.quad	.LC122
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC123
	.quad	.LC124
	.long	1602
	.long	115
	.quad	.LC125
	.quad	.LC126
	.long	1601
	.long	115
	.quad	.LC127
	.quad	.LC128
	.long	1603
	.long	115
	.quad	.LC129
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC130
	.quad	.LC131
	.long	0
	.long	0
	.quad	.LC132
	.quad	0
	.zero	16
	.section	.rodata
.LC133:
	.string	"%s: Use -help for summary.\n"
.LC134:
	.string	"default_ca"
.LC135:
	.string	"ca"
.LC136:
	.string	"oid_file"
.LC137:
	.string	"r"
.LC138:
	.string	"string_mask"
	.align 8
.LC139:
	.string	"Invalid global string mask setting %s\n"
.LC140:
	.string	"yes"
.LC141:
	.string	"unique_subject"
.LC142:
	.string	"database"
	.align 8
.LC143:
	.string	"Problem with index file: %s (could not load/parse file)\n"
.LC144:
	.string	"Error verifying serial %s!\n"
.LC145:
	.string	"private_key"
.LC146:
	.string	"Error getting password\n"
.LC147:
	.string	"CA private key"
.LC148:
	.string	"certificate"
.LC149:
	.string	"CA certificate"
	.align 8
.LC150:
	.string	"CA certificate and CA private key do not match\n"
.LC151:
	.string	"preserve"
.LC152:
	.string	"name_opt"
.LC153:
	.string	"Invalid name options: \"%s\"\n"
.LC154:
	.string	"cert_opt"
	.align 8
.LC155:
	.string	"Invalid certificate options: \"%s\"\n"
.LC156:
	.string	"copy_extensions"
	.align 8
.LC157:
	.string	"Invalid extension copy option: \"%s\"\n"
.LC158:
	.string	"new_certs_dir"
	.align 8
.LC159:
	.string	"there needs to be defined a directory for new certificate to be placed in\n"
.LC160:
	.string	"%s: %s is not a directory\n"
	.align 8
.LC161:
	.string	"entry %d: not revoked yet, but has a revocation date\n"
.LC162:
	.string	" in entry %d\n"
	.align 8
.LC163:
	.string	"entry %d: invalid expiry date\n"
	.align 8
.LC164:
	.string	"entry %d: bad serial number length (%d)\n"
	.align 8
.LC165:
	.string	"entry %d: bad char 0%o '%c' in serial number\n"
	.align 8
.LC166:
	.string	"%d entries loaded from the database\n"
.LC167:
	.string	"generating index\n"
.LC168:
	.string	"Updating %s ...\n"
.LC169:
	.string	"Malloc failure\n"
	.align 8
.LC170:
	.string	"No entries found to mark expired\n"
.LC171:
	.string	"new"
.LC172:
	.string	"old"
	.align 8
.LC173:
	.string	"Done. %d entries marked as expired\n"
	.align 8
.LC174:
	.string	"Successfully loaded extensions file %s\n"
.LC175:
	.string	"default"
.LC176:
	.string	"UNDEF"
.LC177:
	.string	"default_md"
.LC178:
	.string	"no default digest\n"
.LC179:
	.string	"email_in_dn"
.LC180:
	.string	"no"
.LC181:
	.string	"message digest is %s\n"
.LC182:
	.string	"policy is %s\n"
.LC183:
	.string	"serial"
	.align 8
.LC184:
	.string	"Error checking certificate extensions from extfile section %s\n"
.LC185:
	.string	"x509_extensions"
	.align 8
.LC186:
	.string	"Error checking certificate extension config section %s\n"
.LC187:
	.string	"default_startdate"
	.align 8
.LC188:
	.string	"start date is invalid, it should be YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ\n"
.LC189:
	.string	"today"
.LC190:
	.string	"default_enddate"
	.align 8
.LC191:
	.string	"end date is invalid, it should be YYMMDDHHMMSSZ or YYYYMMDDHHMMSSZ\n"
.LC192:
	.string	"default_days"
	.align 8
.LC193:
	.string	"cannot lookup how many days to certify for\n"
	.align 8
.LC194:
	.string	"error generating serial number\n"
	.align 8
.LC195:
	.string	"error while loading serial number\n"
.LC196:
	.string	"next serial number is 00\n"
.LC197:
	.string	"next serial number is %s\n"
.LC198:
	.string	"../apps/ca.c"
	.align 8
.LC199:
	.string	"unable to find 'section' for %s\n"
.LC200:
	.string	"Memory allocation failure\n"
.LC201:
	.string	"\n"
	.align 8
.LC202:
	.string	"\n%d out of %d certificate requests certified, commit? [y/n]"
	.align 8
.LC203:
	.string	"CERTIFICATION CANCELED: I/O error\n"
.LC204:
	.string	"CERTIFICATION CANCELED\n"
	.align 8
.LC205:
	.string	"Write out database with %d new entries\n"
.LC206:
	.string	"/"
.LC207:
	.string	"writing new certificates\n"
	.align 8
.LC208:
	.string	"certificate file name too long\n"
.LC209:
	.string	"writing %s\n"
.LC210:
	.string	"w"
.LC211:
	.string	"Database updated\n"
.LC212:
	.string	"crl_extensions"
	.align 8
.LC213:
	.string	"Error checking CRL extension section %s\n"
.LC214:
	.string	"crlnumber"
	.align 8
.LC215:
	.string	"error while loading CRL number\n"
.LC216:
	.string	"default_crl_days"
.LC217:
	.string	"default_crl_hours"
	.align 8
.LC218:
	.string	"cannot lookup how long until the next CRL is issued\n"
.LC219:
	.string	"making CRL\n"
.LC220:
	.string	"error setting CRL lastUpdate\n"
.LC221:
	.string	"error setting CRL nextUpdate\n"
.LC222:
	.string	"signing CRL\n"
	.align 8
.LC223:
	.string	"Error adding CRL extensions from section %s\n"
.LC224:
	.string	"no input files\n"
.LC225:
	.string	"certificate to be revoked"
	.text
	.globl	ca_main
	.type	ca_main, @function
ca_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4960, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -4980(%rbp)
	movq	%rsi, -4992(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -704(%rbp)
	movq	$0, -696(%rbp)
	movq	$0, -688(%rbp)
	movq	$0, -680(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -480(%rbp)
	movl	$0, -724(%rbp)
	movl	$0, -728(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -4859(%rbp)
	movl	$0, -4852(%rbp)
	movq	$0, -496(%rbp)
	movl	$0, -292(%rbp)
	movl	$0, -296(%rbp)
	movl	$0, -300(%rbp)
	movl	$0, -304(%rbp)
	movl	$0, -308(%rbp)
	movl	$1, -312(%rbp)
	movl	$0, -316(%rbp)
	movl	$0, -4864(%rbp)
	movl	$0, -4868(%rbp)
	movl	$1, -500(%rbp)
	movl	$0, -320(%rbp)
	movl	$0, -324(%rbp)
	movl	$1, -328(%rbp)
	movl	$1, -332(%rbp)
	movl	$0, -336(%rbp)
	movl	$0, -340(%rbp)
	movl	$0, -344(%rbp)
	movl	$0, -348(%rbp)
	movl	$0, -352(%rbp)
	movl	$0, -364(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -4880(%rbp)
	movq	$0, -4888(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -4896(%rbp)
	movq	$4097, -400(%rbp)
	movq	$0, -4904(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -4912(%rbp)
	movl	$0, -420(%rbp)
	movq	$0, -512(%rbp)
	movq	ca_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-4992(%rbp), %rcx
	movl	-4980(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -520(%rbp)
	jmp	.L22
.L95:
	cmpl	$1608, -524(%rbp)
	jg	.L22
	cmpl	$1605, -524(%rbp)
	jge	.L23
	cmpl	$1604, -524(%rbp)
	je	.L22
	cmpl	$1604, -524(%rbp)
	jg	.L22
	cmpl	$1603, -524(%rbp)
	jg	.L22
	cmpl	$1601, -524(%rbp)
	jge	.L25
	cmpl	$1600, -524(%rbp)
	je	.L22
	cmpl	$1600, -524(%rbp)
	jg	.L22
	cmpl	$1503, -524(%rbp)
	je	.L22
	cmpl	$1503, -524(%rbp)
	jg	.L22
	cmpl	$1502, -524(%rbp)
	jg	.L22
	cmpl	$1501, -524(%rbp)
	jge	.L27
	cmpl	$1500, -524(%rbp)
	je	.L22
	cmpl	$1500, -524(%rbp)
	jg	.L22
	cmpl	$51, -524(%rbp)
	je	.L28
	cmpl	$51, -524(%rbp)
	jg	.L22
	cmpl	$50, -524(%rbp)
	je	.L29
	cmpl	$50, -524(%rbp)
	jg	.L22
	cmpl	$49, -524(%rbp)
	je	.L30
	cmpl	$49, -524(%rbp)
	jg	.L22
	cmpl	$48, -524(%rbp)
	je	.L31
	cmpl	$48, -524(%rbp)
	jg	.L22
	cmpl	$47, -524(%rbp)
	je	.L32
	cmpl	$47, -524(%rbp)
	jg	.L22
	cmpl	$46, -524(%rbp)
	je	.L33
	cmpl	$46, -524(%rbp)
	jg	.L22
	cmpl	$45, -524(%rbp)
	je	.L34
	cmpl	$45, -524(%rbp)
	jg	.L22
	cmpl	$44, -524(%rbp)
	je	.L35
	cmpl	$44, -524(%rbp)
	jg	.L22
	cmpl	$43, -524(%rbp)
	je	.L36
	cmpl	$43, -524(%rbp)
	jg	.L22
	cmpl	$42, -524(%rbp)
	je	.L37
	cmpl	$42, -524(%rbp)
	jg	.L22
	cmpl	$41, -524(%rbp)
	je	.L38
	cmpl	$41, -524(%rbp)
	jg	.L22
	cmpl	$40, -524(%rbp)
	je	.L39
	cmpl	$40, -524(%rbp)
	jg	.L22
	cmpl	$39, -524(%rbp)
	je	.L40
	cmpl	$39, -524(%rbp)
	jg	.L22
	cmpl	$38, -524(%rbp)
	je	.L41
	cmpl	$38, -524(%rbp)
	jg	.L22
	cmpl	$37, -524(%rbp)
	je	.L42
	cmpl	$37, -524(%rbp)
	jg	.L22
	cmpl	$36, -524(%rbp)
	je	.L43
	cmpl	$36, -524(%rbp)
	jg	.L22
	cmpl	$35, -524(%rbp)
	je	.L44
	cmpl	$35, -524(%rbp)
	jg	.L22
	cmpl	$34, -524(%rbp)
	je	.L45
	cmpl	$34, -524(%rbp)
	jg	.L22
	cmpl	$33, -524(%rbp)
	je	.L46
	cmpl	$33, -524(%rbp)
	jg	.L22
	cmpl	$32, -524(%rbp)
	je	.L47
	cmpl	$32, -524(%rbp)
	jg	.L22
	cmpl	$31, -524(%rbp)
	je	.L48
	cmpl	$31, -524(%rbp)
	jg	.L22
	cmpl	$30, -524(%rbp)
	je	.L49
	cmpl	$30, -524(%rbp)
	jg	.L22
	cmpl	$29, -524(%rbp)
	je	.L50
	cmpl	$29, -524(%rbp)
	jg	.L22
	cmpl	$28, -524(%rbp)
	je	.L51
	cmpl	$28, -524(%rbp)
	jg	.L22
	cmpl	$27, -524(%rbp)
	je	.L52
	cmpl	$27, -524(%rbp)
	jg	.L22
	cmpl	$26, -524(%rbp)
	je	.L53
	cmpl	$26, -524(%rbp)
	jg	.L22
	cmpl	$25, -524(%rbp)
	je	.L54
	cmpl	$25, -524(%rbp)
	jg	.L22
	cmpl	$24, -524(%rbp)
	je	.L55
	cmpl	$24, -524(%rbp)
	jg	.L22
	cmpl	$23, -524(%rbp)
	je	.L56
	cmpl	$23, -524(%rbp)
	jg	.L22
	cmpl	$22, -524(%rbp)
	je	.L57
	cmpl	$22, -524(%rbp)
	jg	.L22
	cmpl	$21, -524(%rbp)
	je	.L58
	cmpl	$21, -524(%rbp)
	jg	.L22
	cmpl	$20, -524(%rbp)
	je	.L59
	cmpl	$20, -524(%rbp)
	jg	.L22
	cmpl	$19, -524(%rbp)
	je	.L60
	cmpl	$19, -524(%rbp)
	jg	.L22
	cmpl	$18, -524(%rbp)
	je	.L61
	cmpl	$18, -524(%rbp)
	jg	.L22
	cmpl	$17, -524(%rbp)
	je	.L62
	cmpl	$17, -524(%rbp)
	jg	.L22
	cmpl	$16, -524(%rbp)
	je	.L63
	cmpl	$16, -524(%rbp)
	jg	.L22
	cmpl	$15, -524(%rbp)
	je	.L64
	cmpl	$15, -524(%rbp)
	jg	.L22
	cmpl	$14, -524(%rbp)
	je	.L65
	cmpl	$14, -524(%rbp)
	jg	.L22
	cmpl	$13, -524(%rbp)
	je	.L66
	cmpl	$13, -524(%rbp)
	jg	.L22
	cmpl	$12, -524(%rbp)
	je	.L67
	cmpl	$12, -524(%rbp)
	jg	.L22
	cmpl	$11, -524(%rbp)
	je	.L68
	cmpl	$11, -524(%rbp)
	jg	.L22
	cmpl	$10, -524(%rbp)
	je	.L69
	cmpl	$10, -524(%rbp)
	jg	.L22
	cmpl	$9, -524(%rbp)
	je	.L22
	cmpl	$9, -524(%rbp)
	jg	.L22
	cmpl	$8, -524(%rbp)
	je	.L71
	cmpl	$8, -524(%rbp)
	jg	.L22
	cmpl	$7, -524(%rbp)
	je	.L72
	cmpl	$7, -524(%rbp)
	jg	.L22
	cmpl	$6, -524(%rbp)
	je	.L73
	cmpl	$6, -524(%rbp)
	jg	.L22
	cmpl	$5, -524(%rbp)
	je	.L74
	cmpl	$5, -524(%rbp)
	jg	.L22
	cmpl	$4, -524(%rbp)
	je	.L75
	cmpl	$4, -524(%rbp)
	jg	.L22
	cmpl	$3, -524(%rbp)
	je	.L76
	cmpl	$3, -524(%rbp)
	jg	.L22
	cmpl	$2, -524(%rbp)
	je	.L77
	cmpl	$2, -524(%rbp)
	jg	.L22
	cmpl	$0, -524(%rbp)
	jg	.L78
	cmpl	$-1, -524(%rbp)
	jge	.L79
	jmp	.L22
.L78:
	cmpl	$1, -524(%rbp)
	je	.L80
	jmp	.L22
.L266:
	nop
	jmp	.L79
.L267:
	nop
	jmp	.L79
.L268:
	nop
	jmp	.L79
.L271:
	nop
.L79:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-520(%rbp), %rdx
	leaq	.LC133(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L80:
	movq	ca_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -328(%rbp)
	jmp	.L81
.L57:
	movl	$1, -336(%rbp)
	call	opt_arg@PLT
	movq	%rax, -176(%rbp)
	jmp	.L22
.L56:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-728(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L266
	jmp	.L22
.L55:
	call	opt_arg@PLT
	movq	%rax, -232(%rbp)
	jmp	.L22
.L54:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-736(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_dateopt@PLT
	testl	%eax, %eax
	je	.L267
	jmp	.L22
.L76:
	movl	$1, -340(%rbp)
	jmp	.L22
.L28:
	movl	$0, -340(%rbp)
	jmp	.L22
.L75:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L22
.L74:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	jmp	.L22
.L73:
	call	opt_arg@PLT
	movq	%rax, -264(%rbp)
	jmp	.L22
.L72:
	movq	$4096, -400(%rbp)
	jmp	.L22
.L29:
	movl	$1, -352(%rbp)
	jmp	.L22
.L71:
	movl	$1, -292(%rbp)
	jmp	.L22
.L69:
	call	opt_arg@PLT
	movq	%rax, -272(%rbp)
	jmp	.L22
.L68:
	call	opt_arg@PLT
	movq	%rax, -280(%rbp)
	jmp	.L22
.L67:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	cltq
	movq	%rax, -4896(%rbp)
	jmp	.L22
.L66:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L22
.L65:
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	jmp	.L22
.L64:
	call	opt_arg@PLT
	movq	%rax, -152(%rbp)
	jmp	.L22
.L63:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-4868(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L268
	jmp	.L22
.L62:
	call	opt_arg@PLT
	movq	%rax, -216(%rbp)
	jmp	.L22
.L27:
	movl	-524(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L269
	jmp	.L22
.L25:
	movl	-524(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L270
	jmp	.L22
.L61:
	call	opt_arg@PLT
	movq	%rax, -744(%rbp)
	jmp	.L22
.L60:
	call	opt_arg@PLT
	movq	%rax, -160(%rbp)
	jmp	.L22
.L59:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-724(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L271
	jmp	.L22
.L58:
	movl	$1, -364(%rbp)
	jmp	.L22
.L53:
	call	opt_arg@PLT
	movq	%rax, -224(%rbp)
	jmp	.L22
.L51:
	cmpq	$0, -88(%rbp)
	jne	.L88
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -88(%rbp)
.L88:
	cmpq	$0, -88(%rbp)
	je	.L272
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L272
	jmp	.L22
.L52:
	cmpq	$0, -96(%rbp)
	jne	.L91
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -96(%rbp)
.L91:
	cmpq	$0, -96(%rbp)
	je	.L273
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L273
	jmp	.L22
.L50:
	movl	$1, -320(%rbp)
	jmp	.L22
.L49:
	movl	$1, -308(%rbp)
	jmp	.L22
.L48:
	movl	$1, preserve(%rip)
	jmp	.L22
.L47:
	movl	$0, -332(%rbp)
	jmp	.L22
.L46:
	movl	$1, -344(%rbp)
	jmp	.L22
.L45:
	movl	$1, msie_hack(%rip)
	jmp	.L22
.L44:
	call	opt_arg@PLT
	movq	%rax, -376(%rbp)
	jmp	.L22
.L43:
	call	opt_arg@PLT
	movq	%rax, -384(%rbp)
	jmp	.L22
.L42:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atol@PLT
	movq	%rax, -4880(%rbp)
	jmp	.L22
.L41:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atol@PLT
	movq	%rax, -4888(%rbp)
	jmp	.L22
.L40:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atol@PLT
	movq	%rax, -392(%rbp)
	jmp	.L22
.L39:
	movl	$1, -336(%rbp)
	jmp	.L94
.L38:
	call	opt_arg@PLT
	movq	%rax, -192(%rbp)
	movl	$1, -336(%rbp)
	jmp	.L22
.L37:
	call	opt_arg@PLT
	movq	%rax, -184(%rbp)
	movl	$1, -336(%rbp)
	jmp	.L22
.L36:
	call	opt_arg@PLT
	movq	%rax, -176(%rbp)
	movl	$1, -348(%rbp)
	jmp	.L22
.L35:
	call	opt_arg@PLT
	movq	%rax, -176(%rbp)
	movl	$2, -348(%rbp)
	jmp	.L22
.L34:
	call	opt_arg@PLT
	movq	%rax, -200(%rbp)
	jmp	.L22
.L33:
	call	opt_arg@PLT
	movq	%rax, -208(%rbp)
	jmp	.L22
.L32:
	call	opt_arg@PLT
	movq	%rax, -248(%rbp)
	jmp	.L22
.L31:
	movl	$1, -316(%rbp)
	jmp	.L22
.L30:
	call	opt_arg@PLT
	movq	%rax, -168(%rbp)
	jmp	.L22
.L23:
	call	opt_arg@PLT
	movq	%rax, -240(%rbp)
	movl	-524(%rbp), %eax
	subl	$1604, %eax
	movl	%eax, -420(%rbp)
	jmp	.L22
.L77:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -48(%rbp)
	nop
.L22:
	call	opt_next@PLT
	movl	%eax, -524(%rbp)
	cmpl	$0, -524(%rbp)
	jne	.L95
	nop
.L94:
	call	opt_num_rest@PLT
	movl	%eax, -4980(%rbp)
	call	opt_rest@PLT
	movq	%rax, -4992(%rbp)
	movq	-120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	app_load_config_verbose@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L274
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, -120(%rbp)
	je	.L97
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	app_load_modules@PLT
	testl	%eax, %eax
	je	.L275
.L97:
	cmpq	$0, -128(%rbp)
	jne	.L98
	leaq	.LC134(%rip), %rdx
	leaq	.LC135(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L276
.L98:
	leaq	.LC136(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -288(%rbp)
	cmpq	$0, -288(%rbp)
	je	.L99
	leaq	.LC137(%rip), %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -536(%rbp)
	cmpq	$0, -536(%rbp)
	jne	.L100
	call	ERR_clear_error@PLT
	jmp	.L99
.L100:
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_create_objects@PLT
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L99:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	add_oid_section@PLT
	testl	%eax, %eax
	je	.L277
	leaq	.LC135(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_RAND_load_conf@PLT
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L278
	leaq	.LC138(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L103
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_set_default_mask_asc@PLT
	testl	%eax, %eax
	jne	.L103
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-544(%rbp), %rdx
	leaq	.LC139(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L103:
	cmpq	$4096, -400(%rbp)
	je	.L104
	leaq	.LC44(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L104
	leaq	.LC140(%rip), %rdx
	movq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L104
	movq	$4096, -400(%rbp)
.L104:
	movl	$1, -628(%rbp)
	leaq	.LC141(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -288(%rbp)
	cmpq	$0, -288(%rbp)
	je	.L105
	movq	-288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	parse_yesno@PLT
	movl	%eax, -628(%rbp)
.L105:
	cmpq	$0, -248(%rbp)
	je	.L106
	leaq	.LC142(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	je	.L279
	leaq	-628(%rbp), %rdx
	movq	-488(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_index@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L108
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-488(%rbp), %rdx
	leaq	.LC143(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L108:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	index_index@PLT
	testl	%eax, %eax
	jle	.L280
	movq	-80(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_certificate_status
	cmpl	$1, %eax
	je	.L281
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	leaq	.LC144(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L281
.L106:
	cmpq	$0, -152(%rbp)
	jne	.L111
	leaq	.LC145(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L282
.L111:
	movq	-744(%rbp), %rax
	testq	%rax, %rax
	jne	.L112
	movl	$1, -296(%rbp)
	leaq	-744(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L112
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC146(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L112:
	movq	-744(%rbp), %rdx
	movl	-4868(%rbp), %esi
	leaq	.LC147(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -64(%rbp)
	movq	-744(%rbp), %rax
	movq	%rax, %rdi
	call	cleanse@PLT
	cmpq	$0, -64(%rbp)
	je	.L283
	cmpl	$0, -364(%rbp)
	je	.L114
	cmpq	$0, -184(%rbp)
	jne	.L114
	cmpq	$0, -192(%rbp)
	jne	.L114
	cmpl	$0, -344(%rbp)
	je	.L115
.L114:
	cmpq	$0, -160(%rbp)
	jne	.L116
	leaq	.LC148(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L284
.L116:
	movq	-744(%rbp), %rdx
	movl	-724(%rbp), %esi
	leaq	.LC149(%rip), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -408(%rbp)
	cmpq	$0, -408(%rbp)
	je	.L285
	movq	-64(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L115
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC150(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L115:
	cmpl	$0, -364(%rbp)
	jne	.L118
	movq	-408(%rbp), %rax
	movq	%rax, -416(%rbp)
.L118:
	leaq	.LC151(%rip), %rdx
	leaq	.LC135(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L119
	movq	-544(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$121, %al
	je	.L120
	movq	-544(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$89, %al
	jne	.L119
.L120:
	movl	$1, preserve(%rip)
.L119:
	leaq	.LC24(%rip), %rdx
	leaq	.LC135(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L121
	movq	-544(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$121, %al
	je	.L122
	movq	-544(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$89, %al
	jne	.L121
.L122:
	movl	$1, msie_hack(%rip)
.L121:
	leaq	.LC152(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L123
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	set_nameopt@PLT
	testl	%eax, %eax
	jne	.L124
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-544(%rbp), %rdx
	leaq	.LC153(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L124:
	movl	$0, -312(%rbp)
.L123:
	leaq	.LC154(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L125
	movq	-544(%rbp), %rdx
	leaq	-4904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_cert_ex@PLT
	testl	%eax, %eax
	jne	.L126
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-544(%rbp), %rdx
	leaq	.LC155(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L126:
	movl	$0, -312(%rbp)
.L125:
	leaq	.LC156(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L127
	movq	-544(%rbp), %rdx
	leaq	-4864(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_ext_copy@PLT
	testl	%eax, %eax
	jne	.L127
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-544(%rbp), %rdx
	leaq	.LC157(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L127:
	cmpq	$0, -224(%rbp)
	jne	.L128
	cmpl	$0, -336(%rbp)
	je	.L128
	leaq	.LC158(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.L129
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC159(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L129:
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	app_isdir@PLT
	testl	%eax, %eax
	jg	.L128
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-520(%rbp), %rdx
	leaq	.LC160(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	perror@PLT
	jmp	.L81
.L128:
	leaq	.LC142(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	je	.L286
	leaq	-628(%rbp), %rdx
	movq	-488(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_index@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L131
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-488(%rbp), %rdx
	leaq	.LC143(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L131:
	movl	$0, -356(%rbp)
	jmp	.L132
.L142:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-356(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	je	.L133
	movq	-608(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L133
	movl	-356(%rbp), %eax
	leal	1(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC161(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L133:
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L134
	movq	-608(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	make_revoked
	testl	%eax, %eax
	jne	.L134
	movl	-356(%rbp), %eax
	leal	1(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC162(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L134:
	movq	-608(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	check_time_format
	testl	%eax, %eax
	jne	.L135
	movl	-356(%rbp), %eax
	leal	1(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC163(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L135:
	movq	-608(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -360(%rbp)
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L136
	addq	$1, -288(%rbp)
	subl	$1, -360(%rbp)
.L136:
	movl	-360(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L137
	cmpl	$1, -360(%rbp)
	jg	.L139
.L137:
	movl	-356(%rbp), %eax
	leal	1(%rax), %edi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-360(%rbp), %edx
	leaq	.LC164(%rip), %rsi
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L141:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L140
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-356(%rbp), %eax
	leal	1(%rax), %edi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC165(%rip), %rsi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L140:
	addq	$1, -288(%rbp)
.L139:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L141
	addl	$1, -356(%rbp)
.L132:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -356(%rbp)
	jl	.L142
	cmpl	$0, -340(%rbp)
	je	.L143
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TXT_DB_write@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	movl	%eax, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC166(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L143:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	index_index@PLT
	testl	%eax, %eax
	jle	.L287
	cmpl	$0, -316(%rbp)
	je	.L145
	cmpl	$0, -340(%rbp)
	je	.L146
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-488(%rbp), %rdx
	leaq	.LC168(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L146:
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_updatedb@PLT
	movl	%eax, -356(%rbp)
	cmpl	$-1, -356(%rbp)
	jne	.L147
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC169(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L147:
	cmpl	$0, -356(%rbp)
	jne	.L148
	cmpl	$0, -340(%rbp)
	je	.L145
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC170(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L145
.L148:
	movq	-80(%rbp), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_index@PLT
	testl	%eax, %eax
	je	.L288
	leaq	.LC172(%rip), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_index@PLT
	testl	%eax, %eax
	je	.L289
	cmpl	$0, -340(%rbp)
	je	.L145
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-356(%rbp), %edx
	leaq	.LC173(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L145:
	cmpq	$0, -208(%rbp)
	je	.L151
	movq	-208(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_internal@PLT
	movq	%rax, extfile_conf(%rip)
	movq	extfile_conf(%rip), %rax
	testq	%rax, %rax
	jne	.L152
	movl	$1, -328(%rbp)
	jmp	.L81
.L152:
	cmpl	$0, -340(%rbp)
	je	.L153
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC174(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L153:
	cmpq	$0, -200(%rbp)
	jne	.L151
	movq	extfile_conf(%rip), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC175(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.L151
	leaq	.LC175(%rip), %rax
	movq	%rax, -200(%rbp)
.L151:
	cmpl	$0, -336(%rbp)
	jne	.L154
	cmpl	$0, -344(%rbp)
	je	.L155
.L154:
	cmpq	$0, -184(%rbp)
	je	.L155
	cmpq	$0, -232(%rbp)
	je	.L155
	movl	$1, -324(%rbp)
	movl	$1, -308(%rbp)
.L155:
	leaq	-720(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_name@PLT
	movl	%eax, -548(%rbp)
	cmpl	$2, -548(%rbp)
	jne	.L156
	leaq	.LC176(%rip), %rdx
	leaq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L156
	movq	$0, -136(%rbp)
	jmp	.L157
.L156:
	cmpq	$0, -136(%rbp)
	jne	.L158
	leaq	.LC177(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L158
	leaq	.LC176(%rip), %rdx
	leaq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L290
.L158:
	leaq	.LC175(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L159
	leaq	.LC176(%rip), %rdx
	leaq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L157
.L159:
	cmpl	$0, -548(%rbp)
	jg	.L160
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC178(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L81
.L160:
	leaq	-720(%rbp), %rax
	movq	%rax, -136(%rbp)
.L157:
	cmpl	$0, -336(%rbp)
	je	.L161
	cmpl	$1, -332(%rbp)
	jne	.L162
	movq	$0, -560(%rbp)
	leaq	.LC179(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -560(%rbp)
	cmpq	$0, -560(%rbp)
	je	.L162
	leaq	.LC180(%rip), %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$0, -332(%rbp)
.L162:
	cmpl	$0, -340(%rbp)
	je	.L163
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC181(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L163:
	cmpq	$0, -144(%rbp)
	jne	.L164
	leaq	.LC39(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L291
.L164:
	cmpl	$0, -340(%rbp)
	je	.L165
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC182(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L165:
	leaq	.LC48(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	testq	%rax, %rax
	je	.L166
	movl	$1, -352(%rbp)
	jmp	.L167
.L166:
	leaq	.LC183(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	je	.L292
.L167:
	movq	extfile_conf(%rip), %rax
	testq	%rax, %rax
	je	.L168
	leaq	-4976(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	extfile_conf(%rip), %rdx
	leaq	-4976(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	extfile_conf(%rip), %rax
	movq	-200(%rbp), %rdx
	leaq	-4976(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L170
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-200(%rbp), %rdx
	leaq	.LC184(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -328(%rbp)
	jmp	.L81
.L168:
	cmpq	$0, -200(%rbp)
	jne	.L171
	leaq	.LC185(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -200(%rbp)
.L171:
	cmpq	$0, -200(%rbp)
	je	.L170
	leaq	-4976(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	-40(%rbp), %rdx
	leaq	-4976(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	-200(%rbp), %rdx
	leaq	-4976(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L170
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-200(%rbp), %rdx
	leaq	.LC186(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -328(%rbp)
	jmp	.L81
.L170:
	cmpq	$0, -272(%rbp)
	jne	.L173
	leaq	.LC187(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -272(%rbp)
.L173:
	cmpq	$0, -272(%rbp)
	je	.L174
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set_string_X509@PLT
	testl	%eax, %eax
	jne	.L174
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC188(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L174:
	cmpq	$0, -272(%rbp)
	jne	.L175
	leaq	.LC189(%rip), %rax
	movq	%rax, -272(%rbp)
.L175:
	cmpq	$0, -280(%rbp)
	jne	.L176
	leaq	.LC190(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -280(%rbp)
.L176:
	cmpq	$0, -280(%rbp)
	je	.L177
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set_string_X509@PLT
	testl	%eax, %eax
	jne	.L177
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC191(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L177:
	movq	-4896(%rbp), %rax
	testq	%rax, %rax
	jne	.L178
	leaq	-4896(%rbp), %rdx
	leaq	.LC192(%rip), %rdi
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L178
	movq	$0, -4896(%rbp)
.L178:
	cmpq	$0, -280(%rbp)
	jne	.L179
	movq	-4896(%rbp), %rax
	testq	%rax, %rax
	jne	.L179
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC193(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L179:
	cmpl	$0, -352(%rbp)
	je	.L180
	call	BN_new@PLT
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	testq	%rax, %rax
	je	.L181
	movq	-624(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rand_serial@PLT
	testl	%eax, %eax
	jne	.L182
.L181:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC194(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L180:
	movl	-292(%rbp), %edx
	movq	-256(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_serial@PLT
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	testq	%rax, %rax
	jne	.L183
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC195(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L183:
	cmpl	$0, -340(%rbp)
	je	.L182
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L184
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC196(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L182
.L184:
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L293
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-544(%rbp), %rdx
	leaq	.LC197(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC198(%rip), %rcx
	movq	-544(%rbp), %rax
	movl	$920, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L182:
	movq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -472(%rbp)
	cmpq	$0, -472(%rbp)
	jne	.L186
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC199(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L186:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L187
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L187:
	cmpq	$0, -184(%rbp)
	je	.L188
	addl	$1, -300(%rbp)
	movq	-736(%rbp), %r12
	movl	-4864(%rbp), %ebx
	call	get_nameopt@PLT
	movq	%rax, %rdi
	movq	-4904(%rbp), %r10
	movq	-4896(%rbp), %r9
	movq	-624(%rbp), %r8
	movq	-88(%rbp), %r14
	movq	-136(%rbp), %r13
	movq	-408(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-184(%rbp), %rsi
	leaq	-4912(%rbp), %rax
	pushq	%r12
	pushq	%rbx
	movl	-312(%rbp), %r11d
	pushq	%r11
	pushq	%rdi
	pushq	%r10
	movl	-340(%rbp), %edi
	pushq	%rdi
	pushq	-40(%rbp)
	pushq	-200(%rbp)
	pushq	%r9
	pushq	-280(%rbp)
	pushq	-272(%rbp)
	movl	-332(%rbp), %edi
	pushq	%rdi
	movl	-500(%rbp), %edi
	pushq	%rdi
	pushq	-400(%rbp)
	pushq	-264(%rbp)
	pushq	%r8
	pushq	-80(%rbp)
	pushq	-472(%rbp)
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rax, %rdi
	call	certify_spkac
	addq	$144, %rsp
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	js	.L294
	cmpl	$0, -360(%rbp)
	jle	.L188
	addl	$1, -304(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-624(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L295
	movq	-4912(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L188
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L188:
	cmpq	$0, -192(%rbp)
	je	.L191
	addl	$1, -300(%rbp)
	movq	-736(%rbp), %r12
	movl	-4864(%rbp), %ebx
	call	get_nameopt@PLT
	movq	%rax, %rdi
	movq	-4904(%rbp), %r10
	movq	-4896(%rbp), %r9
	movq	-624(%rbp), %r8
	movq	-744(%rbp), %rcx
	movl	-724(%rbp), %edx
	movq	-408(%rbp), %r14
	movq	-64(%rbp), %r13
	movq	-192(%rbp), %rsi
	leaq	-4912(%rbp), %rax
	pushq	%r12
	pushq	%rbx
	movl	-312(%rbp), %r11d
	pushq	%r11
	pushq	%rdi
	pushq	%r10
	movl	-340(%rbp), %edi
	pushq	%rdi
	pushq	-40(%rbp)
	pushq	-200(%rbp)
	movl	-308(%rbp), %edi
	pushq	%rdi
	pushq	%r9
	pushq	-280(%rbp)
	pushq	-272(%rbp)
	movl	-332(%rbp), %edi
	pushq	%rdi
	movl	-500(%rbp), %edi
	pushq	%rdi
	pushq	-400(%rbp)
	pushq	-264(%rbp)
	pushq	%r8
	pushq	-80(%rbp)
	pushq	-472(%rbp)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	-136(%rbp)
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rax, %rdi
	call	certify_cert
	addq	$176, %rsp
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	js	.L296
	cmpl	$0, -360(%rbp)
	jle	.L191
	addl	$1, -304(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-624(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L297
	movq	-4912(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L191
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L191:
	cmpq	$0, -176(%rbp)
	je	.L194
	addl	$1, -300(%rbp)
	movq	-736(%rbp), %r12
	movl	-4864(%rbp), %ebx
	call	get_nameopt@PLT
	movq	%rax, %rdi
	movq	-4904(%rbp), %r10
	movq	-4896(%rbp), %r9
	movq	-624(%rbp), %r8
	movl	-728(%rbp), %edx
	movq	-136(%rbp), %r14
	movq	-416(%rbp), %r13
	movq	-64(%rbp), %rcx
	movq	-176(%rbp), %rsi
	leaq	-4912(%rbp), %rax
	pushq	%r12
	movl	-364(%rbp), %r11d
	pushq	%r11
	pushq	%rbx
	movl	-312(%rbp), %r11d
	pushq	%r11
	pushq	%rdi
	pushq	%r10
	movl	-340(%rbp), %edi
	pushq	%rdi
	pushq	-40(%rbp)
	pushq	-200(%rbp)
	movl	-308(%rbp), %edi
	pushq	%rdi
	pushq	%r9
	pushq	-280(%rbp)
	pushq	-272(%rbp)
	movl	-332(%rbp), %edi
	pushq	%rdi
	movl	-500(%rbp), %edi
	pushq	%rdi
	pushq	-400(%rbp)
	pushq	-264(%rbp)
	pushq	%r8
	pushq	-80(%rbp)
	pushq	-472(%rbp)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rax, %rdi
	call	certify
	addq	$176, %rsp
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	js	.L298
	cmpl	$0, -360(%rbp)
	jle	.L194
	addl	$1, -304(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-624(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L299
	movq	-4912(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L194
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L194:
	movl	$0, -356(%rbp)
	jmp	.L197
.L201:
	addl	$1, -300(%rbp)
	movq	-736(%rbp), %r12
	movl	-4864(%rbp), %ebx
	call	get_nameopt@PLT
	movq	%rax, %rdi
	movq	-4904(%rbp), %r10
	movq	-4896(%rbp), %r9
	movq	-624(%rbp), %r8
	movl	-728(%rbp), %edx
	movl	-356(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-4992(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %r14
	movq	-416(%rbp), %r13
	movq	-64(%rbp), %rcx
	leaq	-4912(%rbp), %rax
	pushq	%r12
	movl	-364(%rbp), %r11d
	pushq	%r11
	pushq	%rbx
	movl	-312(%rbp), %r11d
	pushq	%r11
	pushq	%rdi
	pushq	%r10
	movl	-340(%rbp), %edi
	pushq	%rdi
	pushq	-40(%rbp)
	pushq	-200(%rbp)
	movl	-308(%rbp), %edi
	pushq	%rdi
	pushq	%r9
	pushq	-280(%rbp)
	pushq	-272(%rbp)
	movl	-332(%rbp), %edi
	pushq	%rdi
	movl	-500(%rbp), %edi
	pushq	%rdi
	pushq	-400(%rbp)
	pushq	-264(%rbp)
	pushq	%r8
	pushq	-80(%rbp)
	pushq	-472(%rbp)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rax, %rdi
	call	certify
	addq	$176, %rsp
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	js	.L300
	cmpl	$0, -360(%rbp)
	jle	.L199
	addl	$1, -304(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-624(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L200
	movq	-4912(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L81
.L200:
	movq	-4912(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L199
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-4912(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L81
.L199:
	addl	$1, -356(%rbp)
.L197:
	movl	-356(%rbp), %eax
	cmpl	-4980(%rbp), %eax
	jl	.L201
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L202
	cmpl	$0, -308(%rbp)
	jne	.L203
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-300(%rbp), %ecx
	movl	-304(%rbp), %edx
	leaq	.LC202(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movb	$0, -4859(%rbp)
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	-4859(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L204
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC203(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -328(%rbp)
	jmp	.L81
.L204:
	movzbl	-4859(%rbp), %eax
	cmpb	$121, %al
	je	.L203
	movzbl	-4859(%rbp), %eax
	cmpb	$89, %al
	je	.L203
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -328(%rbp)
	jmp	.L81
.L203:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC205(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -256(%rbp)
	je	.L205
	movq	-624(%rbp), %rdx
	leaq	.LC171(%rip), %rsi
	movq	-256(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	save_serial@PLT
	testl	%eax, %eax
	je	.L301
.L205:
	movq	-80(%rbp), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_index@PLT
	testl	%eax, %eax
	je	.L302
.L202:
	movq	-224(%rbp), %rcx
	leaq	-4848(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	%rax, -496(%rbp)
	leaq	.LC206(%rip), %rcx
	leaq	-4848(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	%rax, -496(%rbp)
	cmpl	$0, -340(%rbp)
	je	.L206
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC207(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L206:
	movl	$0, -356(%rbp)
	jmp	.L207
.L218:
	movq	$0, -568(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-356(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -432(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -588(%rbp)
	movl	-588(%rbp), %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	addl	%eax, %eax
	addl	$5, %eax
	movl	%eax, -592(%rbp)
	leaq	-4848(%rbp), %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -440(%rbp)
	movl	-592(%rbp), %eax
	movslq	%eax, %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$4096, %rax
	jbe	.L208
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC208(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L208:
	cmpl	$0, -588(%rbp)
	jle	.L209
	movl	$0, -360(%rbp)
	jmp	.L210
.L211:
	movq	-432(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %ecx
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movslq	%ecx, %rdx
	leaq	HEX_DIGITS.0(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movq	-432(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movslq	%ecx, %rdx
	leaq	HEX_DIGITS.0(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -360(%rbp)
	addq	$1, -432(%rbp)
.L210:
	movl	-360(%rbp), %eax
	cmpl	-588(%rbp), %eax
	jl	.L211
	jmp	.L212
.L209:
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movb	$48, (%rax)
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movb	$48, (%rax)
.L212:
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movb	$46, (%rax)
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movb	$112, (%rax)
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movb	$101, (%rax)
	movq	-440(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movb	$109, (%rax)
	movq	-440(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -340(%rbp)
	je	.L213
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-4848(%rbp), %rdx
	leaq	.LC209(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L213:
	cmpl	$0, -324(%rbp)
	je	.L214
	movl	$4, %edx
	jmp	.L215
.L214:
	movl	$32769, %edx
.L215:
	movq	-232(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L303
	leaq	.LC210(%rip), %rdx
	leaq	-4848(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L217
	leaq	-4848(%rbp), %rax
	movq	%rax, %rdi
	call	perror@PLT
	jmp	.L81
.L217:
	movl	-320(%rbp), %edx
	movq	-576(%rbp), %rsi
	movq	-568(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	write_new_certificate
	movl	-320(%rbp), %ecx
	movl	-324(%rbp), %edx
	movq	-576(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	write_new_certificate
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	$0, -72(%rbp)
	addl	$1, -356(%rbp)
.L207:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -356(%rbp)
	jl	.L218
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L161
	cmpq	$0, -256(%rbp)
	je	.L219
	leaq	.LC172(%rip), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_serial@PLT
	testl	%eax, %eax
	je	.L304
.L219:
	leaq	.LC172(%rip), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_index@PLT
	testl	%eax, %eax
	je	.L305
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC211(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L161:
	cmpl	$0, -344(%rbp)
	je	.L221
	movl	$0, -444(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L222
	leaq	.LC212(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -168(%rbp)
.L222:
	cmpq	$0, -168(%rbp)
	je	.L223
	leaq	-4976(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	-40(%rbp), %rdx
	leaq	-4976(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	-168(%rbp), %rdx
	leaq	-4976(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L223
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC213(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -328(%rbp)
	jmp	.L81
.L223:
	leaq	.LC214(%rip), %rdx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -480(%rbp)
	cmpq	$0, -480(%rbp)
	je	.L225
	movq	-480(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_serial@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L225
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC215(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L225:
	movq	-4880(%rbp), %rax
	testq	%rax, %rax
	jne	.L226
	movq	-4888(%rbp), %rax
	testq	%rax, %rax
	jne	.L226
	cmpq	$0, -392(%rbp)
	jne	.L226
	leaq	-4880(%rbp), %rdx
	leaq	.LC216(%rip), %rdi
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L227
	movq	$0, -4880(%rbp)
.L227:
	leaq	-4888(%rbp), %rdx
	leaq	.LC217(%rip), %rdi
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L226
	movq	$0, -4888(%rbp)
.L226:
	cmpq	$0, -384(%rbp)
	jne	.L228
	movq	-4880(%rbp), %rax
	testq	%rax, %rax
	jne	.L228
	movq	-4888(%rbp), %rax
	testq	%rax, %rax
	jne	.L228
	cmpq	$0, -392(%rbp)
	jne	.L228
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC218(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L228:
	cmpl	$0, -340(%rbp)
	je	.L229
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC219(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L229:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_new_ex@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L306
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_set_issuer_name@PLT
	testl	%eax, %eax
	je	.L307
	movq	-376(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_crl_lastupdate@PLT
	testl	%eax, %eax
	jne	.L232
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC220(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -328(%rbp)
	jmp	.L81
.L232:
	movq	-4888(%rbp), %rcx
	movq	-4880(%rbp), %rdx
	movq	-392(%rbp), %rdi
	movq	-384(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	set_crl_nextupdate@PLT
	testl	%eax, %eax
	jne	.L233
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC221(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -328(%rbp)
	jmp	.L81
.L233:
	movl	$0, -356(%rbp)
	jmp	.L234
.L241:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-356(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L235
	call	X509_REVOKED_new@PLT
	movq	%rax, -512(%rbp)
	cmpq	$0, -512(%rbp)
	je	.L308
	movq	-608(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_revoked
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	je	.L309
	cmpl	$2, -360(%rbp)
	jne	.L238
	movl	$1, -444(%rbp)
.L238:
	movq	-608(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	leaq	-624(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	je	.L310
	movq	-624(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -600(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -624(%rbp)
	cmpq	$0, -600(%rbp)
	je	.L311
	movq	-600(%rbp), %rdx
	movq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REVOKED_set_serialNumber@PLT
	movq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-512(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_add0_revoked@PLT
.L235:
	addl	$1, -356(%rbp)
.L234:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -356(%rbp)
	jl	.L241
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_sort@PLT
	cmpl	$0, -340(%rbp)
	je	.L242
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC222(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L242:
	cmpq	$0, -168(%rbp)
	jne	.L243
	cmpq	$0, -480(%rbp)
	je	.L244
.L243:
	movq	-112(%rbp), %rdx
	movq	-408(%rbp), %rsi
	leaq	-4976(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	-40(%rbp), %rdx
	leaq	-4976(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	cmpq	$0, -168(%rbp)
	je	.L245
	movq	-112(%rbp), %rcx
	movq	-168(%rbp), %rdx
	leaq	-4976(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_CRL_add_nconf@PLT
	testl	%eax, %eax
	jne	.L245
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC223(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L245:
	cmpq	$0, -480(%rbp)
	je	.L244
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -600(%rbp)
	cmpq	$0, -600(%rbp)
	je	.L312
	movq	-600(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$88, %esi
	movq	%rax, %rdi
	call	X509_CRL_add1_ext_i2d@PLT
	movq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$1, -444(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L313
.L244:
	cmpq	$0, -168(%rbp)
	jne	.L249
	cmpl	$0, -444(%rbp)
	je	.L250
.L249:
	movq	-112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_CRL_set_version@PLT
	testl	%eax, %eax
	je	.L314
.L250:
	cmpq	$0, -480(%rbp)
	je	.L251
	movq	-56(%rbp), %rdx
	leaq	.LC171(%rip), %rsi
	movq	-480(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	save_serial@PLT
	testl	%eax, %eax
	je	.L315
.L251:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	do_X509_CRL_sign@PLT
	testl	%eax, %eax
	je	.L316
	cmpl	$0, -324(%rbp)
	je	.L253
	movl	$4, %edx
	jmp	.L254
.L253:
	movl	$32769, %edx
.L254:
	movq	-232(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L317
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_CRL@PLT
	cmpq	$0, -480(%rbp)
	je	.L221
	leaq	.LC172(%rip), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-480(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_serial@PLT
	testl	%eax, %eax
	je	.L318
.L221:
	cmpl	$0, -348(%rbp)
	je	.L256
	cmpq	$0, -176(%rbp)
	jne	.L257
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L257:
	movq	-744(%rbp), %rdx
	movl	-728(%rbp), %esi
	leaq	.LC225(%rip), %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	je	.L319
	cmpl	$2, -348(%rbp)
	jne	.L259
	movl	$-1, -420(%rbp)
.L259:
	movq	-240(%rbp), %rcx
	movl	-420(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	do_revoke
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	jle	.L320
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-80(%rbp), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_index@PLT
	testl	%eax, %eax
	je	.L321
	leaq	.LC172(%rip), %rdx
	leaq	.LC171(%rip), %rcx
	movq	-488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_index@PLT
	testl	%eax, %eax
	je	.L322
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC211(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L256:
	movl	$0, -328(%rbp)
	jmp	.L81
.L269:
	nop
	jmp	.L81
.L270:
	nop
	jmp	.L81
.L272:
	nop
	jmp	.L81
.L273:
	nop
	jmp	.L81
.L274:
	nop
	jmp	.L81
.L275:
	nop
	jmp	.L81
.L276:
	nop
	jmp	.L81
.L277:
	nop
	jmp	.L81
.L278:
	nop
	jmp	.L81
.L279:
	nop
	jmp	.L81
.L280:
	nop
	jmp	.L81
.L281:
	nop
	jmp	.L81
.L282:
	nop
	jmp	.L81
.L283:
	nop
	jmp	.L81
.L284:
	nop
	jmp	.L81
.L285:
	nop
	jmp	.L81
.L286:
	nop
	jmp	.L81
.L287:
	nop
	jmp	.L81
.L288:
	nop
	jmp	.L81
.L289:
	nop
	jmp	.L81
.L290:
	nop
	jmp	.L81
.L291:
	nop
	jmp	.L81
.L292:
	nop
	jmp	.L81
.L293:
	nop
	jmp	.L81
.L294:
	nop
	jmp	.L81
.L295:
	nop
	jmp	.L81
.L296:
	nop
	jmp	.L81
.L297:
	nop
	jmp	.L81
.L298:
	nop
	jmp	.L81
.L299:
	nop
	jmp	.L81
.L300:
	nop
	jmp	.L81
.L301:
	nop
	jmp	.L81
.L302:
	nop
	jmp	.L81
.L303:
	nop
	jmp	.L81
.L304:
	nop
	jmp	.L81
.L305:
	nop
	jmp	.L81
.L306:
	nop
	jmp	.L81
.L307:
	nop
	jmp	.L81
.L308:
	nop
	jmp	.L81
.L309:
	nop
	jmp	.L81
.L310:
	nop
	jmp	.L81
.L311:
	nop
	jmp	.L81
.L312:
	nop
	jmp	.L81
.L313:
	nop
	jmp	.L81
.L314:
	nop
	jmp	.L81
.L315:
	nop
	jmp	.L81
.L316:
	nop
	jmp	.L81
.L317:
	nop
	jmp	.L81
.L318:
	nop
	jmp	.L81
.L319:
	nop
	jmp	.L81
.L320:
	nop
	jmp	.L81
.L321:
	nop
	jmp	.L81
.L322:
	nop
.L81:
	cmpl	$0, -328(%rbp)
	je	.L263
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L263:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-744(%rbp), %rax
	movq	%rax, %rdi
	call	cleanse@PLT
	cmpl	$0, -296(%rbp)
	je	.L264
	movq	-744(%rbp), %rax
	leaq	.LC198(%rip), %rcx
	movl	$1315, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L264:
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free_index@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	extfile_conf(%rip), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movl	-328(%rbp), %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ca_main, .-ca_main
	.section	.rodata
	.align 8
.LC226:
	.string	"variable lookup failed for %s::%s\n"
	.text
	.type	lookup_conf, @function
lookup_conf:
.LFB648:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L324
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC226(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L324:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	lookup_conf, .-lookup_conf
	.section	.rodata
.LC227:
	.string	"certificate request"
.LC228:
	.string	"Error unpacking public key\n"
	.align 8
.LC229:
	.string	"Check that the request matches the signature\n"
	.align 8
.LC230:
	.string	"Certificate request and CA private key do not match\n"
	.align 8
.LC231:
	.string	"Signature verification problems...\n"
	.align 8
.LC232:
	.string	"Signature did not match the certificate request\n"
.LC233:
	.string	"Signature ok\n"
	.text
	.type	certify, @function
certify:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -4(%rbp)
	leaq	.LC227(%rip), %rcx
	movq	24(%rbp), %rdx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	load_csr_autofmt@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L335
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L329
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC228(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L328
.L329:
	cmpl	$0, 136(%rbp)
	je	.L330
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_REQ_print_ex@PLT
.L330:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC229(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	cmpl	$0, 176(%rbp)
	je	.L331
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_check_private_key@PLT
	testl	%eax, %eax
	jne	.L331
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC230(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L328
.L331:
	movq	24(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_X509_REQ_verify@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L332
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC231(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L328
.L332:
	cmpl	$0, -28(%rbp)
	jne	.L333
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC232(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L328
.L333:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC233(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	32(%rbp), %r9
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	184(%rbp)
	movl	176(%rbp), %edi
	pushq	%rdi
	movl	168(%rbp), %edi
	pushq	%rdi
	movl	160(%rbp), %edi
	pushq	%rdi
	pushq	152(%rbp)
	pushq	144(%rbp)
	pushq	128(%rbp)
	pushq	120(%rbp)
	pushq	-16(%rbp)
	movl	136(%rbp), %edi
	pushq	%rdi
	movl	112(%rbp), %edi
	pushq	%rdi
	pushq	104(%rbp)
	pushq	96(%rbp)
	pushq	88(%rbp)
	movl	80(%rbp), %edi
	pushq	%rdi
	movl	72(%rbp), %edi
	pushq	%rdi
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	movq	%rax, %rdi
	call	do_body
	addq	$160, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L328
.L335:
	nop
.L328:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	certify, .-certify
	.section	.rodata
.LC234:
	.string	"template certificate"
.LC235:
	.string	"error unpacking public key\n"
	.align 8
.LC236:
	.string	"Signature verification problems....\n"
	.align 8
.LC237:
	.string	"Signature did not match the certificate\n"
	.text
	.type	certify_cert, @function
certify_cert:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -12(%rbp)
	leaq	.LC234(%rip), %rcx
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L345
	cmpl	$0, 144(%rbp)
	je	.L339
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
.L339:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC229(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L340
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC235(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L338
.L340:
	movq	32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_X509_verify@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L341
	movl	$0, -12(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC236(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L338
.L341:
	cmpl	$0, -36(%rbp)
	jne	.L342
	movl	$0, -12(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC237(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L338
.L342:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC233(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_to_X509_REQ@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L346
	movq	40(%rbp), %r9
	movq	24(%rbp), %r8
	movq	16(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	184(%rbp)
	pushq	$0
	movl	176(%rbp), %edi
	pushq	%rdi
	movl	168(%rbp), %edi
	pushq	%rdi
	pushq	160(%rbp)
	pushq	152(%rbp)
	pushq	136(%rbp)
	pushq	128(%rbp)
	pushq	-8(%rbp)
	movl	144(%rbp), %edi
	pushq	%rdi
	movl	120(%rbp), %edi
	pushq	%rdi
	pushq	112(%rbp)
	pushq	104(%rbp)
	pushq	96(%rbp)
	movl	88(%rbp), %edi
	pushq	%rdi
	movl	80(%rbp), %edi
	pushq	%rdi
	pushq	72(%rbp)
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	movq	%rax, %rdi
	call	do_body
	addq	$160, %rsp
	movl	%eax, -12(%rbp)
	jmp	.L338
.L345:
	nop
	jmp	.L338
.L346:
	nop
.L338:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	certify_cert, .-certify_cert
	.section	.rodata
.LC238:
	.string	"subject"
	.align 8
.LC239:
	.string	"The Subject's Distinguished Name is as follows\n"
	.align 8
.LC240:
	.string	"\nemailAddress type needs to be of type IA5STRING\n"
	.align 8
.LC241:
	.string	"\nThe string contains characters that are illegal for the ASN.1 type\n"
	.align 8
.LC242:
	.string	"%s:unknown object type in 'policy' configuration\n"
.LC243:
	.string	"optional"
.LC244:
	.string	"supplied"
	.align 8
.LC245:
	.string	"The %s field needed to be supplied and was missing\n"
.LC246:
	.string	"match"
	.align 8
.LC247:
	.string	"The mandatory %s field was missing\n"
	.align 8
.LC248:
	.string	"The %s field does not exist in the CA certificate,\nthe 'policy' is misconfigured\n"
.LC249:
	.string	"NULL"
	.align 8
.LC250:
	.string	"The %s field is different between\nCA certificate (%s) and the request (%s)\n"
	.align 8
.LC251:
	.string	"%s:invalid type in 'policy' configuration\n"
	.align 8
.LC252:
	.string	"Everything appears to be ok, creating and signing the certificate\n"
	.align 8
.LC253:
	.string	"Warning: Signature key and public key of cert do not match\n"
	.align 8
.LC254:
	.string	"Extra configuration file found\n"
	.align 8
.LC255:
	.string	"Error adding certificate extensions from extfile section %s\n"
	.align 8
.LC256:
	.string	"Successfully added extensions from file.\n"
	.align 8
.LC257:
	.string	"Error adding certificate extensions from config section %s\n"
	.align 8
.LC258:
	.string	"Successfully added extensions from config\n"
	.align 8
.LC259:
	.string	"ERROR: adding extensions from request\n"
	.align 8
.LC260:
	.string	"The subject name appears to be ok, checking database for clashes\n"
.LC261:
	.string	"00"
	.align 8
.LC262:
	.string	"ERROR:There is already a certificate for %s\n"
	.align 8
.LC263:
	.string	"ERROR:Serial number %s has already been issued,\n"
	.align 8
.LC264:
	.string	"      check the database/serial_file for corruption\n"
	.align 8
.LC265:
	.string	"The matching entry has the following details\n"
.LC266:
	.string	"Expired"
.LC267:
	.string	"Revoked"
.LC268:
	.string	"Valid"
	.align 8
.LC269:
	.string	"\ninvalid type, Database error\n"
.LC270:
	.string	"Type          :%s\n"
.LC271:
	.string	"undef"
.LC272:
	.string	"Was revoked on:%s\n"
.LC273:
	.string	"Expires on    :%s\n"
.LC274:
	.string	"Serial Number :%s\n"
.LC275:
	.string	"File name     :%s\n"
.LC276:
	.string	"Subject Name  :%s\n"
.LC277:
	.string	"Certificate Details:\n"
	.align 8
.LC278:
	.string	"Certificate is to be certified until "
.LC279:
	.string	" (%ld days)"
.LC280:
	.string	"Sign the certificate? [y/n]:"
	.align 8
.LC281:
	.string	"CERTIFICATE WILL NOT BE CERTIFIED: I/O error\n"
	.align 8
.LC282:
	.string	"CERTIFICATE WILL NOT BE CERTIFIED\n"
.LC283:
	.string	"V"
.LC284:
	.string	"row expdate"
.LC285:
	.string	"unknown"
.LC286:
	.string	"row space"
.LC287:
	.string	"failed to update database\n"
.LC288:
	.string	"TXT_DB error number %ld\n"
	.text
	.type	do_body, @function
do_body:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$408, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	%r8, -408(%rbp)
	movq	%r9, -416(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	$-1, -68(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L348
.L349:
	movl	-72(%rbp), %eax
	cltq
	movq	$0, -256(%rbp,%rax,8)
	addl	$1, -72(%rbp)
.L348:
	cmpl	$5, -72(%rbp)
	jle	.L349
	cmpq	$0, 32(%rbp)
	je	.L350
	movq	40(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC238(%rip), %rcx
	movl	48(%rbp), %edx
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	parse_name@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L454
	movq	-136(%rbp), %rdx
	movq	104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_subject_name@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
.L350:
	cmpl	$0, 144(%rbp)
	je	.L353
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC239(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L353:
	movq	104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -128(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L354
.L364:
	movl	-72(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -40(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_object@PLT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -204(%rbp)
	movl	msie_hack(%rip), %eax
	testl	%eax, %eax
	je	.L355
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$28, %eax
	jne	.L356
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UNIVERSALSTRING_to_string@PLT
.L356:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	jne	.L357
	cmpl	$48, -204(%rbp)
	je	.L357
	movq	-40(%rbp), %rax
	movl	$20, 4(%rax)
.L357:
	cmpl	$48, -204(%rbp)
	jne	.L355
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$19, %eax
	jne	.L355
	movq	-40(%rbp), %rax
	movl	$22, 4(%rax)
.L355:
	cmpl	$48, -204(%rbp)
	jne	.L358
	cmpl	$0, 56(%rbp)
	je	.L455
.L358:
	cmpl	$48, -204(%rbp)
	jne	.L360
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	je	.L360
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC240(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L360:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$30, %eax
	je	.L361
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$12, %eax
	je	.L361
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_PRINTABLE_type@PLT
	movl	%eax, -76(%rbp)
	cmpl	$20, -76(%rbp)
	jne	.L362
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$20, %eax
	jne	.L363
.L362:
	cmpl	$22, -76(%rbp)
	jne	.L361
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$19, %eax
	jne	.L361
.L363:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC241(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L361:
	cmpl	$0, 144(%rbp)
	je	.L359
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	old_entry_print
	jmp	.L359
.L455:
	nop
.L359:
	addl	$1, -72(%rbp)
.L354:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	cmpl	%eax, -72(%rbp)
	jl	.L364
	call	X509_NAME_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L365
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L365:
	cmpl	$0, 160(%rbp)
	je	.L366
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -24(%rbp)
	jmp	.L367
.L366:
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -24(%rbp)
.L367:
	cmpq	$0, -24(%rbp)
	je	.L456
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L369
.L391:
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L370
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC242(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L370:
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -192(%rbp)
	movl	$-1, -80(%rbp)
.L390:
	movq	$0, -112(%rbp)
	movl	-80(%rbp), %edx
	movq	-192(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_OBJ@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L371
	cmpl	$-1, -80(%rbp)
	jne	.L457
	movq	$0, -64(%rbp)
	jmp	.L374
.L371:
	movl	-76(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -64(%rbp)
.L374:
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC243(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L375
	cmpq	$0, -64(%rbp)
	je	.L376
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L376
.L375:
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC244(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L377
	cmpq	$0, -64(%rbp)
	jne	.L378
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC245(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L378:
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L376
.L377:
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC246(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L379
	cmpq	$0, -64(%rbp)
	jne	.L380
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC247(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L380:
	movl	$-1, -116(%rbp)
.L381:
	movl	-116(%rbp), %edx
	movq	-192(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_OBJ@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L382
	cmpl	$-1, -116(%rbp)
	jne	.L382
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC248(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L382:
	cmpl	$0, -76(%rbp)
	js	.L383
	movl	-76(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -48(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L383
	jmp	.L381
.L383:
	cmpl	$0, -76(%rbp)
	jns	.L376
	cmpq	$0, -40(%rbp)
	je	.L384
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L385
.L384:
	leaq	.LC249(%rip), %rdx
.L385:
	cmpq	$0, -48(%rbp)
	je	.L386
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L387
.L386:
	leaq	.LC249(%rip), %rax
.L387:
	movq	-184(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	bio_err@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	leaq	.LC250(%rip), %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movq	%r9, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L379:
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC251(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L376:
	cmpq	$0, -112(%rbp)
	je	.L388
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry@PLT
	testl	%eax, %eax
	jne	.L388
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L388:
	cmpl	$0, -76(%rbp)
	js	.L458
	jmp	.L390
.L457:
	nop
	jmp	.L373
.L458:
	nop
.L373:
	addl	$1, -72(%rbp)
.L369:
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -72(%rbp)
	jl	.L391
	movl	preserve(%rip), %eax
	testl	%eax, %eax
	je	.L392
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L459
.L392:
	cmpl	$0, 96(%rbp)
	je	.L393
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC252(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L393:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L460
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_serialNumber@PLT
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	testq	%rax, %rax
	je	.L461
	cmpl	$0, 160(%rbp)
	je	.L396
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_issuer_name@PLT
	testl	%eax, %eax
	jne	.L397
	jmp	.L352
.L396:
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_issuer_name@PLT
	testl	%eax, %eax
	je	.L462
.L397:
	movq	80(%rbp), %rax
	movl	%eax, %ecx
	movq	72(%rbp), %rdx
	movq	64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	set_cert_times@PLT
	testl	%eax, %eax
	je	.L463
	cmpq	$0, 72(%rbp)
	je	.L399
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rdx
	leaq	-356(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	je	.L464
	movl	-356(%rbp), %eax
	cltq
	movq	%rax, 80(%rbp)
.L399:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_subject_name@PLT
	testl	%eax, %eax
	je	.L465
	movq	104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_pubkey@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L466
	cmpl	$0, 160(%rbp)
	je	.L403
	movq	-56(%rbp), %rax
	jmp	.L404
.L403:
	movq	-392(%rbp), %rax
.L404:
	movq	-56(%rbp), %rdx
	leaq	-352(%rbp), %rdi
	movl	$2, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	X509V3_set_ctx@PLT
	cmpl	$0, 160(%rbp)
	je	.L405
	movq	-384(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_issuer_pkey@PLT
	testl	%eax, %eax
	je	.L467
	movq	-384(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cert_matches_key@PLT
	testl	%eax, %eax
	jne	.L405
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC253(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L405:
	cmpq	$0, 112(%rbp)
	je	.L407
	movq	extfile_conf(%rip), %rax
	testq	%rax, %rax
	je	.L408
	cmpl	$0, 96(%rbp)
	je	.L409
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC254(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L409:
	movq	extfile_conf(%rip), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	extfile_conf(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	112(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L410
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	112(%rbp), %rdx
	leaq	.LC255(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L410:
	cmpl	$0, 96(%rbp)
	je	.L407
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC256(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L407
.L408:
	cmpq	$0, 112(%rbp)
	je	.L407
	movq	120(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	-56(%rbp), %rcx
	movq	112(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movq	120(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L411
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	112(%rbp), %rdx
	leaq	.LC257(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L411:
	cmpl	$0, 96(%rbp)
	je	.L407
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC258(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L407:
	movl	152(%rbp), %edx
	movq	104(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_extensions@PLT
	testl	%eax, %eax
	jne	.L412
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC259(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L412:
	cmpl	$0, 96(%rbp)
	je	.L413
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC260(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L413:
	cmpl	$0, 56(%rbp)
	jne	.L414
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L415
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L415:
	movl	$-1, -72(%rbp)
	jmp	.L416
.L417:
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-152(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	X509_NAME_delete_entry@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
.L416:
	movl	-72(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_NID@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jns	.L417
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_subject_name@PLT
	testl	%eax, %eax
	jne	.L418
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	jmp	.L352
.L418:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
.L414:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.L419
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L419:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L420
	leaq	.LC198(%rip), %rcx
	leaq	.LC261(%rip), %rax
	movl	$1788, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -232(%rbp)
	jmp	.L421
.L420:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -232(%rbp)
.L421:
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	jne	.L422
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L422:
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L423
	movq	-216(%rbp), %rax
	leaq	.LC198(%rip), %rcx
	movl	$1802, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-232(%rbp), %rax
	leaq	.LC198(%rip), %rcx
	movl	$1803, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.L423
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L423:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L424
	leaq	-256(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-168(%rbp), %rdx
	movl	$5, %esi
	movq	%rax, %rdi
	call	TXT_DB_get_by_index@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L424
	movq	-216(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC262(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L424:
	cmpq	$0, -104(%rbp)
	jne	.L425
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-256(%rbp), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	TXT_DB_get_by_index@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L425
	movq	-232(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC263(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC264(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L425:
	cmpq	$0, -104(%rbp)
	je	.L426
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC265(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L427
	leaq	.LC266(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L428
.L427:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L429
	leaq	.LC267(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L428
.L429:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L430
	leaq	.LC268(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L428
.L430:
	leaq	.LC269(%rip), %rax
	movq	%rax, -88(%rbp)
.L428:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC270(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L431
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L432
	leaq	.LC271(%rip), %rax
	movq	%rax, -88(%rbp)
.L432:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC272(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L431:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L433
	leaq	.LC271(%rip), %rax
	movq	%rax, -88(%rbp)
.L433:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC273(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L434
	leaq	.LC271(%rip), %rax
	movq	%rax, -88(%rbp)
.L434:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC274(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L435
	leaq	.LC271(%rip), %rax
	movq	%rax, -88(%rbp)
.L435:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC275(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L436
	leaq	.LC271(%rip), %rax
	movq	%rax, -88(%rbp)
.L436:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC276(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$-1, -68(%rbp)
	jmp	.L352
.L426:
	cmpl	$0, 144(%rbp)
	jne	.L437
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC277(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	orq	$520, 128(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	128(%rbp), %rcx
	movq	136(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_print_ex@PLT
.L437:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC278(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	168(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print_ex@PLT
	cmpq	$0, 80(%rbp)
	je	.L438
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	80(%rbp), %rdx
	leaq	.LC279(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L438:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, 88(%rbp)
	jne	.L439
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC280(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movb	$0, -288(%rbp)
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	-288(%rbp), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L440
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC281(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -68(%rbp)
	jmp	.L352
.L440:
	movzbl	-288(%rbp), %eax
	cmpb	$121, %al
	je	.L439
	movzbl	-288(%rbp), %eax
	cmpb	$89, %al
	je	.L439
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC282(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -68(%rbp)
	jmp	.L352
.L439:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L441
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	jne	.L441
	movq	-384(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
.L441:
	leaq	-352(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movq	-400(%rbp), %rcx
	movq	-384(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_X509_sign@PLT
	testl	%eax, %eax
	je	.L468
	leaq	.LC198(%rip), %rcx
	leaq	.LC283(%rip), %rax
	movl	$1910, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -256(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	.LC284(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -248(%rbp)
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-248(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	$0, -240(%rbp)
	leaq	.LC198(%rip), %rcx
	leaq	.LC285(%rip), %rax
	movl	$1916, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	je	.L443
	movq	-224(%rbp), %rax
	testq	%rax, %rax
	je	.L443
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.L444
.L443:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L444:
	leaq	.LC286(%rip), %rax
	movq	%rax, %rsi
	movl	$56, %edi
	call	app_malloc@PLT
	movq	%rax, -96(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L445
.L446:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	movq	-256(%rbp,%rax,8), %rax
	movq	%rax, (%rdx)
	addl	$1, -72(%rbp)
.L445:
	cmpl	$5, -72(%rbp)
	jle	.L446
	movq	-96(%rbp), %rax
	addq	$48, %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TXT_DB_insert@PLT
	testl	%eax, %eax
	jne	.L447
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC287(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC288(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L352
.L447:
	movq	$0, -96(%rbp)
	movl	$1, -68(%rbp)
	jmp	.L352
.L454:
	nop
	jmp	.L352
.L456:
	nop
	jmp	.L352
.L459:
	nop
	jmp	.L352
.L460:
	nop
	jmp	.L352
.L461:
	nop
	jmp	.L352
.L462:
	nop
	jmp	.L352
.L463:
	nop
	jmp	.L352
.L464:
	nop
	jmp	.L352
.L465:
	nop
	jmp	.L352
.L466:
	nop
	jmp	.L352
.L467:
	nop
	jmp	.L352
.L468:
	nop
.L352:
	cmpl	$1, -68(%rbp)
	je	.L448
	movl	$0, -72(%rbp)
	jmp	.L449
.L450:
	movl	-72(%rbp), %eax
	cltq
	movq	-256(%rbp,%rax,8), %rax
	leaq	.LC198(%rip), %rcx
	movl	$1938, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -72(%rbp)
.L449:
	cmpl	$5, -72(%rbp)
	jle	.L450
.L448:
	leaq	.LC198(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$1940, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -68(%rbp)
	jg	.L451
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L452
.L451:
	movq	-376(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
.L452:
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	do_body, .-do_body
	.type	write_new_certificate, @function
write_new_certificate:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L470
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_bio@PLT
	jmp	.L469
.L470:
	cmpl	$0, -24(%rbp)
	jne	.L472
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
.L472:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
.L469:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	write_new_certificate, .-write_new_certificate
	.section	.rodata
.LC289:
	.string	"error on line %ld of %s\n"
	.align 8
.LC290:
	.string	"no name/value pairs found in %s\n"
.LC291:
	.string	"SPKAC"
	.align 8
.LC292:
	.string	"unable to load Netscape SPKAC structure\n"
	.align 8
.LC293:
	.string	"Netscape SPKAC structure not found in %s\n"
	.align 8
.LC294:
	.string	"Check that the SPKAC request matches the signature\n"
	.align 8
.LC295:
	.string	"error unpacking SPKAC public key\n"
	.align 8
.LC296:
	.string	"signature verification failed on SPKAC public key\n"
	.text
	.type	certify_spkac, @function
certify_spkac:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$-1, -36(%rbp)
	leaq	-104(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	CONF_load@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L474
	movq	-104(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rcx
	leaq	.LC289(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L475
.L474:
	leaq	.LC175(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_get_section@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L476
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC290(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L475
.L476:
	call	X509_REQ_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L495
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -80(%rbp)
	movl	$0, -40(%rbp)
.L489:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -40(%rbp)
	jge	.L496
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L480
.L485:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L481
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L481
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L482
.L481:
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L497
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L497
.L482:
	addq	$1, -32(%rbp)
.L480:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L485
	jmp	.L484
.L497:
	nop
.L484:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.L486
	leaq	.LC291(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L498
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_b64_decode@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L498
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC292(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L475
.L486:
	movq	48(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_NID@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L499
	jmp	.L488
.L498:
	nop
.L488:
	addl	$1, -40(%rbp)
	jmp	.L489
.L496:
	nop
	cmpq	$0, -16(%rbp)
	jne	.L490
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC293(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L475
.L490:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC294(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_get_pubkey@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L491
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC295(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L475
.L491:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_verify@PLT
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jg	.L492
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC296(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L475
.L492:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC233(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_pubkey@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	16(%rbp), %r9
	movq	-160(%rbp), %r8
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-120(%rbp), %rax
	pushq	152(%rbp)
	pushq	$0
	movl	144(%rbp), %edi
	pushq	%rdi
	movl	136(%rbp), %edi
	pushq	%rdi
	pushq	128(%rbp)
	pushq	120(%rbp)
	pushq	104(%rbp)
	pushq	96(%rbp)
	pushq	-8(%rbp)
	movl	112(%rbp), %edi
	pushq	%rdi
	pushq	$1
	pushq	88(%rbp)
	pushq	80(%rbp)
	pushq	72(%rbp)
	movl	64(%rbp), %edi
	pushq	%rdi
	movl	56(%rbp), %edi
	pushq	%rdi
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	movq	%rax, %rdi
	call	do_body
	addq	$160, %rsp
	movl	%eax, -36(%rbp)
	jmp	.L475
.L495:
	nop
	jmp	.L475
.L499:
	nop
.L475:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CONF_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	NETSCAPE_SPKI_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	certify_spkac, .-certify_spkac
	.type	check_time_format, @function
check_time_format:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set_string@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	check_time_format, .-check_time_format
	.section	.rodata
	.align 8
.LC297:
	.string	"Adding Entry with serial number %s to DB for %s\n"
.LC298:
	.string	"row exp_data"
.LC299:
	.string	"row ptr"
.LC300:
	.string	"ERROR:name does not match %s\n"
	.align 8
.LC301:
	.string	"ERROR:Already present, serial number %s\n"
	.align 8
.LC302:
	.string	"ERROR:Already revoked, serial number %s\n"
.LC303:
	.string	"Revoking Certificate %s.\n"
	.align 8
.LC304:
	.string	"Error in revocation arguments\n"
	.text
	.type	do_revoke, @function
do_revoke:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L503
.L504:
	movl	-8(%rbp), %eax
	cltq
	movq	$0, -96(%rbp,%rax,8)
	addl	$1, -8(%rbp)
.L503:
	cmpl	$5, -8(%rbp)
	jle	.L504
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L529
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L507
	leaq	.LC198(%rip), %rcx
	leaq	.LC261(%rip), %rax
	movl	$2115, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -72(%rbp)
	jmp	.L508
.L507:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -72(%rbp)
.L508:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L509
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L509
	movq	-56(%rbp), %rax
	leaq	.LC198(%rip), %rcx
	movl	$2121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC198(%rip), %rcx
	movl	$2122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -56(%rbp)
.L509:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L510
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L511
.L510:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L506
.L511:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	TXT_DB_get_by_index@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L512
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC297(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC198(%rip), %rcx
	leaq	.LC283(%rip), %rax
	movl	$2139, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	.LC298(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	$0, -80(%rbp)
	leaq	.LC198(%rip), %rcx
	leaq	.LC285(%rip), %rax
	movl	$2145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L513
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L514
.L513:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L506
.L514:
	leaq	.LC299(%rip), %rax
	movq	%rax, %rsi
	movl	$56, %edi
	call	app_malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L515
.L516:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, (%rdx)
	addl	$1, -8(%rbp)
.L515:
	cmpl	$5, -8(%rbp)
	jle	.L516
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	$0, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TXT_DB_insert@PLT
	testl	%eax, %eax
	jne	.L517
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC287(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC288(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC198(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$2160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L506
.L517:
	movl	$0, -8(%rbp)
	jmp	.L518
.L519:
	movl	-8(%rbp), %eax
	cltq
	movq	$0, -96(%rbp,%rax,8)
	addl	$1, -8(%rbp)
.L518:
	cmpl	$5, -8(%rbp)
	jle	.L519
	cmpl	$-1, -116(%rbp)
	jne	.L520
	movl	$1, -4(%rbp)
	jmp	.L506
.L520:
	movq	-128(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	do_revoke
	movl	%eax, -4(%rbp)
	jmp	.L506
.L512:
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	index_name_cmp@PLT
	testl	%eax, %eax
	je	.L522
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC300(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L506
.L522:
	cmpl	$-1, -116(%rbp)
	jne	.L523
	movq	-72(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC301(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L506
.L523:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L524
	movq	-72(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC302(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L506
.L524:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC303(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	make_revocation_str
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L525
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC304(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L506
.L525:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movb	$82, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$1, -4(%rbp)
	jmp	.L506
.L529:
	nop
.L506:
	movl	$0, -8(%rbp)
	jmp	.L526
.L527:
	movl	-8(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	leaq	.LC198(%rip), %rcx
	movl	$2201, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -8(%rbp)
.L526:
	cmpl	$5, -8(%rbp)
	jle	.L527
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	do_revoke, .-do_revoke
	.section	.rodata
.LC305:
	.string	"row serial#"
.LC306:
	.string	"Serial %s not present in db.\n"
.LC307:
	.string	"%s=Valid (%c)\n"
.LC308:
	.string	"%s=Revoked (%c)\n"
.LC309:
	.string	"%s=Expired (%c)\n"
.LC310:
	.string	"%s=Suspended (%c)\n"
.LC311:
	.string	"%s=Unknown (%c).\n"
	.text
	.type	get_certificate_status, @function
get_certificate_status:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$-1, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L531
.L532:
	movl	-8(%rbp), %eax
	cltq
	movq	$0, -80(%rbp,%rax,8)
	addl	$1, -8(%rbp)
.L531:
	cmpl	$5, -8(%rbp)
	jle	.L532
	movq	-16(%rbp), %rax
	addq	$2, %rax
	leaq	.LC305(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L533
	movq	-56(%rbp), %rax
	movb	$48, (%rax)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L534
.L533:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L534:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	make_uppercase@PLT
	movl	$1, -4(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	TXT_DB_get_by_index@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L535
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC306(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$-1, -4(%rbp)
	jmp	.L536
.L535:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L537
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC307(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L536
.L537:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L538
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC308(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L536
.L538:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L539
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC309(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L536
.L539:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$83, %al
	jne	.L540
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC310(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L536
.L540:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC311(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$-1, -4(%rbp)
.L536:
	movl	$0, -8(%rbp)
	jmp	.L541
.L542:
	movl	-8(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	leaq	.LC198(%rip), %rcx
	movl	$2267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -8(%rbp)
.L541:
	cmpl	$5, -8(%rbp)
	jle	.L542
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	get_certificate_status, .-get_certificate_status
	.section	.rodata
.LC312:
	.string	"%s=Expired\n"
	.text
	.globl	do_updatedb
	.type	do_updatedb, @function
do_updatedb:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	call	ASN1_TIME_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L545
	movl	$-1, %eax
	jmp	.L546
.L545:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_time_adj@PLT
	testq	%rax, %rax
	jne	.L547
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	$-1, %eax
	jmp	.L546
.L547:
	movl	$0, -4(%rbp)
	jmp	.L548
.L553:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L549
	movq	$0, -32(%rbp)
	call	ASN1_TIME_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L550
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	$-1, %eax
	jmp	.L546
.L550:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_set_string@PLT
	testl	%eax, %eax
	jne	.L551
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	$-1, %eax
	jmp	.L546
.L551:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jg	.L552
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	$69, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	addl	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC312(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L552:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L549:
	addl	$1, -4(%rbp)
.L548:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -4(%rbp)
	jl	.L553
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	-8(%rbp), %eax
.L546:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	do_updatedb, .-do_updatedb
	.section	.rodata
.LC313:
	.string	"unspecified"
.LC314:
	.string	"keyCompromise"
.LC315:
	.string	"CACompromise"
.LC316:
	.string	"affiliationChanged"
.LC317:
	.string	"superseded"
.LC318:
	.string	"cessationOfOperation"
.LC319:
	.string	"certificateHold"
.LC320:
	.string	"removeFromCRL"
.LC321:
	.string	"holdInstruction"
.LC322:
	.string	"keyTime"
.LC323:
	.string	"CAkeyTime"
	.section	.data.rel.local,"aw"
	.align 32
	.type	crl_reasons, @object
	.size	crl_reasons, 88
crl_reasons:
	.quad	.LC313
	.quad	.LC314
	.quad	.LC315
	.quad	.LC316
	.quad	.LC317
	.quad	.LC318
	.quad	.LC319
	.quad	.LC320
	.quad	.LC321
	.quad	.LC322
	.quad	.LC323
	.section	.rodata
.LC324:
	.string	"Unknown CRL reason %s\n"
.LC325:
	.string	"Invalid object identifier %s\n"
	.align 8
.LC326:
	.string	"Invalid time format %s. Need YYYYMMDDHHMMSSZ\n"
.LC327:
	.string	","
	.text
	.type	make_revocation_str, @function
make_revocation_str:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$4, -52(%rbp)
	jg	.L555
	cmpl	$3, -52(%rbp)
	jge	.L556
	cmpl	$2, -52(%rbp)
	je	.L557
	cmpl	$2, -52(%rbp)
	jg	.L555
	cmpl	$0, -52(%rbp)
	jg	.L558
	cmpl	$-1, -52(%rbp)
	jmp	.L555
.L558:
	cmpl	$1, -52(%rbp)
	jne	.L555
	movl	$0, -20(%rbp)
	jmp	.L561
.L564:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	crl_reasons(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L562
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	crl_reasons(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L563
.L562:
	addl	$1, -20(%rbp)
.L561:
	cmpl	$7, -20(%rbp)
	jle	.L564
.L563:
	cmpq	$0, -8(%rbp)
	jne	.L576
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC324(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L566
.L557:
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	cmpq	$0, -40(%rbp)
	jne	.L567
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC325(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L566
.L567:
	leaq	.LC321(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L555
.L556:
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
	testl	%eax, %eax
	jne	.L568
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC326(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L566
.L568:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$3, -52(%rbp)
	jne	.L569
	leaq	.LC322(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L555
.L569:
	leaq	.LC323(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L555
.L576:
	nop
.L555:
	movl	$0, %esi
	movl	$0, %edi
	call	X509_gmtime_adj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L571
	movl	$0, %eax
	jmp	.L566
.L571:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L572
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L572:
	cmpq	$0, -16(%rbp)
	je	.L573
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L573:
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC99(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	cmpq	$0, -8(%rbp)
	je	.L574
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC327(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L574:
	cmpq	$0, -16(%rbp)
	je	.L575
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC327(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L575:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTCTIME_free@PLT
	movq	-48(%rbp), %rax
.L566:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	make_revocation_str, .-make_revocation_str
	.type	make_revoked, @function
make_revoked:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	unpack_revinfo@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L588
	cmpq	$0, -72(%rbp)
	je	.L580
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REVOKED_set_revocationDate@PLT
	testl	%eax, %eax
	je	.L589
.L580:
	cmpq	$0, -72(%rbp)
	je	.L581
	movl	-32(%rbp), %eax
	cmpl	$-1, %eax
	je	.L581
	call	ASN1_ENUMERATED_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L590
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_set@PLT
	testl	%eax, %eax
	je	.L590
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$141, %esi
	movq	%rax, %rdi
	call	X509_REVOKED_add1_ext_i2d@PLT
	testl	%eax, %eax
	jle	.L591
.L581:
	cmpq	$0, -72(%rbp)
	je	.L584
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L584
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$142, %esi
	movq	%rax, %rdi
	call	X509_REVOKED_add1_ext_i2d@PLT
	testl	%eax, %eax
	jle	.L592
.L584:
	cmpq	$0, -72(%rbp)
	je	.L585
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L585
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$430, %esi
	movq	%rax, %rdi
	call	X509_REVOKED_add1_ext_i2d@PLT
	testl	%eax, %eax
	jle	.L593
.L585:
	movl	-32(%rbp), %eax
	cmpl	$-1, %eax
	je	.L586
	movl	$2, -4(%rbp)
	jmp	.L579
.L586:
	movl	$1, -4(%rbp)
	jmp	.L579
.L588:
	nop
	jmp	.L579
.L589:
	nop
	jmp	.L579
.L590:
	nop
	jmp	.L579
.L591:
	nop
	jmp	.L579
.L592:
	nop
	jmp	.L579
.L593:
	nop
.L579:
	leaq	.LC198(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2484, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	make_revoked, .-make_revoked
	.section	.rodata
.LC328:
	.string	"PRINTABLE:'"
.LC329:
	.string	"T61STRING:'"
.LC330:
	.string	"IA5STRING:'"
.LC331:
	.string	"UNIVERSALSTRING:'"
.LC332:
	.string	"ASN.1 %2d:'"
.LC333:
	.string	"%c"
.LC334:
	.string	"\\0x%02X"
.LC335:
	.string	"^?"
.LC336:
	.string	"^%c"
.LC337:
	.string	"'\n"
	.text
	.type	old_entry_print, @function
old_entry_print:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$22, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L595
.L596:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
	subl	$1, -20(%rbp)
.L595:
	cmpl	$0, -20(%rbp)
	jg	.L596
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$58, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$19, %eax
	jne	.L597
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC328(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L598
.L597:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$20, %eax
	jne	.L599
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC329(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L598
.L599:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	jne	.L600
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC330(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L598
.L600:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$28, %eax
	jne	.L601
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC331(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L598
.L601:
	movq	-64(%rbp), %rax
	movl	4(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC332(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L598:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L602
.L607:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jle	.L603
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$127, %al
	je	.L603
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC333(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L604
.L603:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L605
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC334(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L604
.L605:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-9, %al
	jne	.L606
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC335(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L604
.L606:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	64(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC336(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L604:
	addq	$1, -16(%rbp)
	subl	$1, -20(%rbp)
.L602:
	cmpl	$0, -20(%rbp)
	jg	.L607
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC337(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	old_entry_print, .-old_entry_print
	.section	.rodata
.LC338:
	.string	"memory allocation failure\n"
.LC339:
	.string	"invalid revocation date %s\n"
.LC340:
	.string	"invalid reason code %s\n"
.LC341:
	.string	"missing hold instruction\n"
.LC342:
	.string	"invalid object identifier %s\n"
.LC343:
	.string	"missing compromised time\n"
.LC344:
	.string	"invalid compromised time %s\n"
	.text
	.globl	unpack_revinfo
	.type	unpack_revinfo, @function
unpack_revinfo:
.LFB661:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	leaq	.LC198(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$2545, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L610
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC338(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L610:
	movq	-56(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L612
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	addq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L612
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.L612:
	cmpq	$0, -88(%rbp)
	je	.L613
	call	ASN1_UTCTIME_new@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L614
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC338(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L614:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_UTCTIME_set_string@PLT
	testl	%eax, %eax
	jne	.L613
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC339(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L613:
	cmpq	$0, -8(%rbp)
	je	.L615
	movl	$0, -28(%rbp)
	jmp	.L616
.L619:
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	crl_reasons(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L617
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L618
.L617:
	addl	$1, -28(%rbp)
.L616:
	cmpl	$10, -28(%rbp)
	jbe	.L619
.L618:
	cmpl	$-1, -20(%rbp)
	jne	.L620
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC340(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L620:
	cmpl	$7, -20(%rbp)
	jne	.L621
	movl	$8, -20(%rbp)
	jmp	.L615
.L621:
	cmpl	$8, -20(%rbp)
	jne	.L622
	cmpq	$0, -16(%rbp)
	jne	.L623
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC341(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L623:
	movl	$6, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L624
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC342(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L624:
	cmpq	$0, -104(%rbp)
	je	.L625
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L615
.L625:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	jmp	.L615
.L622:
	cmpl	$9, -20(%rbp)
	je	.L626
	cmpl	$10, -20(%rbp)
	jne	.L615
.L626:
	cmpq	$0, -16(%rbp)
	jne	.L627
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC343(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L627:
	call	ASN1_GENERALIZEDTIME_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L628
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC338(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L628:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
	testl	%eax, %eax
	jne	.L629
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC344(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L611
.L629:
	cmpl	$9, -20(%rbp)
	jne	.L630
	movl	$1, -20(%rbp)
	jmp	.L615
.L630:
	movl	$2, -20(%rbp)
.L615:
	cmpq	$0, -96(%rbp)
	je	.L631
	movq	-96(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
.L631:
	cmpq	$0, -112(%rbp)
	je	.L632
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -40(%rbp)
.L632:
	movl	$1, -24(%rbp)
.L611:
	leaq	.LC198(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$2639, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	unpack_revinfo, .-unpack_revinfo
	.section	.rodata
	.align 16
	.type	HEX_DIGITS.0, @object
	.size	HEX_DIGITS.0, 17
HEX_DIGITS.0:
	.string	"0123456789ABCDEF"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

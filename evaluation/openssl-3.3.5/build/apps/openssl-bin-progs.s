	.file	"progs.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB58:
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
.LFE58:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB59:
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
.LFE59:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.globl	functions
	.section	.rodata
.LC0:
	.string	"asn1parse"
.LC1:
	.string	"ca"
.LC2:
	.string	"ciphers"
.LC3:
	.string	"cmp"
.LC4:
	.string	"cms"
.LC5:
	.string	"crl"
.LC6:
	.string	"crl2pkcs7"
.LC7:
	.string	"dgst"
.LC8:
	.string	"dhparam"
.LC9:
	.string	"dsa"
.LC10:
	.string	"dsaparam"
.LC11:
	.string	"ec"
.LC12:
	.string	"ecparam"
.LC13:
	.string	"enc"
.LC14:
	.string	"engine"
.LC15:
	.string	"errstr"
.LC16:
	.string	"fipsinstall"
.LC17:
	.string	"gendsa"
.LC18:
	.string	"genpkey"
.LC19:
	.string	"genrsa"
.LC20:
	.string	"help"
.LC21:
	.string	"info"
.LC22:
	.string	"kdf"
.LC23:
	.string	"list"
.LC24:
	.string	"mac"
.LC25:
	.string	"nseq"
.LC26:
	.string	"ocsp"
.LC27:
	.string	"passwd"
.LC28:
	.string	"pkcs12"
.LC29:
	.string	"pkcs7"
.LC30:
	.string	"pkcs8"
.LC31:
	.string	"pkey"
.LC32:
	.string	"pkeyparam"
.LC33:
	.string	"pkeyutl"
.LC34:
	.string	"prime"
.LC35:
	.string	"rand"
.LC36:
	.string	"rehash"
.LC37:
	.string	"req"
.LC38:
	.string	"rsa"
.LC39:
	.string	"rsautl"
.LC40:
	.string	"3.0"
.LC41:
	.string	"s_client"
.LC42:
	.string	"s_server"
.LC43:
	.string	"s_time"
.LC44:
	.string	"sess_id"
.LC45:
	.string	"smime"
.LC46:
	.string	"speed"
.LC47:
	.string	"spkac"
.LC48:
	.string	"srp"
.LC49:
	.string	"storeutl"
.LC50:
	.string	"ts"
.LC51:
	.string	"verify"
.LC52:
	.string	"version"
.LC53:
	.string	"x509"
.LC54:
	.string	"md4"
.LC55:
	.string	"md5"
.LC56:
	.string	"sha1"
.LC57:
	.string	"sha224"
.LC58:
	.string	"sha256"
.LC59:
	.string	"sha384"
.LC60:
	.string	"sha512"
.LC61:
	.string	"sha512-224"
.LC62:
	.string	"sha512-256"
.LC63:
	.string	"sha3-224"
.LC64:
	.string	"sha3-256"
.LC65:
	.string	"sha3-384"
.LC66:
	.string	"sha3-512"
.LC67:
	.string	"shake128"
.LC68:
	.string	"shake256"
.LC69:
	.string	"mdc2"
.LC70:
	.string	"rmd160"
.LC71:
	.string	"blake2b512"
.LC72:
	.string	"blake2s256"
.LC73:
	.string	"sm3"
.LC74:
	.string	"aes-128-cbc"
.LC75:
	.string	"aes-128-ecb"
.LC76:
	.string	"aes-192-cbc"
.LC77:
	.string	"aes-192-ecb"
.LC78:
	.string	"aes-256-cbc"
.LC79:
	.string	"aes-256-ecb"
.LC80:
	.string	"aria-128-cbc"
.LC81:
	.string	"aria-128-cfb"
.LC82:
	.string	"aria-128-ctr"
.LC83:
	.string	"aria-128-ecb"
.LC84:
	.string	"aria-128-ofb"
.LC85:
	.string	"aria-128-cfb1"
.LC86:
	.string	"aria-128-cfb8"
.LC87:
	.string	"aria-192-cbc"
.LC88:
	.string	"aria-192-cfb"
.LC89:
	.string	"aria-192-ctr"
.LC90:
	.string	"aria-192-ecb"
.LC91:
	.string	"aria-192-ofb"
.LC92:
	.string	"aria-192-cfb1"
.LC93:
	.string	"aria-192-cfb8"
.LC94:
	.string	"aria-256-cbc"
.LC95:
	.string	"aria-256-cfb"
.LC96:
	.string	"aria-256-ctr"
.LC97:
	.string	"aria-256-ecb"
.LC98:
	.string	"aria-256-ofb"
.LC99:
	.string	"aria-256-cfb1"
.LC100:
	.string	"aria-256-cfb8"
.LC101:
	.string	"camellia-128-cbc"
.LC102:
	.string	"camellia-128-ecb"
.LC103:
	.string	"camellia-192-cbc"
.LC104:
	.string	"camellia-192-ecb"
.LC105:
	.string	"camellia-256-cbc"
.LC106:
	.string	"camellia-256-ecb"
.LC107:
	.string	"base64"
.LC108:
	.string	"des"
.LC109:
	.string	"des3"
.LC110:
	.string	"desx"
.LC111:
	.string	"idea"
.LC112:
	.string	"seed"
.LC113:
	.string	"rc4"
.LC114:
	.string	"rc4-40"
.LC115:
	.string	"rc2"
.LC116:
	.string	"bf"
.LC117:
	.string	"cast"
.LC118:
	.string	"des-ecb"
.LC119:
	.string	"des-ede"
.LC120:
	.string	"des-ede3"
.LC121:
	.string	"des-cbc"
.LC122:
	.string	"des-ede-cbc"
.LC123:
	.string	"des-ede3-cbc"
.LC124:
	.string	"des-cfb"
.LC125:
	.string	"des-ede-cfb"
.LC126:
	.string	"des-ede3-cfb"
.LC127:
	.string	"des-ofb"
.LC128:
	.string	"des-ede-ofb"
.LC129:
	.string	"des-ede3-ofb"
.LC130:
	.string	"idea-cbc"
.LC131:
	.string	"idea-ecb"
.LC132:
	.string	"idea-cfb"
.LC133:
	.string	"idea-ofb"
.LC134:
	.string	"seed-cbc"
.LC135:
	.string	"seed-ecb"
.LC136:
	.string	"seed-cfb"
.LC137:
	.string	"seed-ofb"
.LC138:
	.string	"rc2-cbc"
.LC139:
	.string	"rc2-ecb"
.LC140:
	.string	"rc2-cfb"
.LC141:
	.string	"rc2-ofb"
.LC142:
	.string	"rc2-64-cbc"
.LC143:
	.string	"rc2-40-cbc"
.LC144:
	.string	"bf-cbc"
.LC145:
	.string	"bf-ecb"
.LC146:
	.string	"bf-cfb"
.LC147:
	.string	"bf-ofb"
.LC148:
	.string	"cast5-cbc"
.LC149:
	.string	"cast5-ecb"
.LC150:
	.string	"cast5-cfb"
.LC151:
	.string	"cast5-ofb"
.LC152:
	.string	"cast-cbc"
.LC153:
	.string	"sm4-cbc"
.LC154:
	.string	"sm4-ecb"
.LC155:
	.string	"sm4-cfb"
.LC156:
	.string	"sm4-ofb"
.LC157:
	.string	"sm4-ctr"
	.section	.data.rel,"aw"
	.align 32
	.type	functions, @object
	.size	functions, 7584
functions:
	.long	1
	.zero	4
	.quad	.LC0
	.quad	asn1parse_main
	.quad	asn1parse_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC1
	.quad	ca_main
	.quad	ca_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC2
	.quad	ciphers_main
	.quad	ciphers_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC3
	.quad	cmp_main
	.quad	cmp_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC4
	.quad	cms_main
	.quad	cms_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC5
	.quad	crl_main
	.quad	crl_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC6
	.quad	crl2pkcs7_main
	.quad	crl2pkcs7_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC7
	.quad	dgst_main
	.quad	dgst_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC8
	.quad	dhparam_main
	.quad	dhparam_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC9
	.quad	dsa_main
	.quad	dsa_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC10
	.quad	dsaparam_main
	.quad	dsaparam_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC11
	.quad	ec_main
	.quad	ec_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC12
	.quad	ecparam_main
	.quad	ecparam_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC13
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC14
	.quad	engine_main
	.quad	engine_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC15
	.quad	errstr_main
	.quad	errstr_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC16
	.quad	fipsinstall_main
	.quad	fipsinstall_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC17
	.quad	gendsa_main
	.quad	gendsa_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC18
	.quad	genpkey_main
	.quad	genpkey_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC19
	.quad	genrsa_main
	.quad	genrsa_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC20
	.quad	help_main
	.quad	help_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC21
	.quad	info_main
	.quad	info_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC22
	.quad	kdf_main
	.quad	kdf_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC23
	.quad	list_main
	.quad	list_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC24
	.quad	mac_main
	.quad	mac_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC25
	.quad	nseq_main
	.quad	nseq_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC26
	.quad	ocsp_main
	.quad	ocsp_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC27
	.quad	passwd_main
	.quad	passwd_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC28
	.quad	pkcs12_main
	.quad	pkcs12_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC29
	.quad	pkcs7_main
	.quad	pkcs7_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC30
	.quad	pkcs8_main
	.quad	pkcs8_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC31
	.quad	pkey_main
	.quad	pkey_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC32
	.quad	pkeyparam_main
	.quad	pkeyparam_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC33
	.quad	pkeyutl_main
	.quad	pkeyutl_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC34
	.quad	prime_main
	.quad	prime_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC35
	.quad	rand_main
	.quad	rand_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC36
	.quad	rehash_main
	.quad	rehash_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC37
	.quad	req_main
	.quad	req_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC38
	.quad	rsa_main
	.quad	rsa_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC39
	.quad	rsautl_main
	.quad	rsautl_options
	.quad	.LC33
	.quad	.LC40
	.long	1
	.zero	4
	.quad	.LC41
	.quad	s_client_main
	.quad	s_client_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC42
	.quad	s_server_main
	.quad	s_server_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC43
	.quad	s_time_main
	.quad	s_time_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC44
	.quad	sess_id_main
	.quad	sess_id_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC45
	.quad	smime_main
	.quad	smime_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC46
	.quad	speed_main
	.quad	speed_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC47
	.quad	spkac_main
	.quad	spkac_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC48
	.quad	srp_main
	.quad	srp_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC49
	.quad	storeutl_main
	.quad	storeutl_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC50
	.quad	ts_main
	.quad	ts_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC51
	.quad	verify_main
	.quad	verify_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC52
	.quad	version_main
	.quad	version_options
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LC53
	.quad	x509_main
	.quad	x509_options
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	.LC54
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC55
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC56
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC57
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC58
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC59
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC60
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC61
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC62
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC63
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC64
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC65
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC66
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC67
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC68
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC69
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC70
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC71
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC72
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	2
	.zero	4
	.quad	.LC73
	.quad	dgst_main
	.quad	0
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC74
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC75
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC76
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC77
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC78
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC79
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC80
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC81
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC82
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC83
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC84
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC85
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC86
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC87
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC88
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC89
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC90
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC91
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC92
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC93
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC94
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC95
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC96
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC97
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC98
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC99
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC100
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC101
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC102
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC103
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC104
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC105
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC106
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC107
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC108
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC109
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC110
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC111
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC112
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC113
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC114
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC115
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC116
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC117
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC118
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC119
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC120
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC121
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC122
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC123
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC124
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC125
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC126
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC127
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC128
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC129
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC130
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC131
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC132
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC133
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC134
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC135
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC136
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC137
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC138
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC139
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC140
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC141
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC142
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC143
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC144
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC145
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC146
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC147
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC148
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC149
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC150
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC151
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC152
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC153
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC154
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC155
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC156
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	3
	.zero	4
	.quad	.LC157
	.quad	enc_main
	.quad	enc_options
	.quad	0
	.zero	8
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

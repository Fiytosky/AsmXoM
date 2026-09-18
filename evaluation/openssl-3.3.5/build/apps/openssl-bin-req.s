	.file	"req.c"
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
	.type	lh_OPENSSL_STRING_hash_thunk, @function
lh_OPENSSL_STRING_hash_thunk:
.LFB371:
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
.LFE371:
	.size	lh_OPENSSL_STRING_hash_thunk, .-lh_OPENSSL_STRING_hash_thunk
	.type	lh_OPENSSL_STRING_comp_thunk, @function
lh_OPENSSL_STRING_comp_thunk:
.LFB372:
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
.LFE372:
	.size	lh_OPENSSL_STRING_comp_thunk, .-lh_OPENSSL_STRING_comp_thunk
	.type	lh_OPENSSL_STRING_doall_thunk, @function
lh_OPENSSL_STRING_doall_thunk:
.LFB373:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	lh_OPENSSL_STRING_doall_thunk, .-lh_OPENSSL_STRING_doall_thunk
	.type	lh_OPENSSL_STRING_doall_arg_thunk, @function
lh_OPENSSL_STRING_doall_arg_thunk:
.LFB374:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	lh_OPENSSL_STRING_doall_arg_thunk, .-lh_OPENSSL_STRING_doall_arg_thunk
	.type	ossl_check_OPENSSL_STRING_lh_plain_type, @function
ossl_check_OPENSSL_STRING_lh_plain_type:
.LFB375:
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
.LFE375:
	.size	ossl_check_OPENSSL_STRING_lh_plain_type, .-ossl_check_OPENSSL_STRING_lh_plain_type
	.type	ossl_check_OPENSSL_STRING_lh_type, @function
ossl_check_OPENSSL_STRING_lh_type:
.LFB378:
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
.LFE378:
	.size	ossl_check_OPENSSL_STRING_lh_type, .-ossl_check_OPENSSL_STRING_lh_type
	.type	ossl_check_OPENSSL_STRING_lh_compfunc_type, @function
ossl_check_OPENSSL_STRING_lh_compfunc_type:
.LFB379:
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
.LFE379:
	.size	ossl_check_OPENSSL_STRING_lh_compfunc_type, .-ossl_check_OPENSSL_STRING_lh_compfunc_type
	.type	ossl_check_OPENSSL_STRING_lh_hashfunc_type, @function
ossl_check_OPENSSL_STRING_lh_hashfunc_type:
.LFB380:
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
.LFE380:
	.size	ossl_check_OPENSSL_STRING_lh_hashfunc_type, .-ossl_check_OPENSSL_STRING_lh_hashfunc_type
	.type	ossl_check_OPENSSL_STRING_lh_doallfunc_type, @function
ossl_check_OPENSSL_STRING_lh_doallfunc_type:
.LFB381:
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
.LFE381:
	.size	ossl_check_OPENSSL_STRING_lh_doallfunc_type, .-ossl_check_OPENSSL_STRING_lh_doallfunc_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB436:
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
.LFE436:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.section	.rodata
.LC0:
	.string	"req"
	.section	.data.rel.local,"aw"
	.align 8
	.type	section, @object
	.size	section, 8
section:
	.quad	.LC0
	.local	req_conf
	.comm	req_conf,8,8
	.local	addext_conf
	.comm	addext_conf,8,8
	.local	batch
	.comm	batch,4,4
	.globl	req_options
	.section	.rodata
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
	.string	"keygen_engine"
	.align 8
.LC7:
	.string	"Specify engine to be used for key generation operations"
.LC8:
	.string	"in"
	.align 8
.LC9:
	.string	"X.509 request input file (default stdin)"
.LC10:
	.string	"inform"
	.align 8
.LC11:
	.string	"CSR input format to use (PEM or DER; by default try PEM first)"
.LC12:
	.string	"verify"
	.align 8
.LC13:
	.string	"Verify self-signature on the request"
.LC14:
	.string	"Certificate options:\n"
.LC15:
	.string	"new"
.LC16:
	.string	"New request"
.LC17:
	.string	"config"
.LC18:
	.string	"Request template file"
.LC19:
	.string	"section"
	.align 8
.LC20:
	.string	"Config section to use (default \"req\")"
.LC21:
	.string	"utf8"
	.align 8
.LC22:
	.string	"Input characters are UTF8 (default ASCII)"
.LC23:
	.string	"nameopt"
	.align 8
.LC24:
	.string	"Certificate subject/issuer name printing options"
.LC25:
	.string	"reqopt"
.LC26:
	.string	"Various request text options"
.LC27:
	.string	"text"
.LC28:
	.string	"Text form of request"
.LC29:
	.string	"x509"
	.align 8
.LC30:
	.string	"Output an X.509 certificate structure instead of a cert request"
.LC31:
	.string	"x509v1"
	.align 8
.LC32:
	.string	"Request cert generation with X.509 version 1"
.LC33:
	.string	"CA"
	.align 8
.LC34:
	.string	"Issuer cert to use for signing a cert, implies -x509"
.LC35:
	.string	"CAkey"
	.align 8
.LC36:
	.string	"Issuer private key to use with -CA; default is -CA arg"
.LC37:
	.string	"(Required by some CA's)"
.LC38:
	.string	"subj"
	.align 8
.LC39:
	.string	"Set or modify subject of request or cert"
.LC40:
	.string	"subject"
	.align 8
.LC41:
	.string	"Print the subject of the output request or cert"
.LC42:
	.string	"multivalue-rdn"
	.align 8
.LC43:
	.string	"Deprecated; multi-valued RDNs support is always on."
.LC44:
	.string	"days"
	.align 8
.LC45:
	.string	"Number of days cert is valid for"
.LC46:
	.string	"set_serial"
.LC47:
	.string	"Serial number to use"
.LC48:
	.string	"copy_extensions"
	.align 8
.LC49:
	.string	"copy extensions from request when using -x509"
.LC50:
	.string	"extensions"
	.align 8
.LC51:
	.string	"Cert or request extension section (override value in config file)"
.LC52:
	.string	"reqexts"
.LC53:
	.string	"An alias for -extensions"
.LC54:
	.string	"addext"
	.align 8
.LC55:
	.string	"Additional cert extension key=value pair (may be given more than once)"
.LC56:
	.string	"precert"
	.align 8
.LC57:
	.string	"Add a poison extension to generated cert (implies -new)"
.LC58:
	.string	"Keys and Signing options:\n"
.LC59:
	.string	"key"
	.align 8
.LC60:
	.string	"Key for signing, and to include unless -in given"
.LC61:
	.string	"keyform"
	.align 8
.LC62:
	.string	"Key file format (ENGINE, other values ignored)"
.LC63:
	.string	"pubkey"
.LC64:
	.string	"Output public key"
.LC65:
	.string	"keyout"
.LC66:
	.string	"File to write private key to"
.LC67:
	.string	"passin"
	.align 8
.LC68:
	.string	"Private key and certificate password source"
.LC69:
	.string	"passout"
	.align 8
.LC70:
	.string	"Output file pass phrase source"
.LC71:
	.string	"newkey"
	.align 8
.LC72:
	.string	"Generate new key with [<alg>:]<nbits> or <alg>[:<file>] or param:<file>"
.LC73:
	.string	"pkeyopt"
	.align 8
.LC74:
	.string	"Public key options as opt:value"
.LC75:
	.string	"sigopt"
	.align 8
.LC76:
	.string	"Signature parameter in n:v form"
.LC77:
	.string	"vfyopt"
	.align 8
.LC78:
	.string	"Verification parameter in n:v form"
.LC79:
	.string	""
.LC80:
	.string	"Any supported digest"
.LC81:
	.string	"Output options:\n"
.LC82:
	.string	"out"
.LC83:
	.string	"Output file"
.LC84:
	.string	"outform"
.LC85:
	.string	"Output format - DER or PEM"
.LC86:
	.string	"batch"
	.align 8
.LC87:
	.string	"Do not ask anything during request generation"
.LC88:
	.string	"verbose"
.LC89:
	.string	"Verbose output"
.LC90:
	.string	"quiet"
.LC91:
	.string	"Terse output"
.LC92:
	.string	"noenc"
.LC93:
	.string	"Don't encrypt private keys"
.LC94:
	.string	"nodes"
	.align 8
.LC95:
	.string	"Don't encrypt private keys; deprecated"
.LC96:
	.string	"noout"
.LC97:
	.string	"Do not output REQ"
.LC98:
	.string	"newhdr"
	.align 8
.LC99:
	.string	"Output \"NEW\" in the header lines"
.LC100:
	.string	"modulus"
.LC101:
	.string	"RSA modulus"
.LC102:
	.string	"Random state options:\n"
.LC103:
	.string	"rand"
	.align 8
.LC104:
	.string	"Load the given file(s) into the random number generator"
.LC105:
	.string	"writerand"
	.align 8
.LC106:
	.string	"Write random data to the specified file"
.LC107:
	.string	"Provider options:\n"
.LC108:
	.string	"provider-path"
	.align 8
.LC109:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC110:
	.string	"provider"
	.align 8
.LC111:
	.string	"Provider to load (can be specified multiple times)"
.LC112:
	.string	"propquery"
	.align 8
.LC113:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	req_options, @object
	.size	req_options, 1464
req_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC1
	.quad	.LC2
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	4
	.long	115
	.quad	.LC5
	.quad	.LC6
	.long	5
	.long	115
	.quad	.LC7
	.quad	.LC8
	.long	11
	.long	60
	.quad	.LC9
	.quad	.LC10
	.long	2
	.long	70
	.quad	.LC11
	.quad	.LC12
	.long	23
	.long	45
	.quad	.LC13
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	8
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	9
	.long	60
	.quad	.LC18
	.quad	.LC19
	.long	47
	.long	115
	.quad	.LC20
	.quad	.LC21
	.long	28
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	29
	.long	115
	.quad	.LC24
	.quad	.LC25
	.long	30
	.long	115
	.quad	.LC26
	.quad	.LC27
	.long	33
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	34
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	35
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	36
	.long	60
	.quad	.LC34
	.quad	.LC35
	.long	37
	.long	115
	.quad	.LC36
	.quad	OPT_MORE_STR
	.long	1
	.long	1
	.quad	.LC37
	.quad	.LC38
	.long	31
	.long	115
	.quad	.LC39
	.quad	.LC40
	.long	32
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	38
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	39
	.long	112
	.quad	.LC45
	.quad	.LC46
	.long	40
	.long	115
	.quad	.LC47
	.quad	.LC48
	.long	41
	.long	115
	.quad	.LC49
	.quad	.LC50
	.long	42
	.long	115
	.quad	.LC51
	.quad	.LC52
	.long	43
	.long	115
	.quad	.LC53
	.quad	.LC54
	.long	44
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	45
	.long	45
	.quad	.LC57
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC58
	.quad	.LC59
	.long	6
	.long	115
	.quad	.LC60
	.quad	.LC61
	.long	10
	.long	102
	.quad	.LC62
	.quad	.LC63
	.long	7
	.long	45
	.quad	.LC64
	.quad	.LC65
	.long	13
	.long	62
	.quad	.LC66
	.quad	.LC67
	.long	14
	.long	115
	.quad	.LC68
	.quad	.LC69
	.long	15
	.long	115
	.quad	.LC70
	.quad	.LC71
	.long	16
	.long	115
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
	.long	115
	.quad	.LC78
	.quad	.LC79
	.long	46
	.long	45
	.quad	.LC80
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC81
	.quad	.LC82
	.long	12
	.long	62
	.quad	.LC83
	.quad	.LC84
	.long	3
	.long	70
	.quad	.LC85
	.quad	.LC86
	.long	20
	.long	45
	.quad	.LC87
	.quad	.LC88
	.long	27
	.long	45
	.quad	.LC89
	.quad	.LC90
	.long	48
	.long	45
	.quad	.LC91
	.quad	.LC92
	.long	24
	.long	45
	.quad	.LC93
	.quad	.LC94
	.long	25
	.long	45
	.quad	.LC95
	.quad	.LC96
	.long	26
	.long	45
	.quad	.LC97
	.quad	.LC98
	.long	21
	.long	45
	.quad	.LC99
	.quad	.LC100
	.long	22
	.long	45
	.quad	.LC101
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC102
	.quad	.LC103
	.long	1501
	.long	115
	.quad	.LC104
	.quad	.LC105
	.long	1502
	.long	62
	.quad	.LC106
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC107
	.quad	.LC108
	.long	1602
	.long	115
	.quad	.LC109
	.quad	.LC110
	.long	1601
	.long	115
	.quad	.LC111
	.quad	.LC112
	.long	1603
	.long	115
	.quad	.LC113
	.quad	0
	.zero	16
	.text
	.type	ext_name_hash, @function
ext_name_hash:
.LFB647:
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
	call	OPENSSL_LH_strhash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ext_name_hash, .-ext_name_hash
	.type	ext_name_cmp, @function
ext_name_cmp:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	ext_name_cmp, .-ext_name_cmp
	.section	.rodata
.LC114:
	.string	"../apps/req.c"
	.text
	.type	exts_cleanup, @function
exts_cleanup:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC114(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$188, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	exts_cleanup, .-exts_cleanup
	.section	.rodata
	.align 8
.LC115:
	.string	"Parse error on -addext: missing '='\n"
	.align 8
.LC116:
	.string	"Parse error on -addext: missing key\n"
.LC117:
	.string	"Duplicate extension name: %s\n"
	.text
	.type	duplicated, @function
duplicated:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	jmp	.L38
.L39:
	addq	$1, -48(%rbp)
.L38:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L39
	movq	-48(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L40
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC115(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$-2, %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC114(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L42
	movl	$-1, %eax
	jmp	.L41
.L42:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L43
.L46:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L50
	subq	$1, -24(%rbp)
.L43:
	movq	-24(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L46
	jmp	.L45
.L50:
	nop
.L45:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L47
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC116(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC114(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-2, %eax
	jmp	.L41
.L47:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L48
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC117(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC114(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$227, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L41
.L48:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_error@PLT
	testl	%eax, %eax
	je	.L49
	leaq	.LC114(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
	jmp	.L41
.L49:
	movl	$0, %eax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	duplicated, .-duplicated
	.section	.rodata
.LC118:
	.string	"digest"
.LC119:
	.string	"%s: Use -help for summary.\n"
.LC120:
	.string	"Can't find keygen engine %s\n"
	.align 8
.LC121:
	.string	"%s: -days parameter arg must be >= -1\n"
.LC122:
	.string	"Serial number supplied twice\n"
	.align 8
.LC123:
	.string	"Invalid extension copy option: \"%s\"\n"
	.align 8
.LC124:
	.string	"Internal error handling -addext %s\n"
.LC125:
	.string	"%s\n"
	.align 8
.LC126:
	.string	"Ignoring -days without -x509; not generating a certificate\n"
	.align 8
.LC127:
	.string	"Ignoring -copy_extensions 'none' when -x509 is not given\n"
	.align 8
.LC128:
	.string	"Warning: Will read cert request from stdin since no -in option is given\n"
.LC129:
	.string	"Error getting passwords\n"
	.align 8
.LC130:
	.string	"Using additional configuration from -addext options\n"
.LC131:
	.string	"oid_file"
.LC132:
	.string	"r"
	.align 8
.LC133:
	.string	"Problems opening '%s' for extra OIDs\n"
.LC134:
	.string	"default_md"
.LC135:
	.string	"x509_extensions"
.LC136:
	.string	"req_extensions"
.LC137:
	.string	"request"
	.align 8
.LC138:
	.string	"Error checking %s extension section %s\n"
.LC139:
	.string	"default"
	.align 8
.LC140:
	.string	"Error checking extensions defined using -addext\n"
.LC141:
	.string	"input_password"
.LC142:
	.string	"output_password"
.LC143:
	.string	"string_mask"
	.align 8
.LC144:
	.string	"Invalid global string mask setting %s\n"
.LC145:
	.string	"yes"
.LC146:
	.string	"private key"
	.align 8
.LC147:
	.string	"Warning: Not generating key via given -newkey option since -key is given\n"
.LC148:
	.string	"default_bits"
.LC149:
	.string	"RSA"
.LC150:
	.string	"RSA-PSS"
.LC151:
	.string	"DSA"
	.align 8
.LC152:
	.string	"Private key length too short, needs to be at least %d bits, not %ld.\n"
	.align 8
.LC153:
	.string	"Warning: It is not recommended to use more than %d bit for RSA keys.\n         Your key size is %ld! Larger key size may behave not as expected.\n"
	.align 8
.LC154:
	.string	"Warning: It is not recommended to use more than %d bit for DSA keys.\n         Your key size is %ld! Larger key size may behave not as expected.\n"
.LC155:
	.string	"Key parameter error \"%s\"\n"
.LC156:
	.string	"default_keyfile"
.LC157:
	.string	"Writing private key to "
.LC158:
	.string	"stdout\n"
.LC159:
	.string	"'%s'\n"
.LC160:
	.string	"encrypt_rsa_key"
.LC161:
	.string	"encrypt_key"
.LC162:
	.string	"no"
.LC163:
	.string	"-----\n"
	.align 8
.LC164:
	.string	"Warning: Not placing -key in cert or request since request is used\n"
.LC165:
	.string	"X509 request"
	.align 8
.LC166:
	.string	"Warning: Ignoring -in option since -new or -newkey or -precert is given\n"
	.align 8
.LC167:
	.string	"Warning: Ignoring -CAkey option since no -CA option is given\n"
	.align 8
.LC168:
	.string	"issuer private key from -CAkey arg"
	.align 8
.LC169:
	.string	"issuer private key from -CA arg"
.LC170:
	.string	"issuer cert from -CA arg"
	.align 8
.LC171:
	.string	"Issuer CA certificate and key do not match\n"
	.align 8
.LC172:
	.string	"Must provide a signature key using -key or provide -CA / -CAkey\n"
	.align 8
.LC173:
	.string	"Error making certificate request\n"
	.align 8
.LC174:
	.string	"Warning: Not using -key or -newkey for signing since -CA option is given\n"
	.align 8
.LC175:
	.string	"Warning: No -copy_extensions given; ignoring any extensions in the request\n"
	.align 8
.LC176:
	.string	"Error copying extensions from request\n"
	.align 8
.LC177:
	.string	"Warning: Signature key and public key of cert do not match\n"
	.align 8
.LC178:
	.string	"Error adding x509 extensions from section %s\n"
	.align 8
.LC179:
	.string	"Error adding x509 extensions defined via -addext\n"
	.align 8
.LC180:
	.string	"Error adding poison extension\n"
	.align 8
.LC181:
	.string	"Warning: Ignoring -precert flag since no cert is produced\n"
	.align 8
.LC182:
	.string	"Error adding request extensions from section %s\n"
	.align 8
.LC183:
	.string	"Error adding request extensions defined via -addext\n"
	.align 8
.LC184:
	.string	"Modifying subject of certificate request\n"
.LC185:
	.string	"Old subject="
	.align 8
.LC186:
	.string	"Error modifying subject of certificate request\n"
.LC187:
	.string	"New subject="
	.align 8
.LC188:
	.string	"Certificate request self-signature verify failure\n"
	.align 8
.LC189:
	.string	"Certificate request self-signature verify OK\n"
.LC190:
	.string	"Error getting public key\n"
.LC191:
	.string	"Error printing certificate\n"
	.align 8
.LC192:
	.string	"Error printing certificate request\n"
.LC193:
	.string	"subject="
.LC194:
	.string	"Modulus is unavailable\n"
.LC195:
	.string	"Modulus="
.LC196:
	.string	"n"
.LC197:
	.string	"Wrong Algorithm type"
.LC198:
	.string	"\n"
	.align 8
.LC199:
	.string	"Unable to write certificate request\n"
	.align 8
.LC200:
	.string	"Unable to write X509 certificate\n"
	.text
	.globl	req_main
	.type	req_main, @function
req_main:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movl	%edi, -596(%rbp)
	movq	%rsi, -608(%rbp)
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
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movl	$-1, -460(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -256(%rbp)
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -280(%rbp)
	movl	$-2, -284(%rbp)
	movl	$1, -288(%rbp)
	movl	$0, -292(%rbp)
	movl	$0, -296(%rbp)
	movl	$0, -300(%rbp)
	movl	$0, -304(%rbp)
	movl	$1, -308(%rbp)
	movl	$0, -492(%rbp)
	movl	$32773, -496(%rbp)
	movl	$0, -500(%rbp)
	movl	$0, -312(%rbp)
	movl	$1, -404(%rbp)
	movl	$0, -316(%rbp)
	movl	$0, -320(%rbp)
	movl	$0, -324(%rbp)
	movl	$0, -328(%rbp)
	movl	$0, -332(%rbp)
	movl	$0, -336(%rbp)
	movl	$0, -340(%rbp)
	movl	$0, -344(%rbp)
	movl	$0, -348(%rbp)
	movq	$-1, -512(%rbp)
	movq	$4097, -360(%rbp)
	movq	$0, -520(%rbp)
	call	EVP_des_ede3_cbc@PLT
	movq	%rax, -136(%rbp)
	leaq	.LC118(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	req_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-608(%rbp), %rcx
	movl	-596(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -416(%rbp)
	jmp	.L52
.L133:
	cmpl	$1604, -420(%rbp)
	je	.L52
	cmpl	$1604, -420(%rbp)
	jg	.L52
	cmpl	$1603, -420(%rbp)
	jg	.L52
	cmpl	$1601, -420(%rbp)
	jge	.L54
	cmpl	$1600, -420(%rbp)
	je	.L52
	cmpl	$1600, -420(%rbp)
	jg	.L52
	cmpl	$1503, -420(%rbp)
	je	.L52
	cmpl	$1503, -420(%rbp)
	jg	.L52
	cmpl	$1502, -420(%rbp)
	jg	.L52
	cmpl	$1501, -420(%rbp)
	jge	.L56
	cmpl	$1500, -420(%rbp)
	je	.L52
	cmpl	$1500, -420(%rbp)
	jg	.L52
	cmpl	$48, -420(%rbp)
	je	.L57
	cmpl	$48, -420(%rbp)
	jg	.L52
	cmpl	$47, -420(%rbp)
	je	.L58
	cmpl	$47, -420(%rbp)
	jg	.L52
	cmpl	$46, -420(%rbp)
	je	.L59
	cmpl	$46, -420(%rbp)
	jg	.L52
	cmpl	$45, -420(%rbp)
	je	.L60
	cmpl	$45, -420(%rbp)
	jg	.L52
	cmpl	$44, -420(%rbp)
	je	.L61
	cmpl	$44, -420(%rbp)
	jg	.L52
	cmpl	$43, -420(%rbp)
	jg	.L52
	cmpl	$42, -420(%rbp)
	jge	.L62
	cmpl	$41, -420(%rbp)
	je	.L63
	cmpl	$41, -420(%rbp)
	jg	.L52
	cmpl	$40, -420(%rbp)
	je	.L64
	cmpl	$40, -420(%rbp)
	jg	.L52
	cmpl	$39, -420(%rbp)
	je	.L65
	cmpl	$39, -420(%rbp)
	jg	.L52
	cmpl	$38, -420(%rbp)
	je	.L52
	cmpl	$38, -420(%rbp)
	jg	.L52
	cmpl	$37, -420(%rbp)
	je	.L67
	cmpl	$37, -420(%rbp)
	jg	.L52
	cmpl	$36, -420(%rbp)
	je	.L68
	cmpl	$36, -420(%rbp)
	jg	.L52
	cmpl	$35, -420(%rbp)
	je	.L69
	cmpl	$35, -420(%rbp)
	jg	.L52
	cmpl	$34, -420(%rbp)
	je	.L70
	cmpl	$34, -420(%rbp)
	jg	.L52
	cmpl	$33, -420(%rbp)
	je	.L71
	cmpl	$33, -420(%rbp)
	jg	.L52
	cmpl	$32, -420(%rbp)
	je	.L72
	cmpl	$32, -420(%rbp)
	jg	.L52
	cmpl	$31, -420(%rbp)
	je	.L73
	cmpl	$31, -420(%rbp)
	jg	.L52
	cmpl	$30, -420(%rbp)
	je	.L74
	cmpl	$30, -420(%rbp)
	jg	.L52
	cmpl	$29, -420(%rbp)
	je	.L75
	cmpl	$29, -420(%rbp)
	jg	.L52
	cmpl	$28, -420(%rbp)
	je	.L76
	cmpl	$28, -420(%rbp)
	jg	.L52
	cmpl	$27, -420(%rbp)
	je	.L77
	cmpl	$27, -420(%rbp)
	jg	.L52
	cmpl	$26, -420(%rbp)
	je	.L78
	cmpl	$26, -420(%rbp)
	jg	.L52
	cmpl	$25, -420(%rbp)
	jg	.L52
	cmpl	$24, -420(%rbp)
	jge	.L79
	cmpl	$23, -420(%rbp)
	je	.L80
	cmpl	$23, -420(%rbp)
	jg	.L52
	cmpl	$22, -420(%rbp)
	je	.L81
	cmpl	$22, -420(%rbp)
	jg	.L52
	cmpl	$21, -420(%rbp)
	je	.L82
	cmpl	$21, -420(%rbp)
	jg	.L52
	cmpl	$20, -420(%rbp)
	je	.L83
	cmpl	$20, -420(%rbp)
	jg	.L52
	cmpl	$19, -420(%rbp)
	je	.L84
	cmpl	$19, -420(%rbp)
	jg	.L52
	cmpl	$18, -420(%rbp)
	je	.L85
	cmpl	$18, -420(%rbp)
	jg	.L52
	cmpl	$17, -420(%rbp)
	je	.L86
	cmpl	$17, -420(%rbp)
	jg	.L52
	cmpl	$16, -420(%rbp)
	je	.L87
	cmpl	$16, -420(%rbp)
	jg	.L52
	cmpl	$15, -420(%rbp)
	je	.L88
	cmpl	$15, -420(%rbp)
	jg	.L52
	cmpl	$14, -420(%rbp)
	je	.L89
	cmpl	$14, -420(%rbp)
	jg	.L52
	cmpl	$13, -420(%rbp)
	je	.L90
	cmpl	$13, -420(%rbp)
	jg	.L52
	cmpl	$12, -420(%rbp)
	je	.L91
	cmpl	$12, -420(%rbp)
	jg	.L52
	cmpl	$11, -420(%rbp)
	je	.L92
	cmpl	$11, -420(%rbp)
	jg	.L52
	cmpl	$10, -420(%rbp)
	je	.L93
	cmpl	$10, -420(%rbp)
	jg	.L52
	cmpl	$9, -420(%rbp)
	je	.L94
	cmpl	$9, -420(%rbp)
	jg	.L52
	cmpl	$8, -420(%rbp)
	je	.L95
	cmpl	$8, -420(%rbp)
	jg	.L52
	cmpl	$7, -420(%rbp)
	je	.L96
	cmpl	$7, -420(%rbp)
	jg	.L52
	cmpl	$6, -420(%rbp)
	je	.L97
	cmpl	$6, -420(%rbp)
	jg	.L52
	cmpl	$5, -420(%rbp)
	je	.L98
	cmpl	$5, -420(%rbp)
	jg	.L52
	cmpl	$4, -420(%rbp)
	je	.L99
	cmpl	$4, -420(%rbp)
	jg	.L52
	cmpl	$3, -420(%rbp)
	je	.L100
	cmpl	$3, -420(%rbp)
	jg	.L52
	cmpl	$2, -420(%rbp)
	je	.L101
	cmpl	$2, -420(%rbp)
	jg	.L52
	cmpl	$0, -420(%rbp)
	jg	.L102
	cmpl	$-1, -420(%rbp)
	jge	.L103
	jmp	.L52
.L102:
	cmpl	$1, -420(%rbp)
	je	.L104
	jmp	.L52
.L281:
	nop
	jmp	.L103
.L282:
	nop
	jmp	.L103
.L283:
	nop
	jmp	.L103
.L286:
	nop
	jmp	.L103
.L287:
	nop
	jmp	.L103
.L288:
	nop
	jmp	.L103
.L289:
	nop
	jmp	.L103
.L290:
	nop
	jmp	.L103
.L291:
	nop
	jmp	.L103
.L293:
	nop
	jmp	.L103
.L295:
	nop
.L103:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-416(%rbp), %rdx
	leaq	.LC119(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L104:
	movq	req_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -288(%rbp)
	jmp	.L105
.L101:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-492(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L281
	jmp	.L52
.L100:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-496(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L282
	jmp	.L52
.L99:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -40(%rbp)
	jmp	.L52
.L98:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L52
	movq	-608(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC120(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L103
.L97:
	call	opt_arg@PLT
	movq	%rax, -192(%rbp)
	jmp	.L52
.L96:
	movl	$1, -340(%rbp)
	jmp	.L52
.L95:
	movl	$1, -300(%rbp)
	jmp	.L52
.L94:
	call	opt_arg@PLT
	movq	%rax, -264(%rbp)
	jmp	.L52
.L58:
	call	opt_arg@PLT
	movq	%rax, section(%rip)
	jmp	.L52
.L93:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-500(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L283
	jmp	.L52
.L92:
	call	opt_arg@PLT
	movq	%rax, -160(%rbp)
	jmp	.L52
.L91:
	call	opt_arg@PLT
	movq	%rax, -184(%rbp)
	jmp	.L52
.L90:
	call	opt_arg@PLT
	movq	%rax, -272(%rbp)
	jmp	.L52
.L89:
	call	opt_arg@PLT
	movq	%rax, -216(%rbp)
	jmp	.L52
.L88:
	call	opt_arg@PLT
	movq	%rax, -224(%rbp)
	jmp	.L52
.L56:
	movl	-420(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L284
	jmp	.L52
.L54:
	movl	-420(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L285
	jmp	.L52
.L87:
	call	opt_arg@PLT
	movq	%rax, -280(%rbp)
	movl	$1, -300(%rbp)
	jmp	.L52
.L86:
	cmpq	$0, -80(%rbp)
	jne	.L112
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -80(%rbp)
.L112:
	cmpq	$0, -80(%rbp)
	je	.L286
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
	je	.L286
	jmp	.L52
.L85:
	cmpq	$0, -88(%rbp)
	jne	.L115
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -88(%rbp)
.L115:
	cmpq	$0, -88(%rbp)
	je	.L287
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
	je	.L287
	jmp	.L52
.L84:
	cmpq	$0, -96(%rbp)
	jne	.L118
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -96(%rbp)
.L118:
	cmpq	$0, -96(%rbp)
	je	.L288
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
	je	.L288
	jmp	.L52
.L83:
	movl	$1, batch(%rip)
	jmp	.L52
.L82:
	movl	$1, -332(%rbp)
	jmp	.L52
.L81:
	movl	$1, -312(%rbp)
	jmp	.L52
.L80:
	movl	$1, -316(%rbp)
	jmp	.L52
.L79:
	movl	$1, -328(%rbp)
	jmp	.L52
.L78:
	movl	$1, -320(%rbp)
	jmp	.L52
.L77:
	movl	$1, -304(%rbp)
	movl	$1, -308(%rbp)
	jmp	.L52
.L57:
	movl	$0, -304(%rbp)
	movl	$0, -308(%rbp)
	jmp	.L52
.L76:
	movq	$4096, -360(%rbp)
	jmp	.L52
.L75:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	set_nameopt@PLT
	testl	%eax, %eax
	je	.L289
	jmp	.L52
.L74:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-520(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_cert_ex@PLT
	testl	%eax, %eax
	je	.L290
	jmp	.L52
.L71:
	movl	$1, -324(%rbp)
	jmp	.L52
.L69:
	movl	$1, -348(%rbp)
.L70:
	movl	$1, -292(%rbp)
	jmp	.L52
.L68:
	call	opt_arg@PLT
	movq	%rax, -168(%rbp)
	movl	$1, -292(%rbp)
	jmp	.L52
.L67:
	call	opt_arg@PLT
	movq	%rax, -176(%rbp)
	jmp	.L52
.L65:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -284(%rbp)
	cmpl	$-1, -284(%rbp)
	jge	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-416(%rbp), %rdx
	leaq	.LC121(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L64:
	cmpq	$0, -24(%rbp)
	je	.L124
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC122(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L103
.L124:
	call	opt_arg@PLT
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L291
	jmp	.L52
.L72:
	movl	$1, -336(%rbp)
	jmp	.L52
.L73:
	call	opt_arg@PLT
	movq	%rax, -248(%rbp)
	jmp	.L52
.L63:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-460(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_ext_copy@PLT
	testl	%eax, %eax
	jne	.L52
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC123(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L62:
	call	opt_arg@PLT
	movq	%rax, -152(%rbp)
	jmp	.L52
.L61:
	call	opt_arg@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L127
	leaq	ext_name_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_compfunc_type
	movq	%rax, %rbx
	leaq	ext_name_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_hashfunc_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_OPENSSL_STRING_doall_arg_thunk(%rip), %rsi
	leaq	lh_OPENSSL_STRING_doall_thunk(%rip), %rcx
	leaq	lh_OPENSSL_STRING_comp_thunk(%rip), %rdx
	leaq	lh_OPENSSL_STRING_hash_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	movq	%rax, -104(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L292
	cmpq	$0, -144(%rbp)
	je	.L292
.L127:
	movq	-208(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	duplicated
	movl	%eax, -296(%rbp)
	cmpl	$1, -296(%rbp)
	je	.L293
	cmpl	$-1, -296(%rbp)
	jne	.L130
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC124(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L130:
	cmpl	$0, -296(%rbp)
	js	.L294
	movq	-208(%rbp), %rdx
	leaq	.LC125(%rip), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	js	.L294
	jmp	.L52
.L60:
	movl	$1, -344(%rbp)
	movl	-344(%rbp), %eax
	movl	%eax, -300(%rbp)
	jmp	.L52
.L59:
	call	opt_unknown@PLT
	movq	%rax, -200(%rbp)
	nop
.L52:
	call	opt_next@PLT
	movl	%eax, -420(%rbp)
	cmpl	$0, -420(%rbp)
	jne	.L133
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L295
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L296
	cmpl	$0, -292(%rbp)
	jne	.L136
	cmpl	$-2, -284(%rbp)
	je	.L137
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC126(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L137:
	movl	-460(%rbp), %eax
	testl	%eax, %eax
	jne	.L136
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC127(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L136:
	cmpq	$0, -160(%rbp)
	jne	.L138
	cmpl	$0, -292(%rbp)
	je	.L139
	movl	$1, -300(%rbp)
	jmp	.L138
.L139:
	cmpl	$0, -300(%rbp)
	jne	.L138
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC128(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L138:
	leaq	-488(%rbp), %rcx
	leaq	-480(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L140
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC129(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L140:
	movl	-304(%rbp), %edx
	movq	-264(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	app_load_config_verbose@PLT
	movq	%rax, req_conf(%rip)
	movq	req_conf(%rip), %rax
	testq	%rax, %rax
	je	.L297
	cmpq	$0, -144(%rbp)
	je	.L142
	cmpl	$0, -304(%rbp)
	je	.L143
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC130(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L143:
	movq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_bio@PLT
	movq	%rax, addext_conf(%rip)
	movq	addext_conf(%rip), %rax
	testq	%rax, %rax
	je	.L298
.L142:
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, -264(%rbp)
	je	.L144
	movq	req_conf(%rip), %rax
	movq	%rax, %rdi
	call	app_load_modules@PLT
	testl	%eax, %eax
	je	.L299
.L144:
	movq	req_conf(%rip), %rax
	testq	%rax, %rax
	je	.L145
	movq	req_conf(%rip), %rax
	leaq	.LC131(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L145
	leaq	.LC132(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -432(%rbp)
	cmpq	$0, -432(%rbp)
	jne	.L146
	cmpl	$0, -304(%rbp)
	je	.L145
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC133(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L145
.L146:
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_create_objects@PLT
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L145:
	movq	req_conf(%rip), %rax
	movq	%rax, %rdi
	call	add_oid_section@PLT
	testl	%eax, %eax
	je	.L300
	cmpq	$0, -200(%rbp)
	je	.L148
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	opt_check_md@PLT
	testl	%eax, %eax
	jne	.L149
	jmp	.L103
.L148:
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC134(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L149
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
.L149:
	cmpq	$0, -152(%rbp)
	jne	.L150
	cmpl	$0, -292(%rbp)
	je	.L151
	leaq	.LC135(%rip), %rax
	jmp	.L152
.L151:
	leaq	.LC136(%rip), %rax
.L152:
	movq	section(%rip), %rsi
	movq	req_conf(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -152(%rbp)
.L150:
	cmpq	$0, -152(%rbp)
	je	.L153
	leaq	-592(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	req_conf(%rip), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	req_conf(%rip), %rax
	movq	-152(%rbp), %rdx
	leaq	-592(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L153
	cmpl	$0, -292(%rbp)
	je	.L155
	leaq	.LC29(%rip), %rax
	jmp	.L156
.L155:
	leaq	.LC137(%rip), %rax
.L156:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-152(%rbp), %rdx
	leaq	.LC138(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L153:
	movq	addext_conf(%rip), %rax
	testq	%rax, %rax
	je	.L157
	leaq	-592(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	req_conf(%rip), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	addext_conf(%rip), %rax
	leaq	.LC139(%rip), %rdx
	leaq	-592(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L157
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC140(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L157:
	movq	-480(%rbp), %rax
	testq	%rax, %rax
	jne	.L159
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC141(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -480(%rbp)
.L159:
	movq	-488(%rbp), %rax
	testq	%rax, %rax
	jne	.L160
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -488(%rbp)
.L160:
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L161
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_set_default_mask_asc@PLT
	testl	%eax, %eax
	jne	.L161
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC144(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L161:
	cmpq	$4096, -360(%rbp)
	je	.L162
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L162
	leaq	.LC145(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L162
	movq	$4096, -360(%rbp)
.L162:
	cmpq	$0, -192(%rbp)
	je	.L163
	movq	-480(%rbp), %rdx
	movl	-500(%rbp), %esi
	leaq	.LC146(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L301
	movq	section(%rip), %rdx
	movq	req_conf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_RAND_load_conf@PLT
.L163:
	cmpq	$0, -280(%rbp)
	je	.L165
	cmpq	$0, -56(%rbp)
	je	.L165
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC147(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L165:
	cmpl	$0, -300(%rbp)
	je	.L166
	cmpq	$0, -56(%rbp)
	jne	.L166
	movq	section(%rip), %rdx
	movq	req_conf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_RAND_load_conf@PLT
	movq	section(%rip), %rsi
	movq	req_conf(%rip), %rax
	leaq	-512(%rbp), %rdx
	leaq	.LC148(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L167
	movq	$2048, -512(%rbp)
.L167:
	movq	-48(%rbp), %rcx
	leaq	-512(%rbp), %rdx
	leaq	-472(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	set_keygen_ctx
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L302
	movq	-512(%rbp), %rax
	cmpq	$511, %rax
	jg	.L169
	leaq	.LC149(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L170
	leaq	.LC150(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L170
	leaq	.LC151(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	je	.L169
.L170:
	movq	-512(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC152(%rip), %rsi
	movq	%rdx, %rcx
	movl	$512, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L169:
	movq	-512(%rbp), %rax
	cmpq	$16384, %rax
	jle	.L171
	leaq	.LC149(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L172
	leaq	.LC150(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	je	.L171
.L172:
	movq	-512(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC153(%rip), %rsi
	movq	%rdx, %rcx
	movl	$16384, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L171:
	leaq	.LC151(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	je	.L173
	movq	-512(%rbp), %rax
	cmpq	$10000, %rax
	jle	.L173
	movq	-512(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC154(%rip), %rsi
	movq	%rdx, %rcx
	movl	$10000, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L173:
	cmpq	$0, -80(%rbp)
	je	.L174
	movl	$0, -296(%rbp)
	jmp	.L175
.L177:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-296(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L176
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-440(%rbp), %rdx
	leaq	.LC155(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L176:
	addl	$1, -296(%rbp)
.L175:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -296(%rbp)
	jl	.L177
.L174:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_app_data@PLT
	cmpl	$0, -308(%rbp)
	je	.L178
	movq	progress_cb@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_cb@PLT
.L178:
	movq	-512(%rbp), %rax
	movl	%eax, %edi
	movq	-472(%rbp), %rsi
	movl	-304(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	app_keygen@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L303
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -72(%rbp)
.L166:
	cmpq	$0, -272(%rbp)
	jne	.L180
	cmpq	$0, -192(%rbp)
	jne	.L180
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC156(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -272(%rbp)
.L180:
	cmpq	$0, -56(%rbp)
	je	.L181
	cmpq	$0, -192(%rbp)
	je	.L182
	cmpq	$0, -272(%rbp)
	je	.L181
.L182:
	cmpl	$0, -304(%rbp)
	je	.L183
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC157(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -272(%rbp)
	jne	.L184
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC158(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L183
.L184:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC159(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L183:
	movl	-496(%rbp), %ecx
	movl	-300(%rbp), %edx
	movq	-272(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L304
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC160(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.L186
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC161(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -208(%rbp)
.L186:
	cmpq	$0, -208(%rbp)
	je	.L187
	leaq	.LC162(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L187
	movq	$0, -136(%rbp)
.L187:
	cmpl	$0, -328(%rbp)
	je	.L188
	movq	$0, -136(%rbp)
.L188:
	movl	$0, -296(%rbp)
.L189:
	movq	-488(%rbp), %rcx
	movq	-136(%rbp), %rdx
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
	testl	%eax, %eax
	jne	.L190
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$109, %eax
	jne	.L305
	cmpl	$2, -296(%rbp)
	jg	.L305
	call	ERR_clear_error@PLT
	addl	$1, -296(%rbp)
	jmp	.L189
.L190:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	$0, -32(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC163(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L181:
	cmpq	$0, -248(%rbp)
	je	.L192
	movq	-360(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC40(%rip), %rcx
	movl	-404(%rbp), %edx
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	parse_name@PLT
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	je	.L306
.L192:
	cmpl	$0, -300(%rbp)
	jne	.L193
	cmpq	$0, -192(%rbp)
	je	.L194
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC164(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L194:
	movl	-492(%rbp), %esi
	leaq	.LC165(%rip), %rcx
	movq	-96(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	load_csr_autofmt@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L195
	jmp	.L105
.L193:
	cmpq	$0, -160(%rbp)
	je	.L195
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC166(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L195:
	cmpq	$0, -176(%rbp)
	jne	.L196
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
.L196:
	cmpq	$0, -176(%rbp)
	je	.L197
	cmpq	$0, -168(%rbp)
	jne	.L198
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L197
.L198:
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	je	.L199
	leaq	.LC168(%rip), %rax
	jmp	.L200
.L199:
	leaq	.LC169(%rip), %rax
.L200:
	movq	-480(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-176(%rbp), %rdi
	movq	%rax, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	call	load_key@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L307
.L197:
	cmpq	$0, -168(%rbp)
	je	.L201
	movq	-480(%rbp), %rdx
	leaq	.LC170(%rip), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L308
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L201
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC171(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L201:
	cmpl	$0, -300(%rbp)
	jne	.L203
	cmpl	$0, -292(%rbp)
	je	.L204
.L203:
	cmpq	$0, -120(%rbp)
	jne	.L205
	cmpq	$0, -56(%rbp)
	jne	.L205
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L205:
	cmpq	$0, -128(%rbp)
	jne	.L206
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_new_ex@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L309
	cmpl	$0, -292(%rbp)
	sete	%al
	movzbl	%al, %edi
	movq	-360(%rbp), %r8
	movl	-404(%rbp), %ecx
	movq	-256(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	make_REQ
	testl	%eax, %eax
	jne	.L206
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC173(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L206:
	cmpl	$0, -292(%rbp)
	je	.L208
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -448(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L209
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)
	jmp	.L210
.L209:
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)
.L210:
	cmpq	$0, -120(%rbp)
	je	.L211
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -376(%rbp)
	jmp	.L212
.L211:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -376(%rbp)
.L212:
	cmpq	$0, -256(%rbp)
	jne	.L213
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -384(%rbp)
	jmp	.L214
.L213:
	movq	-256(%rbp), %rax
	movq	%rax, -384(%rbp)
.L214:
	cmpq	$0, -120(%rbp)
	je	.L215
	cmpq	$0, -192(%rbp)
	je	.L215
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC174(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L215:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L310
	cmpq	$0, -24(%rbp)
	je	.L218
	movq	-24(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_serialNumber@PLT
	testl	%eax, %eax
	jne	.L219
	jmp	.L105
.L218:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_serialNumber@PLT
	movq	%rax, %rsi
	movl	$0, %edi
	call	rand_serial@PLT
	testl	%eax, %eax
	je	.L311
.L219:
	movq	-376(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_issuer_name@PLT
	testl	%eax, %eax
	je	.L312
	cmpl	$-2, -284(%rbp)
	jne	.L221
	movl	$30, -284(%rbp)
.L221:
	movl	-284(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_cert_times@PLT
	testl	%eax, %eax
	je	.L313
	movq	-384(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_subject_name@PLT
	testl	%eax, %eax
	je	.L314
	cmpq	$0, -448(%rbp)
	je	.L315
	movq	-448(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_pubkey@PLT
	testl	%eax, %eax
	je	.L315
	movl	-460(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L226
	cmpq	$0, -160(%rbp)
	je	.L227
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC175(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L227
.L226:
	movl	-460(%rbp), %edx
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_extensions@PLT
	testl	%eax, %eax
	jne	.L227
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC176(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L227:
	cmpq	$0, -120(%rbp)
	je	.L228
	movq	-120(%rbp), %rax
	jmp	.L229
.L228:
	movq	-112(%rbp), %rax
.L229:
	movq	-112(%rbp), %rdx
	leaq	-592(%rbp), %rdi
	movl	$2, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	X509V3_set_ctx@PLT
	cmpq	$0, -120(%rbp)
	jne	.L230
	movq	-368(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_issuer_pkey@PLT
	testl	%eax, %eax
	je	.L316
	movq	-368(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cert_matches_key@PLT
	testl	%eax, %eax
	jne	.L230
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC177(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L230:
	movq	req_conf(%rip), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	cmpq	$0, -152(%rbp)
	je	.L232
	movq	req_conf(%rip), %rax
	movq	-112(%rbp), %rcx
	movq	-152(%rbp), %rdx
	leaq	-592(%rbp), %rsi
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L232
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC178(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L232:
	movq	addext_conf(%rip), %rax
	testq	%rax, %rax
	je	.L233
	movq	addext_conf(%rip), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC139(%rip), %rdi
	leaq	-592(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	jne	.L233
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC179(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L233:
	cmpl	$0, -344(%rbp)
	je	.L234
	movq	-112(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$952, %esi
	movq	%rax, %rdi
	call	X509_add1_ext_i2d@PLT
	cmpl	$1, %eax
	je	.L234
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC180(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L234:
	leaq	-592(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	-368(%rbp), %rdx
	movl	-348(%rbp), %esi
	movq	-112(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_X509_sign@PLT
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	jne	.L204
	jmp	.L105
.L208:
	cmpl	$0, -344(%rbp)
	je	.L236
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC181(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L236:
	movq	-128(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movl	$2, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	req_conf(%rip), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	cmpq	$0, -152(%rbp)
	je	.L237
	movq	req_conf(%rip), %rax
	movq	-128(%rbp), %rcx
	movq	-152(%rbp), %rdx
	leaq	-592(%rbp), %rsi
	movq	%rax, %rdi
	call	X509V3_EXT_REQ_add_nconf@PLT
	testl	%eax, %eax
	jne	.L237
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC182(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L237:
	movq	addext_conf(%rip), %rax
	testq	%rax, %rax
	je	.L239
	movq	addext_conf(%rip), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC139(%rip), %rdi
	leaq	-592(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	X509V3_EXT_REQ_add_nconf@PLT
	testl	%eax, %eax
	jne	.L239
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC183(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L239:
	movq	-88(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	do_X509_REQ_sign@PLT
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	je	.L317
.L204:
	cmpq	$0, -248(%rbp)
	je	.L241
	cmpl	$0, -300(%rbp)
	jne	.L241
	cmpl	$0, -292(%rbp)
	jne	.L241
	cmpl	$0, -304(%rbp)
	je	.L242
	leaq	.LC184(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, %rdx
	leaq	.LC185(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_name@PLT
.L242:
	movq	-256(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_subject_name@PLT
	testl	%eax, %eax
	jne	.L243
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC186(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L243:
	cmpl	$0, -304(%rbp)
	je	.L241
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, %rdx
	leaq	.LC187(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_name@PLT
.L241:
	cmpl	$0, -316(%rbp)
	je	.L244
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)
	cmpq	$0, -392(%rbp)
	jne	.L245
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -392(%rbp)
	cmpq	$0, -392(%rbp)
	je	.L318
.L245:
	movq	-96(%rbp), %rdx
	movq	-392(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_X509_REQ_verify@PLT
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	js	.L319
	cmpl	$0, -296(%rbp)
	jne	.L247
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC188(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L247:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC189(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L244:
	cmpl	$0, -320(%rbp)
	je	.L248
	cmpl	$0, -324(%rbp)
	jne	.L248
	cmpl	$0, -312(%rbp)
	jne	.L248
	cmpl	$0, -336(%rbp)
	jne	.L248
	cmpl	$0, -340(%rbp)
	jne	.L248
	movl	$0, -288(%rbp)
	jmp	.L105
.L248:
	movl	-496(%rbp), %ebx
	cmpq	$0, -272(%rbp)
	je	.L249
	cmpq	$0, -184(%rbp)
	je	.L249
	movq	-184(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L249
	movl	$97, %ecx
	jmp	.L250
.L249:
	movl	$119, %ecx
.L250:
	movq	-184(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L320
	cmpl	$0, -340(%rbp)
	je	.L252
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -456(%rbp)
	cmpq	$0, -456(%rbp)
	jne	.L253
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC190(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L253:
	movq	-456(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
.L252:
	cmpl	$0, -324(%rbp)
	je	.L254
	cmpl	$0, -292(%rbp)
	je	.L255
	movq	-520(%rbp), %rbx
	call	get_nameopt@PLT
	movq	%rax, %rdx
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	movl	%eax, -288(%rbp)
	jmp	.L256
.L255:
	movq	-520(%rbp), %rbx
	call	get_nameopt@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	X509_REQ_print_ex@PLT
	movl	%eax, -288(%rbp)
.L256:
	cmpl	$0, -288(%rbp)
	jne	.L254
	cmpl	$0, -292(%rbp)
	je	.L257
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC191(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L257:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC192(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L254:
	cmpl	$0, -336(%rbp)
	je	.L259
	cmpl	$0, -292(%rbp)
	je	.L260
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	jmp	.L261
.L260:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
.L261:
	leaq	.LC193(%rip), %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	print_name@PLT
.L259:
	cmpl	$0, -312(%rbp)
	je	.L262
	cmpl	$0, -292(%rbp)
	je	.L263
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -400(%rbp)
	jmp	.L264
.L263:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -400(%rbp)
.L264:
	cmpq	$0, -400(%rbp)
	jne	.L265
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC194(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L105
.L265:
	leaq	.LC195(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	.LC149(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L266
	leaq	.LC150(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L267
.L266:
	movq	$0, -528(%rbp)
	leaq	-528(%rbp), %rdx
	leaq	.LC196(%rip), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L321
	movq	-528(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	movq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L269
.L267:
	leaq	.LC197(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L269:
	leaq	.LC198(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L262:
	cmpl	$0, -320(%rbp)
	jne	.L270
	cmpl	$0, -292(%rbp)
	jne	.L270
	movl	-496(%rbp), %eax
	cmpl	$4, %eax
	jne	.L271
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_REQ_bio@PLT
	movl	%eax, -296(%rbp)
	jmp	.L272
.L271:
	cmpl	$0, -332(%rbp)
	je	.L273
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_REQ_NEW@PLT
	movl	%eax, -296(%rbp)
	jmp	.L272
.L273:
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_REQ@PLT
	movl	%eax, -296(%rbp)
.L272:
	cmpl	$0, -296(%rbp)
	jne	.L270
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC199(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L270:
	cmpl	$0, -320(%rbp)
	jne	.L274
	cmpl	$0, -292(%rbp)
	je	.L274
	cmpq	$0, -112(%rbp)
	je	.L274
	movl	-496(%rbp), %eax
	cmpl	$4, %eax
	jne	.L275
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_bio@PLT
	movl	%eax, -296(%rbp)
	jmp	.L276
.L275:
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	movl	%eax, -296(%rbp)
.L276:
	cmpl	$0, -296(%rbp)
	jne	.L274
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L105
.L274:
	movl	$0, -288(%rbp)
	jmp	.L105
.L284:
	nop
	jmp	.L105
.L285:
	nop
	jmp	.L105
.L292:
	nop
	jmp	.L105
.L294:
	nop
	jmp	.L105
.L296:
	nop
	jmp	.L105
.L297:
	nop
	jmp	.L105
.L298:
	nop
	jmp	.L105
.L299:
	nop
	jmp	.L105
.L300:
	nop
	jmp	.L105
.L301:
	nop
	jmp	.L105
.L302:
	nop
	jmp	.L105
.L303:
	nop
	jmp	.L105
.L304:
	nop
	jmp	.L105
.L305:
	nop
	jmp	.L105
.L306:
	nop
	jmp	.L105
.L307:
	nop
	jmp	.L105
.L308:
	nop
	jmp	.L105
.L309:
	nop
	jmp	.L105
.L310:
	nop
	jmp	.L105
.L311:
	nop
	jmp	.L105
.L312:
	nop
	jmp	.L105
.L313:
	nop
	jmp	.L105
.L314:
	nop
	jmp	.L105
.L315:
	nop
	jmp	.L105
.L316:
	nop
	jmp	.L105
.L317:
	nop
	jmp	.L105
.L318:
	nop
	jmp	.L105
.L319:
	nop
	jmp	.L105
.L320:
	nop
	jmp	.L105
.L321:
	nop
.L105:
	cmpl	$0, -288(%rbp)
	je	.L277
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L277:
	movq	req_conf(%rip), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	addext_conf(%rip), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
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
	leaq	exts_cleanup(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_doallfunc_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_doall@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-472(%rbp), %rax
	leaq	.LC114(%rip), %rcx
	movl	$1037, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-480(%rbp), %rax
	cmpq	%rax, -232(%rbp)
	je	.L278
	movq	-480(%rbp), %rax
	leaq	.LC114(%rip), %rcx
	movl	$1046, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L278:
	movq	-488(%rbp), %rax
	cmpq	%rax, -240(%rbp)
	je	.L279
	movq	-488(%rbp), %rax
	leaq	.LC114(%rip), %rcx
	movl	$1048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L279:
	movl	-288(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	req_main, .-req_main
	.section	.rodata
.LC201:
	.string	"prompt"
.LC202:
	.string	"distinguished_name"
.LC203:
	.string	"Unable to get '%s' section\n"
.LC204:
	.string	"attributes"
	.text
	.type	make_REQ, @function
make_REQ:
.LFB652:
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
	movl	$0, -4(%rbp)
	movb	$0, -9(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L323
	leaq	.LC162(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L323
	movb	$1, -9(%rbp)
.L323:
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC202(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L324
	movq	req_conf(%rip), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L324
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC203(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L325
.L324:
	movq	section(%rip), %rcx
	movq	req_conf(%rip), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L326
	movq	req_conf(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L326
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC203(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L325
.L326:
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_REQ_set_version@PLT
	testl	%eax, %eax
	je	.L334
	cmpq	$0, -88(%rbp)
	je	.L328
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_subject_name@PLT
	movl	%eax, -8(%rbp)
	jmp	.L329
.L328:
	cmpb	$0, -9(%rbp)
	je	.L330
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	auto_info
	movl	%eax, -8(%rbp)
	jmp	.L329
.L330:
	movl	-96(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-104(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	prompt_info
	addq	$16, %rsp
	movl	%eax, -8(%rbp)
.L329:
	cmpl	$0, -8(%rbp)
	je	.L335
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_pubkey@PLT
	testl	%eax, %eax
	je	.L336
	movl	$1, -4(%rbp)
	jmp	.L325
.L334:
	nop
	jmp	.L325
.L335:
	nop
	jmp	.L325
.L336:
	nop
.L325:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	make_REQ, .-make_REQ
	.section	.rodata
	.align 8
.LC205:
	.string	"You are about to be asked to enter information that will be incorporated\n"
	.align 8
.LC206:
	.string	"into your certificate request.\n"
	.align 8
.LC207:
	.string	"What you are about to enter is what is called a Distinguished Name or a DN.\n"
	.align 8
.LC208:
	.string	"There are quite a few fields but you can leave some blank\n"
	.align 8
.LC209:
	.string	"For some fields there will be a default value,\n"
	.align 8
.LC210:
	.string	"If you enter '.', the field will be left blank.\n"
.LC211:
	.string	"_min"
.LC212:
	.string	"_max"
.LC213:
	.string	"_default"
.LC214:
	.string	"_value"
.LC215:
	.string	"Name"
	.align 8
.LC216:
	.string	"Error: No objects specified in config file\n"
	.align 8
.LC217:
	.string	"\nPlease enter the following 'extra' attributes\n"
	.align 8
.LC218:
	.string	"to be sent with your certificate request\n"
	.align 8
.LC219:
	.string	"No template, please set one up.\n"
	.text
	.type	prompt_info, @function
prompt_info:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movl	%r9d, -236(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -56(%rbp)
	movl	batch(%rip), %eax
	testl	%eax, %eax
	jne	.L338
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC205(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC206(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC207(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC208(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC209(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC210(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC163(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L338:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L339
	movl	$-1, -4(%rbp)
.L340:
.L364:
	addl	$1, -4(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jge	.L381
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC211(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_end
	testl	%eax, %eax
	je	.L382
	leaq	.LC212(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_end
	testl	%eax, %eax
	je	.L382
	leaq	.LC213(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_end
	testl	%eax, %eax
	je	.L382
	leaq	.LC214(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_end
	testl	%eax, %eax
	je	.L382
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L346
.L351:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L347
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L347
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L348
.L347:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L383
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L383
.L348:
	addq	$1, -16(%rbp)
.L346:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L351
	jmp	.L350
.L383:
	nop
.L350:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L352
	movl	$-1, -20(%rbp)
	addq	$1, -32(%rbp)
	jmp	.L353
.L352:
	movl	$0, -20(%rbp)
.L353:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L354
	jmp	.L364
.L354:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC215(%rip), %rsi
	leaq	.LC213(%rip), %rcx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L355
	movl	$0, %eax
	jmp	.L379
.L355:
	movq	req_conf(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L357
	leaq	.LC79(%rip), %rax
	movq	%rax, -48(%rbp)
.L357:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC215(%rip), %rsi
	leaq	.LC214(%rip), %rcx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L358
	movl	$0, %eax
	jmp	.L379
.L358:
	movq	req_conf(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L359
	movq	$0, -40(%rbp)
.L359:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC215(%rip), %rsi
	leaq	.LC211(%rip), %rcx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L360
	movl	$0, %eax
	jmp	.L379
.L360:
	movq	req_conf(%rip), %rax
	leaq	-184(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L361
	movq	$-1, -184(%rbp)
.L361:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC215(%rip), %rsi
	leaq	.LC212(%rip), %rcx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L362
	movl	$0, %eax
	jmp	.L379
.L362:
	movq	req_conf(%rip), %rax
	leaq	-192(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L363
	movq	$-1, -192(%rbp)
.L363:
	movq	-192(%rbp), %rax
	movl	%eax, %r9d
	movq	-184(%rbp), %rax
	movl	%eax, %r10d
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-76(%rbp), %r8d
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %edi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	%r9
	movl	%r10d, %r9d
	movq	%rax, %rdi
	call	add_DN_object
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L364
	movl	$0, %eax
	jmp	.L379
.L382:
	nop
	jmp	.L364
.L381:
	nop
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	testl	%eax, %eax
	jne	.L365
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC216(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L379
.L365:
	cmpl	$0, -236(%rbp)
	je	.L366
	cmpq	$0, -224(%rbp)
	je	.L367
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L367
	movl	batch(%rip), %eax
	testl	%eax, %eax
	jne	.L367
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC217(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC218(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L367:
	movl	$-1, -4(%rbp)
.L368:
.L378:
	addl	$1, -4(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L366
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jge	.L366
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L369
	jmp	.L378
.L369:
	leaq	.LC215(%rip), %rsi
	leaq	.LC213(%rip), %rcx
	movq	-32(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L370
	movl	$0, %eax
	jmp	.L379
.L370:
	movq	req_conf(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L371
	leaq	.LC79(%rip), %rax
	movq	%rax, -48(%rbp)
.L371:
	leaq	.LC215(%rip), %rsi
	leaq	.LC214(%rip), %rcx
	movq	-32(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L372
	movl	$0, %eax
	jmp	.L379
.L372:
	movq	req_conf(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC215(%rip), %rsi
	leaq	.LC211(%rip), %rcx
	movq	-32(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L373
	movl	$0, %eax
	jmp	.L379
.L373:
	movq	req_conf(%rip), %rax
	leaq	-184(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L374
	movq	$-1, -184(%rbp)
.L374:
	leaq	.LC215(%rip), %rsi
	leaq	.LC212(%rip), %rcx
	movq	-32(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L375
	movl	$0, %eax
	jmp	.L379
.L375:
	movq	req_conf(%rip), %rax
	leaq	-192(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	call	app_conf_try_number@PLT
	testl	%eax, %eax
	jne	.L376
	movq	$-1, -192(%rbp)
.L376:
	movq	-192(%rbp), %rax
	movl	%eax, %r8d
	movq	-184(%rbp), %rax
	movl	%eax, %r9d
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-76(%rbp), %edi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-200(%rbp), %rax
	pushq	16(%rbp)
	pushq	%r8
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	add_attribute_object
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L378
	movl	$0, %eax
	jmp	.L379
.L339:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC219(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L379
.L366:
	movl	$1, %eax
.L379:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	prompt_info, .-prompt_info
	.type	auto_info, @function
auto_info:
.LFB654:
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
	movq	%r8, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L385
.L398:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L386
.L393:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L387
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L387
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L388
.L387:
	movl	$1, %eax
	jmp	.L389
.L388:
	movl	$0, %eax
.L389:
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L390
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L404
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L404
.L390:
	addq	$1, -16(%rbp)
.L386:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L393
	jmp	.L392
.L404:
	nop
.L392:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.L394
	addq	$1, -24(%rbp)
	movl	$-1, -28(%rbp)
	jmp	.L395
.L394:
	movl	$0, -28(%rbp)
.L395:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	movl	-28(%rbp), %ecx
	pushq	%rcx
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L396
	movl	$0, %eax
	jmp	.L397
.L396:
	addl	$1, -4(%rbp)
.L385:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L398
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	testl	%eax, %eax
	jne	.L399
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC216(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L397
.L399:
	cmpl	$0, -92(%rbp)
	je	.L400
	movl	$0, -4(%rbp)
	jmp	.L401
.L403:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	X509_REQ_add1_attr_by_txt@PLT
	testl	%eax, %eax
	jne	.L402
	movl	$0, %eax
	jmp	.L397
.L402:
	addl	$1, -4(%rbp)
.L401:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L403
.L400:
	movl	$1, %eax
.L397:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	auto_info, .-auto_info
	.section	.rodata
.LC220:
	.string	"DN default"
.LC221:
	.string	"DN value"
	.text
	.type	add_DN_object, @function
add_DN_object:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	%rcx, -1072(%rbp)
	movl	%r8d, -1076(%rbp)
	movl	%r9d, -1080(%rbp)
	movl	$0, -4(%rbp)
	leaq	-1040(%rbp), %r9
	movl	16(%rbp), %r8d
	movl	-1080(%rbp), %ecx
	movq	-1072(%rbp), %rdx
	movq	-1064(%rbp), %rsi
	movq	-1056(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC220(%rip), %rdi
	pushq	%rdi
	leaq	.LC221(%rip), %rdi
	pushq	%rdi
	pushq	$1024
	movq	%rax, %rdi
	call	build_data
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L406
	cmpl	$1, -4(%rbp)
	jne	.L407
.L406:
	movl	-4(%rbp), %eax
	jmp	.L410
.L407:
	movl	$1, -4(%rbp)
	movq	24(%rbp), %rax
	movl	%eax, %edi
	leaq	-1040(%rbp), %rdx
	movl	-1076(%rbp), %esi
	movq	-1048(%rbp), %rax
	subq	$8, %rsp
	movl	32(%rbp), %ecx
	pushq	%rcx
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_NID@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L409
	movl	$0, -4(%rbp)
.L409:
	movl	-4(%rbp), %eax
.L410:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	add_DN_object, .-add_DN_object
	.section	.rodata
.LC222:
	.string	"Attribute default"
.LC223:
	.string	"Attribute value"
.LC224:
	.string	"Error adding attribute\n"
	.text
	.type	add_attribute_object, @function
add_attribute_object:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	%rcx, -1072(%rbp)
	movl	%r8d, -1076(%rbp)
	movl	%r9d, -1080(%rbp)
	movl	$0, -4(%rbp)
	leaq	-1040(%rbp), %r9
	movl	16(%rbp), %r8d
	movl	-1080(%rbp), %ecx
	movq	-1072(%rbp), %rdx
	movq	-1064(%rbp), %rsi
	movq	-1056(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC222(%rip), %rdi
	pushq	%rdi
	leaq	.LC223(%rip), %rdi
	pushq	%rdi
	pushq	$1024
	movq	%rax, %rdi
	call	build_data
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L412
	cmpl	$1, -4(%rbp)
	jne	.L413
.L412:
	movl	-4(%rbp), %eax
	jmp	.L416
.L413:
	movl	$1, -4(%rbp)
	movq	24(%rbp), %rax
	movl	%eax, %edi
	leaq	-1040(%rbp), %rdx
	movl	-1076(%rbp), %esi
	movq	-1048(%rbp), %rax
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	X509_REQ_add1_attr_by_NID@PLT
	testl	%eax, %eax
	jne	.L415
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
.L415:
	movl	-4(%rbp), %eax
.L416:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	add_attribute_object, .-add_attribute_object
	.section	.rodata
.LC225:
	.string	"%s [%s]:"
	.align 8
.LC226:
	.string	"Missing newline at end of input\n"
	.text
	.type	build_data, @function
build_data:
.LFB657:
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
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
.L418:
	movl	batch(%rip), %eax
	testl	%eax, %eax
	jne	.L419
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC225(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L419:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cmpq	$0, -40(%rbp)
	je	.L420
	movl	16(%rbp), %eax
	movslq	%eax, %rsi
	movq	24(%rbp), %rdi
	leaq	.LC198(%rip), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L421
	movl	$0, %eax
	jmp	.L422
.L421:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC125(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L423
.L420:
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movl	batch(%rip), %eax
	testl	%eax, %eax
	jne	.L424
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	16(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L423
	movl	$0, %eax
	jmp	.L422
.L424:
	movq	-56(%rbp), %rax
	movb	$10, (%rax)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
.L423:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L425
	movl	$0, %eax
	jmp	.L422
.L425:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L426
	cmpq	$0, -32(%rbp)
	je	.L427
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L428
.L427:
	movl	$1, %eax
	jmp	.L422
.L428:
	movl	16(%rbp), %eax
	movslq	%eax, %rsi
	movq	32(%rbp), %rdi
	leaq	.LC198(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	join
	testl	%eax, %eax
	jne	.L429
	movl	$0, %eax
	jmp	.L422
.L426:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L429
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L429
	movl	$1, %eax
	jmp	.L422
.L429:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L430
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC226(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L422
.L430:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	req_check_len
	testl	%eax, %eax
	jne	.L431
	movl	batch(%rip), %eax
	testl	%eax, %eax
	jne	.L432
	cmpq	$0, -40(%rbp)
	je	.L418
.L432:
	movl	$0, %eax
	jmp	.L422
.L431:
	movl	$2, %eax
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	build_data, .-build_data
	.section	.rodata
	.align 8
.LC227:
	.string	"String too short, must be at least %d bytes long\n"
	.align 8
.LC228:
	.string	"String too long, must be at most %d bytes long\n"
	.text
	.type	req_check_len, @function
req_check_len:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L435
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L435
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	leaq	.LC227(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L436
.L435:
	cmpl	$0, -12(%rbp)
	js	.L437
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L437
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	leaq	.LC228(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L436
.L437:
	movl	$1, %eax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	req_check_len, .-req_check_len
	.type	check_end, @function
check_end:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L439
	movl	$1, %eax
	jmp	.L440
.L439:
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	check_end, .-check_end
	.section	.rodata
.LC229:
	.string	"%s '%s' too long\n"
	.text
	.type	join, @function
join:
.LFB660:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L442
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	.LC229(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L443
.L442:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L443:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	join, .-join
	.section	.rodata
.LC230:
	.string	"param"
	.align 8
.LC231:
	.string	"Parameter file requested but no path given: %s\n"
	.align 8
.LC232:
	.string	"Cannot open parameter file %s\n"
	.align 8
.LC233:
	.string	"Error reading parameter file %s\n"
.LC234:
	.string	"Unable to determine key type\n"
.LC235:
	.string	"Out of memory\n"
	.align 8
.LC236:
	.string	"Key type does not match parameters\n"
	.align 8
.LC237:
	.string	"Error allocating keygen context\n"
	.align 8
.LC238:
	.string	"Error initializing keygen context\n"
.LC239:
	.string	"bits"
.LC240:
	.string	"Error setting keysize\n"
	.text
	.type	set_keygen_ctx, @function
set_keygen_ctx:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L445
	leaq	.LC149(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L446
.L445:
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L447
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L447
	leaq	.LC149(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L446
.L447:
	movq	-216(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L448
	movq	-96(%rbp), %rax
	subq	-216(%rbp), %rax
	movl	%eax, -76(%rbp)
	jmp	.L449
.L448:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -76(%rbp)
.L449:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC230(%rip), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L450
	movl	$1, -60(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L451
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	leaq	.LC231(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L452
.L450:
	movq	-216(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-76(%rbp), %eax
	cltq
	movq	%rax, -56(%rbp)
.L451:
	cmpq	$0, -96(%rbp)
	je	.L453
	movl	-76(%rbp), %eax
	cltq
	addq	$1, %rax
	addq	%rax, -216(%rbp)
	jmp	.L446
.L453:
	movq	$0, -216(%rbp)
.L446:
	cmpq	$0, -216(%rbp)
	je	.L454
	cmpl	$0, -60(%rbp)
	jne	.L455
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L455
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L455
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movq	%rax, -40(%rbp)
	jmp	.L454
.L455:
	movq	-216(%rbp), %rax
	movq	%rax, -72(%rbp)
.L454:
	cmpq	$0, -72(%rbp)
	je	.L456
	leaq	.LC132(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L457
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC232(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L452
.L457:
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_Parameters@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L458
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L458
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L458:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpq	$0, -32(%rbp)
	jne	.L459
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC233(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L452
.L459:
	cmpq	$0, -48(%rbp)
	jne	.L456
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_type_name@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L456
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC234(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, %eax
	jmp	.L452
.L456:
	cmpq	$0, -56(%rbp)
	je	.L460
	leaq	.LC114(%rip), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$1559, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L461
.L460:
	leaq	.LC114(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1561, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx)
.L461:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L462
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC235(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L452
.L462:
	cmpq	$0, -40(%rbp)
	js	.L463
	movq	-232(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.L463:
	cmpq	$0, -32(%rbp)
	je	.L464
	movq	-224(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L465
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC236(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L452
.L465:
	cmpq	$0, -240(%rbp)
	je	.L466
	movq	-240(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -24(%rbp)
	jmp	.L467
.L466:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
.L467:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L468
.L464:
	cmpq	$0, -240(%rbp)
	je	.L469
	movq	-224(%rbp), %rax
	movq	(%rax), %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-240(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	get_legacy_pkey_id@PLT
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L468
	movq	-240(%rbp), %rdx
	movl	-108(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -24(%rbp)
	jmp	.L468
.L469:
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-224(%rbp), %rax
	movq	(%rax), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
.L468:
	cmpq	$0, -24(%rbp)
	jne	.L470
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC237(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, %eax
	jmp	.L452
.L470:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L471
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC238(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
	jmp	.L452
.L471:
	cmpq	$-1, -40(%rbp)
	jne	.L472
	leaq	.LC149(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L473
	leaq	.LC150(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	je	.L472
.L473:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.L472:
	cmpq	$-1, -40(%rbp)
	je	.L474
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-288(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC239(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L474
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC240(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
	jmp	.L452
.L474:
	movq	-24(%rbp), %rax
.L452:
	addq	$272, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	set_keygen_ctx, .-set_keygen_ctx
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

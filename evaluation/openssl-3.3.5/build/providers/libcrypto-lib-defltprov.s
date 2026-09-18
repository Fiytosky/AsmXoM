	.file	"defltprov.c"
	.text
	.type	OSSL_FUNC_core_gettable_params, @function
OSSL_FUNC_core_gettable_params:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	OSSL_FUNC_core_gettable_params, .-OSSL_FUNC_core_gettable_params
	.type	OSSL_FUNC_core_get_params, @function
OSSL_FUNC_core_get_params:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	OSSL_FUNC_core_get_params, .-OSSL_FUNC_core_get_params
	.type	OSSL_FUNC_core_get_libctx, @function
OSSL_FUNC_core_get_libctx:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	OSSL_FUNC_core_get_libctx, .-OSSL_FUNC_core_get_libctx
	.local	c_gettable_params
	.comm	c_gettable_params,8,8
	.local	c_get_params
	.comm	c_get_params,8,8
	.section	.rodata
.LC0:
	.string	"name"
.LC1:
	.string	"version"
.LC2:
	.string	"buildinfo"
.LC3:
	.string	"status"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	deflt_param_types, @object
	.size	deflt_param_types, 200
deflt_param_types:
	.quad	.LC0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	deflt_gettable_params, @function
deflt_gettable_params:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	deflt_param_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	deflt_gettable_params, .-deflt_gettable_params
	.section	.rodata
.LC4:
	.string	"OpenSSL Default Provider"
.LC5:
	.string	"3.3.5"
	.text
	.type	deflt_get_params, @function
deflt_get_params:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	call	ossl_prov_is_running@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L11
.L14:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	deflt_get_params, .-deflt_get_params
	.section	.rodata
	.align 8
.LC6:
	.string	"SHA1:SHA-1:SSL3-SHA1:1.3.14.3.2.26"
.LC7:
	.string	"provider=default"
	.align 8
.LC8:
	.string	"SHA2-224:SHA-224:SHA224:2.16.840.1.101.3.4.2.4"
	.align 8
.LC9:
	.string	"SHA2-256:SHA-256:SHA256:2.16.840.1.101.3.4.2.1"
	.align 8
.LC10:
	.string	"SHA2-256/192:SHA-256/192:SHA256-192"
	.align 8
.LC11:
	.string	"SHA2-384:SHA-384:SHA384:2.16.840.1.101.3.4.2.2"
	.align 8
.LC12:
	.string	"SHA2-512:SHA-512:SHA512:2.16.840.1.101.3.4.2.3"
	.align 8
.LC13:
	.string	"SHA2-512/224:SHA-512/224:SHA512-224:2.16.840.1.101.3.4.2.5"
	.align 8
.LC14:
	.string	"SHA2-512/256:SHA-512/256:SHA512-256:2.16.840.1.101.3.4.2.6"
	.align 8
.LC15:
	.string	"SHA3-224:2.16.840.1.101.3.4.2.7"
	.align 8
.LC16:
	.string	"SHA3-256:2.16.840.1.101.3.4.2.8"
	.align 8
.LC17:
	.string	"SHA3-384:2.16.840.1.101.3.4.2.9"
	.align 8
.LC18:
	.string	"SHA3-512:2.16.840.1.101.3.4.2.10"
.LC19:
	.string	"KECCAK-224"
.LC20:
	.string	"KECCAK-256"
.LC21:
	.string	"KECCAK-384"
.LC22:
	.string	"KECCAK-512"
	.align 8
.LC23:
	.string	"KECCAK-KMAC-128:KECCAK-KMAC128"
	.align 8
.LC24:
	.string	"KECCAK-KMAC-256:KECCAK-KMAC256"
	.align 8
.LC25:
	.string	"SHAKE-128:SHAKE128:2.16.840.1.101.3.4.2.11"
	.align 8
.LC26:
	.string	"SHAKE-256:SHAKE256:2.16.840.1.101.3.4.2.12"
	.align 8
.LC27:
	.string	"BLAKE2S-256:BLAKE2s256:1.3.6.1.4.1.1722.12.2.2.8"
	.align 8
.LC28:
	.string	"BLAKE2B-512:BLAKE2b512:1.3.6.1.4.1.1722.12.2.1.16"
.LC29:
	.string	"SM3:1.2.156.10197.1.401"
	.align 8
.LC30:
	.string	"MD5:SSL3-MD5:1.2.840.113549.2.5"
.LC31:
	.string	"MD5-SHA1"
	.align 8
.LC32:
	.string	"RIPEMD-160:RIPEMD160:RIPEMD:RMD160:1.3.36.3.2.1"
.LC33:
	.string	"NULL"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	deflt_digests, @object
	.size	deflt_digests, 896
deflt_digests:
	.quad	.LC6
	.quad	.LC7
	.quad	ossl_sha1_functions
	.zero	8
	.quad	.LC8
	.quad	.LC7
	.quad	ossl_sha224_functions
	.zero	8
	.quad	.LC9
	.quad	.LC7
	.quad	ossl_sha256_functions
	.zero	8
	.quad	.LC10
	.quad	.LC7
	.quad	ossl_sha256_192_functions
	.zero	8
	.quad	.LC11
	.quad	.LC7
	.quad	ossl_sha384_functions
	.zero	8
	.quad	.LC12
	.quad	.LC7
	.quad	ossl_sha512_functions
	.zero	8
	.quad	.LC13
	.quad	.LC7
	.quad	ossl_sha512_224_functions
	.zero	8
	.quad	.LC14
	.quad	.LC7
	.quad	ossl_sha512_256_functions
	.zero	8
	.quad	.LC15
	.quad	.LC7
	.quad	ossl_sha3_224_functions
	.zero	8
	.quad	.LC16
	.quad	.LC7
	.quad	ossl_sha3_256_functions
	.zero	8
	.quad	.LC17
	.quad	.LC7
	.quad	ossl_sha3_384_functions
	.zero	8
	.quad	.LC18
	.quad	.LC7
	.quad	ossl_sha3_512_functions
	.zero	8
	.quad	.LC19
	.quad	.LC7
	.quad	ossl_keccak_224_functions
	.zero	8
	.quad	.LC20
	.quad	.LC7
	.quad	ossl_keccak_256_functions
	.zero	8
	.quad	.LC21
	.quad	.LC7
	.quad	ossl_keccak_384_functions
	.zero	8
	.quad	.LC22
	.quad	.LC7
	.quad	ossl_keccak_512_functions
	.zero	8
	.quad	.LC23
	.quad	.LC7
	.quad	ossl_keccak_kmac_128_functions
	.zero	8
	.quad	.LC24
	.quad	.LC7
	.quad	ossl_keccak_kmac_256_functions
	.zero	8
	.quad	.LC25
	.quad	.LC7
	.quad	ossl_shake_128_functions
	.zero	8
	.quad	.LC26
	.quad	.LC7
	.quad	ossl_shake_256_functions
	.zero	8
	.quad	.LC27
	.quad	.LC7
	.quad	ossl_blake2s256_functions
	.zero	8
	.quad	.LC28
	.quad	.LC7
	.quad	ossl_blake2b512_functions
	.zero	8
	.quad	.LC29
	.quad	.LC7
	.quad	ossl_sm3_functions
	.zero	8
	.quad	.LC30
	.quad	.LC7
	.quad	ossl_md5_functions
	.zero	8
	.quad	.LC31
	.quad	.LC7
	.quad	ossl_md5_sha1_functions
	.zero	8
	.quad	.LC32
	.quad	.LC7
	.quad	ossl_ripemd160_functions
	.zero	8
	.quad	.LC33
	.quad	.LC7
	.quad	ossl_nullmd_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC34:
	.string	"AES-256-ECB:2.16.840.1.101.3.4.1.41"
	.align 8
.LC35:
	.string	"AES-192-ECB:2.16.840.1.101.3.4.1.21"
	.align 8
.LC36:
	.string	"AES-128-ECB:2.16.840.1.101.3.4.1.1"
	.align 8
.LC37:
	.string	"AES-256-CBC:AES256:2.16.840.1.101.3.4.1.42"
	.align 8
.LC38:
	.string	"AES-192-CBC:AES192:2.16.840.1.101.3.4.1.22"
	.align 8
.LC39:
	.string	"AES-128-CBC:AES128:2.16.840.1.101.3.4.1.2"
.LC40:
	.string	"AES-128-CBC-CTS"
.LC41:
	.string	"AES-192-CBC-CTS"
.LC42:
	.string	"AES-256-CBC-CTS"
	.align 8
.LC43:
	.string	"AES-256-OFB:2.16.840.1.101.3.4.1.43"
	.align 8
.LC44:
	.string	"AES-192-OFB:2.16.840.1.101.3.4.1.23"
	.align 8
.LC45:
	.string	"AES-128-OFB:2.16.840.1.101.3.4.1.3"
	.align 8
.LC46:
	.string	"AES-256-CFB:2.16.840.1.101.3.4.1.44"
	.align 8
.LC47:
	.string	"AES-192-CFB:2.16.840.1.101.3.4.1.24"
	.align 8
.LC48:
	.string	"AES-128-CFB:2.16.840.1.101.3.4.1.4"
.LC49:
	.string	"AES-256-CFB1"
.LC50:
	.string	"AES-192-CFB1"
.LC51:
	.string	"AES-128-CFB1"
.LC52:
	.string	"AES-256-CFB8"
.LC53:
	.string	"AES-192-CFB8"
.LC54:
	.string	"AES-128-CFB8"
.LC55:
	.string	"AES-256-CTR"
.LC56:
	.string	"AES-192-CTR"
.LC57:
	.string	"AES-128-CTR"
	.align 8
.LC58:
	.string	"AES-256-XTS:1.3.111.2.1619.0.1.2"
	.align 8
.LC59:
	.string	"AES-128-XTS:1.3.111.2.1619.0.1.1"
.LC60:
	.string	"AES-256-OCB"
.LC61:
	.string	"AES-192-OCB"
.LC62:
	.string	"AES-128-OCB"
.LC63:
	.string	"AES-128-SIV"
.LC64:
	.string	"AES-192-SIV"
.LC65:
	.string	"AES-256-SIV"
.LC66:
	.string	"AES-128-GCM-SIV"
.LC67:
	.string	"AES-192-GCM-SIV"
.LC68:
	.string	"AES-256-GCM-SIV"
	.align 8
.LC69:
	.string	"AES-256-GCM:id-aes256-GCM:2.16.840.1.101.3.4.1.46"
	.align 8
.LC70:
	.string	"AES-192-GCM:id-aes192-GCM:2.16.840.1.101.3.4.1.26"
	.align 8
.LC71:
	.string	"AES-128-GCM:id-aes128-GCM:2.16.840.1.101.3.4.1.6"
	.align 8
.LC72:
	.string	"AES-256-CCM:id-aes256-CCM:2.16.840.1.101.3.4.1.47"
	.align 8
.LC73:
	.string	"AES-192-CCM:id-aes192-CCM:2.16.840.1.101.3.4.1.27"
	.align 8
.LC74:
	.string	"AES-128-CCM:id-aes128-CCM:2.16.840.1.101.3.4.1.7"
	.align 8
.LC75:
	.string	"AES-256-WRAP:id-aes256-wrap:AES256-WRAP:2.16.840.1.101.3.4.1.45"
	.align 8
.LC76:
	.string	"AES-192-WRAP:id-aes192-wrap:AES192-WRAP:2.16.840.1.101.3.4.1.25"
	.align 8
.LC77:
	.string	"AES-128-WRAP:id-aes128-wrap:AES128-WRAP:2.16.840.1.101.3.4.1.5"
	.align 8
.LC78:
	.string	"AES-256-WRAP-PAD:id-aes256-wrap-pad:AES256-WRAP-PAD:2.16.840.1.101.3.4.1.48"
	.align 8
.LC79:
	.string	"AES-192-WRAP-PAD:id-aes192-wrap-pad:AES192-WRAP-PAD:2.16.840.1.101.3.4.1.28"
	.align 8
.LC80:
	.string	"AES-128-WRAP-PAD:id-aes128-wrap-pad:AES128-WRAP-PAD:2.16.840.1.101.3.4.1.8"
	.align 8
.LC81:
	.string	"AES-256-WRAP-INV:AES256-WRAP-INV"
	.align 8
.LC82:
	.string	"AES-192-WRAP-INV:AES192-WRAP-INV"
	.align 8
.LC83:
	.string	"AES-128-WRAP-INV:AES128-WRAP-INV"
	.align 8
.LC84:
	.string	"AES-256-WRAP-PAD-INV:AES256-WRAP-PAD-INV"
	.align 8
.LC85:
	.string	"AES-192-WRAP-PAD-INV:AES192-WRAP-PAD-INV"
	.align 8
.LC86:
	.string	"AES-128-WRAP-PAD-INV:AES128-WRAP-PAD-INV"
.LC87:
	.string	"AES-128-CBC-HMAC-SHA1"
.LC88:
	.string	"AES-256-CBC-HMAC-SHA1"
.LC89:
	.string	"AES-128-CBC-HMAC-SHA256"
.LC90:
	.string	"AES-256-CBC-HMAC-SHA256"
	.align 8
.LC91:
	.string	"ARIA-256-GCM:1.2.410.200046.1.1.36"
	.align 8
.LC92:
	.string	"ARIA-192-GCM:1.2.410.200046.1.1.35"
	.align 8
.LC93:
	.string	"ARIA-128-GCM:1.2.410.200046.1.1.34"
	.align 8
.LC94:
	.string	"ARIA-256-CCM:1.2.410.200046.1.1.39"
	.align 8
.LC95:
	.string	"ARIA-192-CCM:1.2.410.200046.1.1.38"
	.align 8
.LC96:
	.string	"ARIA-128-CCM:1.2.410.200046.1.1.37"
	.align 8
.LC97:
	.string	"ARIA-256-ECB:1.2.410.200046.1.1.11"
	.align 8
.LC98:
	.string	"ARIA-192-ECB:1.2.410.200046.1.1.6"
	.align 8
.LC99:
	.string	"ARIA-128-ECB:1.2.410.200046.1.1.1"
	.align 8
.LC100:
	.string	"ARIA-256-CBC:ARIA256:1.2.410.200046.1.1.12"
	.align 8
.LC101:
	.string	"ARIA-192-CBC:ARIA192:1.2.410.200046.1.1.7"
	.align 8
.LC102:
	.string	"ARIA-128-CBC:ARIA128:1.2.410.200046.1.1.2"
	.align 8
.LC103:
	.string	"ARIA-256-OFB:1.2.410.200046.1.1.14"
	.align 8
.LC104:
	.string	"ARIA-192-OFB:1.2.410.200046.1.1.9"
	.align 8
.LC105:
	.string	"ARIA-128-OFB:1.2.410.200046.1.1.4"
	.align 8
.LC106:
	.string	"ARIA-256-CFB:1.2.410.200046.1.1.13"
	.align 8
.LC107:
	.string	"ARIA-192-CFB:1.2.410.200046.1.1.8"
	.align 8
.LC108:
	.string	"ARIA-128-CFB:1.2.410.200046.1.1.3"
.LC109:
	.string	"ARIA-256-CFB1"
.LC110:
	.string	"ARIA-192-CFB1"
.LC111:
	.string	"ARIA-128-CFB1"
.LC112:
	.string	"ARIA-256-CFB8"
.LC113:
	.string	"ARIA-192-CFB8"
.LC114:
	.string	"ARIA-128-CFB8"
	.align 8
.LC115:
	.string	"ARIA-256-CTR:1.2.410.200046.1.1.15"
	.align 8
.LC116:
	.string	"ARIA-192-CTR:1.2.410.200046.1.1.10"
	.align 8
.LC117:
	.string	"ARIA-128-CTR:1.2.410.200046.1.1.5"
	.align 8
.LC118:
	.string	"CAMELLIA-256-ECB:0.3.4401.5.3.1.9.41"
	.align 8
.LC119:
	.string	"CAMELLIA-192-ECB:0.3.4401.5.3.1.9.21"
	.align 8
.LC120:
	.string	"CAMELLIA-128-ECB:0.3.4401.5.3.1.9.1"
	.align 8
.LC121:
	.string	"CAMELLIA-256-CBC:CAMELLIA256:1.2.392.200011.61.1.1.1.4"
	.align 8
.LC122:
	.string	"CAMELLIA-192-CBC:CAMELLIA192:1.2.392.200011.61.1.1.1.3"
	.align 8
.LC123:
	.string	"CAMELLIA-128-CBC:CAMELLIA128:1.2.392.200011.61.1.1.1.2"
.LC124:
	.string	"CAMELLIA-128-CBC-CTS"
.LC125:
	.string	"CAMELLIA-192-CBC-CTS"
.LC126:
	.string	"CAMELLIA-256-CBC-CTS"
	.align 8
.LC127:
	.string	"CAMELLIA-256-OFB:0.3.4401.5.3.1.9.43"
	.align 8
.LC128:
	.string	"CAMELLIA-192-OFB:0.3.4401.5.3.1.9.23"
	.align 8
.LC129:
	.string	"CAMELLIA-128-OFB:0.3.4401.5.3.1.9.3"
	.align 8
.LC130:
	.string	"CAMELLIA-256-CFB:0.3.4401.5.3.1.9.44"
	.align 8
.LC131:
	.string	"CAMELLIA-192-CFB:0.3.4401.5.3.1.9.24"
	.align 8
.LC132:
	.string	"CAMELLIA-128-CFB:0.3.4401.5.3.1.9.4"
.LC133:
	.string	"CAMELLIA-256-CFB1"
.LC134:
	.string	"CAMELLIA-192-CFB1"
.LC135:
	.string	"CAMELLIA-128-CFB1"
.LC136:
	.string	"CAMELLIA-256-CFB8"
.LC137:
	.string	"CAMELLIA-192-CFB8"
.LC138:
	.string	"CAMELLIA-128-CFB8"
	.align 8
.LC139:
	.string	"CAMELLIA-256-CTR:0.3.4401.5.3.1.9.49"
	.align 8
.LC140:
	.string	"CAMELLIA-192-CTR:0.3.4401.5.3.1.9.29"
	.align 8
.LC141:
	.string	"CAMELLIA-128-CTR:0.3.4401.5.3.1.9.9"
.LC142:
	.string	"DES-EDE3-ECB:DES-EDE3"
	.align 8
.LC143:
	.string	"DES-EDE3-CBC:DES3:1.2.840.113549.3.7"
.LC144:
	.string	"DES-EDE3-OFB"
.LC145:
	.string	"DES-EDE3-CFB"
.LC146:
	.string	"DES-EDE3-CFB8"
.LC147:
	.string	"DES-EDE3-CFB1"
	.align 8
.LC148:
	.string	"DES3-WRAP:id-smime-alg-CMS3DESwrap:1.2.840.113549.1.9.16.3.6"
	.align 8
.LC149:
	.string	"DES-EDE-ECB:DES-EDE:1.3.14.3.2.17"
.LC150:
	.string	"DES-EDE-CBC"
.LC151:
	.string	"DES-EDE-OFB"
.LC152:
	.string	"DES-EDE-CFB"
.LC153:
	.string	"SM4-GCM:1.2.156.10197.1.104.8"
.LC154:
	.string	"SM4-CCM:1.2.156.10197.1.104.9"
.LC155:
	.string	"SM4-ECB:1.2.156.10197.1.104.1"
	.align 8
.LC156:
	.string	"SM4-CBC:SM4:1.2.156.10197.1.104.2"
.LC157:
	.string	"SM4-CTR:1.2.156.10197.1.104.7"
	.align 8
.LC158:
	.string	"SM4-OFB:SM4-OFB128:1.2.156.10197.1.104.3"
	.align 8
.LC159:
	.string	"SM4-CFB:SM4-CFB128:1.2.156.10197.1.104.4"
	.align 8
.LC160:
	.string	"SM4-XTS:1.2.156.10197.1.104.10"
.LC161:
	.string	"ChaCha20"
.LC162:
	.string	"ChaCha20-Poly1305"
	.section	.data.rel.ro
	.align 32
	.type	deflt_ciphers, @object
	.size	deflt_ciphers, 5240
deflt_ciphers:
	.quad	.LC33
	.quad	.LC7
	.quad	ossl_null_functions
	.zero	8
	.quad	0
	.quad	.LC34
	.quad	.LC7
	.quad	ossl_aes256ecb_functions
	.zero	8
	.quad	0
	.quad	.LC35
	.quad	.LC7
	.quad	ossl_aes192ecb_functions
	.zero	8
	.quad	0
	.quad	.LC36
	.quad	.LC7
	.quad	ossl_aes128ecb_functions
	.zero	8
	.quad	0
	.quad	.LC37
	.quad	.LC7
	.quad	ossl_aes256cbc_functions
	.zero	8
	.quad	0
	.quad	.LC38
	.quad	.LC7
	.quad	ossl_aes192cbc_functions
	.zero	8
	.quad	0
	.quad	.LC39
	.quad	.LC7
	.quad	ossl_aes128cbc_functions
	.zero	8
	.quad	0
	.quad	.LC40
	.quad	.LC7
	.quad	ossl_aes128cbc_cts_functions
	.zero	8
	.quad	0
	.quad	.LC41
	.quad	.LC7
	.quad	ossl_aes192cbc_cts_functions
	.zero	8
	.quad	0
	.quad	.LC42
	.quad	.LC7
	.quad	ossl_aes256cbc_cts_functions
	.zero	8
	.quad	0
	.quad	.LC43
	.quad	.LC7
	.quad	ossl_aes256ofb_functions
	.zero	8
	.quad	0
	.quad	.LC44
	.quad	.LC7
	.quad	ossl_aes192ofb_functions
	.zero	8
	.quad	0
	.quad	.LC45
	.quad	.LC7
	.quad	ossl_aes128ofb_functions
	.zero	8
	.quad	0
	.quad	.LC46
	.quad	.LC7
	.quad	ossl_aes256cfb_functions
	.zero	8
	.quad	0
	.quad	.LC47
	.quad	.LC7
	.quad	ossl_aes192cfb_functions
	.zero	8
	.quad	0
	.quad	.LC48
	.quad	.LC7
	.quad	ossl_aes128cfb_functions
	.zero	8
	.quad	0
	.quad	.LC49
	.quad	.LC7
	.quad	ossl_aes256cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC50
	.quad	.LC7
	.quad	ossl_aes192cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC51
	.quad	.LC7
	.quad	ossl_aes128cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC52
	.quad	.LC7
	.quad	ossl_aes256cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC53
	.quad	.LC7
	.quad	ossl_aes192cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC54
	.quad	.LC7
	.quad	ossl_aes128cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC55
	.quad	.LC7
	.quad	ossl_aes256ctr_functions
	.zero	8
	.quad	0
	.quad	.LC56
	.quad	.LC7
	.quad	ossl_aes192ctr_functions
	.zero	8
	.quad	0
	.quad	.LC57
	.quad	.LC7
	.quad	ossl_aes128ctr_functions
	.zero	8
	.quad	0
	.quad	.LC58
	.quad	.LC7
	.quad	ossl_aes256xts_functions
	.zero	8
	.quad	0
	.quad	.LC59
	.quad	.LC7
	.quad	ossl_aes128xts_functions
	.zero	8
	.quad	0
	.quad	.LC60
	.quad	.LC7
	.quad	ossl_aes256ocb_functions
	.zero	8
	.quad	0
	.quad	.LC61
	.quad	.LC7
	.quad	ossl_aes192ocb_functions
	.zero	8
	.quad	0
	.quad	.LC62
	.quad	.LC7
	.quad	ossl_aes128ocb_functions
	.zero	8
	.quad	0
	.quad	.LC63
	.quad	.LC7
	.quad	ossl_aes128siv_functions
	.zero	8
	.quad	0
	.quad	.LC64
	.quad	.LC7
	.quad	ossl_aes192siv_functions
	.zero	8
	.quad	0
	.quad	.LC65
	.quad	.LC7
	.quad	ossl_aes256siv_functions
	.zero	8
	.quad	0
	.quad	.LC66
	.quad	.LC7
	.quad	ossl_aes128gcm_siv_functions
	.zero	8
	.quad	0
	.quad	.LC67
	.quad	.LC7
	.quad	ossl_aes192gcm_siv_functions
	.zero	8
	.quad	0
	.quad	.LC68
	.quad	.LC7
	.quad	ossl_aes256gcm_siv_functions
	.zero	8
	.quad	0
	.quad	.LC69
	.quad	.LC7
	.quad	ossl_aes256gcm_functions
	.zero	8
	.quad	0
	.quad	.LC70
	.quad	.LC7
	.quad	ossl_aes192gcm_functions
	.zero	8
	.quad	0
	.quad	.LC71
	.quad	.LC7
	.quad	ossl_aes128gcm_functions
	.zero	8
	.quad	0
	.quad	.LC72
	.quad	.LC7
	.quad	ossl_aes256ccm_functions
	.zero	8
	.quad	0
	.quad	.LC73
	.quad	.LC7
	.quad	ossl_aes192ccm_functions
	.zero	8
	.quad	0
	.quad	.LC74
	.quad	.LC7
	.quad	ossl_aes128ccm_functions
	.zero	8
	.quad	0
	.quad	.LC75
	.quad	.LC7
	.quad	ossl_aes256wrap_functions
	.zero	8
	.quad	0
	.quad	.LC76
	.quad	.LC7
	.quad	ossl_aes192wrap_functions
	.zero	8
	.quad	0
	.quad	.LC77
	.quad	.LC7
	.quad	ossl_aes128wrap_functions
	.zero	8
	.quad	0
	.quad	.LC78
	.quad	.LC7
	.quad	ossl_aes256wrappad_functions
	.zero	8
	.quad	0
	.quad	.LC79
	.quad	.LC7
	.quad	ossl_aes192wrappad_functions
	.zero	8
	.quad	0
	.quad	.LC80
	.quad	.LC7
	.quad	ossl_aes128wrappad_functions
	.zero	8
	.quad	0
	.quad	.LC81
	.quad	.LC7
	.quad	ossl_aes256wrapinv_functions
	.zero	8
	.quad	0
	.quad	.LC82
	.quad	.LC7
	.quad	ossl_aes192wrapinv_functions
	.zero	8
	.quad	0
	.quad	.LC83
	.quad	.LC7
	.quad	ossl_aes128wrapinv_functions
	.zero	8
	.quad	0
	.quad	.LC84
	.quad	.LC7
	.quad	ossl_aes256wrappadinv_functions
	.zero	8
	.quad	0
	.quad	.LC85
	.quad	.LC7
	.quad	ossl_aes192wrappadinv_functions
	.zero	8
	.quad	0
	.quad	.LC86
	.quad	.LC7
	.quad	ossl_aes128wrappadinv_functions
	.zero	8
	.quad	0
	.quad	.LC87
	.quad	.LC7
	.quad	ossl_aes128cbc_hmac_sha1_functions
	.zero	8
	.quad	ossl_cipher_capable_aes_cbc_hmac_sha1
	.quad	.LC88
	.quad	.LC7
	.quad	ossl_aes256cbc_hmac_sha1_functions
	.zero	8
	.quad	ossl_cipher_capable_aes_cbc_hmac_sha1
	.quad	.LC89
	.quad	.LC7
	.quad	ossl_aes128cbc_hmac_sha256_functions
	.zero	8
	.quad	ossl_cipher_capable_aes_cbc_hmac_sha256
	.quad	.LC90
	.quad	.LC7
	.quad	ossl_aes256cbc_hmac_sha256_functions
	.zero	8
	.quad	ossl_cipher_capable_aes_cbc_hmac_sha256
	.quad	.LC91
	.quad	.LC7
	.quad	ossl_aria256gcm_functions
	.zero	8
	.quad	0
	.quad	.LC92
	.quad	.LC7
	.quad	ossl_aria192gcm_functions
	.zero	8
	.quad	0
	.quad	.LC93
	.quad	.LC7
	.quad	ossl_aria128gcm_functions
	.zero	8
	.quad	0
	.quad	.LC94
	.quad	.LC7
	.quad	ossl_aria256ccm_functions
	.zero	8
	.quad	0
	.quad	.LC95
	.quad	.LC7
	.quad	ossl_aria192ccm_functions
	.zero	8
	.quad	0
	.quad	.LC96
	.quad	.LC7
	.quad	ossl_aria128ccm_functions
	.zero	8
	.quad	0
	.quad	.LC97
	.quad	.LC7
	.quad	ossl_aria256ecb_functions
	.zero	8
	.quad	0
	.quad	.LC98
	.quad	.LC7
	.quad	ossl_aria192ecb_functions
	.zero	8
	.quad	0
	.quad	.LC99
	.quad	.LC7
	.quad	ossl_aria128ecb_functions
	.zero	8
	.quad	0
	.quad	.LC100
	.quad	.LC7
	.quad	ossl_aria256cbc_functions
	.zero	8
	.quad	0
	.quad	.LC101
	.quad	.LC7
	.quad	ossl_aria192cbc_functions
	.zero	8
	.quad	0
	.quad	.LC102
	.quad	.LC7
	.quad	ossl_aria128cbc_functions
	.zero	8
	.quad	0
	.quad	.LC103
	.quad	.LC7
	.quad	ossl_aria256ofb_functions
	.zero	8
	.quad	0
	.quad	.LC104
	.quad	.LC7
	.quad	ossl_aria192ofb_functions
	.zero	8
	.quad	0
	.quad	.LC105
	.quad	.LC7
	.quad	ossl_aria128ofb_functions
	.zero	8
	.quad	0
	.quad	.LC106
	.quad	.LC7
	.quad	ossl_aria256cfb_functions
	.zero	8
	.quad	0
	.quad	.LC107
	.quad	.LC7
	.quad	ossl_aria192cfb_functions
	.zero	8
	.quad	0
	.quad	.LC108
	.quad	.LC7
	.quad	ossl_aria128cfb_functions
	.zero	8
	.quad	0
	.quad	.LC109
	.quad	.LC7
	.quad	ossl_aria256cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC110
	.quad	.LC7
	.quad	ossl_aria192cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC111
	.quad	.LC7
	.quad	ossl_aria128cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC112
	.quad	.LC7
	.quad	ossl_aria256cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC113
	.quad	.LC7
	.quad	ossl_aria192cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC114
	.quad	.LC7
	.quad	ossl_aria128cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC115
	.quad	.LC7
	.quad	ossl_aria256ctr_functions
	.zero	8
	.quad	0
	.quad	.LC116
	.quad	.LC7
	.quad	ossl_aria192ctr_functions
	.zero	8
	.quad	0
	.quad	.LC117
	.quad	.LC7
	.quad	ossl_aria128ctr_functions
	.zero	8
	.quad	0
	.quad	.LC118
	.quad	.LC7
	.quad	ossl_camellia256ecb_functions
	.zero	8
	.quad	0
	.quad	.LC119
	.quad	.LC7
	.quad	ossl_camellia192ecb_functions
	.zero	8
	.quad	0
	.quad	.LC120
	.quad	.LC7
	.quad	ossl_camellia128ecb_functions
	.zero	8
	.quad	0
	.quad	.LC121
	.quad	.LC7
	.quad	ossl_camellia256cbc_functions
	.zero	8
	.quad	0
	.quad	.LC122
	.quad	.LC7
	.quad	ossl_camellia192cbc_functions
	.zero	8
	.quad	0
	.quad	.LC123
	.quad	.LC7
	.quad	ossl_camellia128cbc_functions
	.zero	8
	.quad	0
	.quad	.LC124
	.quad	.LC7
	.quad	ossl_camellia128cbc_cts_functions
	.zero	8
	.quad	0
	.quad	.LC125
	.quad	.LC7
	.quad	ossl_camellia192cbc_cts_functions
	.zero	8
	.quad	0
	.quad	.LC126
	.quad	.LC7
	.quad	ossl_camellia256cbc_cts_functions
	.zero	8
	.quad	0
	.quad	.LC127
	.quad	.LC7
	.quad	ossl_camellia256ofb_functions
	.zero	8
	.quad	0
	.quad	.LC128
	.quad	.LC7
	.quad	ossl_camellia192ofb_functions
	.zero	8
	.quad	0
	.quad	.LC129
	.quad	.LC7
	.quad	ossl_camellia128ofb_functions
	.zero	8
	.quad	0
	.quad	.LC130
	.quad	.LC7
	.quad	ossl_camellia256cfb_functions
	.zero	8
	.quad	0
	.quad	.LC131
	.quad	.LC7
	.quad	ossl_camellia192cfb_functions
	.zero	8
	.quad	0
	.quad	.LC132
	.quad	.LC7
	.quad	ossl_camellia128cfb_functions
	.zero	8
	.quad	0
	.quad	.LC133
	.quad	.LC7
	.quad	ossl_camellia256cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC134
	.quad	.LC7
	.quad	ossl_camellia192cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC135
	.quad	.LC7
	.quad	ossl_camellia128cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC136
	.quad	.LC7
	.quad	ossl_camellia256cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC137
	.quad	.LC7
	.quad	ossl_camellia192cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC138
	.quad	.LC7
	.quad	ossl_camellia128cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC139
	.quad	.LC7
	.quad	ossl_camellia256ctr_functions
	.zero	8
	.quad	0
	.quad	.LC140
	.quad	.LC7
	.quad	ossl_camellia192ctr_functions
	.zero	8
	.quad	0
	.quad	.LC141
	.quad	.LC7
	.quad	ossl_camellia128ctr_functions
	.zero	8
	.quad	0
	.quad	.LC142
	.quad	.LC7
	.quad	ossl_tdes_ede3_ecb_functions
	.zero	8
	.quad	0
	.quad	.LC143
	.quad	.LC7
	.quad	ossl_tdes_ede3_cbc_functions
	.zero	8
	.quad	0
	.quad	.LC144
	.quad	.LC7
	.quad	ossl_tdes_ede3_ofb_functions
	.zero	8
	.quad	0
	.quad	.LC145
	.quad	.LC7
	.quad	ossl_tdes_ede3_cfb_functions
	.zero	8
	.quad	0
	.quad	.LC146
	.quad	.LC7
	.quad	ossl_tdes_ede3_cfb8_functions
	.zero	8
	.quad	0
	.quad	.LC147
	.quad	.LC7
	.quad	ossl_tdes_ede3_cfb1_functions
	.zero	8
	.quad	0
	.quad	.LC148
	.quad	.LC7
	.quad	ossl_tdes_wrap_cbc_functions
	.zero	8
	.quad	0
	.quad	.LC149
	.quad	.LC7
	.quad	ossl_tdes_ede2_ecb_functions
	.zero	8
	.quad	0
	.quad	.LC150
	.quad	.LC7
	.quad	ossl_tdes_ede2_cbc_functions
	.zero	8
	.quad	0
	.quad	.LC151
	.quad	.LC7
	.quad	ossl_tdes_ede2_ofb_functions
	.zero	8
	.quad	0
	.quad	.LC152
	.quad	.LC7
	.quad	ossl_tdes_ede2_cfb_functions
	.zero	8
	.quad	0
	.quad	.LC153
	.quad	.LC7
	.quad	ossl_sm4128gcm_functions
	.zero	8
	.quad	0
	.quad	.LC154
	.quad	.LC7
	.quad	ossl_sm4128ccm_functions
	.zero	8
	.quad	0
	.quad	.LC155
	.quad	.LC7
	.quad	ossl_sm4128ecb_functions
	.zero	8
	.quad	0
	.quad	.LC156
	.quad	.LC7
	.quad	ossl_sm4128cbc_functions
	.zero	8
	.quad	0
	.quad	.LC157
	.quad	.LC7
	.quad	ossl_sm4128ctr_functions
	.zero	8
	.quad	0
	.quad	.LC158
	.quad	.LC7
	.quad	ossl_sm4128ofb128_functions
	.zero	8
	.quad	0
	.quad	.LC159
	.quad	.LC7
	.quad	ossl_sm4128cfb128_functions
	.zero	8
	.quad	0
	.quad	.LC160
	.quad	.LC7
	.quad	ossl_sm4128xts_functions
	.zero	8
	.quad	0
	.quad	.LC161
	.quad	.LC7
	.quad	ossl_chacha20_functions
	.zero	8
	.quad	0
	.quad	.LC162
	.quad	.LC7
	.quad	ossl_chacha20_ossl_poly1305_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.quad	0
	.local	exported_ciphers
	.comm	exported_ciphers,4192,32
	.section	.rodata
	.align 8
.LC163:
	.string	"BLAKE2BMAC:1.3.6.1.4.1.1722.12.2.1"
	.align 8
.LC164:
	.string	"BLAKE2SMAC:1.3.6.1.4.1.1722.12.2.2"
.LC165:
	.string	"CMAC"
.LC166:
	.string	"GMAC:1.0.9797.3.4"
.LC167:
	.string	"HMAC"
	.align 8
.LC168:
	.string	"KMAC-128:KMAC128:2.16.840.1.101.3.4.2.19"
	.align 8
.LC169:
	.string	"KMAC-256:KMAC256:2.16.840.1.101.3.4.2.20"
.LC170:
	.string	"SIPHASH"
.LC171:
	.string	"POLY1305"
	.section	.data.rel.ro
	.align 32
	.type	deflt_macs, @object
	.size	deflt_macs, 320
deflt_macs:
	.quad	.LC163
	.quad	.LC7
	.quad	ossl_blake2bmac_functions
	.zero	8
	.quad	.LC164
	.quad	.LC7
	.quad	ossl_blake2smac_functions
	.zero	8
	.quad	.LC165
	.quad	.LC7
	.quad	ossl_cmac_functions
	.zero	8
	.quad	.LC166
	.quad	.LC7
	.quad	ossl_gmac_functions
	.zero	8
	.quad	.LC167
	.quad	.LC7
	.quad	ossl_hmac_functions
	.zero	8
	.quad	.LC168
	.quad	.LC7
	.quad	ossl_kmac128_functions
	.zero	8
	.quad	.LC169
	.quad	.LC7
	.quad	ossl_kmac256_functions
	.zero	8
	.quad	.LC170
	.quad	.LC7
	.quad	ossl_siphash_functions
	.zero	8
	.quad	.LC171
	.quad	.LC7
	.quad	ossl_poly1305_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC172:
	.string	"HKDF"
.LC173:
	.string	"TLS13-KDF"
.LC174:
	.string	"SSKDF"
.LC175:
	.string	"PBKDF2:1.2.840.113549.1.5.12"
.LC176:
	.string	"PKCS12KDF"
.LC177:
	.string	"SSHKDF"
.LC178:
	.string	"X963KDF:X942KDF-CONCAT"
.LC179:
	.string	"TLS1-PRF"
.LC180:
	.string	"KBKDF"
.LC181:
	.string	"X942KDF-ASN1:X942KDF"
	.align 8
.LC182:
	.string	"SCRYPT:id-scrypt:1.3.6.1.4.1.11591.4.11"
.LC183:
	.string	"KRB5KDF"
.LC184:
	.string	"HMAC-DRBG-KDF"
.LC185:
	.string	"ARGON2I"
.LC186:
	.string	"ARGON2D"
.LC187:
	.string	"ARGON2ID"
	.section	.data.rel.ro
	.align 32
	.type	deflt_kdfs, @object
	.size	deflt_kdfs, 544
deflt_kdfs:
	.quad	.LC172
	.quad	.LC7
	.quad	ossl_kdf_hkdf_functions
	.zero	8
	.quad	.LC173
	.quad	.LC7
	.quad	ossl_kdf_tls1_3_kdf_functions
	.zero	8
	.quad	.LC174
	.quad	.LC7
	.quad	ossl_kdf_sskdf_functions
	.zero	8
	.quad	.LC175
	.quad	.LC7
	.quad	ossl_kdf_pbkdf2_functions
	.zero	8
	.quad	.LC176
	.quad	.LC7
	.quad	ossl_kdf_pkcs12_functions
	.zero	8
	.quad	.LC177
	.quad	.LC7
	.quad	ossl_kdf_sshkdf_functions
	.zero	8
	.quad	.LC178
	.quad	.LC7
	.quad	ossl_kdf_x963_kdf_functions
	.zero	8
	.quad	.LC179
	.quad	.LC7
	.quad	ossl_kdf_tls1_prf_functions
	.zero	8
	.quad	.LC180
	.quad	.LC7
	.quad	ossl_kdf_kbkdf_functions
	.zero	8
	.quad	.LC181
	.quad	.LC7
	.quad	ossl_kdf_x942_kdf_functions
	.zero	8
	.quad	.LC182
	.quad	.LC7
	.quad	ossl_kdf_scrypt_functions
	.zero	8
	.quad	.LC183
	.quad	.LC7
	.quad	ossl_kdf_krb5kdf_functions
	.zero	8
	.quad	.LC184
	.quad	.LC7
	.quad	ossl_kdf_hmac_drbg_functions
	.zero	8
	.quad	.LC185
	.quad	.LC7
	.quad	ossl_kdf_argon2i_functions
	.zero	8
	.quad	.LC186
	.quad	.LC7
	.quad	ossl_kdf_argon2d_functions
	.zero	8
	.quad	.LC187
	.quad	.LC7
	.quad	ossl_kdf_argon2id_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC188:
	.string	"DH:dhKeyAgreement:1.2.840.113549.1.3.1"
.LC189:
	.string	"ECDH"
.LC190:
	.string	"X25519:1.3.101.110"
.LC191:
	.string	"X448:1.3.101.111"
	.section	.data.rel.ro
	.align 32
	.type	deflt_keyexch, @object
	.size	deflt_keyexch, 256
deflt_keyexch:
	.quad	.LC188
	.quad	.LC7
	.quad	ossl_dh_keyexch_functions
	.zero	8
	.quad	.LC189
	.quad	.LC7
	.quad	ossl_ecdh_keyexch_functions
	.zero	8
	.quad	.LC190
	.quad	.LC7
	.quad	ossl_x25519_keyexch_functions
	.zero	8
	.quad	.LC191
	.quad	.LC7
	.quad	ossl_x448_keyexch_functions
	.zero	8
	.quad	.LC179
	.quad	.LC7
	.quad	ossl_kdf_tls1_prf_keyexch_functions
	.zero	8
	.quad	.LC172
	.quad	.LC7
	.quad	ossl_kdf_hkdf_keyexch_functions
	.zero	8
	.quad	.LC182
	.quad	.LC7
	.quad	ossl_kdf_scrypt_keyexch_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC192:
	.string	"CTR-DRBG"
.LC193:
	.string	"HASH-DRBG"
.LC194:
	.string	"HMAC-DRBG"
.LC195:
	.string	"SEED-SRC"
.LC196:
	.string	"TEST-RAND"
	.section	.data.rel.ro
	.align 32
	.type	deflt_rands, @object
	.size	deflt_rands, 192
deflt_rands:
	.quad	.LC192
	.quad	.LC7
	.quad	ossl_drbg_ctr_functions
	.zero	8
	.quad	.LC193
	.quad	.LC7
	.quad	ossl_drbg_hash_functions
	.zero	8
	.quad	.LC194
	.quad	.LC7
	.quad	ossl_drbg_ossl_hmac_functions
	.zero	8
	.quad	.LC195
	.quad	.LC7
	.quad	ossl_seed_src_functions
	.zero	8
	.quad	.LC196
	.quad	.LC7
	.quad	ossl_test_rng_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC197:
	.string	"DSA:dsaEncryption:1.2.840.10040.4.1"
	.align 8
.LC198:
	.string	"RSA:rsaEncryption:1.2.840.113549.1.1.1"
.LC199:
	.string	"ED25519:1.3.101.112"
.LC200:
	.string	"ED448:1.3.101.113"
.LC201:
	.string	"ECDSA"
.LC202:
	.string	"SM2:1.2.156.10197.1.301"
	.section	.data.rel.ro
	.align 32
	.type	deflt_signature, @object
	.size	deflt_signature, 352
deflt_signature:
	.quad	.LC197
	.quad	.LC7
	.quad	ossl_dsa_signature_functions
	.zero	8
	.quad	.LC198
	.quad	.LC7
	.quad	ossl_rsa_signature_functions
	.zero	8
	.quad	.LC199
	.quad	.LC7
	.quad	ossl_ed25519_signature_functions
	.zero	8
	.quad	.LC200
	.quad	.LC7
	.quad	ossl_ed448_signature_functions
	.zero	8
	.quad	.LC201
	.quad	.LC7
	.quad	ossl_ecdsa_signature_functions
	.zero	8
	.quad	.LC202
	.quad	.LC7
	.quad	ossl_sm2_signature_functions
	.zero	8
	.quad	.LC167
	.quad	.LC7
	.quad	ossl_mac_legacy_hmac_signature_functions
	.zero	8
	.quad	.LC170
	.quad	.LC7
	.quad	ossl_mac_legacy_siphash_signature_functions
	.zero	8
	.quad	.LC171
	.quad	.LC7
	.quad	ossl_mac_legacy_poly1305_signature_functions
	.zero	8
	.quad	.LC165
	.quad	.LC7
	.quad	ossl_mac_legacy_cmac_signature_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.align 32
	.type	deflt_asym_cipher, @object
	.size	deflt_asym_cipher, 96
deflt_asym_cipher:
	.quad	.LC198
	.quad	.LC7
	.quad	ossl_rsa_asym_cipher_functions
	.zero	8
	.quad	.LC202
	.quad	.LC7
	.quad	ossl_sm2_asym_cipher_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC203:
	.string	"EC:id-ecPublicKey:1.2.840.10045.2.1"
	.section	.data.rel.ro
	.align 32
	.type	deflt_asym_kem, @object
	.size	deflt_asym_kem, 160
deflt_asym_kem:
	.quad	.LC198
	.quad	.LC7
	.quad	ossl_rsa_asym_kem_functions
	.zero	8
	.quad	.LC190
	.quad	.LC7
	.quad	ossl_ecx_asym_kem_functions
	.zero	8
	.quad	.LC191
	.quad	.LC7
	.quad	ossl_ecx_asym_kem_functions
	.zero	8
	.quad	.LC203
	.quad	.LC7
	.quad	ossl_ec_asym_kem_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC204:
	.string	"OpenSSL PKCS#3 DH implementation"
	.align 8
.LC205:
	.string	"DHX:X9.42 DH:dhpublicnumber:1.2.840.10046.2.1"
	.align 8
.LC206:
	.string	"OpenSSL X9.42 DH implementation"
.LC207:
	.string	"OpenSSL DSA implementation"
.LC208:
	.string	"OpenSSL RSA implementation"
	.align 8
.LC209:
	.string	"RSA-PSS:RSASSA-PSS:1.2.840.113549.1.1.10"
	.align 8
.LC210:
	.string	"OpenSSL RSA-PSS implementation"
.LC211:
	.string	"OpenSSL EC implementation"
.LC212:
	.string	"OpenSSL X25519 implementation"
.LC213:
	.string	"OpenSSL X448 implementation"
	.align 8
.LC214:
	.string	"OpenSSL ED25519 implementation"
.LC215:
	.string	"OpenSSL ED448 implementation"
	.align 8
.LC216:
	.string	"OpenSSL TLS1_PRF via EVP_PKEY implementation"
	.align 8
.LC217:
	.string	"OpenSSL HKDF via EVP_PKEY implementation"
	.align 8
.LC218:
	.string	"OpenSSL SCRYPT via EVP_PKEY implementation"
	.align 8
.LC219:
	.string	"OpenSSL HMAC via EVP_PKEY implementation"
	.align 8
.LC220:
	.string	"OpenSSL SIPHASH via EVP_PKEY implementation"
	.align 8
.LC221:
	.string	"OpenSSL POLY1305 via EVP_PKEY implementation"
	.align 8
.LC222:
	.string	"OpenSSL CMAC via EVP_PKEY implementation"
.LC223:
	.string	"OpenSSL SM2 implementation"
	.section	.data.rel.ro
	.align 32
	.type	deflt_keymgmt, @object
	.size	deflt_keymgmt, 608
deflt_keymgmt:
	.quad	.LC188
	.quad	.LC7
	.quad	ossl_dh_keymgmt_functions
	.quad	.LC204
	.quad	.LC205
	.quad	.LC7
	.quad	ossl_dhx_keymgmt_functions
	.quad	.LC206
	.quad	.LC197
	.quad	.LC7
	.quad	ossl_dsa_keymgmt_functions
	.quad	.LC207
	.quad	.LC198
	.quad	.LC7
	.quad	ossl_rsa_keymgmt_functions
	.quad	.LC208
	.quad	.LC209
	.quad	.LC7
	.quad	ossl_rsapss_keymgmt_functions
	.quad	.LC210
	.quad	.LC203
	.quad	.LC7
	.quad	ossl_ec_keymgmt_functions
	.quad	.LC211
	.quad	.LC190
	.quad	.LC7
	.quad	ossl_x25519_keymgmt_functions
	.quad	.LC212
	.quad	.LC191
	.quad	.LC7
	.quad	ossl_x448_keymgmt_functions
	.quad	.LC213
	.quad	.LC199
	.quad	.LC7
	.quad	ossl_ed25519_keymgmt_functions
	.quad	.LC214
	.quad	.LC200
	.quad	.LC7
	.quad	ossl_ed448_keymgmt_functions
	.quad	.LC215
	.quad	.LC179
	.quad	.LC7
	.quad	ossl_kdf_keymgmt_functions
	.quad	.LC216
	.quad	.LC172
	.quad	.LC7
	.quad	ossl_kdf_keymgmt_functions
	.quad	.LC217
	.quad	.LC182
	.quad	.LC7
	.quad	ossl_kdf_keymgmt_functions
	.quad	.LC218
	.quad	.LC167
	.quad	.LC7
	.quad	ossl_mac_legacy_keymgmt_functions
	.quad	.LC219
	.quad	.LC170
	.quad	.LC7
	.quad	ossl_mac_legacy_keymgmt_functions
	.quad	.LC220
	.quad	.LC171
	.quad	.LC7
	.quad	ossl_mac_legacy_keymgmt_functions
	.quad	.LC221
	.quad	.LC165
	.quad	.LC7
	.quad	ossl_cmac_legacy_keymgmt_functions
	.quad	.LC222
	.quad	.LC202
	.quad	.LC7
	.quad	ossl_sm2_keymgmt_functions
	.quad	.LC223
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC224:
	.string	"RSA"
	.align 8
.LC225:
	.string	"provider=default,fips=yes,output=text"
.LC226:
	.string	"RSA-PSS"
.LC227:
	.string	"DH"
.LC228:
	.string	"DHX"
.LC229:
	.string	"DSA"
.LC230:
	.string	"EC"
.LC231:
	.string	"ED25519"
.LC232:
	.string	"ED448"
.LC233:
	.string	"X25519"
.LC234:
	.string	"X448"
.LC235:
	.string	"SM2"
	.align 8
.LC236:
	.string	"provider=default,fips=no,output=text"
	.align 8
.LC237:
	.string	"provider=default,fips=yes,output=der,structure=type-specific"
	.align 8
.LC238:
	.string	"provider=default,fips=yes,output=pem,structure=type-specific"
	.align 8
.LC239:
	.string	"provider=default,fips=yes,output=blob"
	.align 8
.LC240:
	.string	"provider=default,fips=no,output=der,structure=type-specific"
	.align 8
.LC241:
	.string	"provider=default,fips=no,output=pem,structure=type-specific"
	.align 8
.LC242:
	.string	"provider=default,fips=no,output=blob"
	.align 8
.LC243:
	.string	"provider=default,fips=yes,output=msblob"
	.align 8
.LC244:
	.string	"provider=default,fips=yes,output=pvk"
	.align 8
.LC245:
	.string	"provider=default,fips=yes,output=der,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC246:
	.string	"provider=default,fips=yes,output=pem,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC247:
	.string	"provider=default,fips=yes,output=der,structure=PrivateKeyInfo"
	.align 8
.LC248:
	.string	"provider=default,fips=yes,output=pem,structure=PrivateKeyInfo"
	.align 8
.LC249:
	.string	"provider=default,fips=yes,output=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC250:
	.string	"provider=default,fips=yes,output=pem,structure=SubjectPublicKeyInfo"
	.align 8
.LC251:
	.string	"provider=default,fips=no,output=der,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC252:
	.string	"provider=default,fips=no,output=pem,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC253:
	.string	"provider=default,fips=no,output=der,structure=PrivateKeyInfo"
	.align 8
.LC254:
	.string	"provider=default,fips=no,output=pem,structure=PrivateKeyInfo"
	.align 8
.LC255:
	.string	"provider=default,fips=no,output=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC256:
	.string	"provider=default,fips=no,output=pem,structure=SubjectPublicKeyInfo"
	.align 8
.LC257:
	.string	"provider=default,fips=yes,output=der,structure=rsa"
	.align 8
.LC258:
	.string	"provider=default,fips=yes,output=pem,structure=rsa"
	.align 8
.LC259:
	.string	"provider=default,fips=yes,output=der,structure=dh"
	.align 8
.LC260:
	.string	"provider=default,fips=yes,output=pem,structure=dh"
	.align 8
.LC261:
	.string	"provider=default,fips=yes,output=der,structure=dhx"
	.align 8
.LC262:
	.string	"provider=default,fips=yes,output=pem,structure=dhx"
	.align 8
.LC263:
	.string	"provider=default,fips=yes,output=der,structure=dsa"
	.align 8
.LC264:
	.string	"provider=default,fips=yes,output=pem,structure=dsa"
	.align 8
.LC265:
	.string	"provider=default,fips=yes,output=der,structure=ec"
	.align 8
.LC266:
	.string	"provider=default,fips=yes,output=pem,structure=ec"
	.align 8
.LC267:
	.string	"provider=default,fips=yes,output=der,structure=pkcs1"
	.align 8
.LC268:
	.string	"provider=default,fips=yes,output=pem,structure=pkcs1"
	.align 8
.LC269:
	.string	"provider=default,fips=yes,output=der,structure=pkcs3"
	.align 8
.LC270:
	.string	"provider=default,fips=yes,output=pem,structure=pkcs3"
	.align 8
.LC271:
	.string	"provider=default,fips=yes,output=der,structure=X9.42"
	.align 8
.LC272:
	.string	"provider=default,fips=yes,output=pem,structure=X9.42"
	.align 8
.LC273:
	.string	"provider=default,fips=yes,output=der,structure=X9.62"
	.align 8
.LC274:
	.string	"provider=default,fips=yes,output=pem,structure=X9.62"
	.section	.data.rel.ro
	.align 32
	.type	deflt_encoder, @object
	.size	deflt_encoder, 3712
deflt_encoder:
	.quad	.LC224
	.quad	.LC225
	.quad	ossl_rsa_to_text_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC225
	.quad	ossl_rsapss_to_text_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC225
	.quad	ossl_dh_to_text_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC225
	.quad	ossl_dhx_to_text_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC225
	.quad	ossl_dsa_to_text_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC225
	.quad	ossl_ec_to_text_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC225
	.quad	ossl_ed25519_to_text_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC225
	.quad	ossl_ed448_to_text_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC225
	.quad	ossl_x25519_to_text_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC225
	.quad	ossl_x448_to_text_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC236
	.quad	ossl_sm2_to_text_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC237
	.quad	ossl_rsa_to_type_specific_keypair_der_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC238
	.quad	ossl_rsa_to_type_specific_keypair_pem_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC237
	.quad	ossl_dh_to_type_specific_params_der_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC238
	.quad	ossl_dh_to_type_specific_params_pem_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC237
	.quad	ossl_dhx_to_type_specific_params_der_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC238
	.quad	ossl_dhx_to_type_specific_params_pem_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC237
	.quad	ossl_dsa_to_type_specific_der_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC238
	.quad	ossl_dsa_to_type_specific_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC237
	.quad	ossl_ec_to_type_specific_no_pub_der_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC238
	.quad	ossl_ec_to_type_specific_no_pub_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC239
	.quad	ossl_ec_to_blob_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC240
	.quad	ossl_sm2_to_type_specific_no_pub_der_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC241
	.quad	ossl_sm2_to_type_specific_no_pub_pem_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC242
	.quad	ossl_sm2_to_blob_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC243
	.quad	ossl_rsa_to_msblob_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC244
	.quad	ossl_rsa_to_pvk_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC243
	.quad	ossl_dsa_to_msblob_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC244
	.quad	ossl_dsa_to_pvk_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC245
	.quad	ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC246
	.quad	ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC247
	.quad	ossl_rsa_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC248
	.quad	ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC249
	.quad	ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC250
	.quad	ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC245
	.quad	ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC246
	.quad	ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC247
	.quad	ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC248
	.quad	ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC249
	.quad	ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC250
	.quad	ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC245
	.quad	ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC246
	.quad	ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC247
	.quad	ossl_dh_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC248
	.quad	ossl_dh_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC249
	.quad	ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC250
	.quad	ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC245
	.quad	ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC246
	.quad	ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC247
	.quad	ossl_dhx_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC248
	.quad	ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC249
	.quad	ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC250
	.quad	ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC245
	.quad	ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC246
	.quad	ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC247
	.quad	ossl_dsa_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC248
	.quad	ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC249
	.quad	ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC250
	.quad	ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC245
	.quad	ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC246
	.quad	ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC247
	.quad	ossl_ec_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC248
	.quad	ossl_ec_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC249
	.quad	ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC250
	.quad	ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC245
	.quad	ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC246
	.quad	ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC247
	.quad	ossl_x25519_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC248
	.quad	ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC249
	.quad	ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC250
	.quad	ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC245
	.quad	ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC246
	.quad	ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC247
	.quad	ossl_x448_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC248
	.quad	ossl_x448_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC249
	.quad	ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC250
	.quad	ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC245
	.quad	ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC246
	.quad	ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC247
	.quad	ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC248
	.quad	ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC249
	.quad	ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC250
	.quad	ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC245
	.quad	ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC246
	.quad	ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC247
	.quad	ossl_ed448_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC248
	.quad	ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC249
	.quad	ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC250
	.quad	ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC251
	.quad	ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC252
	.quad	ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC253
	.quad	ossl_sm2_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC254
	.quad	ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC255
	.quad	ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC256
	.quad	ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC257
	.quad	ossl_rsa_to_RSA_der_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC258
	.quad	ossl_rsa_to_RSA_pem_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC259
	.quad	ossl_dh_to_DH_der_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC260
	.quad	ossl_dh_to_DH_pem_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC261
	.quad	ossl_dhx_to_DHX_der_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC262
	.quad	ossl_dhx_to_DHX_pem_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC263
	.quad	ossl_dsa_to_DSA_der_encoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC264
	.quad	ossl_dsa_to_DSA_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC265
	.quad	ossl_ec_to_EC_der_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC266
	.quad	ossl_ec_to_EC_pem_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC267
	.quad	ossl_rsa_to_PKCS1_der_encoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC268
	.quad	ossl_rsa_to_PKCS1_pem_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC267
	.quad	ossl_rsapss_to_PKCS1_der_encoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC268
	.quad	ossl_rsapss_to_PKCS1_pem_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC269
	.quad	ossl_dh_to_PKCS3_der_encoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC270
	.quad	ossl_dh_to_PKCS3_pem_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC271
	.quad	ossl_dhx_to_X9_42_der_encoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC272
	.quad	ossl_dhx_to_X9_42_pem_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC273
	.quad	ossl_ec_to_X9_62_der_encoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC274
	.quad	ossl_ec_to_X9_62_pem_encoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC275:
	.string	"provider=default,fips=yes,input=der,structure=PrivateKeyInfo"
	.align 8
.LC276:
	.string	"provider=default,fips=yes,input=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC277:
	.string	"provider=default,fips=yes,input=der,structure=type-specific"
	.align 8
.LC278:
	.string	"provider=default,fips=yes,input=der,structure=dh"
	.align 8
.LC279:
	.string	"provider=default,fips=yes,input=der,structure=dhx"
	.align 8
.LC280:
	.string	"provider=default,fips=yes,input=der,structure=dsa"
	.align 8
.LC281:
	.string	"provider=default,fips=yes,input=msblob"
	.align 8
.LC282:
	.string	"provider=default,fips=yes,input=pvk"
	.align 8
.LC283:
	.string	"provider=default,fips=yes,input=der,structure=ec"
	.align 8
.LC284:
	.string	"provider=default,fips=no,input=der,structure=PrivateKeyInfo"
	.align 8
.LC285:
	.string	"provider=default,fips=no,input=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC286:
	.string	"provider=default,fips=no,input=der,structure=type-specific"
	.align 8
.LC287:
	.string	"provider=default,fips=yes,input=der,structure=rsa"
.LC288:
	.string	"DER"
	.align 8
.LC289:
	.string	"provider=default,fips=yes,input=pem"
	.align 8
.LC290:
	.string	"provider=default,fips=yes,input=der,structure=EncryptedPrivateKeyInfo"
	.section	.data.rel.ro
	.align 32
	.type	deflt_decoder, @object
	.size	deflt_decoder, 1312
deflt_decoder:
	.quad	.LC227
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC277
	.quad	ossl_type_specific_params_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC227
	.quad	.LC278
	.quad	ossl_DH_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC277
	.quad	ossl_type_specific_params_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC228
	.quad	.LC279
	.quad	ossl_DHX_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC277
	.quad	ossl_type_specific_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC280
	.quad	ossl_DSA_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC281
	.quad	ossl_msblob_to_dsa_decoder_functions
	.zero	8
	.quad	.LC229
	.quad	.LC282
	.quad	ossl_pvk_to_dsa_decoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC277
	.quad	ossl_type_specific_no_pub_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC230
	.quad	.LC283
	.quad	ossl_EC_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions
	.zero	8
	.quad	.LC231
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_ed448_decoder_functions
	.zero	8
	.quad	.LC232
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_x25519_decoder_functions
	.zero	8
	.quad	.LC233
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_x448_decoder_functions
	.zero	8
	.quad	.LC234
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC284
	.quad	ossl_PrivateKeyInfo_der_to_sm2_decoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC285
	.quad	ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions
	.zero	8
	.quad	.LC235
	.quad	.LC286
	.quad	ossl_type_specific_no_pub_der_to_sm2_decoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC277
	.quad	ossl_type_specific_keypair_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC287
	.quad	ossl_RSA_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC275
	.quad	ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions
	.zero	8
	.quad	.LC226
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC281
	.quad	ossl_msblob_to_rsa_decoder_functions
	.zero	8
	.quad	.LC224
	.quad	.LC282
	.quad	ossl_pvk_to_rsa_decoder_functions
	.zero	8
	.quad	.LC288
	.quad	.LC276
	.quad	ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions
	.zero	8
	.quad	.LC288
	.quad	.LC289
	.quad	ossl_pem_to_der_decoder_functions
	.zero	8
	.quad	.LC288
	.quad	.LC290
	.quad	ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC291:
	.string	"file"
.LC292:
	.string	"provider=default,fips=yes"
	.section	.data.rel.ro
	.align 32
	.type	deflt_store, @object
	.size	deflt_store, 64
deflt_store:
	.quad	.LC291
	.quad	.LC292
	.quad	ossl_file_store_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	deflt_query, @function
deflt_query:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$22, -12(%rbp)
	je	.L16
	cmpl	$22, -12(%rbp)
	jg	.L17
	cmpl	$21, -12(%rbp)
	je	.L18
	cmpl	$21, -12(%rbp)
	jg	.L17
	cmpl	$20, -12(%rbp)
	je	.L19
	cmpl	$20, -12(%rbp)
	jg	.L17
	cmpl	$14, -12(%rbp)
	je	.L20
	cmpl	$14, -12(%rbp)
	jg	.L17
	cmpl	$13, -12(%rbp)
	je	.L21
	cmpl	$13, -12(%rbp)
	jg	.L17
	cmpl	$12, -12(%rbp)
	je	.L22
	cmpl	$12, -12(%rbp)
	jg	.L17
	cmpl	$11, -12(%rbp)
	je	.L23
	cmpl	$11, -12(%rbp)
	jg	.L17
	cmpl	$10, -12(%rbp)
	je	.L24
	cmpl	$10, -12(%rbp)
	jg	.L17
	cmpl	$5, -12(%rbp)
	je	.L25
	cmpl	$5, -12(%rbp)
	jg	.L17
	cmpl	$4, -12(%rbp)
	je	.L26
	cmpl	$4, -12(%rbp)
	jg	.L17
	cmpl	$3, -12(%rbp)
	je	.L27
	cmpl	$3, -12(%rbp)
	jg	.L17
	cmpl	$1, -12(%rbp)
	je	.L28
	cmpl	$2, -12(%rbp)
	je	.L29
	jmp	.L17
.L28:
	leaq	deflt_digests(%rip), %rax
	jmp	.L30
.L29:
	leaq	exported_ciphers(%rip), %rax
	jmp	.L30
.L27:
	leaq	deflt_macs(%rip), %rax
	jmp	.L30
.L26:
	leaq	deflt_kdfs(%rip), %rax
	jmp	.L30
.L25:
	leaq	deflt_rands(%rip), %rax
	jmp	.L30
.L24:
	leaq	deflt_keymgmt(%rip), %rax
	jmp	.L30
.L23:
	leaq	deflt_keyexch(%rip), %rax
	jmp	.L30
.L22:
	leaq	deflt_signature(%rip), %rax
	jmp	.L30
.L21:
	leaq	deflt_asym_cipher(%rip), %rax
	jmp	.L30
.L20:
	leaq	deflt_asym_kem(%rip), %rax
	jmp	.L30
.L19:
	leaq	deflt_encoder(%rip), %rax
	jmp	.L30
.L18:
	leaq	deflt_decoder(%rip), %rax
	jmp	.L30
.L16:
	leaq	deflt_store(%rip), %rax
	jmp	.L30
.L17:
	movl	$0, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	deflt_query, .-deflt_query
	.type	deflt_teardown, @function
deflt_teardown:
.LFB323:
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
	call	ossl_prov_ctx_get0_core_bio_method@PLT
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	deflt_teardown, .-deflt_teardown
	.section	.data.rel.ro
	.align 32
	.type	deflt_dispatch_table, @object
	.size	deflt_dispatch_table, 96
deflt_dispatch_table:
	.long	1024
	.zero	4
	.quad	deflt_teardown
	.long	1025
	.zero	4
	.quad	deflt_gettable_params
	.long	1026
	.zero	4
	.quad	deflt_get_params
	.long	1027
	.zero	4
	.quad	deflt_query
	.long	1030
	.zero	4
	.quad	ossl_prov_get_capabilities
	.long	0
	.zero	4
	.quad	0
	.text
	.globl	ossl_default_provider_init
	.type	ossl_default_provider_init, @function
ossl_default_provider_init:
.LFB324:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_bio_from_dispatch@PLT
	testl	%eax, %eax
	je	.L33
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_seeding_from_dispatch@PLT
	testl	%eax, %eax
	jne	.L36
.L33:
	movl	$0, %eax
	jmp	.L35
.L42:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L37
	cmpl	$4, %eax
	jg	.L46
	cmpl	$1, %eax
	je	.L39
	cmpl	$2, %eax
	je	.L40
	jmp	.L46
.L39:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_gettable_params
	movq	%rax, c_gettable_params(%rip)
	jmp	.L41
.L40:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_params
	movq	%rax, c_get_params(%rip)
	jmp	.L41
.L37:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_libctx
	movq	%rax, -8(%rbp)
	jmp	.L41
.L46:
	nop
.L41:
	addq	$16, -32(%rbp)
.L36:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L35
.L43:
	call	ossl_prov_ctx_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L44
	call	ossl_bio_prov_init_bio_method@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
.L44:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L35
.L45:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_ctx_set0_libctx@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_ctx_set0_handle@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_ctx_set0_core_bio_method@PLT
	movq	-40(%rbp), %rax
	leaq	deflt_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	leaq	exported_ciphers(%rip), %rdx
	leaq	deflt_ciphers(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cache_exported_algorithms@PLT
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ossl_default_provider_init, .-ossl_default_provider_init
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

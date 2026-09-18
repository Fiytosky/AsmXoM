	.file	"baseprov.c"
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
	.type	base_param_types, @object
	.size	base_param_types, 200
base_param_types:
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
	.type	base_gettable_params, @function
base_gettable_params:
.LFB278:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	base_param_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE278:
	.size	base_gettable_params, .-base_gettable_params
	.section	.rodata
.LC4:
	.string	"OpenSSL Base Provider"
.LC5:
	.string	"3.3.5"
	.text
	.type	base_get_params, @function
base_get_params:
.LFB279:
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
.LFE279:
	.size	base_get_params, .-base_get_params
	.section	.rodata
.LC6:
	.string	"RSA"
	.align 8
.LC7:
	.string	"provider=base,fips=yes,output=text"
.LC8:
	.string	"RSA-PSS"
.LC9:
	.string	"DH"
.LC10:
	.string	"DHX"
.LC11:
	.string	"DSA"
.LC12:
	.string	"EC"
.LC13:
	.string	"ED25519"
.LC14:
	.string	"ED448"
.LC15:
	.string	"X25519"
.LC16:
	.string	"X448"
.LC17:
	.string	"SM2"
	.align 8
.LC18:
	.string	"provider=base,fips=no,output=text"
	.align 8
.LC19:
	.string	"provider=base,fips=yes,output=der,structure=type-specific"
	.align 8
.LC20:
	.string	"provider=base,fips=yes,output=pem,structure=type-specific"
	.align 8
.LC21:
	.string	"provider=base,fips=yes,output=blob"
	.align 8
.LC22:
	.string	"provider=base,fips=no,output=der,structure=type-specific"
	.align 8
.LC23:
	.string	"provider=base,fips=no,output=pem,structure=type-specific"
	.align 8
.LC24:
	.string	"provider=base,fips=no,output=blob"
	.align 8
.LC25:
	.string	"provider=base,fips=yes,output=msblob"
	.align 8
.LC26:
	.string	"provider=base,fips=yes,output=pvk"
	.align 8
.LC27:
	.string	"provider=base,fips=yes,output=der,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC28:
	.string	"provider=base,fips=yes,output=pem,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC29:
	.string	"provider=base,fips=yes,output=der,structure=PrivateKeyInfo"
	.align 8
.LC30:
	.string	"provider=base,fips=yes,output=pem,structure=PrivateKeyInfo"
	.align 8
.LC31:
	.string	"provider=base,fips=yes,output=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC32:
	.string	"provider=base,fips=yes,output=pem,structure=SubjectPublicKeyInfo"
	.align 8
.LC33:
	.string	"provider=base,fips=no,output=der,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC34:
	.string	"provider=base,fips=no,output=pem,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC35:
	.string	"provider=base,fips=no,output=der,structure=PrivateKeyInfo"
	.align 8
.LC36:
	.string	"provider=base,fips=no,output=pem,structure=PrivateKeyInfo"
	.align 8
.LC37:
	.string	"provider=base,fips=no,output=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC38:
	.string	"provider=base,fips=no,output=pem,structure=SubjectPublicKeyInfo"
	.align 8
.LC39:
	.string	"provider=base,fips=yes,output=der,structure=rsa"
	.align 8
.LC40:
	.string	"provider=base,fips=yes,output=pem,structure=rsa"
	.align 8
.LC41:
	.string	"provider=base,fips=yes,output=der,structure=dh"
	.align 8
.LC42:
	.string	"provider=base,fips=yes,output=pem,structure=dh"
	.align 8
.LC43:
	.string	"provider=base,fips=yes,output=der,structure=dhx"
	.align 8
.LC44:
	.string	"provider=base,fips=yes,output=pem,structure=dhx"
	.align 8
.LC45:
	.string	"provider=base,fips=yes,output=der,structure=dsa"
	.align 8
.LC46:
	.string	"provider=base,fips=yes,output=pem,structure=dsa"
	.align 8
.LC47:
	.string	"provider=base,fips=yes,output=der,structure=ec"
	.align 8
.LC48:
	.string	"provider=base,fips=yes,output=pem,structure=ec"
	.align 8
.LC49:
	.string	"provider=base,fips=yes,output=der,structure=pkcs1"
	.align 8
.LC50:
	.string	"provider=base,fips=yes,output=pem,structure=pkcs1"
	.align 8
.LC51:
	.string	"provider=base,fips=yes,output=der,structure=pkcs3"
	.align 8
.LC52:
	.string	"provider=base,fips=yes,output=pem,structure=pkcs3"
	.align 8
.LC53:
	.string	"provider=base,fips=yes,output=der,structure=X9.42"
	.align 8
.LC54:
	.string	"provider=base,fips=yes,output=pem,structure=X9.42"
	.align 8
.LC55:
	.string	"provider=base,fips=yes,output=der,structure=X9.62"
	.align 8
.LC56:
	.string	"provider=base,fips=yes,output=pem,structure=X9.62"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	base_encoder, @object
	.size	base_encoder, 3712
base_encoder:
	.quad	.LC6
	.quad	.LC7
	.quad	ossl_rsa_to_text_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC7
	.quad	ossl_rsapss_to_text_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC7
	.quad	ossl_dh_to_text_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC7
	.quad	ossl_dhx_to_text_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC7
	.quad	ossl_dsa_to_text_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC7
	.quad	ossl_ec_to_text_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC7
	.quad	ossl_ed25519_to_text_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC7
	.quad	ossl_ed448_to_text_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC7
	.quad	ossl_x25519_to_text_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC7
	.quad	ossl_x448_to_text_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC18
	.quad	ossl_sm2_to_text_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC19
	.quad	ossl_rsa_to_type_specific_keypair_der_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC20
	.quad	ossl_rsa_to_type_specific_keypair_pem_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC19
	.quad	ossl_dh_to_type_specific_params_der_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC20
	.quad	ossl_dh_to_type_specific_params_pem_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC19
	.quad	ossl_dhx_to_type_specific_params_der_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC20
	.quad	ossl_dhx_to_type_specific_params_pem_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC19
	.quad	ossl_dsa_to_type_specific_der_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC20
	.quad	ossl_dsa_to_type_specific_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC19
	.quad	ossl_ec_to_type_specific_no_pub_der_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC20
	.quad	ossl_ec_to_type_specific_no_pub_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC21
	.quad	ossl_ec_to_blob_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC22
	.quad	ossl_sm2_to_type_specific_no_pub_der_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC23
	.quad	ossl_sm2_to_type_specific_no_pub_pem_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC24
	.quad	ossl_sm2_to_blob_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC25
	.quad	ossl_rsa_to_msblob_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC26
	.quad	ossl_rsa_to_pvk_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC25
	.quad	ossl_dsa_to_msblob_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC26
	.quad	ossl_dsa_to_pvk_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC27
	.quad	ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC28
	.quad	ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC29
	.quad	ossl_rsa_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC30
	.quad	ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC31
	.quad	ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC32
	.quad	ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC27
	.quad	ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC28
	.quad	ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC29
	.quad	ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC30
	.quad	ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC31
	.quad	ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC32
	.quad	ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC27
	.quad	ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC28
	.quad	ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC29
	.quad	ossl_dh_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC30
	.quad	ossl_dh_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC31
	.quad	ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC32
	.quad	ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC27
	.quad	ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC28
	.quad	ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC29
	.quad	ossl_dhx_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC30
	.quad	ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC31
	.quad	ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC32
	.quad	ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC27
	.quad	ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC28
	.quad	ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC29
	.quad	ossl_dsa_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC30
	.quad	ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC31
	.quad	ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC32
	.quad	ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC27
	.quad	ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC28
	.quad	ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC29
	.quad	ossl_ec_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC30
	.quad	ossl_ec_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC31
	.quad	ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC32
	.quad	ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC27
	.quad	ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC28
	.quad	ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC29
	.quad	ossl_x25519_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC30
	.quad	ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC31
	.quad	ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC32
	.quad	ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC27
	.quad	ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC28
	.quad	ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC29
	.quad	ossl_x448_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC30
	.quad	ossl_x448_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC31
	.quad	ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC32
	.quad	ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC27
	.quad	ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC28
	.quad	ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC29
	.quad	ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC30
	.quad	ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC31
	.quad	ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC32
	.quad	ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC27
	.quad	ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC28
	.quad	ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC29
	.quad	ossl_ed448_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC30
	.quad	ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC31
	.quad	ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC32
	.quad	ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC33
	.quad	ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC34
	.quad	ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC35
	.quad	ossl_sm2_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC36
	.quad	ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC37
	.quad	ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC38
	.quad	ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC39
	.quad	ossl_rsa_to_RSA_der_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC40
	.quad	ossl_rsa_to_RSA_pem_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC41
	.quad	ossl_dh_to_DH_der_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC42
	.quad	ossl_dh_to_DH_pem_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC43
	.quad	ossl_dhx_to_DHX_der_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC44
	.quad	ossl_dhx_to_DHX_pem_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC45
	.quad	ossl_dsa_to_DSA_der_encoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC46
	.quad	ossl_dsa_to_DSA_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC47
	.quad	ossl_ec_to_EC_der_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC48
	.quad	ossl_ec_to_EC_pem_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC49
	.quad	ossl_rsa_to_PKCS1_der_encoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC50
	.quad	ossl_rsa_to_PKCS1_pem_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC49
	.quad	ossl_rsapss_to_PKCS1_der_encoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC50
	.quad	ossl_rsapss_to_PKCS1_pem_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC51
	.quad	ossl_dh_to_PKCS3_der_encoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC52
	.quad	ossl_dh_to_PKCS3_pem_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC53
	.quad	ossl_dhx_to_X9_42_der_encoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC54
	.quad	ossl_dhx_to_X9_42_pem_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC55
	.quad	ossl_ec_to_X9_62_der_encoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC56
	.quad	ossl_ec_to_X9_62_pem_encoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
.LC57:
	.string	"provider=base,fips=yes,input=der,structure=PrivateKeyInfo"
	.align 8
.LC58:
	.string	"provider=base,fips=yes,input=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC59:
	.string	"provider=base,fips=yes,input=der,structure=type-specific"
	.align 8
.LC60:
	.string	"provider=base,fips=yes,input=der,structure=dh"
	.align 8
.LC61:
	.string	"provider=base,fips=yes,input=der,structure=dhx"
	.align 8
.LC62:
	.string	"provider=base,fips=yes,input=der,structure=dsa"
	.align 8
.LC63:
	.string	"provider=base,fips=yes,input=msblob"
	.align 8
.LC64:
	.string	"provider=base,fips=yes,input=pvk"
	.align 8
.LC65:
	.string	"provider=base,fips=yes,input=der,structure=ec"
	.align 8
.LC66:
	.string	"provider=base,fips=no,input=der,structure=PrivateKeyInfo"
	.align 8
.LC67:
	.string	"provider=base,fips=no,input=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC68:
	.string	"provider=base,fips=no,input=der,structure=type-specific"
	.align 8
.LC69:
	.string	"provider=base,fips=yes,input=der,structure=rsa"
.LC70:
	.string	"DER"
	.align 8
.LC71:
	.string	"provider=base,fips=yes,input=pem"
	.align 8
.LC72:
	.string	"provider=base,fips=yes,input=der,structure=EncryptedPrivateKeyInfo"
	.section	.data.rel.ro
	.align 32
	.type	base_decoder, @object
	.size	base_decoder, 1312
base_decoder:
	.quad	.LC9
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC59
	.quad	ossl_type_specific_params_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC9
	.quad	.LC60
	.quad	ossl_DH_der_to_dh_decoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC59
	.quad	ossl_type_specific_params_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC10
	.quad	.LC61
	.quad	ossl_DHX_der_to_dhx_decoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC59
	.quad	ossl_type_specific_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC62
	.quad	ossl_DSA_der_to_dsa_decoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC63
	.quad	ossl_msblob_to_dsa_decoder_functions
	.zero	8
	.quad	.LC11
	.quad	.LC64
	.quad	ossl_pvk_to_dsa_decoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC59
	.quad	ossl_type_specific_no_pub_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC12
	.quad	.LC65
	.quad	ossl_EC_der_to_ec_decoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions
	.zero	8
	.quad	.LC13
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_ed448_decoder_functions
	.zero	8
	.quad	.LC14
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_x25519_decoder_functions
	.zero	8
	.quad	.LC15
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_x448_decoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC66
	.quad	ossl_PrivateKeyInfo_der_to_sm2_decoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC67
	.quad	ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions
	.zero	8
	.quad	.LC17
	.quad	.LC68
	.quad	ossl_type_specific_no_pub_der_to_sm2_decoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC59
	.quad	ossl_type_specific_keypair_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC69
	.quad	ossl_RSA_der_to_rsa_decoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC57
	.quad	ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions
	.zero	8
	.quad	.LC8
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC63
	.quad	ossl_msblob_to_rsa_decoder_functions
	.zero	8
	.quad	.LC6
	.quad	.LC64
	.quad	ossl_pvk_to_rsa_decoder_functions
	.zero	8
	.quad	.LC70
	.quad	.LC58
	.quad	ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions
	.zero	8
	.quad	.LC70
	.quad	.LC71
	.quad	ossl_pem_to_der_decoder_functions
	.zero	8
	.quad	.LC70
	.quad	.LC72
	.quad	ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC73:
	.string	"file"
.LC74:
	.string	"provider=base,fips=yes"
	.section	.data.rel.ro
	.align 32
	.type	base_store, @object
	.size	base_store, 64
base_store:
	.quad	.LC73
	.quad	.LC74
	.quad	ossl_file_store_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC75:
	.string	"SEED-SRC"
.LC76:
	.string	"provider=base"
	.section	.data.rel.ro
	.align 32
	.type	base_rands, @object
	.size	base_rands, 64
base_rands:
	.quad	.LC75
	.quad	.LC76
	.quad	ossl_seed_src_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	base_query, @function
base_query:
.LFB280:
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
	cmpl	$5, -12(%rbp)
	je	.L19
	cmpl	$20, -12(%rbp)
	jne	.L17
	leaq	base_encoder(%rip), %rax
	jmp	.L20
.L18:
	leaq	base_decoder(%rip), %rax
	jmp	.L20
.L16:
	leaq	base_store(%rip), %rax
	jmp	.L20
.L19:
	leaq	base_rands(%rip), %rax
	jmp	.L20
.L17:
	movl	$0, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE280:
	.size	base_query, .-base_query
	.type	base_teardown, @function
base_teardown:
.LFB281:
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
.LFE281:
	.size	base_teardown, .-base_teardown
	.section	.data.rel.ro.local
	.align 32
	.type	base_dispatch_table, @object
	.size	base_dispatch_table, 80
base_dispatch_table:
	.long	1024
	.zero	4
	.quad	base_teardown
	.long	1025
	.zero	4
	.quad	base_gettable_params
	.long	1026
	.zero	4
	.quad	base_get_params
	.long	1027
	.zero	4
	.quad	base_query
	.long	0
	.zero	4
	.quad	0
	.text
	.globl	ossl_base_provider_init
	.type	ossl_base_provider_init, @function
ossl_base_provider_init:
.LFB282:
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
	jne	.L25
	movl	$0, %eax
	jmp	.L24
.L31:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L26
	cmpl	$4, %eax
	jg	.L35
	cmpl	$1, %eax
	je	.L28
	cmpl	$2, %eax
	je	.L29
	jmp	.L35
.L28:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_gettable_params
	movq	%rax, c_gettable_params(%rip)
	jmp	.L30
.L29:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_params
	movq	%rax, c_get_params(%rip)
	jmp	.L30
.L26:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_libctx
	movq	%rax, -8(%rbp)
	jmp	.L30
.L35:
	nop
.L30:
	addq	$16, -32(%rbp)
.L25:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L31
	cmpq	$0, -8(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L24
.L32:
	call	ossl_prov_ctx_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L33
	call	ossl_bio_prov_init_bio_method@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
.L33:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L24
.L34:
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
	leaq	base_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE282:
	.size	ossl_base_provider_init, .-ossl_base_provider_init
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

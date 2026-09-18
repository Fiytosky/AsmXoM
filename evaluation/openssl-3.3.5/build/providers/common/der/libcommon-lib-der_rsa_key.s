	.file	"der_rsa_key.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ossl_der_aid_sha1Identifier
	.section	.rodata
	.align 8
	.type	ossl_der_aid_sha1Identifier, @object
	.size	ossl_der_aid_sha1Identifier, 11
ossl_der_aid_sha1Identifier:
	.base64	"MAkGBSsOAwIaBQA="
	.globl	ossl_der_aid_sha224Identifier
	.align 8
	.type	ossl_der_aid_sha224Identifier, @object
	.size	ossl_der_aid_sha224Identifier, 15
ossl_der_aid_sha224Identifier:
	.base64	"MA0GCWCGSAFlAwQCBAUA"
	.globl	ossl_der_aid_sha256Identifier
	.align 8
	.type	ossl_der_aid_sha256Identifier, @object
	.size	ossl_der_aid_sha256Identifier, 15
ossl_der_aid_sha256Identifier:
	.base64	"MA0GCWCGSAFlAwQCAQUA"
	.globl	ossl_der_aid_sha384Identifier
	.align 8
	.type	ossl_der_aid_sha384Identifier, @object
	.size	ossl_der_aid_sha384Identifier, 15
ossl_der_aid_sha384Identifier:
	.base64	"MA0GCWCGSAFlAwQCAgUA"
	.globl	ossl_der_aid_sha512Identifier
	.align 8
	.type	ossl_der_aid_sha512Identifier, @object
	.size	ossl_der_aid_sha512Identifier, 15
ossl_der_aid_sha512Identifier:
	.base64	"MA0GCWCGSAFlAwQCAwUA"
	.globl	ossl_der_aid_sha512_224Identifier
	.align 8
	.type	ossl_der_aid_sha512_224Identifier, @object
	.size	ossl_der_aid_sha512_224Identifier, 15
ossl_der_aid_sha512_224Identifier:
	.base64	"MA0GCWCGSAFlAwQCBQUA"
	.globl	ossl_der_aid_sha512_256Identifier
	.align 8
	.type	ossl_der_aid_sha512_256Identifier, @object
	.size	ossl_der_aid_sha512_256Identifier, 15
ossl_der_aid_sha512_256Identifier:
	.base64	"MA0GCWCGSAFlAwQCBgUA"
	.align 16
	.type	der_aid_mgf1SHA224Identifier, @object
	.size	der_aid_mgf1SHA224Identifier, 28
der_aid_mgf1SHA224Identifier:
	.base64	"MBoGCSqGSIb3DQEBCDANBglghkgBZQMEAgQFAA=="
	.align 16
	.type	der_aid_mgf1SHA256Identifier, @object
	.size	der_aid_mgf1SHA256Identifier, 28
der_aid_mgf1SHA256Identifier:
	.base64	"MBoGCSqGSIb3DQEBCDANBglghkgBZQMEAgEFAA=="
	.align 16
	.type	der_aid_mgf1SHA384Identifier, @object
	.size	der_aid_mgf1SHA384Identifier, 28
der_aid_mgf1SHA384Identifier:
	.base64	"MBoGCSqGSIb3DQEBCDANBglghkgBZQMEAgIFAA=="
	.align 16
	.type	der_aid_mgf1SHA512Identifier, @object
	.size	der_aid_mgf1SHA512Identifier, 28
der_aid_mgf1SHA512Identifier:
	.base64	"MBoGCSqGSIb3DQEBCDANBglghkgBZQMEAgMFAA=="
	.align 16
	.type	der_aid_mgf1SHA512_224Identifier, @object
	.size	der_aid_mgf1SHA512_224Identifier, 28
der_aid_mgf1SHA512_224Identifier:
	.base64	"MBoGCSqGSIb3DQEBCDANBglghkgBZQMEAgUFAA=="
	.align 16
	.type	der_aid_mgf1SHA512_256Identifier, @object
	.size	der_aid_mgf1SHA512_256Identifier, 28
der_aid_mgf1SHA512_256Identifier:
	.base64	"MBoGCSqGSIb3DQEBCDANBglghkgBZQMEAgYFAA=="
	.text
	.type	DER_w_MaskGenAlgorithm, @function
DER_w_MaskGenAlgorithm:
.LFB199:
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
	cmpq	$0, -56(%rbp)
	je	.L6
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenalg@PLT
	cmpl	$911, %eax
	jne	.L6
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenhashalg@PLT
	movl	%eax, -20(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$1095, -20(%rbp)
	je	.L7
	cmpl	$1095, -20(%rbp)
	jg	.L8
	cmpl	$1094, -20(%rbp)
	je	.L9
	cmpl	$1094, -20(%rbp)
	jg	.L8
	cmpl	$675, -20(%rbp)
	je	.L10
	cmpl	$675, -20(%rbp)
	jg	.L8
	cmpl	$674, -20(%rbp)
	je	.L11
	cmpl	$674, -20(%rbp)
	jg	.L8
	cmpl	$673, -20(%rbp)
	je	.L12
	cmpl	$673, -20(%rbp)
	jg	.L8
	cmpl	$64, -20(%rbp)
	je	.L18
	cmpl	$672, -20(%rbp)
	je	.L14
	jmp	.L8
.L10:
	leaq	der_aid_mgf1SHA224Identifier(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$28, -16(%rbp)
	jmp	.L15
.L14:
	leaq	der_aid_mgf1SHA256Identifier(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$28, -16(%rbp)
	jmp	.L15
.L12:
	leaq	der_aid_mgf1SHA384Identifier(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$28, -16(%rbp)
	jmp	.L15
.L11:
	leaq	der_aid_mgf1SHA512Identifier(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$28, -16(%rbp)
	jmp	.L15
.L9:
	leaq	der_aid_mgf1SHA512_224Identifier(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$28, -16(%rbp)
	jmp	.L15
.L7:
	leaq	der_aid_mgf1SHA512_256Identifier(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$28, -16(%rbp)
	jmp	.L15
.L8:
	movl	$0, %eax
	jmp	.L16
.L18:
	nop
.L15:
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$1, %eax
	jmp	.L16
.L17:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	jmp	.L16
.L6:
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	DER_w_MaskGenAlgorithm, .-DER_w_MaskGenAlgorithm
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/common/der/der_rsa_key.c"
	.text
	.globl	ossl_DER_w_RSASSA_PSS_params
	.type	ossl_DER_w_RSASSA_PSS_params, @function
ossl_DER_w_RSASSA_PSS_params:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L20
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_trailerfield@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L24
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L24:
	cmpl	$1, -28(%rbp)
	je	.L25
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L25:
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -32(%rbp)
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movl	%eax, -36(%rbp)
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_trailerfield@PLT
	movl	%eax, -40(%rbp)
	cmpl	$1095, -20(%rbp)
	je	.L26
	cmpl	$1095, -20(%rbp)
	jg	.L27
	cmpl	$1094, -20(%rbp)
	je	.L28
	cmpl	$1094, -20(%rbp)
	jg	.L27
	cmpl	$675, -20(%rbp)
	je	.L29
	cmpl	$675, -20(%rbp)
	jg	.L27
	cmpl	$674, -20(%rbp)
	je	.L30
	cmpl	$674, -20(%rbp)
	jg	.L27
	cmpl	$673, -20(%rbp)
	je	.L31
	cmpl	$673, -20(%rbp)
	jg	.L27
	cmpl	$64, -20(%rbp)
	je	.L32
	cmpl	$672, -20(%rbp)
	je	.L33
	jmp	.L27
.L32:
	movq	ossl_der_aid_sha1Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L34
.L29:
	movq	ossl_der_aid_sha224Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$15, -16(%rbp)
	jmp	.L34
.L33:
	movq	ossl_der_aid_sha256Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$15, -16(%rbp)
	jmp	.L34
.L31:
	movq	ossl_der_aid_sha384Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$15, -16(%rbp)
	jmp	.L34
.L30:
	movq	ossl_der_aid_sha512Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$15, -16(%rbp)
	jmp	.L34
.L28:
	movq	ossl_der_aid_sha512_224Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$15, -16(%rbp)
	jmp	.L34
.L26:
	movq	ossl_der_aid_sha512_256Identifier@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$15, -16(%rbp)
	jmp	.L34
.L27:
	movl	$0, %eax
	jmp	.L23
.L34:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L35
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L36
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_uint32@PLT
	testl	%eax, %eax
	je	.L35
.L36:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L37
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_uint32@PLT
	testl	%eax, %eax
	je	.L35
.L37:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	DER_w_MaskGenAlgorithm
	testl	%eax, %eax
	je	.L35
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L38
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L35
.L38:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1, %eax
	jmp	.L23
.L35:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	ossl_DER_w_RSASSA_PSS_params, .-ossl_DER_w_RSASSA_PSS_params
	.globl	ossl_DER_w_algorithmIdentifier_RSA_PSS
	.type	ossl_DER_w_algorithmIdentifier_RSA_PSS, @function
ossl_DER_w_algorithmIdentifier_RSA_PSS:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L41
	cmpl	$4096, -48(%rbp)
	je	.L42
	jmp	.L43
.L41:
	movl	$6, -4(%rbp)
	movq	ossl_der_oid_rsaEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$11, -24(%rbp)
	jmp	.L43
.L42:
	movl	$912, -4(%rbp)
	movq	ossl_der_oid_id_RSASSA_PSS@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$11, -24(%rbp)
	nop
.L43:
	cmpq	$0, -16(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L46
	cmpl	$912, -4(%rbp)
	jne	.L47
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_RSASSA_PSS_params@PLT
	testl	%eax, %eax
	je	.L46
.L47:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L46
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, %eax
	jmp	.L45
.L46:
	movl	$0, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	ossl_DER_w_algorithmIdentifier_RSA_PSS, .-ossl_DER_w_algorithmIdentifier_RSA_PSS
	.globl	ossl_DER_w_algorithmIdentifier_RSA
	.type	ossl_DER_w_algorithmIdentifier_RSA, @function
ossl_DER_w_algorithmIdentifier_RSA:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_RSA_PSS@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	ossl_DER_w_algorithmIdentifier_RSA, .-ossl_DER_w_algorithmIdentifier_RSA
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_DER_w_RSASSA_PSS_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

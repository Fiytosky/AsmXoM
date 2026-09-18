	.file	"ts_rsp_verify.c"
	.text
	.type	ossl_check_const_ASN1_UTF8STRING_sk_type, @function
ossl_check_const_ASN1_UTF8STRING_sk_type:
.LFB67:
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
.LFE67:
	.size	ossl_check_const_ASN1_UTF8STRING_sk_type, .-ossl_check_const_ASN1_UTF8STRING_sk_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB327:
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
.LFE327:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB328:
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
.LFE328:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_X509_compfunc_type, @function
ossl_check_X509_compfunc_type:
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
	.size	ossl_check_X509_compfunc_type, .-ossl_check_X509_compfunc_type
	.type	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, @function
ossl_check_const_PKCS7_SIGNER_INFO_sk_type:
.LFB415:
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
.LFE415:
	.size	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, .-ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB474:
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
.LFE474:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB613:
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
.LFE613:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB614:
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
.LFE614:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"granted"
.LC1:
	.string	"grantedWithMods"
.LC2:
	.string	"rejection"
.LC3:
	.string	"waiting"
.LC4:
	.string	"revocationWarning"
.LC5:
	.string	"revocationNotification"
	.section	.data.rel.local,"aw"
	.align 32
	.type	ts_status_text, @object
	.size	ts_status_text, 48
ts_status_text:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.section	.rodata
.LC6:
	.string	"badAlg"
.LC7:
	.string	"badRequest"
.LC8:
	.string	"badDataFormat"
.LC9:
	.string	"timeNotAvailable"
.LC10:
	.string	"unacceptedPolicy"
.LC11:
	.string	"unacceptedExtension"
.LC12:
	.string	"addInfoNotAvailable"
.LC13:
	.string	"systemFailure"
	.section	.data.rel.local
	.align 32
	.type	ts_failure_info, @object
	.size	ts_failure_info, 128
ts_failure_info:
	.long	0
	.zero	4
	.quad	.LC6
	.long	2
	.zero	4
	.quad	.LC7
	.long	5
	.zero	4
	.quad	.LC8
	.long	14
	.zero	4
	.quad	.LC9
	.long	15
	.zero	4
	.quad	.LC10
	.long	16
	.zero	4
	.quad	.LC11
	.long	17
	.zero	4
	.quad	.LC12
	.long	25
	.zero	4
	.quad	.LC13
	.section	.rodata
.LC14:
	.string	"../crypto/ts/ts_rsp_verify.c"
	.text
	.globl	TS_RESP_verify_signature
	.type	TS_RESP_verify_signature, @function
TS_RESP_verify_signature:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -4200(%rbp)
	movq	%rsi, -4208(%rbp)
	movq	%rdx, -4216(%rbp)
	movq	%rcx, -4224(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -4200(%rbp)
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L18:
	movq	-4200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	je	.L20
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L20:
	movq	-4200(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_get_signer_info@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L21
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	je	.L22
.L21:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L22:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-4200(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	je	.L23
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L23:
	movq	-4208(%rbp), %rcx
	movq	-4200(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_get0_signers@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L35
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jne	.L35
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movq	-4208(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ebx
	movq	-4200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	%eax, %ebx
	movl	$0, %edi
	call	ossl_check_X509_compfunc_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L36
	movq	-4208(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	je	.L36
	movq	-4200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-4216(%rbp), %rax
	movq	%rax, %rdi
	call	ts_verify_cert
	testl	%eax, %eax
	je	.L37
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_check_signing_certs
	testl	%eax, %eax
	je	.L38
	movq	-4200(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_dataInit@PLT
	movq	%rax, -48(%rbp)
	jmp	.L30
.L31:
	nop
.L30:
	leaq	-4192(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jg	.L31
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-4200(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_signatureVerify@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L32
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L32:
	cmpq	$0, -4224(%rbp)
	je	.L33
	movq	-4224(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
.L33:
	movl	$1, -36(%rbp)
	jmp	.L19
.L35:
	nop
	jmp	.L19
.L36:
	nop
	jmp	.L19
.L37:
	nop
	jmp	.L19
.L38:
	nop
.L19:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	TS_RESP_verify_signature, .-TS_RESP_verify_signature
	.section	.rodata
.LC15:
	.string	"Verify error:%s"
	.text
	.type	ts_verify_cert, @function
ts_verify_cert:
.LFB630:
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
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L40:
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L46
	movq	-16(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_purpose@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L44
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -24(%rbp)
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$100, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L44:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get1_chain@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, -4(%rbp)
	jmp	.L43
.L41:
	movl	$0, -4(%rbp)
	jmp	.L43
.L46:
	nop
.L43:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ts_verify_cert, .-ts_verify_cert
	.type	ossl_ess_get_signing_cert, @function
ossl_ess_get_signing_cert:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	PKCS7_get_signed_attribute@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L50
.L48:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_SIGNING_CERT@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_ess_get_signing_cert, .-ossl_ess_get_signing_cert
	.type	ossl_ess_get_signing_cert_v2, @function
ossl_ess_get_signing_cert_v2:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1086, %esi
	movq	%rax, %rdi
	call	PKCS7_get_signed_attribute@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L54
.L52:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_SIGNING_CERT_V2@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_ess_get_signing_cert_v2, .-ossl_ess_get_signing_cert_v2
	.type	ts_check_signing_certs, @function
ts_check_signing_certs:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ess_get_signing_cert
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ess_get_signing_cert_v2
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	OSSL_ESS_check_signing_certs@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_V2_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ts_check_signing_certs, .-ts_check_signing_certs
	.globl	TS_RESP_verify_response
	.type	TS_RESP_verify_response, @function
TS_RESP_verify_response:
.LFB634:
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
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ts_check_status_info
	testl	%eax, %eax
	je	.L62
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int_ts_RESP_verify_token
	testl	%eax, %eax
	je	.L63
	movl	$1, -4(%rbp)
	jmp	.L59
.L62:
	nop
	jmp	.L59
.L63:
	nop
.L59:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	TS_RESP_verify_response, .-TS_RESP_verify_response
	.globl	TS_RESP_verify_token
	.type	TS_RESP_verify_token, @function
TS_RESP_verify_token:
.LFB635:
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
	movq	%rax, %rdi
	call	PKCS7_to_TS_TST_INFO@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L65
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int_ts_RESP_verify_token
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
.L65:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	TS_RESP_verify_token, .-TS_RESP_verify_token
	.type	int_ts_RESP_verify_token, @function
int_ts_RESP_verify_token:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L68
	cmpq	$0, -16(%rbp)
	jne	.L69
.L68:
	movl	-8(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L70
.L69:
	movl	-8(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -8(%rbp)
.L70:
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L71
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_verify_signature@PLT
	testl	%eax, %eax
	je	.L82
.L71:
	movl	-8(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L73
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_get_version@PLT
	cmpq	$1, %rax
	je	.L73
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$314, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L73:
	movl	-8(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L74
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_check_policy
	testl	%eax, %eax
	je	.L83
.L74:
	movl	-8(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L75
	movq	-56(%rbp), %rax
	movl	48(%rax), %edx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	ts_check_imprints
	testl	%eax, %eax
	je	.L84
.L75:
	movl	-8(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L76
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-44(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ts_compute_imprint
	testl	%eax, %eax
	je	.L85
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	ts_check_imprints
	testl	%eax, %eax
	je	.L85
.L76:
	movl	-8(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L78
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_check_nonces
	testl	%eax, %eax
	je	.L86
.L78:
	movl	-8(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L79
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_check_signer_name
	testl	%eax, %eax
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L79:
	movl	-8(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L80
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_check_signer_name
	testl	%eax, %eax
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L80:
	movl	$1, -4(%rbp)
	jmp	.L72
.L82:
	nop
	jmp	.L72
.L83:
	nop
	jmp	.L72
.L84:
	nop
	jmp	.L72
.L85:
	nop
	jmp	.L72
.L86:
	nop
.L72:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	int_ts_RESP_verify_token, .-int_ts_RESP_verify_token
	.section	.rodata
.LC16:
	.string	"unknown code"
.LC17:
	.string	"unspecified"
	.align 8
.LC18:
	.string	"status code: %s, status text: %s, failure codes: %s"
	.text
	.type	ts_check_status_info, @function
ts_check_status_info:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L88
	cmpq	$1, -40(%rbp)
	jne	.L89
.L88:
	movl	$1, %eax
	jmp	.L103
.L89:
	cmpq	$0, -40(%rbp)
	js	.L91
	cmpq	$5, -40(%rbp)
	jg	.L91
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ts_status_text(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L91:
	leaq	.LC16(%rip), %rax
	movq	%rax, -8(%rbp)
.L92:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L93
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ts_get_status_text
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L103
.L93:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movl	$1, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L95
.L99:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ts_failure_info(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
	testl	%eax, %eax
	je	.L96
	cmpl	$0, -24(%rbp)
	jne	.L97
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-304(%rbp), %rax
	addq	%rdx, %rax
	movw	$44, (%rax)
	jmp	.L98
.L97:
	movl	$0, -24(%rbp)
.L98:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ts_failure_info(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
.L96:
	addl	$1, -20(%rbp)
.L95:
	cmpl	$7, -20(%rbp)
	jle	.L99
.L94:
	movzbl	-304(%rbp), %eax
	testb	%al, %al
	jne	.L100
	leaq	-304(%rbp), %rax
	movabsq	$7379538751752728181, %rcx
	movq	%rcx, (%rax)
	movl	$6579561, 8(%rax)
.L100:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$390, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpq	$0, -16(%rbp)
	je	.L101
	movq	-16(%rbp), %rax
	jmp	.L102
.L101:
	leaq	.LC17(%rip), %rax
.L102:
	leaq	-304(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rcx, %r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$107, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC14(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$395, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ts_check_status_info, .-ts_check_status_info
	.section	.rodata
.LC19:
	.string	"/"
	.text
	.type	ts_get_status_text, @function
ts_get_status_text:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC19(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1048576, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sk_ASN1_UTF8STRING2text@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ts_get_status_text, .-ts_get_status_text
	.type	ts_check_policy, @function
ts_check_policy:
.LFB639:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	je	.L107
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L108
.L107:
	movl	$1, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ts_check_policy, .-ts_check_policy
	.type	ts_compute_imprint, @function
ts_compute_imprint:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4256, %rsp
	movq	%rdi, -4216(%rbp)
	movq	%rsi, -4224(%rbp)
	movq	%rdx, -4232(%rbp)
	movq	%rcx, -4240(%rbp)
	movq	%r8, -4248(%rbp)
	movq	-4224(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-4232(%rbp), %rax
	movq	$0, (%rax)
	movq	-4240(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_dup@PLT
	movq	-4232(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-4232(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-4208(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	leaq	-4208(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L112
	leaq	-4208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
.L112:
	cmpq	$0, -8(%rbp)
	jne	.L113
	call	ERR_clear_last_mark@PLT
	jmp	.L111
.L113:
	call	ERR_pop_to_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L124
	movl	-36(%rbp), %edx
	movq	-4248(%rbp), %rax
	movl	%edx, (%rax)
	movq	-4248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	leaq	.LC14(%rip), %rax
	movl	$454, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-4240(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-4240(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L125
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L111
.L116:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L126
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L118
.L119:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-4144(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L127
.L118:
	leaq	-4144(%rbp), %rcx
	movq	-4216(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L119
	movq	-4240(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	je	.L128
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$1, %eax
	jmp	.L122
.L123:
	nop
	jmp	.L111
.L124:
	nop
	jmp	.L111
.L125:
	nop
	jmp	.L111
.L126:
	nop
	jmp	.L111
.L127:
	nop
	jmp	.L111
.L128:
	nop
.L111:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-4232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-4232(%rbp), %rax
	movq	$0, (%rax)
	movq	-4240(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rcx
	movl	$480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-4248(%rbp), %rax
	movl	$0, (%rax)
	movq	-4240(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ts_compute_imprint, .-ts_compute_imprint
	.type	ts_check_imprints, @function
ts_check_imprints:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L130
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L139
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	cmpl	$5, %eax
	jne	.L140
.L133:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	cmpl	$5, %eax
	jne	.L140
.L130:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L135
	movl	-68(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L135
	movl	$1, %eax
	jmp	.L136
.L135:
	movl	$0, %eax
.L136:
	movl	%eax, -20(%rbp)
	jmp	.L132
.L139:
	nop
	jmp	.L132
.L140:
	nop
.L132:
	cmpl	$0, -20(%rbp)
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$510, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L137:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ts_check_imprints, .-ts_check_imprints
	.type	ts_check_nonces, @function
ts_check_nonces:
.LFB642:
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
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	je	.L144
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$525, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L144:
	movl	$1, %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ts_check_nonces, .-ts_check_nonces
	.type	ts_check_signer_name, @function
ts_check_signer_name:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$-1, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L146
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$1, %eax
	jmp	.L152
.L146:
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -8(%rbp)
	jmp	.L148
.L151:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_find_name
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L153
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -8(%rbp)
.L148:
	cmpq	$0, -8(%rbp)
	jne	.L151
	jmp	.L150
.L153:
	nop
.L150:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movl	-12(%rbp), %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ts_check_signer_name, .-ts_check_signer_name
	.type	ts_find_name, @function
ts_find_name:
.LFB644:
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
	movl	$0, -8(%rbp)
	jmp	.L155
.L157:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L155:
	cmpl	$0, -8(%rbp)
	jne	.L156
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L157
.L156:
	cmpl	$0, -8(%rbp)
	je	.L158
	movl	-4(%rbp), %eax
	subl	$1, %eax
	jmp	.L160
.L158:
	movl	$-1, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ts_find_name, .-ts_find_name
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 25
__func__.7:
	.string	"TS_RESP_verify_signature"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 15
__func__.6:
	.string	"ts_verify_cert"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"int_ts_RESP_verify_token"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 21
__func__.4:
	.string	"ts_check_status_info"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"ts_check_policy"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"ts_compute_imprint"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ts_check_imprints"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ts_check_nonces"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

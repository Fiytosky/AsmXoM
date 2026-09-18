	.file	"cms_sd.c"
	.text
	.type	ossl_check_X509_ALGOR_type, @function
ossl_check_X509_ALGOR_type:
.LFB39:
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
.LFE39:
	.size	ossl_check_X509_ALGOR_type, .-ossl_check_X509_ALGOR_type
	.type	ossl_check_const_X509_ALGOR_sk_type, @function
ossl_check_const_X509_ALGOR_sk_type:
.LFB40:
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
.LFE40:
	.size	ossl_check_const_X509_ALGOR_sk_type, .-ossl_check_const_X509_ALGOR_sk_type
	.type	ossl_check_X509_ALGOR_sk_type, @function
ossl_check_X509_ALGOR_sk_type:
.LFB41:
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
.LFE41:
	.size	ossl_check_X509_ALGOR_sk_type, .-ossl_check_X509_ALGOR_sk_type
	.type	ossl_check_X509_ALGOR_freefunc_type, @function
ossl_check_X509_ALGOR_freefunc_type:
.LFB44:
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
.LFE44:
	.size	ossl_check_X509_ALGOR_freefunc_type, .-ossl_check_X509_ALGOR_freefunc_type
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
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
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB416:
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
.LFE416:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_const_X509_CRL_sk_type, @function
ossl_check_const_X509_CRL_sk_type:
.LFB427:
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
.LFE427:
	.size	ossl_check_const_X509_CRL_sk_type, .-ossl_check_const_X509_CRL_sk_type
	.type	ossl_check_CMS_SignerInfo_type, @function
ossl_check_CMS_SignerInfo_type:
.LFB623:
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
.LFE623:
	.size	ossl_check_CMS_SignerInfo_type, .-ossl_check_CMS_SignerInfo_type
	.type	ossl_check_const_CMS_SignerInfo_sk_type, @function
ossl_check_const_CMS_SignerInfo_sk_type:
.LFB624:
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
.LFE624:
	.size	ossl_check_const_CMS_SignerInfo_sk_type, .-ossl_check_const_CMS_SignerInfo_sk_type
	.type	ossl_check_CMS_SignerInfo_sk_type, @function
ossl_check_CMS_SignerInfo_sk_type:
.LFB625:
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
.LFE625:
	.size	ossl_check_CMS_SignerInfo_sk_type, .-ossl_check_CMS_SignerInfo_sk_type
	.type	ossl_check_const_CMS_RevocationInfoChoice_sk_type, @function
ossl_check_const_CMS_RevocationInfoChoice_sk_type:
.LFB642:
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
.LFE642:
	.size	ossl_check_const_CMS_RevocationInfoChoice_sk_type, .-ossl_check_const_CMS_RevocationInfoChoice_sk_type
	.type	sk_CMS_CertificateChoices_num, @function
sk_CMS_CertificateChoices_num:
.LFB739:
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
.LFE739:
	.size	sk_CMS_CertificateChoices_num, .-sk_CMS_CertificateChoices_num
	.type	sk_CMS_CertificateChoices_value, @function
sk_CMS_CertificateChoices_value:
.LFB740:
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
.LFE740:
	.size	sk_CMS_CertificateChoices_value, .-sk_CMS_CertificateChoices_value
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_sd.c"
	.text
	.type	cms_get0_signed, @function
cms_get0_signed:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	cms_get0_signed, .-cms_get0_signed
	.type	cms_signed_data_init, @function
cms_signed_data_init:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	call	CMS_SignedData_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	$1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$22, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L37
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cms_get0_signed
.L37:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	cms_signed_data_init, .-cms_signed_data_init
	.globl	CMS_SignedData_init
	.type	CMS_SignedData_init, @function
CMS_SignedData_init:
.LFB766:
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
	call	cms_signed_data_init
	testq	%rax, %rax
	je	.L39
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	CMS_SignedData_init, .-CMS_SignedData_init
	.type	cms_sd_set_version, @function
cms_sd_set_version:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L42
.L46:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L43
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jg	.L44
	movq	-40(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L44
.L43:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L45
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jg	.L44
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L44
.L45:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L44
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L44
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
.L44:
	addl	$1, -4(%rbp)
.L42:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_num
	cmpl	%eax, -4(%rbp)
	jl	.L46
	movl	$0, -4(%rbp)
	jmp	.L47
.L49:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RevocationInfoChoice_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L48
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jg	.L48
	movq	-40(%rbp), %rax
	movl	$5, (%rax)
.L48:
	addl	$1, -4(%rbp)
.L47:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RevocationInfoChoice_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L49
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	je	.L50
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L50
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
.L50:
	movl	$0, -4(%rbp)
	jmp	.L51
.L55:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L52
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L53
	movq	-16(%rbp), %rax
	movl	$3, (%rax)
.L53:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L54
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L54
.L52:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L54
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.L54:
	addl	$1, -4(%rbp)
.L51:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L55
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L57
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
.L57:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	cms_sd_set_version, .-cms_sd_set_version
	.type	cms_set_si_contentType_attr, @function
cms_set_si_contentType_attr:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	cms_set_si_contentType_attr, .-cms_set_si_contentType_attr
	.type	cms_copy_messageDigest, @function
cms_copy_messageDigest:
.LFB769:
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
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L61
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_signed_get_attr_count@PLT
	testl	%eax, %eax
	js	.L71
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$51, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movl	$4, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	testl	%eax, %eax
	je	.L68
	movl	$1, %eax
	jmp	.L67
.L68:
	movl	$0, %eax
	jmp	.L67
.L70:
	nop
	jmp	.L63
.L71:
	nop
	jmp	.L63
.L72:
	nop
.L63:
	addl	$1, -4(%rbp)
.L61:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L69
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	cms_copy_messageDigest, .-cms_copy_messageDigest
	.globl	ossl_cms_set1_SignerIdentifier
	.type	ossl_cms_set1_SignerIdentifier, @function
ossl_cms_set1_SignerIdentifier:
.LFB770:
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
	movq	%rcx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L74
	cmpl	$1, -20(%rbp)
	je	.L75
	jmp	.L81
.L74:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cms_set1_ias@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L78
.L75:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cms_set1_keyid@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L78
.L81:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L82:
	nop
	jmp	.L79
.L83:
	nop
.L79:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ossl_cms_set1_SignerIdentifier, .-ossl_cms_set1_SignerIdentifier
	.globl	ossl_cms_SignerIdentifier_get0_signer_id
	.type	ossl_cms_SignerIdentifier_get0_signer_id, @function
ossl_cms_SignerIdentifier_get0_signer_id:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L85
	cmpq	$0, -24(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L86:
	cmpq	$0, -32(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L87
.L85:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L88
	cmpq	$0, -16(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L87
.L88:
	movl	$0, %eax
	jmp	.L89
.L87:
	movl	$1, %eax
.L89:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ossl_cms_SignerIdentifier_get0_signer_id, .-ossl_cms_SignerIdentifier_get0_signer_id
	.globl	ossl_cms_SignerIdentifier_cert_cmp
	.type	ossl_cms_SignerIdentifier_cert_cmp, @function
ossl_cms_SignerIdentifier_cert_cmp:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L91
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_ias_cert_cmp@PLT
	jmp	.L92
.L91:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L93
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_keyid_cert_cmp@PLT
	jmp	.L92
.L93:
	movl	$-1, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	ossl_cms_SignerIdentifier_cert_cmp, .-ossl_cms_SignerIdentifier_cert_cmp
	.type	cms_generic_sign, @function
cms_generic_sign:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L95
	cmpl	$1, -76(%rbp)
	jne	.L96
.L95:
	movl	$1, %eax
	jmp	.L97
.L96:
	movl	$0, %eax
.L97:
	cltq
	testq	%rax, %rax
	jne	.L98
	movl	$-1, %eax
	jmp	.L99
.L98:
	cmpl	$0, -76(%rbp)
	jne	.L100
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, -4(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_algs@PLT
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L101
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L102
.L101:
	movl	$-1, %eax
	jmp	.L99
.L102:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L104
	movl	$-1, %eax
	jmp	.L99
.L104:
	cmpl	$0, -4(%rbp)
	jg	.L105
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_type_name@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L105
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -4(%rbp)
.L105:
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %ecx
	leaq	-36(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$-1, %eax
	jmp	.L99
.L106:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	jmp	.L99
.L100:
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	cms_generic_sign, .-cms_generic_sign
	.section	.rodata
.LC1:
	.string	"DSA"
.LC2:
	.string	"EC"
.LC3:
	.string	"RSA"
.LC4:
	.string	"RSA-PSS"
	.text
	.type	cms_sd_asn1_ctrl, @function
cms_sd_asn1_ctrl:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L108
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L109
.L108:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	cms_generic_sign
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L110
.L109:
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L111
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L112
.L111:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cms_rsa_sign@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L110
.L112:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L114
.L113:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	cms_generic_sign
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L110
.L114:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -12(%rbp)
	cmpl	$-2, -12(%rbp)
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L115:
	cmpl	$0, -12(%rbp)
	jg	.L116
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L116:
	movl	$1, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	cms_sd_asn1_ctrl, .-cms_sd_asn1_ctrl
	.type	ossl_cms_add1_signing_cert, @function
ossl_cms_add1_signing_cert:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L118
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$292, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L123
.L119:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT@PLT
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L121
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L122
.L121:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$299, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L123
.L122:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$302, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$223, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-24(%rbp), %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_cms_add1_signing_cert, .-ossl_cms_add1_signing_cert
	.type	ossl_cms_add1_signing_cert_v2, @function
ossl_cms_add1_signing_cert_v2:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT_V2@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L125
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$317, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L126
.L125:
	movl	$0, %eax
	jmp	.L130
.L126:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT_V2@PLT
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L128
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L129
.L128:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$324, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L130
.L129:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$327, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$1086, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-24(%rbp), %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ossl_cms_add1_signing_cert_v2, .-ossl_cms_add1_signing_cert_v2
	.section	.rodata
.LC5:
	.string	"pkey nid=%d"
.LC6:
	.string	"default md nid=%d"
.LC7:
	.string	"SHA1"
	.text
	.globl	CMS_add1_signer
	.type	CMS_add1_signer, @function
CMS_add1_signer:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movl	%r8d, -196(%rbp)
	movq	$0, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -48(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	cms_signed_data_init
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L175
	call	CMS_SignerInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L136:
	movq	-176(%rbp), %rax
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-24(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, 56(%rax)
	call	EVP_MD_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L137:
	movl	-196(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L138
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L139
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
.L139:
	movl	$1, -32(%rbp)
	jmp	.L140
.L138:
	movl	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.L140:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	-32(%rbp), %edx
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_cms_set1_SignerIdentifier@PLT
	testl	%eax, %eax
	je	.L176
	cmpq	$0, -192(%rbp)
	jne	.L142
	leaq	-84(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_nid@PLT
	testl	%eax, %eax
	jg	.L143
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$390, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %edx
	leaq	.LC5(%rip), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$128, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L143:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L142
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-84(%rbp), %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, %ecx
	movl	$128, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L142:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set_md@PLT
	movl	$0, -28(%rbp)
	jmp	.L146
.L149:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-96(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leaq	-160(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L177
	addl	$1, -28(%rbp)
.L146:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L149
	jmp	.L148
.L177:
	nop
.L148:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jne	.L150
	call	X509_ALGOR_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L151
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L151:
	movq	-192(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set_md@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L150
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L150:
	movl	-196(%rbp), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	jne	.L152
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	cms_sd_asn1_ctrl
	testl	%eax, %eax
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %edx
	leaq	.LC5(%rip), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$195, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L152:
	movl	-196(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L153
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L154:
	movl	-196(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L155
	movq	$0, -104(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_add_standard_smimecap@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L156
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add_smimecap@PLT
	movl	%eax, -28(%rbp)
.L156:
	movq	X509_ALGOR_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_freefunc_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	cmpl	$0, -28(%rbp)
	jne	.L155
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L155:
	movl	-196(%rbp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L158
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -192(%rbp)
	je	.L159
	leaq	.LC7(%rip), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L160
.L159:
	movq	-176(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_ESS_signing_cert_new_init@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L178
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_add1_signing_cert
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_free@PLT
	jmp	.L162
.L160:
	movq	-176(%rbp), %rsi
	movq	-192(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_ESS_signing_cert_v2_new_init@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L179
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_add1_signing_cert_v2
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_V2_free@PLT
.L162:
	cmpl	$0, -36(%rbp)
	je	.L180
.L158:
	movl	-196(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L153
	movq	-24(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_copy_messageDigest
	testl	%eax, %eax
	je	.L181
	movq	-24(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_set_si_contentType_attr
	testl	%eax, %eax
	je	.L182
	movl	-196(%rbp), %eax
	andl	$278528, %eax
	testl	%eax, %eax
	jne	.L153
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SignerInfo_sign@PLT
	testl	%eax, %eax
	je	.L183
.L153:
	movl	-196(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L166
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_cert@PLT
	testl	%eax, %eax
	jne	.L166
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$494, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L166:
	movl	-196(%rbp), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L167
	movl	-196(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L168
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	64(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jle	.L185
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_signature_md@PLT
	testl	%eax, %eax
	jg	.L167
	jmp	.L135
.L168:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-184(%rbp), %rcx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L171
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.L135
.L171:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
.L167:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L172
	call	OPENSSL_sk_new_null@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L172:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L173
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_SignerInfo_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_SignerInfo_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L174
.L173:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$526, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L174:
	movq	-24(%rbp), %rax
	jmp	.L133
.L175:
	nop
	jmp	.L135
.L176:
	nop
	jmp	.L135
.L178:
	nop
	jmp	.L135
.L179:
	nop
	jmp	.L135
.L180:
	nop
	jmp	.L135
.L181:
	nop
	jmp	.L135
.L182:
	nop
	jmp	.L135
.L183:
	nop
	jmp	.L135
.L184:
	nop
	jmp	.L135
.L185:
	nop
.L135:
	call	CMS_SignerInfo_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
.L133:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	CMS_add1_signer, .-CMS_add1_signer
	.globl	ossl_cms_SignerInfos_set_cmsctx
	.type	ossl_cms_SignerInfos_set_cmsctx, @function
ossl_cms_SignerInfos_set_cmsctx:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -16(%rbp)
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -24(%rbp)
	call	ERR_pop_to_mark@PLT
	movl	$0, -4(%rbp)
	jmp	.L187
.L189:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L188
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
.L188:
	addl	$1, -4(%rbp)
.L187:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L189
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ossl_cms_SignerInfos_set_cmsctx, .-ossl_cms_SignerInfos_set_cmsctx
	.type	cms_add1_signingTime, @function
cms_add1_signingTime:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L191
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L192
.L191:
	movl	$0, %esi
	movl	$0, %edi
	call	X509_gmtime_adj@PLT
	movq	%rax, -8(%rbp)
.L192:
	cmpq	$0, -8(%rbp)
	jne	.L193
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$567, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L194
.L193:
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	testl	%eax, %eax
	jg	.L195
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L194
.L195:
	movl	$1, -12(%rbp)
.L194:
	cmpq	$0, -32(%rbp)
	jne	.L196
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L196:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	cms_add1_signingTime, .-cms_add1_signingTime
	.globl	CMS_SignerInfo_get0_pkey_ctx
	.type	CMS_SignerInfo_get0_pkey_ctx, @function
CMS_SignerInfo_get0_pkey_ctx:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	CMS_SignerInfo_get0_pkey_ctx, .-CMS_SignerInfo_get0_pkey_ctx
	.globl	CMS_SignerInfo_get0_md_ctx
	.type	CMS_SignerInfo_get0_md_ctx, @function
CMS_SignerInfo_get0_md_ctx:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	CMS_SignerInfo_get0_md_ctx, .-CMS_SignerInfo_get0_md_ctx
	.globl	CMS_get0_SignerInfos
	.type	CMS_get0_SignerInfos, @function
CMS_get0_SignerInfos:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cms_get0_signed
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L203
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L205
.L203:
	movl	$0, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	CMS_get0_SignerInfos, .-CMS_get0_SignerInfos
	.globl	CMS_get0_signers
	.type	CMS_get0_signers, @function
CMS_get0_signers:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L207
.L210:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L208
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	jne	.L208
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L211
.L208:
	addl	$1, -4(%rbp)
.L207:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L210
	movq	-32(%rbp), %rax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	CMS_get0_signers, .-CMS_get0_signers
	.globl	CMS_SignerInfo_set1_signer_cert
	.type	CMS_SignerInfo_set1_signer_cert, @function
CMS_SignerInfo_set1_signer_cert:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L213
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
.L213:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	CMS_SignerInfo_set1_signer_cert, .-CMS_SignerInfo_set1_signer_cert
	.globl	CMS_SignerInfo_get0_signer_id
	.type	CMS_SignerInfo_get0_signer_id, @function
CMS_SignerInfo_get0_signer_id:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_cms_SignerIdentifier_get0_signer_id@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	CMS_SignerInfo_get0_signer_id, .-CMS_SignerInfo_get0_signer_id
	.globl	CMS_SignerInfo_cert_cmp
	.type	CMS_SignerInfo_cert_cmp, @function
CMS_SignerInfo_cert_cmp:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_SignerIdentifier_cert_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	CMS_SignerInfo_cert_cmp, .-CMS_SignerInfo_cert_cmp
	.globl	CMS_set1_signers_certs
	.type	CMS_set1_signers_certs, @function
CMS_set1_signers_certs:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	$0, -12(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	cms_get0_signed
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L219
	movl	$-1, %eax
	jmp	.L220
.L219:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L221
.L234:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L235
	movl	$0, -8(%rbp)
	jmp	.L224
.L227:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_SignerInfo_cert_cmp@PLT
	testl	%eax, %eax
	jne	.L225
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_SignerInfo_set1_signer_cert@PLT
	addl	$1, -12(%rbp)
	jmp	.L226
.L225:
	addl	$1, -8(%rbp)
.L224:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L227
.L226:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L236
	movl	-84(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L236
	movl	$0, -8(%rbp)
	jmp	.L230
.L233:
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L237
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_SignerInfo_cert_cmp@PLT
	testl	%eax, %eax
	jne	.L232
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_SignerInfo_set1_signer_cert@PLT
	addl	$1, -12(%rbp)
	jmp	.L223
.L237:
	nop
.L232:
	addl	$1, -8(%rbp)
.L230:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_num
	cmpl	%eax, -8(%rbp)
	jl	.L233
	jmp	.L223
.L235:
	nop
	jmp	.L223
.L236:
	nop
.L223:
	addl	$1, -4(%rbp)
.L221:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L234
	movl	-12(%rbp), %eax
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	CMS_set1_signers_certs, .-CMS_set1_signers_certs
	.globl	CMS_SignerInfo_get0_algs
	.type	CMS_SignerInfo_get0_algs, @function
CMS_SignerInfo_get0_algs:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L239
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L239:
	cmpq	$0, -24(%rbp)
	je	.L240
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L240:
	cmpq	$0, -32(%rbp)
	je	.L241
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L241:
	cmpq	$0, -40(%rbp)
	je	.L243
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L243:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	CMS_SignerInfo_get0_algs, .-CMS_SignerInfo_get0_algs
	.globl	CMS_SignerInfo_get0_signature
	.type	CMS_SignerInfo_get0_signature, @function
CMS_SignerInfo_get0_signature:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	CMS_SignerInfo_get0_signature, .-CMS_SignerInfo_get0_signature
	.type	cms_SignerInfo_content_sign, @function
cms_SignerInfo_content_sign:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L247
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L248
.L247:
	movq	-160(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L249
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$729, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L249:
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestAlgorithm_find_ctx@PLT
	testl	%eax, %eax
	je	.L273
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L252
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	cms_sd_asn1_ctrl
	testl	%eax, %eax
	je	.L274
.L252:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_signed_get_attr_count@PLT
	testl	%eax, %eax
	js	.L253
	cmpq	$0, -176(%rbp)
	jne	.L254
	leaq	-180(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L275
	leaq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
.L254:
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	testl	%eax, %eax
	je	.L276
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_set_si_contentType_attr
	testl	%eax, %eax
	je	.L277
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SignerInfo_sign@PLT
	testl	%eax, %eax
	jne	.L260
	jmp	.L250
.L253:
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L261
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	$0, 80(%rax)
	cmpq	$0, -176(%rbp)
	jne	.L262
	leaq	-180(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L278
	leaq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
.L262:
	movq	-160(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L279
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$772, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L279
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	movq	-176(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L267
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$775, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L250
.L267:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	jmp	.L260
.L261:
	cmpq	$0, -176(%rbp)
	je	.L268
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$784, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L268:
	movq	-160(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	je	.L280
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$788, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L280
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-160(%rbp), %rax
	movq	64(%rax), %rcx
	leaq	-76(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_SignFinal_ex@PLT
	testl	%eax, %eax
	jne	.L272
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$794, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L250
.L272:
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
.L260:
	movl	$1, -20(%rbp)
	jmp	.L250
.L273:
	nop
	jmp	.L250
.L274:
	nop
	jmp	.L250
.L275:
	nop
	jmp	.L250
.L276:
	nop
	jmp	.L250
.L277:
	nop
	jmp	.L250
.L278:
	nop
	jmp	.L250
.L279:
	nop
	jmp	.L250
.L280:
	nop
.L250:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
.L248:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	cms_SignerInfo_content_sign, .-cms_SignerInfo_content_sign
	.globl	ossl_cms_SignedData_final
	.type	ossl_cms_SignedData_final, @function
ossl_cms_SignedData_final:
.LFB791:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L282
.L285:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	cms_SignerInfo_content_sign
	testl	%eax, %eax
	jne	.L283
	movl	$0, %eax
	jmp	.L284
.L283:
	addl	$1, -4(%rbp)
.L282:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L285
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	$0, 16(%rax)
	movl	$1, %eax
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	ossl_cms_SignedData_final, .-ossl_cms_SignedData_final
	.globl	CMS_SignerInfo_sign
	.type	CMS_SignerInfo_sign, @function
CMS_SignerInfo_sign:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jg	.L287
	movl	$0, %eax
	jmp	.L300
.L287:
	movq	-136(%rbp), %rax
	movl	$-1, %edx
	movl	$52, %esi
	movq	%rax, %rdi
	call	CMS_signed_get_attr_by_NID@PLT
	testl	%eax, %eax
	jns	.L289
	movq	-136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	cms_add1_signingTime
	testl	%eax, %eax
	je	.L301
.L289:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_si_check_attributes@PLT
	testl	%eax, %eax
	je	.L302
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L293
.L292:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movq	-136(%rbp), %rax
	movq	64(%rax), %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	-128(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L303
	movq	-24(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
	movq	-48(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 80(%rax)
.L293:
	call	CMS_Attributes_Sign_it@PLT
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L304
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jle	.L305
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jle	.L306
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$871, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$872, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L307
	movq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jle	.L308
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movl	$1, %eax
	jmp	.L300
.L301:
	nop
	jmp	.L290
.L302:
	nop
	jmp	.L290
.L303:
	nop
	jmp	.L290
.L304:
	nop
	jmp	.L290
.L305:
	nop
	jmp	.L290
.L306:
	nop
	jmp	.L290
.L307:
	nop
	jmp	.L290
.L308:
	nop
.L290:
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$885, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movl	$0, %eax
.L300:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	CMS_SignerInfo_sign, .-CMS_SignerInfo_sign
	.globl	CMS_SignerInfo_verify
	.type	CMS_SignerInfo_verify, @function
CMS_SignerInfo_verify:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movl	$-1, -28(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L310
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$903, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L324
.L310:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_si_check_attributes@PLT
	testl	%eax, %eax
	jne	.L312
	movl	$-1, %eax
	jmp	.L324
.L312:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L313
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L314
.L313:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -40(%rbp)
.L314:
	cmpq	$0, -40(%rbp)
	jne	.L315
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$921, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L324
.L315:
	call	ERR_pop_to_mark@PLT
	movq	-152(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L316
	call	EVP_MD_CTX_new@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-152(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L316
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$927, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L317
.L316:
	movq	-152(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L318
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	$0, 80(%rax)
.L318:
	movq	-152(%rbp), %rax
	movq	64(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdi
	movq	-152(%rbp), %rax
	leaq	80(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L319
	movq	-152(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.L317
.L319:
	movq	-24(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	cms_sd_asn1_ctrl
	testl	%eax, %eax
	je	.L325
	call	CMS_Attributes_Verify_it@PLT
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L326
	cmpl	$0, -76(%rbp)
	js	.L326
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	movl	%eax, -28(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$950, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -28(%rbp)
	jg	.L323
	movl	$-1, -28(%rbp)
	jmp	.L317
.L323:
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L327
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$958, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L317
.L325:
	nop
	jmp	.L317
.L326:
	nop
	jmp	.L317
.L327:
	nop
.L317:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movl	-28(%rbp), %eax
.L324:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	CMS_SignerInfo_verify, .-CMS_SignerInfo_verify
	.globl	ossl_cms_SignedData_init_bio
	.type	ossl_cms_SignedData_init_bio, @function
ossl_cms_SignedData_init_bio:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	cms_get0_signed
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L329
	movl	$0, %eax
	jmp	.L330
.L329:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L331
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cms_sd_set_version
.L331:
	movl	$0, -4(%rbp)
	jmp	.L332
.L337:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestAlgorithm_init_bio@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L339
	cmpq	$0, -16(%rbp)
	je	.L335
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	jmp	.L336
.L335:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L336:
	addl	$1, -4(%rbp)
.L332:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L337
	movq	-16(%rbp), %rax
	jmp	.L330
.L339:
	nop
.L334:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	ossl_cms_SignedData_init_bio, .-ossl_cms_SignedData_init_bio
	.globl	CMS_SignerInfo_verify_content
	.type	CMS_SignerInfo_verify_content, @function
CMS_SignerInfo_verify_content:
.LFB795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -36(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L341
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1007, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L341:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_signed_get_attr_count@PLT
	testl	%eax, %eax
	js	.L343
	movl	$51, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-152(%rbp), %rax
	movl	$4, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L343
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1016, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L343:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-160(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestAlgorithm_find_ctx@PLT
	testl	%eax, %eax
	je	.L354
	leaq	-132(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L345
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L345:
	cmpq	$0, -24(%rbp)
	je	.L346
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-132(%rbp), %eax
	cmpl	%eax, %edx
	je	.L347
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1032, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L347:
	movl	-132(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L348
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1037, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -36(%rbp)
	jmp	.L342
.L348:
	movl	$1, -36(%rbp)
	jmp	.L342
.L346:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-152(%rbp), %rax
	movq	64(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L355
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	testl	%eax, %eax
	jle	.L356
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_signature_md@PLT
	testl	%eax, %eax
	jle	.L357
	movq	-152(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	cms_sd_asn1_ctrl
	testl	%eax, %eax
	jne	.L352
	movq	-152(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.L342
.L352:
	movq	-152(%rbp), %rax
	movq	$0, 80(%rax)
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L358
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1064, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -36(%rbp)
	jmp	.L342
.L354:
	nop
	jmp	.L342
.L355:
	nop
	jmp	.L342
.L356:
	nop
	jmp	.L342
.L357:
	nop
	jmp	.L342
.L358:
	nop
.L342:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-36(%rbp), %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	CMS_SignerInfo_verify_content, .-CMS_SignerInfo_verify_content
	.globl	CMS_SignedData_verify
	.type	CMS_SignedData_verify, @function
CMS_SignedData_verify:
.LFB796:
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
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L360
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1087, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L361
.L360:
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L362
	movl	$0, %eax
	jmp	.L361
.L362:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L373
	movl	$22, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, -12(%rbp)
	jmp	.L365
.L367:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_cert@PLT
	testl	%eax, %eax
	je	.L374
	addl	$1, -12(%rbp)
.L365:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L367
	movl	$0, -12(%rbp)
	jmp	.L368
.L370:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_crl@PLT
	testl	%eax, %eax
	je	.L375
	addl	$1, -12(%rbp)
.L368:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L370
	movl	16(%rbp), %r8d
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_verify@PLT
	movl	%eax, -16(%rbp)
	jmp	.L364
.L373:
	nop
	jmp	.L364
.L374:
	nop
	jmp	.L364
.L375:
	nop
.L364:
	cmpq	$0, -24(%rbp)
	je	.L371
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L371:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	cmpl	$0, -16(%rbp)
	jne	.L372
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -8(%rbp)
.L372:
	movq	-8(%rbp), %rax
.L361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	CMS_SignedData_verify, .-CMS_SignedData_verify
	.globl	CMS_add_smimecap
	.type	CMS_add_smimecap, @function
CMS_add_smimecap:
.LFB797:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_ALGORS@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L377
	movl	$0, %eax
	jmp	.L379
.L377:
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$167, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
.L379:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	CMS_add_smimecap, .-CMS_add_smimecap
	.globl	CMS_add_simple_smimecap
	.type	CMS_add_simple_smimecap, @function
CMS_add_simple_smimecap:
.LFB798:
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
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -48(%rbp)
	jle	.L381
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L382
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L381
.L382:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
	jmp	.L383
.L381:
	cmpq	$0, -24(%rbp)
	je	.L384
	movl	$2, %ecx
	jmp	.L385
.L384:
	movl	$-1, %ecx
.L385:
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ossl_X509_ALGOR_from_nid@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L386
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
	jmp	.L383
.L386:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L387
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L387:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L388
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L389
.L388:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
	jmp	.L383
.L389:
	movl	$1, %eax
.L383:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	CMS_add_simple_smimecap, .-CMS_add_simple_smimecap
	.type	cms_add_cipher_smcap, @function
cms_add_cipher_smcap:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	testq	%rax, %rax
	je	.L391
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CMS_add_simple_smimecap@PLT
	jmp	.L392
.L391:
	movl	$1, %eax
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	cms_add_cipher_smcap, .-cms_add_cipher_smcap
	.type	cms_add_digest_smcap, @function
cms_add_digest_smcap:
.LFB800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	testq	%rax, %rax
	je	.L394
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CMS_add_simple_smimecap@PLT
	jmp	.L395
.L394:
	movl	$1, %eax
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	cms_add_digest_smcap, .-cms_add_digest_smcap
	.globl	CMS_add_standard_smimecap
	.type	CMS_add_standard_smimecap, @function
CMS_add_standard_smimecap:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$427, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$982, %esi
	movq	%rax, %rdi
	call	cms_add_digest_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$983, %esi
	movq	%rax, %rdi
	call	cms_add_digest_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$809, %esi
	movq	%rax, %rdi
	call	cms_add_digest_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$813, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$423, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$419, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$128, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	cms_add_cipher_smcap
	testl	%eax, %eax
	jne	.L398
.L397:
	movl	$0, %eax
	jmp	.L399
.L398:
	movl	$1, %eax
.L399:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	CMS_add_standard_smimecap, .-CMS_add_standard_smimecap
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 16
__func__.10:
	.string	"cms_get0_signed"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 21
__func__.9:
	.string	"cms_signed_data_init"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 23
__func__.8:
	.string	"cms_copy_messageDigest"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 31
__func__.7:
	.string	"ossl_cms_set1_SignerIdentifier"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"cms_sd_asn1_ctrl"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"CMS_add1_signer"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 21
__func__.4:
	.string	"cms_add1_signingTime"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 28
__func__.3:
	.string	"cms_SignerInfo_content_sign"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"CMS_SignerInfo_verify"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 30
__func__.1:
	.string	"CMS_SignerInfo_verify_content"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"CMS_SignedData_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

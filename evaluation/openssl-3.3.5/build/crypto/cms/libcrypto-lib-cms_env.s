	.file	"cms_env.c"
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
	.type	ossl_check_CMS_RecipientInfo_type, @function
ossl_check_CMS_RecipientInfo_type:
.LFB635:
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
.LFE635:
	.size	ossl_check_CMS_RecipientInfo_type, .-ossl_check_CMS_RecipientInfo_type
	.type	ossl_check_const_CMS_RecipientInfo_sk_type, @function
ossl_check_const_CMS_RecipientInfo_sk_type:
.LFB636:
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
.LFE636:
	.size	ossl_check_const_CMS_RecipientInfo_sk_type, .-ossl_check_const_CMS_RecipientInfo_sk_type
	.type	ossl_check_CMS_RecipientInfo_sk_type, @function
ossl_check_CMS_RecipientInfo_sk_type:
.LFB637:
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
.LFE637:
	.size	ossl_check_CMS_RecipientInfo_sk_type, .-ossl_check_CMS_RecipientInfo_sk_type
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
.LFB727:
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
.LFE727:
	.size	sk_CMS_CertificateChoices_num, .-sk_CMS_CertificateChoices_num
	.type	sk_CMS_CertificateChoices_value, @function
sk_CMS_CertificateChoices_value:
.LFB728:
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
.LFE728:
	.size	sk_CMS_CertificateChoices_value, .-sk_CMS_CertificateChoices_value
	.type	cms_get_enveloped_type_simple, @function
cms_get_enveloped_type_simple:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$23, -4(%rbp)
	je	.L18
	cmpl	$1059, -4(%rbp)
	je	.L19
	jmp	.L22
.L18:
	movl	$1, %eax
	jmp	.L21
.L19:
	movl	$2, %eax
	jmp	.L21
.L22:
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	cms_get_enveloped_type_simple, .-cms_get_enveloped_type_simple
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_env.c"
	.text
	.type	cms_get_enveloped_type, @function
cms_get_enveloped_type:
.LFB753:
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
	call	cms_get_enveloped_type_simple
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L24:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	cms_get_enveloped_type, .-cms_get_enveloped_type
	.globl	ossl_cms_get0_enveloped
	.type	ossl_cms_get0_enveloped, @function
ossl_cms_get0_enveloped:
.LFB754:
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
	cmpl	$23, %eax
	je	.L27
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	ossl_cms_get0_enveloped, .-ossl_cms_get0_enveloped
	.globl	ossl_cms_get0_auth_enveloped
	.type	ossl_cms_get0_auth_enveloped, @function
ossl_cms_get0_auth_enveloped:
.LFB755:
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
	cmpl	$1059, %eax
	je	.L30
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_cms_get0_auth_enveloped, .-ossl_cms_get0_auth_enveloped
	.type	cms_enveloped_data_init, @function
cms_enveloped_data_init:
.LFB756:
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
	jne	.L33
	call	CMS_EnvelopedData_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$23, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L35
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_enveloped@PLT
.L35:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	cms_enveloped_data_init, .-cms_enveloped_data_init
	.type	cms_auth_enveloped_data_init, @function
cms_auth_enveloped_data_init:
.LFB757:
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
	jne	.L37
	call	CMS_AuthEnvelopedData_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$1059, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L39
.L37:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_auth_enveloped@PLT
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	cms_auth_enveloped_data_init, .-cms_auth_enveloped_data_init
	.section	.rodata
.LC1:
	.string	"DHX"
.LC2:
	.string	"DH"
.LC3:
	.string	"EC"
.LC4:
	.string	"RSA"
	.text
	.globl	ossl_cms_env_asn1_ctrl
	.type	ossl_cms_env_asn1_ctrl, @function
ossl_cms_env_asn1_ctrl:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L41
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L42
.L41:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L43
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L45
.L43:
	movl	$0, %eax
	jmp	.L45
.L42:
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L46
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L47
.L46:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cms_dh_envelope@PLT
	jmp	.L45
.L47:
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L48
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cms_ecdh_envelope@PLT
	jmp	.L45
.L48:
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L49
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cms_rsa_envelope@PLT
	jmp	.L45
.L49:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L51
.L50:
	movl	$1, %eax
	jmp	.L45
.L51:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$-2, -20(%rbp)
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L52:
	cmpl	$0, -20(%rbp)
	jg	.L53
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L53:
	movl	$1, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	ossl_cms_env_asn1_ctrl, .-ossl_cms_env_asn1_ctrl
	.globl	ossl_cms_get0_env_enc_content
	.type	ossl_cms_get0_env_enc_content, @function
ossl_cms_get0_env_enc_content:
.LFB759:
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
	call	cms_get_enveloped_type
	cmpl	$1, %eax
	je	.L55
	cmpl	$2, %eax
	je	.L56
	jmp	.L63
.L55:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L60
.L58:
	movl	$0, %eax
	jmp	.L60
.L56:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L60
.L61:
	movl	$0, %eax
	jmp	.L60
.L63:
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ossl_cms_get0_env_enc_content, .-ossl_cms_get0_env_enc_content
	.globl	CMS_get0_RecipientInfos
	.type	CMS_get0_RecipientInfos, @function
CMS_get0_RecipientInfos:
.LFB760:
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
	call	cms_get_enveloped_type
	cmpl	$1, %eax
	je	.L65
	cmpl	$2, %eax
	je	.L66
	jmp	.L69
.L65:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L68
.L66:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L68
.L69:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	CMS_get0_RecipientInfos, .-CMS_get0_RecipientInfos
	.globl	ossl_cms_RecipientInfos_set_cmsctx
	.type	ossl_cms_RecipientInfos_set_cmsctx, @function
ossl_cms_RecipientInfos_set_cmsctx:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L71
.L77:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L72
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L73
	cmpl	$3, %eax
	jg	.L78
	cmpl	$2, %eax
	je	.L75
	cmpl	$2, %eax
	jg	.L78
	testl	%eax, %eax
	je	.L76
	cmpl	$1, %eax
	jne	.L78
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L72
.L76:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
	jmp	.L72
.L75:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L72
.L73:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L72
.L78:
	nop
.L72:
	addl	$1, -20(%rbp)
.L71:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L77
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_cms_RecipientInfos_set_cmsctx, .-ossl_cms_RecipientInfos_set_cmsctx
	.globl	CMS_RecipientInfo_type
	.type	CMS_RecipientInfo_type, @function
CMS_RecipientInfo_type:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	CMS_RecipientInfo_type, .-CMS_RecipientInfo_type
	.globl	CMS_RecipientInfo_get0_pkey_ctx
	.type	CMS_RecipientInfo_get0_pkey_ctx, @function
CMS_RecipientInfo_get0_pkey_ctx:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L82
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L84
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	jmp	.L83
.L84:
	movl	$0, %eax
.L83:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	CMS_RecipientInfo_get0_pkey_ctx, .-CMS_RecipientInfo_get0_pkey_ctx
	.globl	CMS_EnvelopedData_create_ex
	.type	CMS_EnvelopedData_create_ex, @function
CMS_EnvelopedData_create_ex:
.LFB764:
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
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L91
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cms_enveloped_data_init
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L92
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init@PLT
	testl	%eax, %eax
	je	.L93
	movq	-8(%rbp), %rax
	jmp	.L90
.L91:
	nop
	jmp	.L87
.L92:
	nop
	jmp	.L87
.L93:
	nop
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	CMS_EnvelopedData_create_ex, .-CMS_EnvelopedData_create_ex
	.globl	CMS_EnvelopedData_create
	.type	CMS_EnvelopedData_create, @function
CMS_EnvelopedData_create:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_EnvelopedData_create_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	CMS_EnvelopedData_create, .-CMS_EnvelopedData_create
	.globl	CMS_EnvelopedData_decrypt
	.type	CMS_EnvelopedData_decrypt, @function
CMS_EnvelopedData_decrypt:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L109
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L109
	movl	$23, %edi
	call	OBJ_nid2obj@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -88(%rbp)
	je	.L102
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movslq	%eax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_decrypt_set1_password@PLT
	cmpl	$1, %eax
	jne	.L110
.L102:
	cmpq	$0, -88(%rbp)
	jne	.L103
	movq	-80(%rbp), %rdx
	jmp	.L104
.L103:
	movl	$0, %edx
.L104:
	cmpq	$0, -88(%rbp)
	jne	.L105
	movq	-72(%rbp), %rax
	jmp	.L106
.L105:
	movl	$0, %eax
.L106:
	movl	-92(%rbp), %r8d
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	CMS_decrypt@PLT
	movl	%eax, -28(%rbp)
	jmp	.L101
.L109:
	nop
	jmp	.L101
.L110:
	nop
.L101:
	cmpq	$0, -40(%rbp)
	je	.L107
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L107:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	cmpl	$0, -28(%rbp)
	jne	.L108
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -24(%rbp)
.L108:
	movq	-24(%rbp), %rax
.L98:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	CMS_EnvelopedData_decrypt, .-CMS_EnvelopedData_decrypt
	.globl	CMS_AuthEnvelopedData_create_ex
	.type	CMS_AuthEnvelopedData_create_ex, @function
CMS_AuthEnvelopedData_create_ex:
.LFB767:
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
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cms_auth_enveloped_data_init
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init@PLT
	testl	%eax, %eax
	je	.L119
	movq	-8(%rbp), %rax
	jmp	.L116
.L117:
	nop
	jmp	.L113
.L118:
	nop
	jmp	.L113
.L119:
	nop
.L113:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	CMS_AuthEnvelopedData_create_ex, .-CMS_AuthEnvelopedData_create_ex
	.globl	CMS_AuthEnvelopedData_create
	.type	CMS_AuthEnvelopedData_create, @function
CMS_AuthEnvelopedData_create:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_AuthEnvelopedData_create_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	CMS_AuthEnvelopedData_create, .-CMS_AuthEnvelopedData_create
	.type	cms_RecipientInfo_ktri_init, @function
cms_RecipientInfo_ktri_init:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	call	CMS_KeyTransRecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	-60(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L125
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$1, -20(%rbp)
	jmp	.L126
.L125:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -20(%rbp)
.L126:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_cms_set1_SignerIdentifier@PLT
	testl	%eax, %eax
	jne	.L127
	movl	$0, %eax
	jmp	.L124
.L127:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	-60(%rbp), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L128
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L129
	movl	$0, %eax
	jmp	.L124
.L129:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jg	.L130
	movl	$0, %eax
	jmp	.L124
.L128:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cms_env_asn1_ctrl@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L124
.L130:
	movl	$1, %eax
.L124:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	cms_RecipientInfo_ktri_init, .-cms_RecipientInfo_ktri_init
	.globl	CMS_add1_recipient
	.type	CMS_add1_recipient, @function
CMS_add1_recipient:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L145
	call	CMS_RecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L134
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L134:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L135
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$405, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L135:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_pkey_get_ri_type@PLT
	testl	%eax, %eax
	je	.L136
	cmpl	$1, %eax
	je	.L137
	jmp	.L144
.L136:
	movq	-40(%rbp), %rdi
	movl	-84(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cms_RecipientInfo_ktri_init
	testl	%eax, %eax
	jne	.L146
	jmp	.L133
.L137:
	movl	-84(%rbp), %r8d
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cms_RecipientInfo_kari_init@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L147
	jmp	.L133
.L144:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L146:
	nop
	jmp	.L140
.L147:
	nop
.L140:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientInfo_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientInfo_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L142
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L142:
	movq	-24(%rbp), %rax
	jmp	.L143
.L145:
	nop
.L133:
	call	CMS_RecipientInfo_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
.L143:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	CMS_add1_recipient, .-CMS_add1_recipient
	.globl	CMS_add1_recipient_cert
	.type	CMS_add1_recipient_cert, @function
CMS_add1_recipient_cert:
.LFB771:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_add1_recipient@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	CMS_add1_recipient_cert, .-CMS_add1_recipient_cert
	.globl	CMS_RecipientInfo_ktri_get0_algs
	.type	CMS_RecipientInfo_ktri_get0_algs, @function
CMS_RecipientInfo_ktri_get0_algs:
.LFB772:
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
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L151
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L151:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L153
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L153:
	cmpq	$0, -40(%rbp)
	je	.L154
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L154:
	cmpq	$0, -48(%rbp)
	je	.L155
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L155:
	movl	$1, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	CMS_RecipientInfo_ktri_get0_algs, .-CMS_RecipientInfo_ktri_get0_algs
	.globl	CMS_RecipientInfo_ktri_get0_signer_id
	.type	CMS_RecipientInfo_ktri_get0_signer_id, @function
CMS_RecipientInfo_ktri_get0_signer_id:
.LFB773:
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
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L157
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_cms_SignerIdentifier_get0_signer_id@PLT
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	CMS_RecipientInfo_ktri_get0_signer_id, .-CMS_RecipientInfo_ktri_get0_signer_id
	.globl	CMS_RecipientInfo_ktri_cert_cmp
	.type	CMS_RecipientInfo_ktri_cert_cmp, @function
CMS_RecipientInfo_ktri_cert_cmp:
.LFB774:
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
	je	.L160
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$487, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L161
.L160:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_SignerIdentifier_cert_cmp@PLT
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	CMS_RecipientInfo_ktri_cert_cmp, .-CMS_RecipientInfo_ktri_cert_cmp
	.globl	CMS_RecipientInfo_set0_pkey
	.type	CMS_RecipientInfo_set0_pkey, @function
CMS_RecipientInfo_set0_pkey:
.LFB775:
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
	je	.L163
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L163:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	CMS_RecipientInfo_set0_pkey, .-CMS_RecipientInfo_set0_pkey
	.type	cms_RecipientInfo_ktri_encrypt, @function
cms_RecipientInfo_ktri_encrypt:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L166
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L175
.L166:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L168
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cms_env_asn1_ctrl@PLT
	testl	%eax, %eax
	jne	.L169
	jmp	.L170
.L168:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L175
.L171:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jle	.L176
.L169:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jle	.L177
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$544, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L178
	movq	-64(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jle	.L179
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -32(%rbp)
	movl	$1, -36(%rbp)
	jmp	.L170
.L176:
	nop
	jmp	.L170
.L177:
	nop
	jmp	.L170
.L178:
	nop
	jmp	.L170
.L179:
	nop
.L170:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 48(%rax)
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$559, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-36(%rbp), %eax
.L175:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	cms_RecipientInfo_ktri_encrypt, .-cms_RecipientInfo_ktri_encrypt
	.section	.rodata
.LC5:
	.string	"0"
.LC6:
	.string	"rsa_pkcs1_implicit_rejection"
	.text
	.type	cms_RecipientInfo_ktri_decrypt, @function
cms_RecipientInfo_ktri_decrypt:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, -72(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$584, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L194
.L181:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L183
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L183
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L184
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L185
.L184:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -24(%rbp)
.L185:
	cmpq	$0, -24(%rbp)
	jne	.L186
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$604, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L194
.L186:
	call	ERR_pop_to_mark@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
.L183:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L196
	movq	-176(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cms_env_asn1_ctrl@PLT
	testl	%eax, %eax
	je	.L197
	leaq	.LC4(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L191
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl_str@PLT
.L191:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_pkey_decrypt_alloc@PLT
	testl	%eax, %eax
	jle	.L198
	movl	$1, -4(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$637, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L188
.L195:
	nop
	jmp	.L188
.L196:
	nop
	jmp	.L188
.L197:
	nop
	jmp	.L188
.L198:
	nop
.L188:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 48(%rax)
	cmpl	$0, -4(%rbp)
	jne	.L193
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$645, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L193:
	movl	-4(%rbp), %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	cms_RecipientInfo_ktri_decrypt, .-cms_RecipientInfo_ktri_decrypt
	.globl	CMS_RecipientInfo_kekri_id_cmp
	.type	CMS_RecipientInfo_kekri_id_cmp, @function
CMS_RecipientInfo_kekri_id_cmp:
.LFB778:
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
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L200
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$658, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L202
.L200:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	CMS_RecipientInfo_kekri_id_cmp, .-CMS_RecipientInfo_kekri_id_cmp
	.type	aes_wrap_keylen, @function
aes_wrap_keylen:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$790, -4(%rbp)
	je	.L204
	cmpl	$790, -4(%rbp)
	jg	.L205
	cmpl	$788, -4(%rbp)
	je	.L206
	cmpl	$789, -4(%rbp)
	je	.L207
	jmp	.L205
.L206:
	movl	$16, %eax
	jmp	.L208
.L207:
	movl	$24, %eax
	jmp	.L208
.L204:
	movl	$32, %eax
	jmp	.L208
.L205:
	movl	$0, %eax
.L208:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	aes_wrap_keylen, .-aes_wrap_keylen
	.globl	CMS_add0_recipient_key
	.type	CMS_add0_recipient_key, @function
CMS_add0_recipient_key:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L226
	cmpl	$0, -60(%rbp)
	jne	.L212
	cmpq	$32, -80(%rbp)
	je	.L213
	cmpq	$32, -80(%rbp)
	ja	.L214
	cmpq	$16, -80(%rbp)
	je	.L215
	cmpq	$24, -80(%rbp)
	je	.L216
	jmp	.L214
.L215:
	movl	$788, -60(%rbp)
	jmp	.L218
.L216:
	movl	$789, -60(%rbp)
	jmp	.L218
.L213:
	movl	$790, -60(%rbp)
	jmp	.L218
.L214:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$717, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L212:
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	aes_wrap_keylen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L219
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$726, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L219:
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L218
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$731, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L218:
	call	CMS_RecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L220
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$740, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L220:
	call	CMS_KEKRecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L221
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L221:
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L222
	call	CMS_OtherKeyAttribute_it@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, 16(%rbx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L222
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$756, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L222:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientInfo_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientInfo_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L223
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$762, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L223:
	movq	-48(%rbp), %rax
	movl	$4, (%rax)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L224
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L224:
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	movq	-24(%rbp), %rax
	jmp	.L225
.L226:
	nop
.L211:
	call	CMS_RecipientInfo_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
.L225:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	CMS_add0_recipient_key, .-CMS_add0_recipient_key
	.globl	CMS_RecipientInfo_kekri_get0_id
	.type	CMS_RecipientInfo_kekri_get0_id, @function
CMS_RecipientInfo_kekri_get0_id:
.LFB781:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L228
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L229
.L228:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L230
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L230:
	cmpq	$0, -40(%rbp)
	je	.L231
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L231:
	cmpq	$0, -48(%rbp)
	je	.L232
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L232:
	cmpq	$0, -56(%rbp)
	je	.L233
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L234
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L233
.L234:
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L233:
	cmpq	$0, -64(%rbp)
	je	.L235
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L236
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L235
.L236:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L235:
	movl	$1, %eax
.L229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	CMS_RecipientInfo_kekri_get0_id, .-CMS_RecipientInfo_kekri_get0_id
	.globl	CMS_RecipientInfo_set0_key
	.type	CMS_RecipientInfo_set0_key, @function
CMS_RecipientInfo_set0_key:
.LFB782:
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
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L238
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$831, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L239
.L238:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	CMS_RecipientInfo_set0_key, .-CMS_RecipientInfo_set0_key
	.section	.rodata
.LC7:
	.string	"AES-128-WRAP"
.LC8:
	.string	"AES-192-WRAP"
.LC9:
	.string	"AES-256-WRAP"
	.text
	.type	cms_get_key_wrap_cipher, @function
cms_get_key_wrap_cipher:
.LFB783:
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
	movq	$0, -24(%rbp)
	cmpq	$32, -40(%rbp)
	je	.L241
	cmpq	$32, -40(%rbp)
	ja	.L242
	cmpq	$16, -40(%rbp)
	je	.L243
	cmpq	$24, -40(%rbp)
	je	.L244
	jmp	.L242
.L243:
	leaq	.LC7(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L245
.L244:
	leaq	.LC8(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L245
.L241:
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L245
.L242:
	movl	$0, %eax
	jmp	.L246
.L245:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_CIPHER_fetch@PLT
.L246:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	cms_get_key_wrap_cipher, .-cms_get_key_wrap_cipher
	.type	cms_RecipientInfo_kekri_encrypt, @function
cms_RecipientInfo_kekri_encrypt:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L248
	movl	$0, %eax
	jmp	.L259
.L248:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L250
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$885, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L259
.L250:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_get_key_wrap_cipher
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L251
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$891, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L252
.L251:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	addq	$8, %rax
	leaq	.LC0(%rip), %rcx
	movl	$896, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L260
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L254
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$902, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L252
.L254:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_flags@PLT
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L255
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-60(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L255
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	jne	.L256
.L255:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$910, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L252
.L256:
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L257
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$915, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L252
.L257:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movl	$1, -12(%rbp)
	jmp	.L252
.L260:
	nop
.L252:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L258
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$926, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L258:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-12(%rbp), %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	cms_RecipientInfo_kekri_encrypt, .-cms_RecipientInfo_kekri_encrypt
	.type	cms_RecipientInfo_kekri_decrypt, @function
cms_RecipientInfo_kekri_decrypt:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L262
	movl	$0, %eax
	jmp	.L274
.L262:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L264
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$954, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L274
.L264:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	aes_wrap_keylen
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	je	.L265
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$960, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L274
.L265:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$15, %eax
	jg	.L266
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$967, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L267
.L266:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_get_key_wrap_cipher
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$973, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L267
.L268:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	subl	$8, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$977, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L275
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L270
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$983, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L267
.L270:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	je	.L271
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %edi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L271
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	jne	.L272
.L271:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$992, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L267
.L272:
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$997, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, -12(%rbp)
	jmp	.L267
.L275:
	nop
.L267:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L273
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1006, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L273:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-12(%rbp), %eax
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	cms_RecipientInfo_kekri_decrypt, .-cms_RecipientInfo_kekri_decrypt
	.globl	CMS_RecipientInfo_decrypt
	.type	CMS_RecipientInfo_decrypt, @function
CMS_RecipientInfo_decrypt:
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
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L277
	cmpl	$3, %eax
	jg	.L278
	testl	%eax, %eax
	je	.L279
	cmpl	$2, %eax
	je	.L280
	jmp	.L278
.L279:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_RecipientInfo_ktri_decrypt
	jmp	.L281
.L280:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_RecipientInfo_kekri_decrypt
	jmp	.L281
.L277:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_RecipientInfo_pwri_crypt@PLT
	jmp	.L281
.L278:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	CMS_RecipientInfo_decrypt, .-CMS_RecipientInfo_decrypt
	.globl	CMS_RecipientInfo_encrypt
	.type	CMS_RecipientInfo_encrypt, @function
CMS_RecipientInfo_encrypt:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L283
	cmpl	$3, %eax
	jg	.L284
	cmpl	$2, %eax
	je	.L285
	cmpl	$2, %eax
	jg	.L284
	testl	%eax, %eax
	je	.L286
	cmpl	$1, %eax
	je	.L287
	jmp	.L284
.L286:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_RecipientInfo_ktri_encrypt
	jmp	.L288
.L287:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_RecipientInfo_kari_encrypt@PLT
	jmp	.L288
.L285:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_RecipientInfo_kekri_encrypt
	jmp	.L288
.L283:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_RecipientInfo_pwri_crypt@PLT
	jmp	.L288
.L284:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1046, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	CMS_RecipientInfo_encrypt, .-CMS_RecipientInfo_encrypt
	.type	cms_env_set_originfo_version, @function
cms_env_set_originfo_version:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L299
	movl	$0, -4(%rbp)
	jmp	.L292
.L295:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L293
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L289
.L293:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L294
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L294
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
.L294:
	addl	$1, -4(%rbp)
.L292:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_num
	cmpl	%eax, -4(%rbp)
	jl	.L295
	movl	$0, -4(%rbp)
	jmp	.L296
.L298:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
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
	jne	.L297
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L289
.L297:
	addl	$1, -4(%rbp)
.L296:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RevocationInfoChoice_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L298
	jmp	.L289
.L299:
	nop
.L289:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	cms_env_set_originfo_version, .-cms_env_set_originfo_version
	.type	cms_env_set_version, @function
cms_env_set_version:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jg	.L313
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cms_env_set_originfo_version
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L314
	movl	$0, -4(%rbp)
	jmp	.L304
.L309:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L305
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L306
.L305:
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L300
.L306:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L307
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L308
.L307:
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.L308:
	addl	$1, -4(%rbp)
.L304:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L309
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L310
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L311
.L310:
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.L311:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L315
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L300
.L313:
	nop
	jmp	.L300
.L314:
	nop
	jmp	.L300
.L315:
	nop
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	cms_env_set_version, .-cms_env_set_version
	.type	cms_env_encrypt_content_key, @function
cms_env_encrypt_content_key:
.LFB790:
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
	jmp	.L317
.L320:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_encrypt@PLT
	testl	%eax, %eax
	jg	.L318
	movl	$-1, %eax
	jmp	.L319
.L318:
	addl	$1, -4(%rbp)
.L317:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L320
	movl	$1, %eax
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	cms_env_encrypt_content_key, .-cms_env_encrypt_content_key
	.type	cms_env_clear_ec, @function
cms_env_clear_ec:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1131, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	cms_env_clear_ec, .-cms_env_clear_ec
	.type	cms_EnvelopedData_Decryption_init_bio, @function
cms_EnvelopedData_Decryption_init_bio:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init_bio@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L323
	movl	$0, %eax
	jmp	.L327
.L323:
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L325
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L327
.L325:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$33554432, %eax
	testq	%rax, %rax
	je	.L326
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L326
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L327
.L326:
	movq	-16(%rbp), %rax
.L327:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	cms_EnvelopedData_Decryption_init_bio, .-cms_EnvelopedData_Decryption_init_bio
	.type	cms_EnvelopedData_Encryption_init_bio, @function
cms_EnvelopedData_Encryption_init_bio:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init_bio@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L329
	movq	-32(%rbp), %rax
	jmp	.L330
.L329:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_env_encrypt_content_key
	testl	%eax, %eax
	jns	.L331
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L332
.L331:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cms_env_set_version
	movl	$1, -4(%rbp)
.L332:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cms_env_clear_ec
	cmpl	$0, -4(%rbp)
	je	.L333
	movq	-32(%rbp), %rax
	jmp	.L330
.L333:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	cms_EnvelopedData_Encryption_init_bio, .-cms_EnvelopedData_Encryption_init_bio
	.globl	ossl_cms_EnvelopedData_init_bio
	.type	ossl_cms_EnvelopedData_init_bio, @function
ossl_cms_EnvelopedData_init_bio:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L335
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cms_EnvelopedData_Encryption_init_bio
	jmp	.L336
.L335:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cms_EnvelopedData_Decryption_init_bio
.L336:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	ossl_cms_EnvelopedData_init_bio, .-ossl_cms_EnvelopedData_init_bio
	.globl	ossl_cms_AuthEnvelopedData_init_bio
	.type	ossl_cms_AuthEnvelopedData_init_bio, @function
ossl_cms_AuthEnvelopedData_init_bio:
.LFB795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L338
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
.L338:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init_bio@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L339
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L340
.L339:
	movq	-32(%rbp), %rax
	jmp	.L341
.L340:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_env_encrypt_content_key
	testl	%eax, %eax
	jns	.L342
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1237, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L343
.L342:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -4(%rbp)
.L343:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cms_env_clear_ec
	cmpl	$0, -4(%rbp)
	je	.L344
	movq	-32(%rbp), %rax
	jmp	.L341
.L344:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	ossl_cms_AuthEnvelopedData_init_bio, .-ossl_cms_AuthEnvelopedData_init_bio
	.globl	ossl_cms_EnvelopedData_final
	.type	ossl_cms_EnvelopedData_final, @function
ossl_cms_EnvelopedData_final:
.LFB796:
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
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	$522, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_enveloped@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L346
	movl	$0, %eax
	jmp	.L352
.L346:
	cmpq	$0, -16(%rbp)
	jne	.L348
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L352
.L348:
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$33554432, %eax
	testq	%rax, %rax
	je	.L349
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L350
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L350:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L351
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L352
.L351:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L349
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L352
.L349:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	cms_env_set_version
	movl	$1, %eax
.L352:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	ossl_cms_EnvelopedData_final, .-ossl_cms_EnvelopedData_final
	.globl	ossl_cms_AuthEnvelopedData_final
	.type	ossl_cms_AuthEnvelopedData_final, @function
ossl_cms_AuthEnvelopedData_final:
.LFB797:
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
	movl	$0, -12(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L354
	movl	$1, %eax
	jmp	.L360
.L354:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_tag_length@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L356
	movl	-16(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$1313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L356
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L357
.L356:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L358
.L357:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L361
	movl	$1, -12(%rbp)
	jmp	.L358
.L361:
	nop
.L358:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1325, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	ossl_cms_AuthEnvelopedData_final, .-ossl_cms_AuthEnvelopedData_final
	.section	.rodata
.LC10:
	.string	"DSA"
	.text
	.globl	ossl_cms_pkey_get_ri_type
	.type	ossl_cms_pkey_get_ri_type, @function
ossl_cms_pkey_get_ri_type:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L363
	movl	$1, %eax
	jmp	.L364
.L363:
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L365
	movl	$1, %eax
	jmp	.L364
.L365:
	leaq	.LC10(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L366
	movl	$-1, %eax
	jmp	.L364
.L366:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L367
	movl	$1, %eax
	jmp	.L364
.L367:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L368
	movl	$0, %eax
	jmp	.L364
.L368:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L369
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L369
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L369
	movl	-8(%rbp), %eax
	jmp	.L364
.L369:
	movl	$0, %eax
.L364:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	ossl_cms_pkey_get_ri_type, .-ossl_cms_pkey_get_ri_type
	.globl	ossl_cms_pkey_is_ri_type_supported
	.type	ossl_cms_pkey_is_ri_type_supported, @function
ossl_cms_pkey_is_ri_type_supported:
.LFB799:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L372
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L372
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-12(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L372
	movl	-12(%rbp), %eax
	jmp	.L374
.L372:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_pkey_get_ri_type@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L375
	movl	$0, %eax
	jmp	.L374
.L375:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
.L374:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	ossl_cms_pkey_is_ri_type_supported, .-ossl_cms_pkey_is_ri_type_supported
	.section	.rodata
	.align 16
	.type	__func__.27, @object
	.size	__func__.27, 23
__func__.27:
	.string	"cms_get_enveloped_type"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 24
__func__.26:
	.string	"ossl_cms_get0_enveloped"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 29
__func__.25:
	.string	"ossl_cms_get0_auth_enveloped"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 24
__func__.24:
	.string	"cms_enveloped_data_init"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 29
__func__.23:
	.string	"cms_auth_enveloped_data_init"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 23
__func__.22:
	.string	"ossl_cms_env_asn1_ctrl"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 28
__func__.21:
	.string	"CMS_EnvelopedData_create_ex"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 26
__func__.20:
	.string	"CMS_EnvelopedData_decrypt"
	.align 32
	.type	__func__.19, @object
	.size	__func__.19, 32
__func__.19:
	.string	"CMS_AuthEnvelopedData_create_ex"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 19
__func__.18:
	.string	"CMS_add1_recipient"
	.align 32
	.type	__func__.17, @object
	.size	__func__.17, 33
__func__.17:
	.string	"CMS_RecipientInfo_ktri_get0_algs"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 38
__func__.16:
	.string	"CMS_RecipientInfo_ktri_get0_signer_id"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 32
__func__.15:
	.string	"CMS_RecipientInfo_ktri_cert_cmp"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 28
__func__.14:
	.string	"CMS_RecipientInfo_set0_pkey"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 31
__func__.13:
	.string	"cms_RecipientInfo_ktri_encrypt"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 31
__func__.12:
	.string	"cms_RecipientInfo_ktri_decrypt"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 31
__func__.11:
	.string	"CMS_RecipientInfo_kekri_id_cmp"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 23
__func__.10:
	.string	"CMS_add0_recipient_key"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 32
__func__.9:
	.string	"CMS_RecipientInfo_kekri_get0_id"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 27
__func__.8:
	.string	"CMS_RecipientInfo_set0_key"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 32
__func__.7:
	.string	"cms_RecipientInfo_kekri_encrypt"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 32
__func__.6:
	.string	"cms_RecipientInfo_kekri_decrypt"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"CMS_RecipientInfo_decrypt"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 26
__func__.4:
	.string	"CMS_RecipientInfo_encrypt"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 38
__func__.3:
	.string	"cms_EnvelopedData_Encryption_init_bio"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 36
__func__.2:
	.string	"ossl_cms_AuthEnvelopedData_init_bio"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"ossl_cms_EnvelopedData_final"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 33
__func__.0:
	.string	"ossl_cms_AuthEnvelopedData_final"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

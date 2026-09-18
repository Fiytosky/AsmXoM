	.file	"cms_pwri.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_pwri.c"
	.text
	.globl	CMS_RecipientInfo_set0_password
	.type	CMS_RecipientInfo_set0_password, @function
CMS_RecipientInfo_set0_password:
.LFB697:
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
	cmpl	$3, %eax
	je	.L10
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	cmpq	$0, -32(%rbp)
	je	.L12
	cmpq	$0, -40(%rbp)
	jns	.L12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
.L12:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	CMS_RecipientInfo_set0_password, .-CMS_RecipientInfo_set0_password
	.globl	CMS_add0_recipient_password
	.type	CMS_add0_recipient_password, @function
CMS_add0_recipient_password:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movl	%ecx, -116(%rbp)
	movq	%r8, -128(%rbp)
	movq	%r9, -136(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L39
.L14:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L39
.L16:
	cmpl	$0, -112(%rbp)
	jg	.L17
	movl	$893, -112(%rbp)
.L17:
	cmpl	$0, -116(%rbp)
	jg	.L18
	movl	$69, -116(%rbp)
.L18:
	cmpq	$0, 16(%rbp)
	jne	.L19
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, 16(%rbp)
.L19:
	cmpq	$0, 16(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$74, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L20:
	cmpl	$893, -112(%rbp)
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L21:
	call	X509_ALGOR_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L22:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L24:
	movq	16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jg	.L25
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L25:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L26
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L26:
	cmpl	$0, -68(%rbp)
	jle	.L27
	movl	-68(%rbp), %eax
	movslq	%eax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L40
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jg	.L29
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L29:
	call	ASN1_TYPE_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L30:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_param_to_asn1@PLT
	testl	%eax, %eax
	jg	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L27:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -32(%rbp)
	call	CMS_RecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L31:
	call	CMS_PasswordRecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L32:
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	call	X509_ALGOR_new@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L33:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rbx
	movl	-112(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rbx
	call	ASN1_TYPE_new@PLT
	movq	%rax, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L34:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rbx
	call	X509_ALGOR_it@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L35:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$16, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movl	-108(%rbp), %eax
	movq	%rdx, %r9
	movl	$-1, %r8d
	movl	$-1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	PKCS5_pbkdf2_set_ex@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_password@PLT
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientInfo_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientInfo_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L37:
	movq	-24(%rbp), %rax
	jmp	.L39
.L40:
	nop
	jmp	.L23
.L41:
	nop
.L23:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L38
	call	CMS_RecipientInfo_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
.L38:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	CMS_add0_recipient_password, .-CMS_add0_recipient_password
	.type	kek_unwrap_key, @function
kek_unwrap_key:
.LFB699:
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
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L53
.L43:
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L45
	movl	$0, %eax
	jmp	.L53
.L45:
	movq	-64(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L46
	movl	$0, %eax
	jmp	.L53
.L46:
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$220, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L53
.L47:
	movq	-16(%rbp), %rax
	addl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-28(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	je	.L54
	movq	-64(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	andl	%eax, %ecx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	andl	%ecx, %eax
	cmpb	$-1, %al
	jne	.L55
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	$4, %rax
	cmpq	%rax, -64(%rbp)
	jb	.L56
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, -4(%rbp)
	jmp	.L50
.L54:
	nop
	jmp	.L50
.L55:
	nop
	jmp	.L50
.L56:
	nop
.L50:
	leaq	.LC0(%rip), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$253, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	kek_unwrap_key, .-kek_unwrap_key
	.type	kek_wrap_key, @function
kek_wrap_key:
.LFB700:
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L65
.L58:
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$3, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L60
	movl	$0, %eax
	jmp	.L65
.L60:
	cmpq	$255, -80(%rbp)
	jbe	.L61
	movl	$0, %eax
	jmp	.L65
.L61:
	cmpq	$0, -56(%rbp)
	je	.L62
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	notl	%edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	notl	%edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movq	-56(%rbp), %rax
	addq	$3, %rax
	notl	%edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rax
	addq	$4, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L63
	movq	-32(%rbp), %rax
	subq	-80(%rbp), %rax
	leaq	-4(%rax), %r12
	movq	-80(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movl	$0, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L63
	movl	$0, %eax
	jmp	.L65
.L63:
	movq	-32(%rbp), %rax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L64
	movq	-32(%rbp), %rax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L62
.L64:
	movl	$0, %eax
	jmp	.L65
.L62:
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L65:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	kek_wrap_key, .-kek_wrap_key
	.globl	ossl_cms_RecipientInfo_pwri_crypt
	.type	ossl_cms_RecipientInfo_pwri_crypt, @function
ossl_cms_RecipientInfo_pwri_crypt:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L67:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L69
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$893, %eax
	je	.L70
.L69:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L70:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	call	X509_ALGOR_it@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L71:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	-144(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L72:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$356, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L74:
	movl	-180(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L87
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_asn1_to_param@PLT
	testl	%eax, %eax
	jg	.L76
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L76:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %r10d
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %r9d
	movq	-32(%rbp), %r8
	pushq	%rdi
	pushq	%rcx
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	EVP_PBE_CipherInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jns	.L77
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L77:
	cmpl	$0, -180(%rbp)
	je	.L78
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	kek_wrap_key
	testl	%eax, %eax
	je	.L88
	movq	-152(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$387, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L89
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %r8
	movq	-32(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	kek_wrap_key
	testl	%eax, %eax
	je	.L90
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, (%rax)
	jmp	.L82
.L78:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$397, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L91
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	kek_unwrap_key
	testl	%eax, %eax
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L84:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$407, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-152(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 40(%rax)
.L82:
	movl	$1, -20(%rbp)
	jmp	.L73
.L87:
	nop
	jmp	.L73
.L88:
	nop
	jmp	.L73
.L89:
	nop
	jmp	.L73
.L90:
	nop
	jmp	.L73
.L91:
	nop
.L73:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	cmpl	$0, -20(%rbp)
	jne	.L85
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$420, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L85:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-20(%rbp), %eax
.L86:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	ossl_cms_RecipientInfo_pwri_crypt, .-ossl_cms_RecipientInfo_pwri_crypt
	.section	.rodata
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 32
__func__.2:
	.string	"CMS_RecipientInfo_set0_password"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"CMS_add0_recipient_password"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 34
__func__.0:
	.string	"ossl_cms_RecipientInfo_pwri_crypt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

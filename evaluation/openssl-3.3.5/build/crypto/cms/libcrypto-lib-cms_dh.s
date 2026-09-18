	.file	"cms_dh.c"
	.text
	.section	.rodata
.LC0:
	.string	"DHX"
.LC1:
	.string	"../crypto/cms/cms_dh.c"
	.text
	.type	dh_cms_set_peerkey, @function
dh_cms_set_peerkey:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-68(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$920, %eax
	jne	.L16
	movl	-68(%rbp), %eax
	cmpl	$-1, %eax
	je	.L4
	movl	-68(%rbp), %eax
	cmpl	$5, %eax
	jne	.L17
.L4:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L18
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L18
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -52(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L19
	cmpl	$0, -52(%rbp)
	je	.L19
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L21
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L22
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L23
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	je	.L24
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jle	.L25
	movl	$1, -12(%rbp)
	jmp	.L3
.L16:
	nop
	jmp	.L3
.L17:
	nop
	jmp	.L3
.L18:
	nop
	jmp	.L3
.L19:
	nop
	jmp	.L3
.L20:
	nop
	jmp	.L3
.L21:
	nop
	jmp	.L3
.L22:
	nop
	jmp	.L3
.L23:
	nop
	jmp	.L3
.L24:
	nop
	jmp	.L3
.L25:
	nop
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	dh_cms_set_peerkey, .-dh_cms_set_peerkey
	.type	dh_cms_set_shared_info, @function
dh_cms_set_shared_info:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_alg@PLT
	testl	%eax, %eax
	je	.L45
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$245, %eax
	je	.L29
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$186, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L29:
	movq	-152(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_kdf_type@PLT
	testl	%eax, %eax
	jle	.L46
	call	EVP_sha1@PLT
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_kdf_md@PLT
	testl	%eax, %eax
	jle	.L46
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L47
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_ALGOR@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_ctx@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jle	.L50
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L51
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	jne	.L51
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L52
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_asn1_to_param@PLT
	testl	%eax, %eax
	jle	.L53
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_kdf_outlen@PLT
	testl	%eax, %eax
	jle	.L54
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_dh_kdf_oid@PLT
	testl	%eax, %eax
	jle	.L55
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L42
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rdi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$145, %ecx
	movq	%rax, %rsi
	call	CRYPTO_memdup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L56
.L42:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_dh_kdf_ukm@PLT
	testl	%eax, %eax
	jle	.L57
	movq	$0, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L28
.L45:
	nop
	jmp	.L28
.L46:
	nop
	jmp	.L28
.L47:
	nop
	jmp	.L28
.L48:
	nop
	jmp	.L28
.L49:
	nop
	jmp	.L28
.L50:
	nop
	jmp	.L28
.L51:
	nop
	jmp	.L28
.L52:
	nop
	jmp	.L28
.L53:
	nop
	jmp	.L28
.L54:
	nop
	jmp	.L28
.L55:
	nop
	jmp	.L28
.L56:
	nop
	jmp	.L28
.L57:
	nop
.L28:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$158, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	dh_cms_set_shared_info, .-dh_cms_set_shared_info
	.type	dh_cms_decrypt, @function
dh_cms_decrypt:
.LFB704:
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
	call	CMS_RecipientInfo_get0_pkey_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_peerkey@PLT
	testq	%rax, %rax
	jne	.L61
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_orig_id@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L60
.L62:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L65
.L64:
	movl	$0, %eax
	jmp	.L60
.L65:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dh_cms_set_peerkey
	testl	%eax, %eax
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L61:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_cms_set_shared_info
	testl	%eax, %eax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L67:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	dh_cms_decrypt, .-dh_cms_decrypt
	.section	.rodata
.LC2:
	.string	"pub"
	.text
	.type	dh_cms_encrypt, @function
dh_cms_encrypt:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_get0_pkey_ctx@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L95
.L69:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -48(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_orig_id@PLT
	testl	%eax, %eax
	je	.L96
	movq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movl	$0, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L73
	movq	$0, -144(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L97
	movq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpq	$0, -56(%rbp)
	je	.L98
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	cmpl	$0, -60(%rbp)
	jle	.L99
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	movq	$0, -128(%rbp)
	movl	$920, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
.L73:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_dh_kdf_type@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L100
	leaq	-136(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_dh_kdf_md@PLT
	testl	%eax, %eax
	jle	.L100
	cmpl	$1, -64(%rbp)
	jne	.L80
	movl	$2, -64(%rbp)
	movl	-64(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_kdf_type@PLT
	testl	%eax, %eax
	jg	.L81
	jmp	.L72
.L80:
	cmpl	$2, -64(%rbp)
	jne	.L101
.L81:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jne	.L82
	call	EVP_sha1@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_kdf_md@PLT
	testl	%eax, %eax
	jg	.L83
	jmp	.L72
.L82:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$64, %eax
	jne	.L102
.L83:
	leaq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_alg@PLT
	testl	%eax, %eax
	je	.L103
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_ctx@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_dh_kdf_oid@PLT
	testl	%eax, %eax
	jle	.L104
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -80(%rbp)
	call	X509_ALGOR_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L105
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	call	ASN1_TYPE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_param_to_asn1@PLT
	testl	%eax, %eax
	jle	.L107
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L89:
	movl	-80(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_kdf_outlen@PLT
	testl	%eax, %eax
	jle	.L108
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L91
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rdi
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$297, %ecx
	movq	%rax, %rsi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L109
.L91:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_dh_kdf_ukm@PLT
	testl	%eax, %eax
	jle	.L110
	movq	$0, -16(%rbp)
	movq	$0, -128(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_ALGOR@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.L111
	call	ASN1_STRING_new@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L112
	movq	-128(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -128(%rbp)
	movl	$245, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L113
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	jmp	.L72
.L96:
	nop
	jmp	.L72
.L97:
	nop
	jmp	.L72
.L98:
	nop
	jmp	.L72
.L99:
	nop
	jmp	.L72
.L100:
	nop
	jmp	.L72
.L101:
	nop
	jmp	.L72
.L102:
	nop
	jmp	.L72
.L103:
	nop
	jmp	.L72
.L104:
	nop
	jmp	.L72
.L105:
	nop
	jmp	.L72
.L106:
	nop
	jmp	.L72
.L107:
	nop
	jmp	.L72
.L108:
	nop
	jmp	.L72
.L109:
	nop
	jmp	.L72
.L110:
	nop
	jmp	.L72
.L111:
	nop
	jmp	.L72
.L112:
	nop
	jmp	.L72
.L113:
	nop
.L72:
	movq	-128(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$325, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$327, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	dh_cms_encrypt, .-dh_cms_encrypt
	.globl	ossl_cms_dh_envelope
	.type	ossl_cms_dh_envelope, @function
ossl_cms_dh_envelope:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L115
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dh_cms_decrypt
	jmp	.L116
.L115:
	cmpl	$0, -12(%rbp)
	jne	.L117
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dh_cms_encrypt
	jmp	.L116
.L117:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	ossl_cms_dh_envelope, .-ossl_cms_dh_envelope
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"dh_cms_set_shared_info"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"dh_cms_decrypt"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ossl_cms_dh_envelope"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

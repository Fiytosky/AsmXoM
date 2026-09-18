	.file	"cms_ec.c"
	.text
	.section	.rodata
.LC0:
	.string	"EC"
.LC1:
	.string	"DER"
.LC2:
	.string	"../crypto/cms/cms_ec.c"
	.text
	.type	pkey_type2param, @function
pkey_type2param:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$16, -132(%rbp)
	jne	.L2
	movq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movl	$132, -36(%rbp)
	movq	-152(%rbp), %rdi
	movl	-36(%rbp), %ecx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	leaq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-160(%rbp)
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	testl	%eax, %eax
	jne	.L5
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-48(%rbp), %rax
	jmp	.L15
.L2:
	cmpl	$6, -132(%rbp)
	jne	.L8
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-160(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jle	.L17
	movq	-24(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jle	.L12
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_group_name@PLT
	testl	%eax, %eax
	jg	.L13
.L12:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L13:
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	jle	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	jmp	.L15
.L8:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L15
.L16:
	nop
	jmp	.L7
.L17:
	nop
	jmp	.L7
.L18:
	nop
.L7:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	pkey_type2param, .-pkey_type2param
	.type	ecdh_cms_set_peerkey, @function
ecdh_cms_set_peerkey:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-68(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$408, %eax
	jne	.L32
	movl	-68(%rbp), %eax
	cmpl	$-1, %eax
	je	.L22
	movl	-68(%rbp), %eax
	cmpl	$5, %eax
	jne	.L23
.L22:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L33
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L34
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L35
	jmp	.L21
.L23:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_propq@PLT
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %edi
	call	pkey_type2param
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L36
	jmp	.L27
.L35:
	nop
.L27:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -44(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L37
	cmpl	$0, -44(%rbp)
	je	.L37
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
	testl	%eax, %eax
	je	.L38
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jle	.L39
	movl	$1, -20(%rbp)
	jmp	.L21
.L32:
	nop
	jmp	.L21
.L33:
	nop
	jmp	.L21
.L34:
	nop
	jmp	.L21
.L36:
	nop
	jmp	.L21
.L37:
	nop
	jmp	.L21
.L38:
	nop
	jmp	.L21
.L39:
	nop
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	ecdh_cms_set_peerkey, .-ecdh_cms_set_peerkey
	.type	ecdh_cms_set_kdf_param, @function
ecdh_cms_set_kdf_param:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L51
.L41:
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movl	-44(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L51
.L43:
	movl	-20(%rbp), %eax
	cmpl	$946, %eax
	jne	.L44
	movl	$0, -4(%rbp)
	jmp	.L45
.L44:
	movl	-20(%rbp), %eax
	cmpl	$947, %eax
	jne	.L46
	movl	$1, -4(%rbp)
	jmp	.L45
.L46:
	movl	$0, %eax
	jmp	.L51
.L45:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_cofactor_mode@PLT
	testl	%eax, %eax
	jg	.L47
	movl	$0, %eax
	jmp	.L51
.L47:
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_type@PLT
	testl	%eax, %eax
	jg	.L48
	movl	$0, %eax
	jmp	.L51
.L48:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L51
.L49:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_md@PLT
	testl	%eax, %eax
	jg	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	ecdh_cms_set_kdf_param, .-ecdh_cms_set_kdf_param
	.type	ecdh_cms_set_shared_info, @function
ecdh_cms_set_shared_info:
.LFB705:
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
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_alg@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L67
.L53:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecdh_cms_set_kdf_param
	testl	%eax, %eax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$186, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L55:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L56
	movl	$0, %eax
	jmp	.L67
.L56:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_ALGOR@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_ctx@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L69
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L70
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	jne	.L70
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_asn1_to_param@PLT
	testl	%eax, %eax
	jle	.L72
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_outlen@PLT
	testl	%eax, %eax
	jle	.L73
	movq	-64(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SharedInfo_encode@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L74
	movq	-80(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_ecdh_kdf_ukm@PLT
	testl	%eax, %eax
	jle	.L75
	movq	$0, -80(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L58
.L68:
	nop
	jmp	.L58
.L69:
	nop
	jmp	.L58
.L70:
	nop
	jmp	.L58
.L71:
	nop
	jmp	.L58
.L72:
	nop
	jmp	.L58
.L73:
	nop
	jmp	.L58
.L74:
	nop
	jmp	.L58
.L75:
	nop
.L58:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	ecdh_cms_set_shared_info, .-ecdh_cms_set_shared_info
	.type	ecdh_cms_decrypt, @function
ecdh_cms_decrypt:
.LFB706:
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
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_peerkey@PLT
	testq	%rax, %rax
	jne	.L79
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_orig_id@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L78
.L80:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L82
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L83
.L82:
	movl	$0, %eax
	jmp	.L78
.L83:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecdh_cms_set_peerkey
	testl	%eax, %eax
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L79:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecdh_cms_set_shared_info
	testl	%eax, %eax
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L85:
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	ecdh_cms_decrypt, .-ecdh_cms_decrypt
	.type	ecdh_cms_encrypt, @function
ecdh_cms_encrypt:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -120(%rbp)
	movl	$0, -12(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_get0_pkey_ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L113
.L87:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -32(%rbp)
	leaq	-104(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_orig_id@PLT
	testl	%eax, %eax
	je	.L114
	movq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movl	$0, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L91
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movq	%rax, -40(%rbp)
	cmpq	$2147483647, -40(%rbp)
	ja	.L115
	cmpq	$0, -40(%rbp)
	je	.L115
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	movq	$0, -120(%rbp)
	movl	$408, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
.L91:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_ecdh_kdf_type@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.L116
	leaq	-136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_ecdh_kdf_md@PLT
	testl	%eax, %eax
	jle	.L117
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_ecdh_cofactor_mode@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	js	.L118
	cmpl	$0, -16(%rbp)
	jne	.L97
	movl	$946, -16(%rbp)
	jmp	.L98
.L97:
	cmpl	$1, -16(%rbp)
	jne	.L98
	movl	$947, -16(%rbp)
.L98:
	cmpl	$1, -44(%rbp)
	jne	.L119
	movl	$2, -44(%rbp)
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_type@PLT
	testl	%eax, %eax
	jle	.L120
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jne	.L101
	call	EVP_sha1@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_md@PLT
	testl	%eax, %eax
	jle	.L121
.L101:
	leaq	-112(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_alg@PLT
	testl	%eax, %eax
	je	.L122
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %ecx
	movl	-16(%rbp), %edx
	leaq	-124(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	je	.L123
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_ctx@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -64(%rbp)
	call	X509_ALGOR_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L124
	movl	-60(%rbp), %eax
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
	je	.L125
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_param_to_asn1@PLT
	testl	%eax, %eax
	jle	.L126
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	testl	%eax, %eax
	jne	.L107
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L107:
	movl	-64(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_outlen@PLT
	testl	%eax, %eax
	jle	.L127
	movq	-112(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movq	-8(%rbp), %rsi
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SharedInfo_encode@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L128
	movq	-120(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_ecdh_kdf_ukm@PLT
	testl	%eax, %eax
	jle	.L129
	movq	$0, -120(%rbp)
	leaq	-120(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_ALGOR@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L130
	call	ASN1_STRING_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L131
	movq	-120(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -120(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L132
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	jmp	.L90
.L114:
	nop
	jmp	.L90
.L115:
	nop
	jmp	.L90
.L116:
	nop
	jmp	.L90
.L117:
	nop
	jmp	.L90
.L118:
	nop
	jmp	.L90
.L119:
	nop
	jmp	.L90
.L120:
	nop
	jmp	.L90
.L121:
	nop
	jmp	.L90
.L122:
	nop
	jmp	.L90
.L123:
	nop
	jmp	.L90
.L124:
	nop
	jmp	.L90
.L125:
	nop
	jmp	.L90
.L126:
	nop
	jmp	.L90
.L127:
	nop
	jmp	.L90
.L128:
	nop
	jmp	.L90
.L129:
	nop
	jmp	.L90
.L130:
	nop
	jmp	.L90
.L131:
	nop
	jmp	.L90
.L132:
	nop
.L90:
	movq	-120(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$377, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-12(%rbp), %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	ecdh_cms_encrypt, .-ecdh_cms_encrypt
	.globl	ossl_cms_ecdh_envelope
	.type	ossl_cms_ecdh_envelope, @function
ossl_cms_ecdh_envelope:
.LFB708:
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
	jne	.L134
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecdh_cms_decrypt
	jmp	.L135
.L134:
	cmpl	$0, -12(%rbp)
	jne	.L136
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecdh_cms_encrypt
	jmp	.L135
.L136:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	ossl_cms_ecdh_envelope, .-ossl_cms_ecdh_envelope
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"pkey_type2param"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"ecdh_cms_set_shared_info"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"ecdh_cms_decrypt"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_cms_ecdh_envelope"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

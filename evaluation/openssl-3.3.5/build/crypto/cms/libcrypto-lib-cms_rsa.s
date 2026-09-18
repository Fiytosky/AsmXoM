	.file	"cms_rsa.c"
	.text
	.type	rsa_oaep_decode, @function
rsa_oaep_decode:
.LFB702:
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	RSA_OAEP_PARAMS_it@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_mgf1_decode@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_OAEP_PARAMS_free@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-24(%rbp), %rax
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	rsa_oaep_decode, .-rsa_oaep_decode
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_rsa.c"
	.text
	.type	rsa_cms_decrypt, @function
rsa_cms_decrypt:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_get0_pkey_ctx@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L22
.L6:
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_ktri_get0_algs@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$-1, %eax
	jmp	.L22
.L8:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -52(%rbp)
	cmpl	$6, -52(%rbp)
	jne	.L9
	movl	$1, %eax
	jmp	.L22
.L9:
	cmpl	$919, -52(%rbp)
	je	.L10
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L22
.L10:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_oaep_decode
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$191, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L11:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_get_md@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L23
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_get_md@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L24
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$935, %eax
	je	.L16
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$193, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L16:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L17:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
.L15:
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L25
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_oaep_md@PLT
	testl	%eax, %eax
	jle	.L26
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_mgf1_md@PLT
	testl	%eax, %eax
	jle	.L27
	cmpq	$0, -16(%rbp)
	je	.L21
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_rsa_oaep_label@PLT
	testl	%eax, %eax
	jg	.L21
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$103, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L12
.L21:
	movl	$1, -4(%rbp)
	jmp	.L12
.L23:
	nop
	jmp	.L12
.L24:
	nop
	jmp	.L12
.L25:
	nop
	jmp	.L12
.L26:
	nop
	jmp	.L12
.L27:
	nop
.L12:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_OAEP_PARAMS_free@PLT
	movl	-4(%rbp), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	rsa_cms_decrypt, .-rsa_cms_decrypt
	.type	rsa_cms_encrypt, @function
rsa_cms_encrypt:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_get0_pkey_ctx@PLT
	movq	%rax, -48(%rbp)
	movl	$1, -92(%rbp)
	movl	$0, -36(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_ktri_get0_algs@PLT
	testl	%eax, %eax
	jg	.L29
	movl	$0, %eax
	jmp	.L47
.L29:
	cmpq	$0, -48(%rbp)
	je	.L31
	leaq	-92(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_padding@PLT
	testl	%eax, %eax
	jg	.L31
	movl	$0, %eax
	jmp	.L47
.L31:
	movl	-92(%rbp), %eax
	cmpl	$1, %eax
	jne	.L32
	movl	$6, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	jmp	.L47
.L32:
	movl	-92(%rbp), %eax
	cmpl	$4, %eax
	je	.L33
	movl	$0, %eax
	jmp	.L47
.L33:
	leaq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_oaep_md@PLT
	testl	%eax, %eax
	jle	.L48
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_mgf1_md@PLT
	testl	%eax, %eax
	jle	.L49
	leaq	-104(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_rsa_oaep_label@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L50
	call	RSA_OAEP_PARAMS_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_algor_new_from_md@PLT
	testl	%eax, %eax
	je	.L52
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x509_algor_md_to_mgf1@PLT
	testl	%eax, %eax
	je	.L53
	cmpl	$0, -52(%rbp)
	jle	.L41
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L54
	movq	-104(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L55
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$935, %edi
	call	ossl_X509_ALGOR_from_nid@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	$0, -32(%rbp)
.L41:
	call	RSA_OAEP_PARAMS_it@PLT
	movq	%rax, %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	je	.L57
	movq	-80(%rbp), %rbx
	movl	$919, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	%rbx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	je	.L58
	movq	$0, -80(%rbp)
	movl	$1, -36(%rbp)
	jmp	.L35
.L48:
	nop
	jmp	.L35
.L49:
	nop
	jmp	.L35
.L50:
	nop
	jmp	.L35
.L51:
	nop
	jmp	.L35
.L52:
	nop
	jmp	.L35
.L53:
	nop
	jmp	.L35
.L54:
	nop
	jmp	.L35
.L55:
	nop
	jmp	.L35
.L56:
	nop
	jmp	.L35
.L57:
	nop
	jmp	.L35
.L58:
	nop
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_OAEP_PARAMS_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-36(%rbp), %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	rsa_cms_encrypt, .-rsa_cms_encrypt
	.globl	ossl_cms_rsa_envelope
	.type	ossl_cms_rsa_envelope, @function
ossl_cms_rsa_envelope:
.LFB705:
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
	jne	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_cms_decrypt
	jmp	.L61
.L60:
	cmpl	$0, -12(%rbp)
	jne	.L62
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_cms_encrypt
	jmp	.L61
.L62:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	ossl_cms_rsa_envelope, .-ossl_cms_rsa_envelope
	.section	.rodata
.LC1:
	.string	"algorithm-id"
	.text
	.type	rsa_cms_sign, @function
rsa_cms_sign:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -280(%rbp)
	movl	$1, -28(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_pkey_ctx@PLT
	movq	%rax, -8(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$0, -16(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_algs@PLT
	cmpq	$0, -8(%rbp)
	je	.L64
	leaq	-28(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_rsa_padding@PLT
	testl	%eax, %eax
	jg	.L64
	movl	$0, %eax
	jmp	.L74
.L64:
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	jne	.L66
	movl	$6, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	jmp	.L74
.L66:
	movl	-28(%rbp), %eax
	cmpl	$6, %eax
	je	.L67
	movl	$0, %eax
	jmp	.L74
.L67:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_ctx_to_pss_string@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L74
.L69:
	movl	$912, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	je	.L70
	movl	$1, %eax
	jmp	.L74
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L74
.L68:
	leaq	-336(%rbp), %rax
	leaq	-176(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$128, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-272(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jg	.L71
	movl	$0, %eax
	jmp	.L74
.L71:
	movq	-240(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L74
.L72:
	movq	-16(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_ALGOR@PLT
	testq	%rax, %rax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movl	$1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	rsa_cms_sign, .-rsa_cms_sign
	.section	.rodata
.LC2:
	.string	"RSA-PSS"
	.text
	.type	rsa_cms_verify, @function
rsa_cms_verify:
.LFB707:
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
	call	CMS_SignerInfo_get0_pkey_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_algs@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$912, -20(%rbp)
	jne	.L76
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_rsa_pss_to_ctx@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L81
.L76:
	leaq	.LC2(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L78
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L78:
	cmpl	$6, -20(%rbp)
	jne	.L79
	movl	$1, %eax
	jmp	.L81
.L79:
	leaq	-24(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	je	.L80
	movl	-24(%rbp), %eax
	cmpl	$6, %eax
	jne	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	rsa_cms_verify, .-rsa_cms_verify
	.globl	ossl_cms_rsa_sign
	.type	ossl_cms_rsa_sign, @function
ossl_cms_rsa_sign:
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
	jne	.L83
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_cms_verify
	jmp	.L84
.L83:
	cmpl	$0, -12(%rbp)
	jne	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_cms_sign
	jmp	.L84
.L85:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	ossl_cms_rsa_sign, .-ossl_cms_rsa_sign
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"rsa_cms_decrypt"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"ossl_cms_rsa_envelope"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"rsa_cms_verify"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"ossl_cms_rsa_sign"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

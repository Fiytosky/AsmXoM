	.file	"pk7_doit.c"
	.text
	.type	ossl_check_const_X509_ALGOR_sk_type, @function
ossl_check_const_X509_ALGOR_sk_type:
.LFB279:
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
.LFE279:
	.size	ossl_check_const_X509_ALGOR_sk_type, .-ossl_check_const_X509_ALGOR_sk_type
	.type	ossl_check_X509_ATTRIBUTE_type, @function
ossl_check_X509_ATTRIBUTE_type:
.LFB356:
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
.LFE356:
	.size	ossl_check_X509_ATTRIBUTE_type, .-ossl_check_X509_ATTRIBUTE_type
	.type	ossl_check_const_X509_ATTRIBUTE_sk_type, @function
ossl_check_const_X509_ATTRIBUTE_sk_type:
.LFB357:
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
.LFE357:
	.size	ossl_check_const_X509_ATTRIBUTE_sk_type, .-ossl_check_const_X509_ATTRIBUTE_sk_type
	.type	ossl_check_X509_ATTRIBUTE_sk_type, @function
ossl_check_X509_ATTRIBUTE_sk_type:
.LFB358:
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
.LFE358:
	.size	ossl_check_X509_ATTRIBUTE_sk_type, .-ossl_check_X509_ATTRIBUTE_sk_type
	.type	ossl_check_X509_ATTRIBUTE_freefunc_type, @function
ossl_check_X509_ATTRIBUTE_freefunc_type:
.LFB361:
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
.LFE361:
	.size	ossl_check_X509_ATTRIBUTE_freefunc_type, .-ossl_check_X509_ATTRIBUTE_freefunc_type
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
	.type	ossl_check_const_PKCS7_RECIP_INFO_sk_type, @function
ossl_check_const_PKCS7_RECIP_INFO_sk_type:
.LFB421:
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
.LFE421:
	.size	ossl_check_const_PKCS7_RECIP_INFO_sk_type, .-ossl_check_const_PKCS7_RECIP_INFO_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB602:
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
.LFE602:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	PKCS7_type_is_other
	.type	PKCS7_type_is_other, @function
PKCS7_type_is_other:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$21, %eax
	cmpl	$5, %eax
	ja	.L20
	movl	$0, -4(%rbp)
	jmp	.L21
.L20:
	movl	$1, -4(%rbp)
.L21:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	PKCS7_type_is_other, .-PKCS7_type_is_other
	.globl	PKCS7_get_octet_string
	.type	PKCS7_get_octet_string, @function
PKCS7_get_octet_string:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	jne	.L24
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_type_is_other@PLT
	testl	%eax, %eax
	je	.L26
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L25
.L26:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	PKCS7_get_octet_string, .-PKCS7_get_octet_string
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs7/pk7_doit.c"
	.text
	.type	pkcs7_bio_add_digest, @function
pkcs7_bio_add_digest:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	$0, -32(%rbp)
	call	BIO_f_md@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L28:
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	-96(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L30
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L31
.L30:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
.L31:
	cmpq	$0, -24(%rbp)
	jne	.L32
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L32:
	call	ERR_pop_to_mark@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$111, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L33
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	jmp	.L29
.L33:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L35
.L34:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L35:
	movq	$0, -40(%rbp)
	movl	$1, %eax
	jmp	.L37
.L29:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L37:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	pkcs7_bio_add_digest, .-pkcs7_bio_add_digest
	.type	pkcs7_encode_rinfo, @function
pkcs7_encode_rinfo:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L47
.L39:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L47
.L41:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jle	.L48
	movl	-84(%rbp), %eax
	movslq	%eax, %rsi
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jle	.L49
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L50
	movl	-84(%rbp), %eax
	movslq	%eax, %rdi
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L43
.L48:
	nop
	jmp	.L43
.L49:
	nop
	jmp	.L43
.L50:
	nop
	jmp	.L43
.L51:
	nop
.L43:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	pkcs7_encode_rinfo, .-pkcs7_encode_rinfo
	.section	.rodata
.LC1:
	.string	"RSA"
.LC2:
	.string	"0"
.LC3:
	.string	"rsa_pkcs1_implicit_rejection"
	.text
	.type	pkcs7_decrypt_rinfo, @function
pkcs7_decrypt_rinfo:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movl	$-1, -20(%rbp)
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L53
	movl	$-1, %eax
	jmp	.L60
.L53:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L61
	leaq	.LC1(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L57
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl_str@PLT
.L57:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %r8
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdi
	movq	-104(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_pkey_decrypt_alloc@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L62
	movl	$1, -20(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$185, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L56
.L61:
	nop
	jmp	.L56
.L62:
	nop
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	cmpl	$0, -20(%rbp)
	jne	.L59
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L59:
	movl	-20(%rbp), %eax
.L60:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	pkcs7_decrypt_rinfo, .-pkcs7_decrypt_rinfo
	.globl	PKCS7_dataInit
	.type	PKCS7_dataInit, @function
PKCS7_dataInit:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L103
.L64:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, -112(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L103
.L66:
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	movq	-232(%rbp), %rax
	movl	$0, 16(%rax)
	cmpl	$25, -4(%rbp)
	je	.L67
	cmpl	$25, -4(%rbp)
	jg	.L68
	cmpl	$24, -4(%rbp)
	je	.L69
	cmpl	$24, -4(%rbp)
	jg	.L68
	cmpl	$23, -4(%rbp)
	je	.L70
	cmpl	$23, -4(%rbp)
	jg	.L68
	cmpl	$21, -4(%rbp)
	je	.L104
	cmpl	$22, -4(%rbp)
	jne	.L68
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_get_octet_string@PLT
	movq	%rax, -80(%rbp)
	jmp	.L72
.L69:
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$251, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L74
.L70:
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L74
.L67:
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_get_octet_string@PLT
	movq	%rax, -80(%rbp)
	jmp	.L72
.L68:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L74
.L104:
	nop
	jmp	.L72
.L105:
	nop
	jmp	.L72
.L106:
	nop
.L72:
	movl	$0, -4(%rbp)
	jmp	.L76
.L78:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkcs7_bio_add_digest
	testl	%eax, %eax
	je	.L107
	addl	$1, -4(%rbp)
.L76:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L78
	cmpq	$0, -24(%rbp)
	je	.L79
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkcs7_bio_add_digest
	testl	%eax, %eax
	je	.L108
.L79:
	cmpq	$0, -48(%rbp)
	je	.L80
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$289, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L74
.L81:
	leaq	-152(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpl	$0, -120(%rbp)
	jle	.L83
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-144(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L109
.L83:
	call	ERR_set_mark@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	je	.L84
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L85
.L84:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.L85:
	movq	-152(%rbp), %rax
	movq	-40(%rbp), %rsi
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	$0, -32(%rbp)
	movq	-152(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_rand_key@PLT
	testl	%eax, %eax
	jle	.L111
	movq	-152(%rbp), %rax
	leaq	-144(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L112
	cmpl	$0, -120(%rbp)
	jle	.L89
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L90
	call	ASN1_TYPE_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L113
.L90:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_param_to_asn1@PLT
	testl	%eax, %eax
	jg	.L89
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L74
.L89:
	movl	$0, -4(%rbp)
	jmp	.L91
.L93:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movl	-116(%rbp), %edx
	leaq	-224(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkcs7_encode_rinfo
	testl	%eax, %eax
	jle	.L114
	addl	$1, -4(%rbp)
.L91:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L93
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jne	.L94
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L95
.L94:
	movq	-128(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
.L95:
	movq	$0, -16(%rbp)
.L80:
	cmpq	$0, -240(%rbp)
	jne	.L96
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L97
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	je	.L97
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -240(%rbp)
	jmp	.L98
.L97:
	cmpq	$0, -80(%rbp)
	je	.L99
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L99
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -240(%rbp)
	jmp	.L98
.L99:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.L115
	movq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L98:
	cmpq	$0, -240(%rbp)
	je	.L116
.L96:
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	je	.L101
	movq	-128(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	jmp	.L102
.L101:
	movq	-240(%rbp), %rax
	movq	%rax, -128(%rbp)
.L102:
	movq	-128(%rbp), %rax
	jmp	.L103
.L107:
	nop
	jmp	.L74
.L108:
	nop
	jmp	.L74
.L109:
	nop
	jmp	.L74
.L110:
	nop
	jmp	.L74
.L111:
	nop
	jmp	.L74
.L112:
	nop
	jmp	.L74
.L113:
	nop
	jmp	.L74
.L114:
	nop
	jmp	.L74
.L115:
	nop
	jmp	.L74
.L116:
	nop
.L74:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	PKCS7_dataInit, .-PKCS7_dataInit
	.type	pkcs7_cmp_ri, @function
pkcs7_cmp_ri:
.LFB678:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L118
	movl	-20(%rbp), %eax
	jmp	.L119
.L118:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
.L119:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	pkcs7_cmp_ri, .-pkcs7_cmp_ri
	.globl	PKCS7_dataDecode
	.type	PKCS7_dataDecode, @function
PKCS7_dataDecode:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -116(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L177
.L121:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, -152(%rbp)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L177
.L123:
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	movq	-248(%rbp), %rax
	movl	$0, 16(%rax)
	cmpl	$24, -4(%rbp)
	je	.L124
	cmpl	$24, -4(%rbp)
	jg	.L125
	cmpl	$22, -4(%rbp)
	je	.L126
	cmpl	$23, -4(%rbp)
	je	.L127
	jmp	.L125
.L126:
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_get_octet_string@PLT
	movq	%rax, -48(%rbp)
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L128
	movq	-248(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	jne	.L129
.L128:
	cmpq	$0, -48(%rbp)
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$437, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L129:
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L131
.L124:
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-152(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L132
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L133
.L132:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -72(%rbp)
.L133:
	cmpq	$0, -72(%rbp)
	jne	.L134
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L134:
	call	ERR_pop_to_mark@PLT
	jmp	.L131
.L127:
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-152(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L135
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L136
.L135:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -72(%rbp)
.L136:
	cmpq	$0, -72(%rbp)
	jne	.L137
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L137:
	call	ERR_pop_to_mark@PLT
	jmp	.L131
.L125:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$487, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L131:
	cmpq	$0, -48(%rbp)
	jne	.L138
	cmpq	$0, -264(%rbp)
	jne	.L138
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L138:
	cmpq	$0, -88(%rbp)
	je	.L139
	movl	$0, -4(%rbp)
	jmp	.L140
.L148:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -160(%rbp)
	call	BIO_f_md@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L141
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L141:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-152(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L142
	movq	-128(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L143
.L142:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -56(%rbp)
.L143:
	cmpq	$0, -56(%rbp)
	jne	.L144
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L144:
	call	ERR_pop_to_mark@PLT
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$111, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L145
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$524, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L145:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	cmpq	$0, -16(%rbp)
	jne	.L146
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L147
.L146:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
.L147:
	movq	$0, -24(%rbp)
	addl	$1, -4(%rbp)
.L140:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L148
.L139:
	cmpq	$0, -72(%rbp)
	je	.L149
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L150
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$538, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L150:
	cmpq	$0, -272(%rbp)
	je	.L151
	movl	$0, -4(%rbp)
	jmp	.L152
.L155:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs7_cmp_ri
	testl	%eax, %eax
	je	.L178
	movq	$0, -104(%rbp)
	addl	$1, -4(%rbp)
.L152:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L155
	jmp	.L154
.L178:
	nop
.L154:
	cmpq	$0, -104(%rbp)
	jne	.L151
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$560, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L151:
	cmpq	$0, -272(%rbp)
	jne	.L156
	movl	$0, -4(%rbp)
	jmp	.L157
.L159:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movslq	%eax, %rdi
	movq	-256(%rbp), %rcx
	movq	-104(%rbp), %rdx
	leaq	-188(%rbp), %rsi
	leaq	-184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs7_decrypt_rinfo
	testl	%eax, %eax
	js	.L179
	call	ERR_clear_error@PLT
	addl	$1, -4(%rbp)
.L157:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L159
	jmp	.L160
.L156:
	movq	-104(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-256(%rbp), %rcx
	movq	-104(%rbp), %rdx
	leaq	-188(%rbp), %rsi
	leaq	-184(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	pkcs7_decrypt_rinfo
	testl	%eax, %eax
	js	.L180
	call	ERR_clear_error@PLT
.L160:
	movq	$0, -176(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-176(%rbp), %rax
	movq	-72(%rbp), %rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L181
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_asn1_to_param@PLT
	testl	%eax, %eax
	jle	.L182
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jle	.L183
	movl	-164(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$599, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L184
	movq	-176(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_rand_key@PLT
	testl	%eax, %eax
	jle	.L185
	movq	-184(%rbp), %rax
	testq	%rax, %rax
	jne	.L167
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	$0, -112(%rbp)
.L167:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, %edx
	movl	-188(%rbp), %eax
	cmpl	%eax, %edx
	je	.L168
	movl	-188(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jg	.L168
	movl	-188(%rbp), %eax
	movslq	%eax, %rsi
	movq	-184(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$618, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	$0, -112(%rbp)
.L168:
	call	ERR_clear_error@PLT
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L186
	movl	-188(%rbp), %eax
	movslq	%eax, %rsi
	movq	-184(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$629, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	$0, -184(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-112(%rbp), %rax
	movl	$631, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	$0, -112(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L170
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L171
.L170:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
.L171:
	movq	$0, -32(%rbp)
.L149:
	cmpq	$0, -264(%rbp)
	je	.L172
	movq	-264(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L173
.L172:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L174
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -40(%rbp)
	jmp	.L175
.L174:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L187
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L175:
	cmpq	$0, -40(%rbp)
	je	.L188
.L173:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	$0, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-16(%rbp), %rax
	jmp	.L177
.L179:
	nop
	jmp	.L130
.L180:
	nop
	jmp	.L130
.L181:
	nop
	jmp	.L130
.L182:
	nop
	jmp	.L130
.L183:
	nop
	jmp	.L130
.L184:
	nop
	jmp	.L130
.L185:
	nop
	jmp	.L130
.L186:
	nop
	jmp	.L130
.L187:
	nop
	jmp	.L130
.L188:
	nop
.L130:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-188(%rbp), %eax
	movslq	%eax, %rsi
	movq	-184(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$661, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-116(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-112(%rbp), %rax
	movl	$662, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	PKCS7_dataDecode, .-PKCS7_dataDecode
	.type	PKCS7_find_digest, @function
PKCS7_find_digest:
.LFB680:
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
.L194:
	movq	-16(%rbp), %rax
	movl	$520, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L190
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$675, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L191
.L190:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L192
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L191
.L192:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, -20(%rbp)
	jne	.L193
	movq	-16(%rbp), %rax
	jmp	.L191
.L193:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	jmp	.L194
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	PKCS7_find_digest, .-PKCS7_find_digest
	.type	do_pkcs7_signed_attrib, @function
do_pkcs7_signed_attrib:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	PKCS7_get_signed_attribute@PLT
	testq	%rax, %rax
	jne	.L196
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_add0_attrib_signing_time@PLT
	testl	%eax, %eax
	jne	.L196
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$698, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524321, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L196:
	leaq	-68(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$705, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L198:
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add1_attrib_digest@PLT
	testl	%eax, %eax
	jne	.L199
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$709, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524321, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L199:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_SIGNER_INFO_sign@PLT
	testl	%eax, %eax
	jne	.L200
	movl	$0, %eax
	jmp	.L201
.L200:
	movl	$1, %eax
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	do_pkcs7_signed_attrib, .-do_pkcs7_signed_attrib
	.globl	PKCS7_dataFinal
	.type	PKCS7_dataFinal, @function
PKCS7_dataFinal:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.L203
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$733, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L203:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -48(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L205
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$740, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L205:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L206
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L206:
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -24(%rbp)
	movq	-200(%rbp), %rax
	movl	$0, 16(%rax)
	cmpl	$25, -24(%rbp)
	je	.L207
	cmpl	$25, -24(%rbp)
	jg	.L208
	cmpl	$24, -24(%rbp)
	je	.L209
	cmpl	$24, -24(%rbp)
	jg	.L208
	cmpl	$23, -24(%rbp)
	je	.L210
	cmpl	$23, -24(%rbp)
	jg	.L208
	cmpl	$21, -24(%rbp)
	je	.L211
	cmpl	$22, -24(%rbp)
	je	.L212
	jmp	.L208
.L211:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L213
.L209:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L243
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L215
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L216
.L215:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L243
.L210:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L244
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L216
.L218:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L244
.L212:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_get_octet_string@PLT
	movq	%rax, -40(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	jne	.L245
	movq	-200(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L245
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	$0, -40(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	$0, 32(%rax)
	jmp	.L245
.L207:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_get_octet_string@PLT
	movq	%rax, -40(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	jne	.L246
	movq	-200(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L246
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	$0, -40(%rbp)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	$0, 32(%rax)
	jmp	.L246
.L208:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L216
.L243:
	nop
	jmp	.L213
.L244:
	nop
	jmp	.L213
.L245:
	nop
	jmp	.L213
.L246:
	nop
.L213:
	cmpq	$0, -32(%rbp)
	je	.L221
	movl	$0, -24(%rbp)
	jmp	.L222
.L232:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L247
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -68(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_find_digest
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L248
	movq	-112(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L249
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L227
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_pkcs7_signed_attrib
	testl	%eax, %eax
	jne	.L224
	jmp	.L216
.L227:
	movq	$0, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	je	.L250
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$842, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L250
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-116(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_SignFinal_ex@PLT
	testl	%eax, %eax
	jne	.L231
	leaq	.LC0(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$848, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$849, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L216
.L231:
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	jmp	.L224
.L247:
	nop
.L224:
	addl	$1, -24(%rbp)
.L222:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L232
	jmp	.L233
.L221:
	cmpl	$25, -24(%rbp)
	jne	.L233
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edx
	movq	-208(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_find_digest
	testq	%rax, %rax
	je	.L251
	movq	-112(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L252
	movl	-120(%rbp), %eax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	leaq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L253
.L233:
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L238
	movq	-200(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	jne	.L239
.L238:
	cmpq	$0, -40(%rbp)
	je	.L254
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L239
	movq	-208(%rbp), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L241
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$879, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L216
.L241:
	leaq	-128(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
.L239:
	movl	$1, -20(%rbp)
	jmp	.L216
.L248:
	nop
	jmp	.L216
.L249:
	nop
	jmp	.L216
.L250:
	nop
	jmp	.L216
.L251:
	nop
	jmp	.L216
.L252:
	nop
	jmp	.L216
.L253:
	nop
	jmp	.L216
.L254:
	nop
.L216:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-20(%rbp), %eax
.L242:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	PKCS7_dataFinal, .-PKCS7_dataFinal
	.globl	PKCS7_SIGNER_INFO_sign
	.type	PKCS7_SIGNER_INFO_sign, @function
PKCS7_SIGNER_INFO_sign:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L256
	movl	$0, %eax
	jmp	.L266
.L256:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L258
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$914, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L259
.L258:
	movq	-104(%rbp), %rax
	movq	56(%rax), %r13
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	leaq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L267
	call	PKCS7_ATTR_SIGN_it@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -60(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L268
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jle	.L269
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$930, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -80(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jle	.L270
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$934, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L271
	movq	-80(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jle	.L272
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movl	$1, %eax
	jmp	.L266
.L267:
	nop
	jmp	.L259
.L268:
	nop
	jmp	.L259
.L269:
	nop
	jmp	.L259
.L270:
	nop
	jmp	.L259
.L271:
	nop
	jmp	.L259
.L272:
	nop
.L259:
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$947, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
.L266:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	PKCS7_SIGNER_INFO_sign, .-PKCS7_SIGNER_INFO_sign
	.globl	PKCS7_dataVerify
	.type	PKCS7_dataVerify, @function
PKCS7_dataVerify:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L274
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$963, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L275
.L274:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L276
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$968, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L275
.L276:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L277
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L278
.L277:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	jne	.L279
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L278
.L279:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$979, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L280
.L278:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_crls@PLT
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_issuer_and_serial@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L281
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$991, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L280
.L281:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L282
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$997, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L280
.L282:
	movq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_purpose@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L283
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1003, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L280
.L283:
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_signatureVerify@PLT
	jmp	.L275
.L280:
	movl	-20(%rbp), %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	PKCS7_dataVerify, .-PKCS7_dataVerify
	.globl	PKCS7_signatureVerify
	.type	PKCS7_signatureVerify, @function
PKCS7_signatureVerify:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, -56(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L285
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1031, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L286
.L285:
	movq	-224(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	je	.L287
	movq	-224(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	je	.L287
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L286
.L287:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -68(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -32(%rbp)
.L294:
	cmpq	$0, -32(%rbp)
	je	.L288
	movq	-32(%rbp), %rax
	movl	$520, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L289
.L288:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1046, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L286
.L289:
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jne	.L290
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1051, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L286
.L290:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, -68(%rbp)
	je	.L311
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_pkey_type@PLT
	cmpl	%eax, -68(%rbp)
	je	.L312
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -32(%rbp)
	jmp	.L294
.L311:
	nop
	jmp	.L292
.L312:
	nop
.L292:
	movq	-128(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L313
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L296
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L296
	leaq	-140(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L314
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_digest_from_attributes@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L299
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1083, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L286
.L299:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	-140(%rbp), %edx
	cmpl	%edx, %eax
	jne	.L300
	movl	-140(%rbp), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-208(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L301
.L300:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1088, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -20(%rbp)
	jmp	.L286
.L301:
	call	ERR_set_mark@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L302
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L303
.L302:
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
.L303:
	cmpq	$0, -8(%rbp)
	je	.L304
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jne	.L305
.L304:
	call	ERR_clear_last_mark@PLT
	jmp	.L286
.L305:
	call	ERR_pop_to_mark@PLT
	call	PKCS7_ATTR_VERIFY_it@PLT
	movq	%rax, %rdx
	leaq	-136(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jg	.L306
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1110, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -20(%rbp)
	jmp	.L286
.L306:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L315
.L296:
	movq	-232(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L308
	movl	$-1, -20(%rbp)
	jmp	.L286
.L308:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %r10d
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	EVP_VerifyFinal_ex@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jg	.L309
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -20(%rbp)
	jmp	.L286
.L309:
	movl	$1, -20(%rbp)
	jmp	.L286
.L313:
	nop
	jmp	.L286
.L314:
	nop
	jmp	.L286
.L315:
	nop
.L286:
	movq	-136(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	PKCS7_signatureVerify, .-PKCS7_signatureVerify
	.globl	PKCS7_get_issuer_and_serial
	.type	PKCS7_get_issuer_and_serial, @function
PKCS7_get_issuer_and_serial:
.LFB686:
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
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$24, -4(%rbp)
	je	.L317
	movl	$0, %eax
	jmp	.L318
.L317:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L319
	movl	$0, %eax
	jmp	.L318
.L319:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L320
	movl	$0, %eax
	jmp	.L318
.L320:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -44(%rbp)
	jl	.L321
	movl	$0, %eax
	jmp	.L318
.L321:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	PKCS7_get_issuer_and_serial, .-PKCS7_get_issuer_and_serial
	.globl	PKCS7_get_signed_attribute
	.type	PKCS7_get_signed_attribute, @function
PKCS7_get_signed_attribute:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_attribute
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	PKCS7_get_signed_attribute, .-PKCS7_get_signed_attribute
	.globl	PKCS7_get_attribute
	.type	PKCS7_get_attribute, @function
PKCS7_get_attribute:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_attribute
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	PKCS7_get_attribute, .-PKCS7_get_attribute
	.type	get_attribute, @function
get_attribute:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L327
	movl	$0, %eax
	jmp	.L328
.L327:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_type@PLT
.L328:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	get_attribute, .-get_attribute
	.globl	PKCS7_digest_from_attributes
	.type	PKCS7_digest_from_attributes, @function
PKCS7_digest_from_attributes:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	get_attribute
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L330
	movl	$0, %eax
	jmp	.L331
.L330:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	PKCS7_digest_from_attributes, .-PKCS7_digest_from_attributes
	.globl	PKCS7_set_signed_attributes
	.type	PKCS7_set_signed_attributes, @function
PKCS7_set_signed_attributes:
.LFB691:
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
	movq	X509_ATTRIBUTE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L333
	movl	$0, %eax
	jmp	.L334
.L333:
	movl	$0, -20(%rbp)
	jmp	.L335
.L337:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_dup@PLT
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
	testq	%rax, %rax
	jne	.L336
	movl	$0, %eax
	jmp	.L334
.L336:
	addl	$1, -20(%rbp)
.L335:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L337
	movl	$1, %eax
.L334:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	PKCS7_set_signed_attributes, .-PKCS7_set_signed_attributes
	.globl	PKCS7_set_attributes
	.type	PKCS7_set_attributes, @function
PKCS7_set_attributes:
.LFB692:
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
	movq	X509_ATTRIBUTE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L339
	movl	$0, %eax
	jmp	.L340
.L339:
	movl	$0, -20(%rbp)
	jmp	.L341
.L343:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_dup@PLT
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
	testq	%rax, %rax
	jne	.L342
	movl	$0, %eax
	jmp	.L340
.L342:
	addl	$1, -20(%rbp)
.L341:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L343
	movl	$1, %eax
.L340:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	PKCS7_set_attributes, .-PKCS7_set_attributes
	.globl	PKCS7_add_signed_attribute
	.type	PKCS7_add_signed_attribute, @function
PKCS7_add_signed_attribute:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	call	add_attribute
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	PKCS7_add_signed_attribute, .-PKCS7_add_signed_attribute
	.globl	PKCS7_add_attribute
	.type	PKCS7_add_attribute, @function
PKCS7_add_attribute:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	call	add_attribute
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	PKCS7_add_attribute, .-PKCS7_add_attribute
	.type	add_attribute, @function
add_attribute:
.LFB695:
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
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L349
	call	OPENSSL_sk_new_null@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L349
	movl	$0, %eax
	jmp	.L350
.L349:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -36(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L351
.L354:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	%eax, -60(%rbp)
	je	.L357
	addl	$1, -20(%rbp)
.L351:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L354
	movl	$0, %edi
	call	ossl_check_X509_ATTRIBUTE_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L358
	movl	$0, %eax
	jmp	.L350
.L357:
	nop
	jmp	.L353
.L358:
	nop
.L353:
	movq	-72(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	X509_ATTRIBUTE_create@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L355
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L356
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
.L356:
	movl	$0, %eax
	jmp	.L350
.L355:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
	movl	$1, %eax
.L350:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	add_attribute, .-add_attribute
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 21
__func__.8:
	.string	"pkcs7_bio_add_digest"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"PKCS7_dataInit"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"PKCS7_dataDecode"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 18
__func__.5:
	.string	"PKCS7_find_digest"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"do_pkcs7_signed_attrib"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"PKCS7_dataFinal"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"PKCS7_SIGNER_INFO_sign"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"PKCS7_dataVerify"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"PKCS7_signatureVerify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

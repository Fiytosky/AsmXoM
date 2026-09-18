	.file	"cms_enc.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_enc.c"
	.text
	.globl	ossl_cms_EncryptedContent_init_bio
	.type	ossl_cms_EncryptedContent_init_bio, @function
ossl_cms_EncryptedContent_init_bio:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, -72(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -84(%rbp)
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L6:
	leaq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	call	ERR_set_mark@PLT
	cmpl	$0, -84(%rbp)
	je	.L8
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-168(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L9
.L8:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -16(%rbp)
.L9:
	cmpq	$0, -16(%rbp)
	je	.L10
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L10:
	cmpq	$0, -16(%rbp)
	jne	.L11
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L11:
	call	ERR_pop_to_mark@PLT
	movq	-112(%rbp), %rax
	movl	-84(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jg	.L13
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L13:
	cmpl	$0, -84(%rbp)
	je	.L14
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L16
.L15:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$194, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L16:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L17:
	cmpl	$0, -36(%rbp)
	jle	.L18
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L39
	leaq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L18
.L14:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-112(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_cipher_asn1_to_param_ex@PLT
	testl	%eax, %eax
	jg	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L18
	leaq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-168(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %esi
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L18:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jle	.L40
	movl	-100(%rbp), %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L22
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L23
.L22:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_rand_key@PLT
	testl	%eax, %eax
	jle	.L42
.L23:
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	movq	-168(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-168(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	$0, -32(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L26
	movl	$1, -56(%rbp)
	jmp	.L25
.L26:
	call	ERR_clear_error@PLT
.L25:
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L27
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jg	.L27
	cmpl	$0, -84(%rbp)
	jne	.L28
	movq	-168(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L29
.L28:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L29:
	movq	-168(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$153, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-168(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-168(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	$0, -32(%rbp)
	call	ERR_clear_error@PLT
.L27:
	movq	-168(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rax
	movl	-84(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jg	.L30
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L30:
	cmpl	$0, -84(%rbp)
	je	.L31
	call	ASN1_TYPE_new@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L32:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L33
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_tag_length@PLT
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	je	.L43
.L33:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-112(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_cipher_param_to_asn1_ex@PLT
	testl	%eax, %eax
	jg	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L34:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L31
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
.L31:
	movl	$1, -52(%rbp)
	jmp	.L12
.L39:
	nop
	jmp	.L12
.L40:
	nop
	jmp	.L12
.L41:
	nop
	jmp	.L12
.L42:
	nop
	jmp	.L12
.L43:
	nop
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	cmpl	$0, -56(%rbp)
	je	.L35
	cmpl	$0, -52(%rbp)
	jne	.L36
.L35:
	movq	-168(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$195, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-168(%rbp), %rax
	movq	$0, 32(%rax)
.L36:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$198, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpl	$0, -52(%rbp)
	je	.L37
	movq	-96(%rbp), %rax
	jmp	.L38
.L37:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ossl_cms_EncryptedContent_init_bio, .-ossl_cms_EncryptedContent_init_bio
	.globl	ossl_cms_EncryptedContent_init
	.type	ossl_cms_EncryptedContent_init, @function
ossl_cms_EncryptedContent_init:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -24(%rbp)
	je	.L45
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$212, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L45:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpq	$0, -16(%rbp)
	je	.L48
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L48:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	ossl_cms_EncryptedContent_init, .-ossl_cms_EncryptedContent_init
	.globl	CMS_EncryptedData_set1_key
	.type	CMS_EncryptedData_set1_key, @function
CMS_EncryptedData_set1_key:
.LFB754:
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
	cmpq	$0, -40(%rbp)
	je	.L50
	cmpq	$0, -48(%rbp)
	jne	.L51
.L50:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L51:
	cmpq	$0, -32(%rbp)
	je	.L53
	call	CMS_EncryptedData_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L54:
	movl	$26, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, (%rax)
	jmp	.L55
.L53:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$26, %eax
	je	.L55
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L55:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	CMS_EncryptedData_set1_key, .-CMS_EncryptedData_set1_key
	.globl	ossl_cms_EncryptedData_init_bio
	.type	ossl_cms_EncryptedData_init_bio, @function
ossl_cms_EncryptedData_init_bio:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
.L57:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_EncryptedContent_init_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_cms_EncryptedData_init_bio, .-ossl_cms_EncryptedData_init_bio
	.section	.rodata
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 35
__func__.1:
	.string	"ossl_cms_EncryptedContent_init_bio"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"CMS_EncryptedData_set1_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cms_lib.c"
	.text
	.type	ossl_check_X509_CRL_type, @function
ossl_check_X509_CRL_type:
.LFB344:
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
.LFE344:
	.size	ossl_check_X509_CRL_type, .-ossl_check_X509_CRL_type
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB346:
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
.LFE346:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.type	ossl_check_X509_CRL_freefunc_type, @function
ossl_check_X509_CRL_freefunc_type:
.LFB349:
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
.LFE349:
	.size	ossl_check_X509_CRL_freefunc_type, .-ossl_check_X509_CRL_freefunc_type
	.type	ossl_check_CMS_RevocationInfoChoice_type, @function
ossl_check_CMS_RevocationInfoChoice_type:
.LFB597:
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
.LFE597:
	.size	ossl_check_CMS_RevocationInfoChoice_type, .-ossl_check_CMS_RevocationInfoChoice_type
	.type	ossl_check_const_CMS_RevocationInfoChoice_sk_type, @function
ossl_check_const_CMS_RevocationInfoChoice_sk_type:
.LFB598:
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
.LFE598:
	.size	ossl_check_const_CMS_RevocationInfoChoice_sk_type, .-ossl_check_const_CMS_RevocationInfoChoice_sk_type
	.type	ossl_check_CMS_RevocationInfoChoice_sk_type, @function
ossl_check_CMS_RevocationInfoChoice_sk_type:
.LFB599:
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
.LFE599:
	.size	ossl_check_CMS_RevocationInfoChoice_sk_type, .-ossl_check_CMS_RevocationInfoChoice_sk_type
	.type	sk_CMS_CertificateChoices_num, @function
sk_CMS_CertificateChoices_num:
.LFB608:
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
.LFE608:
	.size	sk_CMS_CertificateChoices_num, .-sk_CMS_CertificateChoices_num
	.type	sk_CMS_CertificateChoices_value, @function
sk_CMS_CertificateChoices_value:
.LFB609:
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
.LFE609:
	.size	sk_CMS_CertificateChoices_value, .-sk_CMS_CertificateChoices_value
	.type	sk_CMS_CertificateChoices_new_null, @function
sk_CMS_CertificateChoices_new_null:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	sk_CMS_CertificateChoices_new_null, .-sk_CMS_CertificateChoices_new_null
	.type	sk_CMS_CertificateChoices_push, @function
sk_CMS_CertificateChoices_push:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	sk_CMS_CertificateChoices_push, .-sk_CMS_CertificateChoices_push
	.globl	CMS_ContentInfo_new
	.type	CMS_ContentInfo_new, @function
CMS_ContentInfo_new:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	CMS_ContentInfo_new, .-CMS_ContentInfo_new
	.globl	CMS_ContentInfo_free
	.type	CMS_ContentInfo_free, @function
CMS_ContentInfo_free:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	CMS_ContentInfo_free, .-CMS_ContentInfo_free
	.globl	CMS_ContentInfo_print_ctx
	.type	CMS_ContentInfo_print_ctx, @function
CMS_ContentInfo_print_ctx:
.LFB635:
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
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	CMS_ContentInfo_print_ctx, .-CMS_ContentInfo_print_ctx
	.globl	d2i_CMS_ContentInfo
	.type	d2i_CMS_ContentInfo, @function
d2i_CMS_ContentInfo:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L29
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_resolve_libctx@PLT
	call	ERR_pop_to_mark@PLT
.L29:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	d2i_CMS_ContentInfo, .-d2i_CMS_ContentInfo
	.globl	i2d_CMS_ContentInfo
	.type	i2d_CMS_ContentInfo, @function
i2d_CMS_ContentInfo:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	i2d_CMS_ContentInfo, .-i2d_CMS_ContentInfo
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_lib.c"
	.text
	.globl	CMS_ContentInfo_new_ex
	.type	CMS_ContentInfo_new_ex, @function
CMS_ContentInfo_new_ex:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	cmpq	$0, -32(%rbp)
	je	.L34
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	$0, -8(%rbp)
.L34:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	CMS_ContentInfo_new_ex, .-CMS_ContentInfo_new_ex
	.globl	ossl_cms_get0_cmsctx
	.type	ossl_cms_get0_cmsctx, @function
ossl_cms_get0_cmsctx:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	addq	$16, %rax
	jmp	.L39
.L37:
	movl	$0, %eax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_cms_get0_cmsctx, .-ossl_cms_get0_cmsctx
	.globl	ossl_cms_ctx_get0_libctx
	.type	ossl_cms_ctx_get0_libctx, @function
ossl_cms_ctx_get0_libctx:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_cms_ctx_get0_libctx, .-ossl_cms_ctx_get0_libctx
	.globl	ossl_cms_ctx_get0_propq
	.type	ossl_cms_ctx_get0_propq, @function
ossl_cms_ctx_get0_propq:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L47
.L45:
	movl	$0, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_cms_ctx_get0_propq, .-ossl_cms_ctx_get0_propq
	.globl	ossl_cms_resolve_libctx
	.type	ossl_cms_resolve_libctx, @function
ossl_cms_resolve_libctx:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_SignerInfos_set_cmsctx@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_RecipientInfos_set_cmsctx@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	cms_get0_certificate_choices
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L53
	movl	$0, -4(%rbp)
	jmp	.L50
.L52:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L51
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
.L51:
	addl	$1, -4(%rbp)
.L50:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_num
	cmpl	%eax, -4(%rbp)
	jl	.L52
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ossl_cms_resolve_libctx, .-ossl_cms_resolve_libctx
	.globl	CMS_get0_type
	.type	CMS_get0_type, @function
CMS_get0_type:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	CMS_get0_type, .-CMS_get0_type
	.globl	ossl_cms_Data_create
	.type	ossl_cms_Data_create, @function
ossl_cms_Data_create:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_set_detached@PLT
.L57:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ossl_cms_Data_create, .-ossl_cms_Data_create
	.globl	ossl_cms_content_bio
	.type	ossl_cms_content_bio, @function
ossl_cms_content_bio:
.LFB645:
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
	call	CMS_get0_content@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	jmp	.L61
.L62:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	cmpq	$32, %rax
	jne	.L64
.L63:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	jmp	.L61
.L64:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_cms_content_bio, .-ossl_cms_content_bio
	.globl	CMS_dataInit
	.type	CMS_dataInit, @function
CMS_dataInit:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L66
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L67
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_content_bio@PLT
	movq	%rax, -16(%rbp)
.L67:
	cmpq	$0, -16(%rbp)
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1059, %eax
	je	.L70
	cmpl	$1059, %eax
	jg	.L71
	cmpl	$26, %eax
	je	.L72
	cmpl	$26, %eax
	jg	.L71
	cmpl	$25, %eax
	je	.L73
	cmpl	$25, %eax
	jg	.L71
	cmpl	$23, %eax
	je	.L74
	cmpl	$23, %eax
	jg	.L71
	cmpl	$21, %eax
	je	.L75
	cmpl	$22, %eax
	je	.L76
	jmp	.L71
.L75:
	movq	-16(%rbp), %rax
	jmp	.L69
.L76:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_SignedData_init_bio@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L73:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_DigestedData_init_bio@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L72:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_EncryptedData_init_bio@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L74:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_EnvelopedData_init_bio@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_AuthEnvelopedData_init_bio@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L71:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L77:
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	jmp	.L69
.L80:
	nop
.L78:
	cmpq	$0, -32(%rbp)
	jne	.L79
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L79:
	movl	$0, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	CMS_dataInit, .-CMS_dataInit
	.globl	CMS_dataFinal
	.type	CMS_dataFinal, @function
CMS_dataFinal:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_cms_DataFinal@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	CMS_dataFinal, .-CMS_dataFinal
	.globl	ossl_cms_DataFinal
	.type	ossl_cms_DataFinal, @function
ossl_cms_DataFinal:
.LFB648:
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
	call	CMS_get0_content@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L86
	movq	-48(%rbp), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L85
.L87:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andq	$-33, %rdx
	movq	%rdx, 16(%rax)
.L86:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1059, %eax
	je	.L88
	cmpl	$1059, %eax
	jg	.L89
	cmpl	$786, %eax
	je	.L90
	cmpl	$786, %eax
	jg	.L89
	cmpl	$26, %eax
	je	.L90
	cmpl	$26, %eax
	jg	.L89
	cmpl	$25, %eax
	je	.L91
	cmpl	$25, %eax
	jg	.L89
	cmpl	$23, %eax
	je	.L92
	cmpl	$23, %eax
	jg	.L89
	cmpl	$21, %eax
	je	.L90
	cmpl	$22, %eax
	je	.L93
	jmp	.L89
.L90:
	movl	$1, %eax
	jmp	.L85
.L92:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_EnvelopedData_final@PLT
	jmp	.L85
.L88:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_AuthEnvelopedData_final@PLT
	jmp	.L85
.L93:
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_SignedData_final@PLT
	jmp	.L85
.L91:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestedData_do_final@PLT
	jmp	.L85
.L89:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	ossl_cms_DataFinal, .-ossl_cms_DataFinal
	.globl	CMS_get0_content
	.type	CMS_get0_content, @function
CMS_get0_content:
.LFB649:
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
	je	.L95
	cmpl	$1059, %eax
	jg	.L96
	cmpl	$786, %eax
	je	.L97
	cmpl	$786, %eax
	jg	.L96
	cmpl	$205, %eax
	je	.L98
	cmpl	$205, %eax
	jg	.L96
	cmpl	$26, %eax
	je	.L99
	cmpl	$26, %eax
	jg	.L96
	cmpl	$25, %eax
	je	.L100
	cmpl	$25, %eax
	jg	.L96
	cmpl	$23, %eax
	je	.L101
	cmpl	$23, %eax
	jg	.L96
	cmpl	$21, %eax
	je	.L102
	cmpl	$22, %eax
	je	.L103
	jmp	.L96
.L102:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	jmp	.L104
.L101:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	addq	$16, %rax
	jmp	.L104
.L100:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	jmp	.L104
.L99:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	addq	$16, %rax
	jmp	.L104
.L95:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	addq	$16, %rax
	jmp	.L104
.L98:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	addq	$8, %rax
	jmp	.L104
.L97:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	addq	$8, %rax
	jmp	.L104
.L96:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L105
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	jmp	.L104
.L105:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	CMS_get0_content, .-CMS_get0_content
	.type	cms_get0_econtent_type, @function
cms_get0_econtent_type:
.LFB650:
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
	je	.L107
	cmpl	$1059, %eax
	jg	.L108
	cmpl	$786, %eax
	je	.L109
	cmpl	$786, %eax
	jg	.L108
	cmpl	$205, %eax
	je	.L110
	cmpl	$205, %eax
	jg	.L108
	cmpl	$26, %eax
	je	.L111
	cmpl	$26, %eax
	jg	.L108
	cmpl	$25, %eax
	je	.L112
	cmpl	$25, %eax
	jg	.L108
	cmpl	$22, %eax
	je	.L113
	cmpl	$23, %eax
	je	.L114
	jmp	.L108
.L113:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L115
.L114:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L115
.L112:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L115
.L111:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L115
.L107:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L115
.L110:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	jmp	.L115
.L109:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L115
.L108:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	cms_get0_econtent_type, .-cms_get0_econtent_type
	.globl	CMS_get0_eContentType
	.type	CMS_get0_eContentType, @function
CMS_get0_eContentType:
.LFB651:
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
	call	cms_get0_econtent_type
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L118
.L117:
	movl	$0, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	CMS_get0_eContentType, .-CMS_get0_eContentType
	.globl	CMS_set1_eContentType
	.type	CMS_set1_eContentType, @function
CMS_set1_eContentType:
.LFB652:
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
	movq	%rax, %rdi
	call	cms_get0_econtent_type
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	cmpq	$0, -32(%rbp)
	jne	.L122
	movl	$1, %eax
	jmp	.L121
.L122:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L123
	movl	$0, %eax
	jmp	.L121
.L123:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	CMS_set1_eContentType, .-CMS_set1_eContentType
	.globl	CMS_is_detached
	.type	CMS_is_detached, @function
CMS_is_detached:
.LFB653:
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
	call	CMS_get0_content@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L125
	movl	$-1, %eax
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movl	$0, %eax
	jmp	.L126
.L127:
	movl	$1, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	CMS_is_detached, .-CMS_is_detached
	.globl	CMS_set_detached
	.type	CMS_set_detached, @function
CMS_set_detached:
.LFB654:
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
	movq	%rax, %rdi
	call	CMS_get0_content@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	cmpl	$0, -28(%rbp)
	je	.L131
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L130
.L131:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L132
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L132:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	orq	$32, %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	jmp	.L130
.L133:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$394, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	CMS_set_detached, .-CMS_set_detached
	.globl	ossl_cms_DigestAlgorithm_init_bio
	.type	ossl_cms_DigestAlgorithm_init_bio, @function
ossl_cms_DigestAlgorithm_init_bio:
.LFB655:
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
	movq	%rsi, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	-112(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L135
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L136
.L135:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -32(%rbp)
.L136:
	cmpq	$0, -32(%rbp)
	jne	.L137
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$422, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L138
.L137:
	call	ERR_pop_to_mark@PLT
	call	BIO_f_md@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L139
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$111, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L140
.L139:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L138
.L140:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	jmp	.L142
.L138:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L142:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ossl_cms_DigestAlgorithm_init_bio, .-ossl_cms_DigestAlgorithm_init_bio
	.globl	ossl_cms_DigestAlgorithm_find_ctx
	.type	ossl_cms_DigestAlgorithm_find_ctx, @function
ossl_cms_DigestAlgorithm_find_ctx:
.LFB656:
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
	movq	-56(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
.L148:
	movq	-48(%rbp), %rax
	movl	$520, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L144
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L149
.L144:
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, -4(%rbp)
	je	.L146
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_pkey_type@PLT
	cmpl	%eax, -4(%rbp)
	jne	.L147
.L146:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	jmp	.L149
.L147:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -48(%rbp)
	jmp	.L148
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_cms_DigestAlgorithm_find_ctx, .-ossl_cms_DigestAlgorithm_find_ctx
	.type	cms_get0_certificate_choices, @function
cms_get0_certificate_choices:
.LFB657:
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
	je	.L151
	cmpl	$1059, %eax
	jg	.L152
	cmpl	$22, %eax
	je	.L153
	cmpl	$23, %eax
	je	.L154
	jmp	.L152
.L153:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	movl	$0, %eax
	jmp	.L155
.L156:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L155
.L151:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L157
	movl	$0, %eax
	jmp	.L155
.L157:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L155
.L152:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	cms_get0_certificate_choices, .-cms_get0_certificate_choices
	.globl	CMS_add0_CertificateChoices
	.type	CMS_add0_CertificateChoices, @function
CMS_add0_CertificateChoices:
.LFB658:
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
	call	cms_get0_certificate_choices
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L159
	movl	$0, %eax
	jmp	.L160
.L159:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L161
	call	sk_CMS_CertificateChoices_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L161:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L162
	movl	$0, %eax
	jmp	.L160
.L162:
	call	CMS_CertificateChoices_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L163
	movl	$0, %eax
	jmp	.L160
.L163:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_push
	testl	%eax, %eax
	jne	.L164
	call	CMS_CertificateChoices_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
	jmp	.L160
.L164:
	movq	-16(%rbp), %rax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	CMS_add0_CertificateChoices, .-CMS_add0_CertificateChoices
	.globl	CMS_add0_cert
	.type	CMS_add0_cert, @function
CMS_add0_cert:
.LFB659:
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
	call	cms_get0_certificate_choices
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	movl	$0, -4(%rbp)
	jmp	.L168
.L170:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L169
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	jne	.L169
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$1, %eax
	jmp	.L167
.L169:
	addl	$1, -4(%rbp)
.L168:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_num
	cmpl	%eax, -4(%rbp)
	jl	.L170
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_add0_CertificateChoices@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L167
.L171:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	CMS_add0_cert, .-CMS_add0_cert
	.globl	CMS_add1_cert
	.type	CMS_add1_cert, @function
CMS_add1_cert:
.LFB660:
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
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L174
.L173:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add0_cert@PLT
	testl	%eax, %eax
	je	.L175
	movl	$1, %eax
	jmp	.L174
.L175:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	CMS_add1_cert, .-CMS_add1_cert
	.type	cms_get0_revocation_choices, @function
cms_get0_revocation_choices:
.LFB661:
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
	je	.L177
	cmpl	$1059, %eax
	jg	.L178
	cmpl	$22, %eax
	je	.L179
	cmpl	$23, %eax
	je	.L180
	jmp	.L178
.L179:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$32, %rax
	jmp	.L181
.L180:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movl	$0, %eax
	jmp	.L181
.L182:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	jmp	.L181
.L177:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L183
	movl	$0, %eax
	jmp	.L181
.L183:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	jmp	.L181
.L178:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$571, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	cms_get0_revocation_choices, .-cms_get0_revocation_choices
	.globl	CMS_add0_RevocationInfoChoice
	.type	CMS_add0_RevocationInfoChoice, @function
CMS_add0_RevocationInfoChoice:
.LFB662:
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
	movq	%rax, %rdi
	call	cms_get0_revocation_choices
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L186
.L185:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L187
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L187:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L188
	movl	$0, %eax
	jmp	.L186
.L188:
	call	CMS_RevocationInfoChoice_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L189
	movl	$0, %eax
	jmp	.L186
.L189:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RevocationInfoChoice_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RevocationInfoChoice_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L190
	call	CMS_RevocationInfoChoice_it@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
	jmp	.L186
.L190:
	movq	-32(%rbp), %rax
.L186:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	CMS_add0_RevocationInfoChoice, .-CMS_add0_RevocationInfoChoice
	.globl	CMS_add0_crl
	.type	CMS_add0_crl, @function
CMS_add0_crl:
.LFB663:
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
	movq	%rax, %rdi
	call	CMS_add0_RevocationInfoChoice@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L192
	movl	$0, %eax
	jmp	.L193
.L192:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	CMS_add0_crl, .-CMS_add0_crl
	.globl	CMS_add1_crl
	.type	CMS_add1_crl, @function
CMS_add1_crl:
.LFB664:
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
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L196
.L195:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add0_crl@PLT
	testl	%eax, %eax
	je	.L197
	movl	$1, %eax
	jmp	.L196
.L197:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movl	$0, %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	CMS_add1_crl, .-CMS_add1_crl
	.globl	CMS_get1_certs
	.type	CMS_get1_certs, @function
CMS_get1_certs:
.LFB665:
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
	call	cms_get0_certificate_choices
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L199
	movl	$0, %eax
	jmp	.L204
.L199:
	movl	$0, -4(%rbp)
	jmp	.L201
.L203:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L202
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	jne	.L202
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, %eax
	jmp	.L204
.L202:
	addl	$1, -4(%rbp)
.L201:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_CMS_CertificateChoices_num
	cmpl	%eax, -4(%rbp)
	jl	.L203
	movq	-32(%rbp), %rax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	CMS_get1_certs, .-CMS_get1_certs
	.globl	CMS_get1_crls
	.type	CMS_get1_crls, @function
CMS_get1_crls:
.LFB666:
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
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	cms_get0_revocation_choices
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L206
	movl	$0, %eax
	jmp	.L207
.L206:
	movl	$0, -28(%rbp)
	jmp	.L208
.L212:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RevocationInfoChoice_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L209
	cmpq	$0, -24(%rbp)
	jne	.L210
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L210
	movl	$0, %eax
	jmp	.L207
.L210:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L211
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	testl	%eax, %eax
	jne	.L209
.L211:
	movq	X509_CRL_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L207
.L209:
	addl	$1, -28(%rbp)
.L208:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RevocationInfoChoice_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L212
	movq	-24(%rbp), %rax
.L207:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	CMS_get1_crls, .-CMS_get1_crls
	.globl	ossl_cms_ias_cert_cmp
	.type	ossl_cms_ias_cert_cmp, @function
ossl_cms_ias_cert_cmp:
.LFB667:
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
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L214
	movl	-4(%rbp), %eax
	jmp	.L215
.L214:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	ossl_cms_ias_cert_cmp, .-ossl_cms_ias_cert_cmp
	.globl	ossl_cms_keyid_cert_cmp
	.type	ossl_cms_keyid_cert_cmp, @function
ossl_cms_keyid_cert_cmp:
.LFB668:
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
	call	X509_get0_subject_key_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L217
	movl	$-1, %eax
	jmp	.L218
.L217:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	ossl_cms_keyid_cert_cmp, .-ossl_cms_keyid_cert_cmp
	.globl	ossl_cms_set1_ias
	.type	ossl_cms_set1_ias, @function
ossl_cms_set1_ias:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	CMS_IssuerAndSerialNumber_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L220
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$694, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L221
.L220:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L222
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$698, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L221
.L222:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_copy@PLT
	testl	%eax, %eax
	jne	.L223
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$702, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L221
.L223:
	call	CMS_IssuerAndSerialNumber_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L224
.L221:
	call	CMS_IssuerAndSerialNumber_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	ossl_cms_set1_ias, .-ossl_cms_set1_ias
	.globl	ossl_cms_set1_keyid
	.type	ossl_cms_set1_keyid, @function
ossl_cms_set1_keyid:
.LFB670:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_subject_key_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L226
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$719, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L227
.L226:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L228
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L227
.L228:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	ossl_cms_set1_keyid, .-ossl_cms_set1_keyid
	.section	.rodata
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 13
__func__.10:
	.string	"CMS_dataInit"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 19
__func__.9:
	.string	"ossl_cms_DataFinal"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 17
__func__.8:
	.string	"CMS_get0_content"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 23
__func__.7:
	.string	"cms_get0_econtent_type"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"CMS_set_detached"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 34
__func__.5:
	.string	"ossl_cms_DigestAlgorithm_init_bio"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 34
__func__.4:
	.string	"ossl_cms_DigestAlgorithm_find_ctx"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"cms_get0_certificate_choices"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 28
__func__.2:
	.string	"cms_get0_revocation_choices"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ossl_cms_set1_ias"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ossl_cms_set1_keyid"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

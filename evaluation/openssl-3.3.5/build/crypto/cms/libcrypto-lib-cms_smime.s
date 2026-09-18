	.file	"cms_smime.c"
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
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB428:
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
.LFE428:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.type	ossl_check_X509_CRL_freefunc_type, @function
ossl_check_X509_CRL_freefunc_type:
.LFB431:
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
.LFE431:
	.size	ossl_check_X509_CRL_freefunc_type, .-ossl_check_X509_CRL_freefunc_type
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
	.type	ossl_check_const_CMS_RecipientEncryptedKey_sk_type, @function
ossl_check_const_CMS_RecipientEncryptedKey_sk_type:
.LFB630:
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
.LFE630:
	.size	ossl_check_const_CMS_RecipientEncryptedKey_sk_type, .-ossl_check_const_CMS_RecipientEncryptedKey_sk_type
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
	.type	cms_get_text_bio, @function
cms_get_text_bio:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L18
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.L19
.L18:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L20
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L19
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L19:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	cms_get_text_bio, .-cms_get_text_bio
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_smime.c"
	.text
	.type	cms_copy_content, @function
cms_copy_content:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4160, %rsp
	movq	%rdi, -4136(%rbp)
	movq	%rsi, -4144(%rbp)
	movl	%edx, -4148(%rbp)
	movl	$0, -4(%rbp)
	movl	-4148(%rbp), %edx
	movq	-4136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	cms_get_text_bio
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L23:
	leaq	-4128(%rbp), %rcx
	movq	-4144(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L25
	movq	-4144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	$522, %eax
	jne	.L26
	movq	-4144(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$113, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L33
.L26:
	cmpl	$0, -20(%rbp)
	jns	.L34
	jmp	.L24
.L25:
	cmpq	$0, -16(%rbp)
	je	.L23
	movl	-20(%rbp), %edx
	leaq	-4128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -20(%rbp)
	jne	.L35
	jmp	.L23
.L34:
	nop
	movl	-4148(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L30
	movq	-4136(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SMIME_text@PLT
	testl	%eax, %eax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L30:
	movl	$1, -4(%rbp)
	jmp	.L24
.L33:
	nop
	jmp	.L24
.L35:
	nop
.L24:
	movq	-16(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L31:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	cms_copy_content, .-cms_copy_content
	.type	check_content, @function
check_content:
.LFB699:
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
	je	.L37
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L38
.L37:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	check_content, .-check_content
	.type	do_free_upto, @function
do_free_upto:
.LFB700:
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
	je	.L41
.L43:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L43
	jmp	.L44
.L41:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
.L44:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	do_free_upto, .-do_free_upto
	.globl	CMS_data
	.type	CMS_data, @function
CMS_data:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_type@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	je	.L46
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_copy_content
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-12(%rbp), %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	CMS_data, .-CMS_data
	.globl	CMS_data_create_ex
	.type	CMS_data_create_ex, @function
CMS_data_create_ex:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_Data_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	-28(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L52
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L53
.L52:
	movq	-8(%rbp), %rax
	jmp	.L51
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	CMS_data_create_ex, .-CMS_data_create_ex
	.globl	CMS_data_create
	.type	CMS_data_create, @function
CMS_data_create:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_data_create_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	CMS_data_create, .-CMS_data_create
	.globl	CMS_digest_verify
	.type	CMS_digest_verify, @function
CMS_digest_verify:
.LFB704:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_type@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$25, %eax
	je	.L57
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L57:
	cmpq	$0, -32(%rbp)
	jne	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_content
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L58
.L60:
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_copy_content
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L61
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestedData_do_final@PLT
	movl	%eax, -4(%rbp)
.L61:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	movl	-4(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	CMS_digest_verify, .-CMS_digest_verify
	.globl	CMS_digest_create_ex
	.type	CMS_digest_create_ex, @function
CMS_digest_create_ex:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L63
	call	EVP_sha1@PLT
	movq	%rax, -32(%rbp)
.L63:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestedData_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	movl	-36(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L66
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_set_detached@PLT
.L66:
	movl	-36(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L67
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L68
.L67:
	movq	-8(%rbp), %rax
	jmp	.L65
.L68:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	CMS_digest_create_ex, .-CMS_digest_create_ex
	.globl	CMS_digest_create
	.type	CMS_digest_create, @function
CMS_digest_create:
.LFB706:
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
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_digest_create_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	CMS_digest_create, .-CMS_digest_create
	.globl	CMS_EncryptedData_decrypt
	.type	CMS_EncryptedData_decrypt, @function
CMS_EncryptedData_decrypt:
.LFB707:
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
	movl	%r9d, -60(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_type@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$26, %eax
	je	.L72
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$206, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L72:
	cmpq	$0, -48(%rbp)
	jne	.L74
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_content
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_EncryptedData_set1_key@PLT
	testl	%eax, %eax
	jg	.L75
	movl	$0, %eax
	jmp	.L73
.L75:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L73
.L76:
	movl	-60(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_copy_content
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	movl	-12(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	CMS_EncryptedData_decrypt, .-CMS_EncryptedData_decrypt
	.globl	CMS_EncryptedData_encrypt_ex
	.type	CMS_EncryptedData_encrypt_ex, @function
CMS_EncryptedData_encrypt_ex:
.LFB708:
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
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L79
.L80:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_EncryptedData_set1_key@PLT
	testl	%eax, %eax
	je	.L85
	movl	-52(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L83
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_set_detached@PLT
.L83:
	movl	-52(%rbp), %eax
	andl	$20480, %eax
	testl	%eax, %eax
	jne	.L84
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L86
.L84:
	movq	-8(%rbp), %rax
	jmp	.L79
.L85:
	nop
	jmp	.L82
.L86:
	nop
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	CMS_EncryptedData_encrypt_ex, .-CMS_EncryptedData_encrypt_ex
	.globl	CMS_EncryptedData_encrypt
	.type	CMS_EncryptedData_encrypt, @function
CMS_EncryptedData_encrypt:
.LFB709:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	CMS_EncryptedData_encrypt_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	CMS_EncryptedData_encrypt, .-CMS_EncryptedData_encrypt
	.section	.rodata
.LC1:
	.string	"smime_sign"
.LC2:
	.string	"Verify error: %s"
	.text
	.type	cms_signerinfo_verify_cert, @function
cms_signerinfo_verify_cert:
.LFB710:
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
	movq	%r9, -96(%rbp)
	movl	$0, -20(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L91
.L90:
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_algs@PLT
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L91
.L92:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_default@PLT
	cmpq	$0, -80(%rbp)
	je	.L93
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_crls@PLT
.L93:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L94
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -40(%rbp)
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$100, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L91
.L94:
	movl	$1, -20(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L96
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get1_chain@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L91
.L96:
	nop
.L91:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	cms_signerinfo_verify_cert, .-cms_signerinfo_verify_cert
	.globl	CMS_verify
	.type	CMS_verify, @function
CMS_verify:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movl	%r9d, -204(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	-204(%rbp), %eax
	andl	$1048576, %eax
	shrl	$20, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L98
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	check_content
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L150
.L98:
	cmpq	$0, -192(%rbp)
	je	.L100
	movl	-204(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L100
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_eContentType@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$787, %eax
	jne	.L100
	orl	$524288, -204(%rbp)
.L100:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L101
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L101:
	movl	$0, -44(%rbp)
	jmp	.L103
.L105:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_algs@PLT
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L104
	addl	$1, -48(%rbp)
.L104:
	addl	$1, -44(%rbp)
.L103:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -44(%rbp)
	jl	.L105
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -48(%rbp)
	je	.L106
	movl	-204(%rbp), %edx
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_set1_signers_certs@PLT
	addl	%eax, -48(%rbp)
.L106:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -48(%rbp)
	je	.L107
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L107:
	movl	-204(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L108
	cmpl	$0, -92(%rbp)
	je	.L109
.L108:
	cmpl	$0, -92(%rbp)
	je	.L110
	movl	-48(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$359, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L151
.L110:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get1_certs@PLT
	movq	%rax, -24(%rbp)
	movl	-204(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L111
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get1_crls@PLT
	movq	%rax, -32(%rbp)
.L111:
	movl	$0, -44(%rbp)
	jmp	.L112
.L116:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L113
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	jmp	.L114
.L113:
	movl	$0, %edi
.L114:
	movq	-104(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cms_signerinfo_verify_cert
	testl	%eax, %eax
	je	.L152
	addl	$1, -44(%rbp)
.L112:
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L116
.L109:
	movl	-204(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L117
	cmpl	$0, -92(%rbp)
	je	.L118
.L117:
	movl	$0, -44(%rbp)
	jmp	.L119
.L125:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_signed_get_attr_count@PLT
	testl	%eax, %eax
	js	.L153
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SignerInfo_verify@PLT
	testl	%eax, %eax
	jle	.L154
	cmpl	$0, -92(%rbp)
	je	.L121
	cmpq	$0, -40(%rbp)
	je	.L123
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L124
.L123:
	movq	$0, -88(%rbp)
.L124:
	movq	-88(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_check_signing_certs@PLT
	testl	%eax, %eax
	jle	.L155
	jmp	.L121
.L153:
	nop
.L121:
	addl	$1, -44(%rbp)
.L119:
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L125
.L118:
	cmpq	$0, -192(%rbp)
	je	.L126
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	$1025, %eax
	jne	.L126
	leaq	-152(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L127
	movq	-136(%rbp), %rax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -72(%rbp)
	jmp	.L128
.L127:
	movq	-192(%rbp), %rax
	movq	%rax, -72(%rbp)
.L128:
	cmpq	$0, -72(%rbp)
	jne	.L156
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L130
.L126:
	movq	-192(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L131
.L156:
	nop
.L131:
	movl	-204(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L132
	cmpq	$0, -192(%rbp)
	je	.L132
	movl	-204(%rbp), %edx
	movq	-200(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	cms_get_text_bio
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L133:
	movq	-80(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L157
	movl	-204(%rbp), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_crlf_copy@PLT
	testl	%eax, %eax
	je	.L158
	movl	-204(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L159
	movq	-200(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SMIME_text@PLT
	testl	%eax, %eax
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$440, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L132:
	movq	-72(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L160
	movl	-204(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_copy_content
	testl	%eax, %eax
	je	.L161
	jmp	.L137
.L159:
	nop
.L137:
	movl	-204(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L139
	movl	$0, -44(%rbp)
	jmp	.L140
.L142:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_SignerInfo_verify_content@PLT
	testl	%eax, %eax
	jg	.L141
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$457, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L141:
	addl	$1, -44(%rbp)
.L140:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -44(%rbp)
	jl	.L142
.L139:
	movl	$1, -52(%rbp)
	jmp	.L102
.L151:
	nop
	jmp	.L102
.L152:
	nop
	jmp	.L102
.L154:
	nop
	jmp	.L102
.L155:
	nop
	jmp	.L102
.L157:
	nop
	jmp	.L102
.L158:
	nop
	jmp	.L102
.L160:
	nop
	jmp	.L102
.L161:
	nop
.L102:
	movl	-204(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L143
	cmpq	$0, -192(%rbp)
	je	.L143
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	movq	-72(%rbp), %rax
	cmpq	-192(%rbp), %rax
	je	.L145
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L145
.L143:
	cmpq	$0, -192(%rbp)
	je	.L146
	movq	-72(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jne	.L146
	movq	-192(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	jmp	.L145
.L146:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
.L145:
	movq	-200(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L162
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	jmp	.L130
.L162:
	nop
.L130:
	cmpq	$0, -40(%rbp)
	je	.L147
	movl	$0, -44(%rbp)
	jmp	.L148
.L149:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	addl	$1, -44(%rbp)
.L148:
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L149
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$483, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L147:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	X509_CRL_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-52(%rbp), %eax
.L150:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	CMS_verify, .-CMS_verify
	.globl	CMS_verify_receipt
	.type	CMS_verify_receipt, @function
CMS_verify_receipt:
.LFB712:
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
	movl	%r8d, -52(%rbp)
	andl	$-66, -52(%rbp)
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_verify@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L164
	movl	-4(%rbp), %eax
	jmp	.L165
.L164:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_Receipt_verify@PLT
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	CMS_verify_receipt, .-CMS_verify_receipt
	.globl	CMS_sign_ex
	.type	CMS_sign_ex, @function
CMS_sign_ex:
.LFB713:
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
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L167
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SignedData_init@PLT
	testl	%eax, %eax
	jne	.L168
.L167:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$514, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L168:
	movl	-68(%rbp), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L170
	movl	$787, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_set1_eContentType@PLT
	testl	%eax, %eax
	jne	.L170
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$520, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L170:
	cmpq	$0, -48(%rbp)
	je	.L171
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_add1_signer@PLT
	testq	%rax, %rax
	jne	.L171
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$525, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$99, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L171:
	movl	$0, -4(%rbp)
	jmp	.L172
.L174:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_cert@PLT
	testl	%eax, %eax
	jne	.L173
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$533, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L173:
	addl	$1, -4(%rbp)
.L172:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L174
	movl	-68(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L175
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_set_detached@PLT
.L175:
	movl	-68(%rbp), %eax
	andl	$20480, %eax
	testl	%eax, %eax
	jne	.L176
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L179
.L176:
	movq	-16(%rbp), %rax
	jmp	.L178
.L179:
	nop
.L169:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	CMS_sign_ex, .-CMS_sign_ex
	.globl	CMS_sign
	.type	CMS_sign, @function
CMS_sign:
.LFB714:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	CMS_sign_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	CMS_sign, .-CMS_sign
	.globl	CMS_sign_receipt
	.type	CMS_sign_receipt, @function
CMS_sign_receipt:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -116(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	andl	$-4098, -116(%rbp)
	orl	$16576, -116(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L183
	cmpq	$0, -96(%rbp)
	jne	.L184
.L183:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L185
.L184:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movl	-116(%rbp), %ecx
	movq	-112(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	CMS_sign_ex@PLT
	addq	$16, %rsp
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L196
	movl	$204, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_set1_eContentType@PLT
	testl	%eax, %eax
	je	.L197
	movl	-116(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_add1_signer@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L189
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$591, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$99, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L187
.L189:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_encode_Receipt@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L198
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L199
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_msgSigDigest_add1@PLT
	testl	%eax, %eax
	je	.L200
	movl	-116(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L201
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_content@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L202
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, -36(%rbp)
	jmp	.L187
.L196:
	nop
	jmp	.L187
.L197:
	nop
	jmp	.L187
.L198:
	nop
	jmp	.L187
.L199:
	nop
	jmp	.L187
.L200:
	nop
	jmp	.L187
.L201:
	nop
	jmp	.L187
.L202:
	nop
.L187:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -36(%rbp)
	je	.L195
	movq	-48(%rbp), %rax
	jmp	.L185
.L195:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
.L185:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	CMS_sign_receipt, .-CMS_sign_receipt
	.globl	CMS_encrypt_ex
	.type	CMS_encrypt_ex, @function
CMS_encrypt_ex:
.LFB716:
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
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L204
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_AuthEnvelopedData_create_ex@PLT
	movq	%rax, -8(%rbp)
	jmp	.L205
.L204:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_EnvelopedData_create_ex@PLT
	movq	%rax, -8(%rbp)
.L205:
	cmpq	$0, -8(%rbp)
	jne	.L206
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$644, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L207
.L206:
	movl	$0, -12(%rbp)
	jmp	.L208
.L210:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_recipient_cert@PLT
	testq	%rax, %rax
	jne	.L209
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$650, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L207
.L209:
	addl	$1, -12(%rbp)
.L208:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L210
	movl	-60(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L211
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_set_detached@PLT
.L211:
	movl	-60(%rbp), %eax
	andl	$20480, %eax
	testl	%eax, %eax
	jne	.L212
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L213
.L212:
	movq	-8(%rbp), %rax
	jmp	.L214
.L213:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L207:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	CMS_encrypt_ex, .-CMS_encrypt_ex
	.globl	CMS_encrypt
	.type	CMS_encrypt, @function
CMS_encrypt:
.LFB717:
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
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMS_encrypt_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	CMS_encrypt, .-CMS_encrypt
	.type	cms_kari_set1_pkey_and_peer, @function
cms_kari_set1_pkey_and_peer:
.LFB718:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_reks@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L218
.L225:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientEncryptedKey_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L219
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientEncryptedKey_cert_cmp@PLT
	testl	%eax, %eax
	jne	.L227
.L219:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_set0_pkey_and_peer@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_decrypt@PLT
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_set0_pkey@PLT
	cmpl	$0, -28(%rbp)
	jle	.L221
	movl	$1, %eax
	jmp	.L222
.L221:
	cmpq	$0, -64(%rbp)
	jne	.L223
	movl	$0, %eax
	jmp	.L222
.L223:
	movl	$-1, %eax
	jmp	.L222
.L227:
	nop
	addl	$1, -4(%rbp)
.L218:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientEncryptedKey_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L225
	movl	$0, %eax
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	cms_kari_set1_pkey_and_peer, .-cms_kari_set1_pkey_and_peer
	.globl	CMS_decrypt_set1_pkey
	.type	CMS_decrypt_set1_pkey, @function
CMS_decrypt_set1_pkey:
.LFB719:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_decrypt_set1_pkey_and_peer@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	CMS_decrypt_set1_pkey, .-CMS_decrypt_set1_pkey
	.globl	CMS_decrypt_set1_pkey_and_peer
	.type	CMS_decrypt_set1_pkey_and_peer, @function
CMS_decrypt_set1_pkey_and_peer:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L231
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$716, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
.L231:
	cmpq	$0, -24(%rbp)
	je	.L232
	cmpq	$0, -32(%rbp)
	je	.L232
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -8(%rbp)
.L232:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_pkey_get_ri_type@PLT
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L233
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$726, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L234
.L233:
	movl	$0, -4(%rbp)
	jmp	.L235
.L245:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_type@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cms_pkey_is_ri_type_supported@PLT
	testl	%eax, %eax
	je	.L248
	movl	$1, -12(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.L238
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cms_kari_set1_pkey_and_peer
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jle	.L239
	movl	$1, %eax
	jmp	.L234
.L239:
	cmpl	$0, -56(%rbp)
	jns	.L237
	movl	$0, %eax
	jmp	.L234
.L238:
	cmpq	$0, -88(%rbp)
	je	.L240
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_ktri_cert_cmp@PLT
	testl	%eax, %eax
	jne	.L237
.L240:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_pkey@PLT
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_decrypt@PLT
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_pkey@PLT
	cmpq	$0, -88(%rbp)
	je	.L241
	cmpl	$0, -8(%rbp)
	jne	.L242
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L234
.L242:
	cmpl	$0, -56(%rbp)
	jle	.L243
	movl	$1, %eax
	jmp	.L234
.L243:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$762, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L234
.L241:
	cmpl	$0, -56(%rbp)
	jle	.L237
	cmpl	$0, -8(%rbp)
	jne	.L244
	cmpl	$0, -36(%rbp)
	je	.L237
.L244:
	movl	$1, %eax
	jmp	.L234
.L248:
	nop
.L237:
	addl	$1, -4(%rbp)
.L235:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L245
	cmpq	$0, -88(%rbp)
	jne	.L246
	cmpl	$0, -36(%rbp)
	jne	.L246
	cmpl	$0, -12(%rbp)
	je	.L246
	cmpl	$0, -8(%rbp)
	jne	.L246
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L234
.L246:
	cmpl	$0, -12(%rbp)
	jne	.L247
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$784, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L247:
	movl	$0, %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	CMS_decrypt_set1_pkey_and_peer, .-CMS_decrypt_set1_pkey_and_peer
	.globl	CMS_decrypt_set1_key
	.type	CMS_decrypt_set1_key, @function
CMS_decrypt_set1_key:
.LFB721:
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
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L250
.L257:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_type@PLT
	cmpl	$2, %eax
	jne	.L259
	cmpq	$0, -64(%rbp)
	je	.L253
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kekri_id_cmp@PLT
	testl	%eax, %eax
	jne	.L252
.L253:
	movl	$1, -8(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_key@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_decrypt@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_key@PLT
	cmpl	$0, -28(%rbp)
	jle	.L254
	movl	$1, %eax
	jmp	.L255
.L254:
	cmpq	$0, -64(%rbp)
	je	.L256
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$813, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L255
.L256:
	call	ERR_clear_error@PLT
	jmp	.L252
.L259:
	nop
.L252:
	addl	$1, -4(%rbp)
.L250:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L257
	cmpl	$0, -8(%rbp)
	jne	.L258
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$821, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L258:
	movl	$0, %eax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	CMS_decrypt_set1_key, .-CMS_decrypt_set1_key
	.globl	CMS_decrypt_set1_password
	.type	CMS_decrypt_set1_password, @function
CMS_decrypt_set1_password:
.LFB722:
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_RecipientInfos@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L261
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$836, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.L261:
	movl	$0, -4(%rbp)
	jmp	.L262
.L266:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_type@PLT
	cmpl	$3, %eax
	jne	.L268
	movl	$1, -8(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_password@PLT
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_decrypt@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_set0_password@PLT
	cmpl	$0, -36(%rbp)
	jle	.L264
	movl	$1, %eax
	jmp	.L265
.L268:
	nop
.L264:
	addl	$1, -4(%rbp)
.L262:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L266
	cmpl	$0, -8(%rbp)
	jne	.L267
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$856, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L267:
	movl	$0, %eax
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	CMS_decrypt_set1_password, .-CMS_decrypt_set1_password
	.globl	CMS_decrypt
	.type	CMS_decrypt, @function
CMS_decrypt:
.LFB723:
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
	movl	%r9d, -76(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_type@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$23, -4(%rbp)
	je	.L270
	cmpl	$1059, -4(%rbp)
	je	.L270
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$871, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L270:
	cmpq	$0, -64(%rbp)
	jne	.L272
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	check_content
	testl	%eax, %eax
	jne	.L272
	movl	$0, %eax
	jmp	.L271
.L272:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -16(%rbp)
	movl	-76(%rbp), %eax
	andl	$131072, %eax
	shrl	$17, %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 64(%rax)
	cmpq	$0, -56(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpq	$0, -48(%rbp)
	jne	.L273
	cmpq	$0, -56(%rbp)
	jne	.L273
	cmpq	$0, -64(%rbp)
	jne	.L273
	cmpq	$0, -72(%rbp)
	jne	.L273
	movl	$1, %eax
	jmp	.L271
.L273:
	cmpq	$0, -48(%rbp)
	je	.L274
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_decrypt_set1_pkey@PLT
	testl	%eax, %eax
	jne	.L274
	movl	$0, %eax
	jmp	.L271
.L274:
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L275
	movl	$0, %eax
	jmp	.L271
.L275:
	movl	-76(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_copy_content
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	movl	-28(%rbp), %eax
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	CMS_decrypt, .-CMS_decrypt
	.globl	CMS_final
	.type	CMS_final, @function
CMS_final:
.LFB724:
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
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L277
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$897, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L278
.L277:
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_crlf_copy@PLT
	testl	%eax, %eax
	je	.L282
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataFinal@PLT
	testl	%eax, %eax
	jne	.L281
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$908, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L280
.L281:
	movl	$1, -4(%rbp)
	jmp	.L280
.L282:
	nop
.L280:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	movl	-4(%rbp), %eax
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	CMS_final, .-CMS_final
	.globl	CMS_final_digest
	.type	CMS_final_digest, @function
CMS_final_digest:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L284
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L285
.L284:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_DataFinal@PLT
	testl	%eax, %eax
	jne	.L286
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$936, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L287
.L286:
	movl	$1, -4(%rbp)
.L287:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_free_upto
	movl	-4(%rbp), %eax
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	CMS_final_digest, .-CMS_final_digest
	.globl	CMS_uncompress
	.type	CMS_uncompress, @function
CMS_uncompress:
.LFB726:
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
	movl	%ecx, -28(%rbp)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$995, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	CMS_uncompress, .-CMS_uncompress
	.globl	CMS_compress
	.type	CMS_compress, @function
CMS_compress:
.LFB727:
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
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1001, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	CMS_compress, .-CMS_compress
	.section	.rodata
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 17
__func__.18:
	.string	"cms_copy_content"
	.align 8
	.type	__func__.17, @object
	.size	__func__.17, 14
__func__.17:
	.string	"check_content"
	.align 8
	.type	__func__.16, @object
	.size	__func__.16, 9
__func__.16:
	.string	"CMS_data"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 18
__func__.15:
	.string	"CMS_digest_verify"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 26
__func__.14:
	.string	"CMS_EncryptedData_decrypt"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 29
__func__.13:
	.string	"CMS_EncryptedData_encrypt_ex"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 27
__func__.12:
	.string	"cms_signerinfo_verify_cert"
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 11
__func__.11:
	.string	"CMS_verify"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 12
__func__.10:
	.string	"CMS_sign_ex"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 17
__func__.9:
	.string	"CMS_sign_receipt"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 15
__func__.8:
	.string	"CMS_encrypt_ex"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 31
__func__.7:
	.string	"CMS_decrypt_set1_pkey_and_peer"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 21
__func__.6:
	.string	"CMS_decrypt_set1_key"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"CMS_decrypt_set1_password"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 12
__func__.4:
	.string	"CMS_decrypt"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 10
__func__.3:
	.string	"CMS_final"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"CMS_final_digest"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"CMS_uncompress"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"CMS_compress"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

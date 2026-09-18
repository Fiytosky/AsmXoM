	.file	"pk7_lib.c"
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
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_CRL_type, @function
ossl_check_X509_CRL_type:
.LFB420:
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
.LFE420:
	.size	ossl_check_X509_CRL_type, .-ossl_check_X509_CRL_type
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB422:
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
.LFE422:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.type	ossl_check_PKCS7_SIGNER_INFO_type, @function
ossl_check_PKCS7_SIGNER_INFO_type:
.LFB474:
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
.LFE474:
	.size	ossl_check_PKCS7_SIGNER_INFO_type, .-ossl_check_PKCS7_SIGNER_INFO_type
	.type	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, @function
ossl_check_const_PKCS7_SIGNER_INFO_sk_type:
.LFB475:
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
.LFE475:
	.size	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, .-ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	.type	ossl_check_PKCS7_SIGNER_INFO_sk_type, @function
ossl_check_PKCS7_SIGNER_INFO_sk_type:
.LFB476:
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
.LFE476:
	.size	ossl_check_PKCS7_SIGNER_INFO_sk_type, .-ossl_check_PKCS7_SIGNER_INFO_sk_type
	.type	ossl_check_PKCS7_RECIP_INFO_type, @function
ossl_check_PKCS7_RECIP_INFO_type:
.LFB480:
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
.LFE480:
	.size	ossl_check_PKCS7_RECIP_INFO_type, .-ossl_check_PKCS7_RECIP_INFO_type
	.type	ossl_check_const_PKCS7_RECIP_INFO_sk_type, @function
ossl_check_const_PKCS7_RECIP_INFO_sk_type:
.LFB481:
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
.LFE481:
	.size	ossl_check_const_PKCS7_RECIP_INFO_sk_type, .-ossl_check_const_PKCS7_RECIP_INFO_sk_type
	.type	ossl_check_PKCS7_RECIP_INFO_sk_type, @function
ossl_check_PKCS7_RECIP_INFO_sk_type:
.LFB482:
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
.LFE482:
	.size	ossl_check_PKCS7_RECIP_INFO_sk_type, .-ossl_check_PKCS7_RECIP_INFO_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs7/pk7_lib.c"
	.text
	.globl	PKCS7_ctrl
	.type	PKCS7_ctrl, @function
PKCS7_ctrl:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -44(%rbp)
	je	.L30
	cmpl	$2, -44(%rbp)
	je	.L31
	jmp	.L43
.L30:
	cmpl	$22, -12(%rbp)
	jne	.L33
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L35
.L34:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L44
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	jne	.L44
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	$0, 32(%rax)
	jmp	.L44
.L33:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L44
.L31:
	cmpl	$22, -12(%rbp)
	jne	.L37
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L39
.L38:
	movq	$1, -8(%rbp)
	jmp	.L40
.L39:
	movq	$0, -8(%rbp)
.L40:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L35
.L37:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L35
.L43:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L35
.L44:
	nop
.L35:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	PKCS7_ctrl, .-PKCS7_ctrl
	.globl	PKCS7_content_new
	.type	PKCS7_content_new, @function
PKCS7_content_new:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	call	PKCS7_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L51
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PKCS7_set_type@PLT
	testl	%eax, %eax
	je	.L52
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_set_content@PLT
	testl	%eax, %eax
	je	.L53
	movl	$1, %eax
	jmp	.L50
.L51:
	nop
	jmp	.L47
.L52:
	nop
	jmp	.L47
.L53:
	nop
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	PKCS7_content_new, .-PKCS7_content_new
	.globl	PKCS7_set_content
	.type	PKCS7_set_content, @function
PKCS7_set_content:
.LFB591:
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
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$22, -4(%rbp)
	je	.L55
	cmpl	$25, -4(%rbp)
	je	.L56
	jmp	.L61
.L55:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	jmp	.L58
.L56:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L58
.L61:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L59:
	movl	$0, %eax
	jmp	.L60
.L58:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	PKCS7_set_content, .-PKCS7_set_content
	.globl	PKCS7_set_type
	.type	PKCS7_set_type, @function
PKCS7_set_type:
.LFB592:
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
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -24(%rbp)
	cmpl	$26, -44(%rbp)
	je	.L63
	cmpl	$26, -44(%rbp)
	jg	.L64
	cmpl	$25, -44(%rbp)
	je	.L65
	cmpl	$25, -44(%rbp)
	jg	.L64
	cmpl	$24, -44(%rbp)
	je	.L66
	cmpl	$24, -44(%rbp)
	jg	.L64
	cmpl	$23, -44(%rbp)
	je	.L67
	cmpl	$23, -44(%rbp)
	jg	.L64
	cmpl	$21, -44(%rbp)
	je	.L68
	cmpl	$22, -44(%rbp)
	jne	.L64
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	call	PKCS7_SIGNED_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L84
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_SIGNED_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L70
.L68:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	call	ASN1_OCTET_STRING_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	jmp	.L70
.L66:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	call	PKCS7_SIGN_ENVELOPE_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L87
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	jmp	.L72
.L67:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	call	PKCS7_ENVELOPE_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L89
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	jmp	.L72
.L63:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	call	PKCS7_ENCRYPT_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L91
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	jmp	.L72
.L65:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	call	PKCS7_DIGEST_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L93
	jmp	.L70
.L64:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L70
.L84:
	nop
	jmp	.L72
.L85:
	nop
	jmp	.L72
.L93:
	nop
.L72:
	movl	$1, %eax
	jmp	.L82
.L83:
	nop
	jmp	.L70
.L86:
	nop
	jmp	.L70
.L87:
	nop
	jmp	.L70
.L88:
	nop
	jmp	.L70
.L89:
	nop
	jmp	.L70
.L90:
	nop
	jmp	.L70
.L91:
	nop
	jmp	.L70
.L92:
	nop
.L70:
	movl	$0, %eax
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	PKCS7_set_type, .-PKCS7_set_type
	.globl	PKCS7_set0_type_other
	.type	PKCS7_set0_type_other, @function
PKCS7_set0_type_other:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	PKCS7_set0_type_other, .-PKCS7_set0_type_other
	.globl	PKCS7_add_signer
	.type	PKCS7_add_signer, @function
PKCS7_add_signer:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$22, -20(%rbp)
	je	.L97
	cmpl	$24, -20(%rbp)
	je	.L98
	jmp	.L113
.L97:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L100
.L98:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L100
.L113:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L102
.L105:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$1, -24(%rbp)
	jmp	.L104
.L103:
	addl	$1, -20(%rbp)
.L102:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L105
.L104:
	cmpl	$0, -24(%rbp)
	jne	.L106
	call	X509_ALGOR_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L107
	call	ASN1_TYPE_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L108
.L107:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L108:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L109
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L110
.L109:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
.L110:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$5, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L106
.L111:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
	jmp	.L101
.L106:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_SIGNER_INFO_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_SIGNER_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L101
.L112:
	movl	$1, %eax
.L101:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	PKCS7_add_signer, .-PKCS7_add_signer
	.globl	PKCS7_add_certificate
	.type	PKCS7_add_certificate, @function
PKCS7_add_certificate:
.LFB595:
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
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$22, -12(%rbp)
	je	.L115
	cmpl	$24, -12(%rbp)
	je	.L116
	jmp	.L120
.L115:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	jmp	.L118
.L116:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	jmp	.L118
.L120:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_cert_new@PLT
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	PKCS7_add_certificate, .-PKCS7_add_certificate
	.globl	PKCS7_add_crl
	.type	PKCS7_add_crl, @function
PKCS7_add_crl:
.LFB596:
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
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$22, -28(%rbp)
	je	.L122
	cmpl	$24, -28(%rbp)
	je	.L123
	jmp	.L130
.L122:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$24, %rax
	movq	%rax, -24(%rbp)
	jmp	.L125
.L123:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$24, %rax
	movq	%rax, -24(%rbp)
	jmp	.L125
.L130:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L127:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L128:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L129
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movl	$0, %eax
	jmp	.L126
.L129:
	movl	$1, %eax
.L126:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	PKCS7_add_crl, .-PKCS7_add_crl
	.type	pkcs7_ecdsa_or_dsa_sign_verify_setup, @function
pkcs7_ecdsa_or_dsa_sign_verify_setup:
.LFB597:
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
	jne	.L132
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_SIGNER_INFO_get0_algs@PLT
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L133
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L134
.L133:
	movl	$-1, %eax
	jmp	.L138
.L134:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L136
	movl	$-1, %eax
	jmp	.L138
.L136:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %ecx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	jne	.L137
	movl	$-1, %eax
	jmp	.L138
.L137:
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	jmp	.L138
.L132:
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	pkcs7_ecdsa_or_dsa_sign_verify_setup, .-pkcs7_ecdsa_or_dsa_sign_verify_setup
	.type	pkcs7_rsa_sign_verify_setup, @function
pkcs7_rsa_sign_verify_setup:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L140
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_SIGNER_INFO_get0_algs@PLT
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L140
	movl	$6, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	jmp	.L143
.L140:
	movl	$1, %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	pkcs7_rsa_sign_verify_setup, .-pkcs7_rsa_sign_verify_setup
	.section	.rodata
.LC1:
	.string	"EC"
.LC2:
	.string	"DSA"
.LC3:
	.string	"RSA"
	.text
	.globl	PKCS7_SIGNER_INFO_set
	.type	PKCS7_SIGNER_INFO_set, @function
PKCS7_SIGNER_INFO_set:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L146
.L147:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L148
	movl	$0, %eax
	jmp	.L146
.L148:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L149
	movl	$0, %eax
	jmp	.L146
.L149:
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L150
	leaq	.LC2(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L151
.L150:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkcs7_ecdsa_or_dsa_sign_verify_setup
	jmp	.L146
.L151:
	leaq	.LC3(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L152
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkcs7_rsa_sign_verify_setup
	jmp	.L146
.L152:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L154
	movl	$1, %eax
	jmp	.L146
.L154:
	cmpl	$-2, -20(%rbp)
	je	.L153
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L146
.L153:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L146:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	PKCS7_SIGNER_INFO_set, .-PKCS7_SIGNER_INFO_set
	.globl	PKCS7_add_signature
	.type	PKCS7_add_signature, @function
PKCS7_add_signature:
.LFB600:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L156
	leaq	-12(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_nid@PLT
	testl	%eax, %eax
	jle	.L165
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L156
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L160
.L156:
	call	PKCS7_SIGNER_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L166
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_SIGNER_INFO_set@PLT
	testl	%eax, %eax
	jle	.L167
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_signer@PLT
	testl	%eax, %eax
	je	.L168
	movq	-8(%rbp), %rax
	jmp	.L164
.L165:
	nop
	jmp	.L160
.L166:
	nop
	jmp	.L160
.L167:
	nop
	jmp	.L160
.L168:
	nop
.L160:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_SIGNER_INFO_free@PLT
	movl	$0, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	PKCS7_add_signature, .-PKCS7_add_signature
	.type	pkcs7_get_signer_certs, @function
pkcs7_get_signer_certs:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L170
	movl	$0, %eax
	jmp	.L171
.L170:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L172
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L171
.L172:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	jne	.L173
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L171
.L173:
	movl	$0, %eax
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	pkcs7_get_signer_certs, .-pkcs7_get_signer_certs
	.type	pkcs7_get_recipient_info, @function
pkcs7_get_recipient_info:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L175
	movl	$0, %eax
	jmp	.L176
.L175:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	jne	.L177
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	jmp	.L176
.L177:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$23, %eax
	jne	.L178
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L176
.L178:
	movl	$0, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	pkcs7_get_recipient_info, .-pkcs7_get_recipient_info
	.globl	ossl_pkcs7_resolve_libctx
	.type	ossl_pkcs7_resolve_libctx, @function
ossl_pkcs7_resolve_libctx:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L190
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L190
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	pkcs7_get_recipient_info
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_get_signer_info@PLT
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	pkcs7_get_signer_certs
	movq	%rax, -56(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L183
.L184:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_set0_libctx@PLT
	addl	$1, -4(%rbp)
.L183:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L184
	movl	$0, -4(%rbp)
	jmp	.L185
.L186:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
	addl	$1, -4(%rbp)
.L185:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_RECIP_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L186
	movl	$0, -4(%rbp)
	jmp	.L187
.L189:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L188
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
.L188:
	addl	$1, -4(%rbp)
.L187:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L189
	jmp	.L179
.L190:
	nop
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_pkcs7_resolve_libctx, .-ossl_pkcs7_resolve_libctx
	.globl	ossl_pkcs7_get0_ctx
	.type	ossl_pkcs7_get0_ctx, @function
ossl_pkcs7_get0_ctx:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L192
	movq	-8(%rbp), %rax
	addq	$40, %rax
	jmp	.L194
.L192:
	movl	$0, %eax
.L194:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_pkcs7_get0_ctx, .-ossl_pkcs7_get0_ctx
	.globl	ossl_pkcs7_set0_libctx
	.type	ossl_pkcs7_set0_libctx, @function
ossl_pkcs7_set0_libctx:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ossl_pkcs7_set0_libctx, .-ossl_pkcs7_set0_libctx
	.globl	ossl_pkcs7_set1_propq
	.type	ossl_pkcs7_set1_propq, @function
ossl_pkcs7_set1_propq:
.LFB606:
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
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$494, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.L197:
	cmpq	$0, -16(%rbp)
	je	.L198
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$498, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movl	$1, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ossl_pkcs7_set1_propq, .-ossl_pkcs7_set1_propq
	.globl	ossl_pkcs7_ctx_propagate
	.type	ossl_pkcs7_ctx_propagate, @function
ossl_pkcs7_ctx_propagate:
.LFB607:
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
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pkcs7_set0_libctx@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pkcs7_set1_propq@PLT
	testl	%eax, %eax
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_resolve_libctx@PLT
	movl	$1, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ossl_pkcs7_ctx_propagate, .-ossl_pkcs7_ctx_propagate
	.globl	ossl_pkcs7_ctx_get0_libctx
	.type	ossl_pkcs7_ctx_get0_libctx, @function
ossl_pkcs7_ctx_get0_libctx:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L204
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L206
.L204:
	movl	$0, %eax
.L206:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ossl_pkcs7_ctx_get0_libctx, .-ossl_pkcs7_ctx_get0_libctx
	.globl	ossl_pkcs7_ctx_get0_propq
	.type	ossl_pkcs7_ctx_get0_propq, @function
ossl_pkcs7_ctx_get0_propq:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L208
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L210
.L208:
	movl	$0, %eax
.L210:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ossl_pkcs7_ctx_get0_propq, .-ossl_pkcs7_ctx_get0_propq
	.globl	PKCS7_set_digest
	.type	PKCS7_set_digest, @function
PKCS7_set_digest:
.LFB610:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$25, %eax
	jne	.L212
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rbx
	call	ASN1_TYPE_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L213
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$528, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L214
.L213:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$5, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rbx
	movl	%edx, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movl	$1, %eax
	jmp	.L214
.L212:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$536, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$1, %eax
.L214:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	PKCS7_set_digest, .-PKCS7_set_digest
	.globl	PKCS7_get_signer_info
	.type	PKCS7_get_signer_info, @function
PKCS7_get_signer_info:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L216
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L217
.L216:
	movl	$0, %eax
	jmp	.L218
.L217:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L219
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	jmp	.L218
.L219:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	jne	.L220
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	jmp	.L218
.L220:
	movl	$0, %eax
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	PKCS7_get_signer_info, .-PKCS7_get_signer_info
	.globl	PKCS7_SIGNER_INFO_get0_algs
	.type	PKCS7_SIGNER_INFO_get0_algs, @function
PKCS7_SIGNER_INFO_get0_algs:
.LFB612:
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
	cmpq	$0, -16(%rbp)
	je	.L222
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L222:
	cmpq	$0, -24(%rbp)
	je	.L223
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L223:
	cmpq	$0, -32(%rbp)
	je	.L225
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L225:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	PKCS7_SIGNER_INFO_get0_algs, .-PKCS7_SIGNER_INFO_get0_algs
	.globl	PKCS7_RECIP_INFO_get0_alg
	.type	PKCS7_RECIP_INFO_get0_alg, @function
PKCS7_RECIP_INFO_get0_alg:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L228
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L228:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	PKCS7_RECIP_INFO_get0_alg, .-PKCS7_RECIP_INFO_get0_alg
	.globl	PKCS7_add_recipient
	.type	PKCS7_add_recipient, @function
PKCS7_add_recipient:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	PKCS7_RECIP_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L235
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_RECIP_INFO_set@PLT
	testl	%eax, %eax
	jle	.L236
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_recipient_info@PLT
	testl	%eax, %eax
	je	.L237
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	jmp	.L234
.L235:
	nop
	jmp	.L231
.L236:
	nop
	jmp	.L231
.L237:
	nop
.L231:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_RECIP_INFO_free@PLT
	movl	$0, %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	PKCS7_add_recipient, .-PKCS7_add_recipient
	.globl	PKCS7_add_recipient_info
	.type	PKCS7_add_recipient_info, @function
PKCS7_add_recipient_info:
.LFB615:
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
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$23, -28(%rbp)
	je	.L239
	cmpl	$24, -28(%rbp)
	jne	.L240
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L241
.L239:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L241
.L240:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L241:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_RECIP_INFO_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_RECIP_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L243
	movl	$0, %eax
	jmp	.L242
.L243:
	movl	$1, %eax
.L242:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	PKCS7_add_recipient_info, .-PKCS7_add_recipient_info
	.type	pkcs7_rsa_encrypt_decrypt_setup, @function
pkcs7_rsa_encrypt_decrypt_setup:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L245
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_RECIP_INFO_get0_alg@PLT
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L245
	movl	$6, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	jmp	.L247
.L245:
	movl	$1, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	pkcs7_rsa_encrypt_decrypt_setup, .-pkcs7_rsa_encrypt_decrypt_setup
	.section	.rodata
.LC4:
	.string	"RSA-PSS"
	.text
	.globl	PKCS7_RECIP_INFO_set
	.type	PKCS7_RECIP_INFO_set, @function
PKCS7_RECIP_INFO_set:
.LFB617:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L249
	movl	$0, %eax
	jmp	.L250
.L249:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L251
	movl	$0, %eax
	jmp	.L250
.L251:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L252
	movl	$0, %eax
	jmp	.L250
.L252:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L253
	movl	$0, %eax
	jmp	.L250
.L253:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L254
	movl	$-2, %eax
	jmp	.L250
.L254:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L255
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkcs7_rsa_encrypt_decrypt_setup
	testl	%eax, %eax
	jg	.L262
	jmp	.L257
.L255:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L259
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L260
.L259:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$650, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L257
.L260:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -28(%rbp)
	cmpl	$-2, -28(%rbp)
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$657, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L257
.L261:
	cmpl	$0, -28(%rbp)
	jg	.L263
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L257
.L262:
	nop
	jmp	.L258
.L263:
	nop
.L258:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	jmp	.L250
.L257:
	movl	$0, %eax
.L250:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	PKCS7_RECIP_INFO_set, .-PKCS7_RECIP_INFO_set
	.globl	PKCS7_cert_from_signer_info
	.type	PKCS7_cert_from_signer_info, @function
PKCS7_cert_from_signer_info:
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
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	jne	.L265
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_issuer_and_serial@PLT
	jmp	.L266
.L265:
	movl	$0, %eax
.L266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	PKCS7_cert_from_signer_info, .-PKCS7_cert_from_signer_info
	.globl	PKCS7_set_cipher
	.type	PKCS7_set_cipher, @function
PKCS7_set_cipher:
.LFB619:
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
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$23, -12(%rbp)
	je	.L268
	cmpl	$24, -12(%rbp)
	jne	.L269
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L270
.L268:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L270
.L269:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$700, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L270:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L272
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$707, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L272:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movl	$1, %eax
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	PKCS7_set_cipher, .-PKCS7_set_cipher
	.globl	PKCS7_stream
	.type	PKCS7_stream, @function
PKCS7_stream:
.LFB620:
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
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	je	.L274
	cmpl	$24, %eax
	jg	.L275
	cmpl	$23, %eax
	je	.L276
	cmpl	$23, %eax
	jg	.L275
	cmpl	$21, %eax
	je	.L277
	cmpl	$22, %eax
	je	.L278
	jmp	.L275
.L277:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L279
.L274:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L284
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L284
.L276:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L285
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L285
.L278:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L279
.L275:
	movq	$0, -8(%rbp)
	jmp	.L279
.L284:
	nop
	jmp	.L279
.L285:
	nop
.L279:
	cmpq	$0, -8(%rbp)
	jne	.L282
	movl	$0, %eax
	jmp	.L283
.L282:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	orq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	PKCS7_stream, .-PKCS7_stream
	.section	.rodata
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 11
__func__.11:
	.string	"PKCS7_ctrl"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 18
__func__.10:
	.string	"PKCS7_set_content"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 15
__func__.9:
	.string	"PKCS7_set_type"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 17
__func__.8:
	.string	"PKCS7_add_signer"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 22
__func__.7:
	.string	"PKCS7_add_certificate"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"PKCS7_add_crl"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"PKCS7_SIGNER_INFO_set"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 20
__func__.4:
	.string	"PKCS7_add_signature"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"PKCS7_set_digest"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"PKCS7_add_recipient_info"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"PKCS7_RECIP_INFO_set"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"PKCS7_set_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

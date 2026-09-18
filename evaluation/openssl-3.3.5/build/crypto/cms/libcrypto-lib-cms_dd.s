	.file	"cms_dd.c"
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
	.globl	ossl_cms_DigestedData_create
	.type	ossl_cms_DigestedData_create, @function
ossl_cms_DigestedData_create:
.LFB672:
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
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	call	CMS_DigestedData_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L11
	movl	$25, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set_md@PLT
	movq	-24(%rbp), %rax
	jmp	.L7
.L11:
	nop
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	ossl_cms_DigestedData_create, .-ossl_cms_DigestedData_create
	.globl	ossl_cms_DigestedData_init_bio
	.type	ossl_cms_DigestedData_init_bio, @function
ossl_cms_DigestedData_init_bio:
.LFB673:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestAlgorithm_init_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	ossl_cms_DigestedData_init_bio, .-ossl_cms_DigestedData_init_bio
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_dd.c"
	.text
	.globl	ossl_cms_DigestedData_do_final
	.type	ossl_cms_DigestedData_do_final, @function
ossl_cms_DigestedData_do_final:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L15:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_DigestAlgorithm_find_ctx@PLT
	testl	%eax, %eax
	je	.L24
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L25
	cmpl	$0, -132(%rbp)
	je	.L19
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	cmpl	%eax, %edx
	je	.L20
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L20:
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L21:
	movl	$1, -4(%rbp)
	jmp	.L16
.L19:
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L26
	movl	$1, -4(%rbp)
	jmp	.L16
.L24:
	nop
	jmp	.L16
.L25:
	nop
	jmp	.L16
.L26:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	ossl_cms_DigestedData_do_final, .-ossl_cms_DigestedData_do_final
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"ossl_cms_DigestedData_do_final"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

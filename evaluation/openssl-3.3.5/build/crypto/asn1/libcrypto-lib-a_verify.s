	.file	"a_verify.c"
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
	.string	"../crypto/asn1/a_verify.c"
	.text
	.globl	ASN1_verify
	.type	ASN1_verify, @function
ASN1_verify:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L6:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L8:
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	jne	.L9
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L9
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L9:
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L10
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L10:
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$56, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L12
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$65, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpl	$0, -4(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$68, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L14:
	movl	$-1, -4(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	EVP_VerifyFinal@PLT
	testl	%eax, %eax
	jg	.L15
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$75, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L7
.L15:
	movl	$1, -4(%rbp)
	jmp	.L7
.L17:
	nop
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ASN1_verify, .-ASN1_verify
	.globl	ASN1_item_verify
	.type	ASN1_item_verify, @function
ASN1_item_verify:
.LFB590:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ASN1_item_verify, .-ASN1_item_verify
	.globl	ASN1_item_verify_ex
	.type	ASN1_item_verify_ex, @function
ASN1_item_verify_ex:
.LFB591:
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
	movq	%r9, -64(%rbp)
	movl	$-1, -4(%rbp)
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	evp_md_ctx_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L21
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_verify_ctx@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
.L21:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ASN1_item_verify_ex, .-ASN1_item_verify_ex
	.section	.rodata
.LC1:
	.string	"RSA"
.LC2:
	.string	"RSA-PSS"
.LC3:
	.string	"nid=0x%x"
	.text
	.globl	ASN1_item_verify_ctx
	.type	ASN1_item_verify_ctx, @function
ASN1_item_verify_ctx:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -48(%rbp)
	movl	$-1, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L43
.L24:
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	jne	.L26
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L26
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L43
.L26:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %ecx
	leaq	-56(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$199, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L27:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L31
.L30:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$199, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L31:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	200(%rax), %r10
	movq	-40(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L32:
	cmpl	$1, -4(%rbp)
	jg	.L34
	jmp	.L28
.L29:
	movq	$0, -24(%rbp)
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L35
	movl	-56(%rbp), %eax
	cmpl	$912, %eax
	jne	.L35
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L36
	leaq	.LC2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$200, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L36:
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_to_ctx@PLT
	testl	%eax, %eax
	jg	.L34
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L35:
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$200, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L38:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L39
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-52(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %ecx
	movl	$161, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L39:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L28
.L34:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
	jmp	.L28
.L40:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
	jmp	.L28
.L41:
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L42
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L42:
	movl	$1, -4(%rbp)
.L28:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$223, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ASN1_item_verify_ctx, .-ASN1_item_verify_ctx
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"ASN1_verify"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ASN1_item_verify_ctx"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

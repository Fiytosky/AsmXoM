	.file	"a_sign.c"
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
	.string	"../crypto/asn1/a_sign.c"
	.text
	.globl	ASN1_sign
	.type	ASN1_sign, @function
ASN1_sign:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L6:
	movl	$0, -20(%rbp)
	jmp	.L8
.L18:
	cmpl	$0, -20(%rbp)
	jne	.L9
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L10
.L9:
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
.L10:
	cmpq	$0, -48(%rbp)
	je	.L25
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$113, %eax
	jne	.L13
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L14
.L13:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L14
.L15:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	call	ASN1_TYPE_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	$5, (%rax)
.L14:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L17:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L25:
	nop
.L12:
	addl	$1, -20(%rbp)
.L8:
	cmpl	$1, -20(%rbp)
	jle	.L18
	movq	-120(%rbp), %rax
	movq	-88(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L19
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L19:
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -32(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	cmpq	$0, -16(%rbp)
	jne	.L21
.L20:
	movl	$0, -76(%rbp)
	jmp	.L7
.L21:
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L22
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L22
	movq	-128(%rbp), %rcx
	leaq	-76(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SignFinal@PLT
	testl	%eax, %eax
	jne	.L23
.L22:
	movl	$0, -76(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L23:
	movl	-76(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -16(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	jmp	.L7
.L26:
	nop
.L7:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$107, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$108, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-76(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ASN1_sign, .-ASN1_sign
	.globl	ASN1_item_sign
	.type	ASN1_item_sign, @function
ASN1_item_sign:
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
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ASN1_item_sign, .-ASN1_item_sign
	.globl	ASN1_item_sign_ex
	.type	ASN1_item_sign_ex, @function
ASN1_item_sign_ex:
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
	movl	$0, -4(%rbp)
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	evp_md_ctx_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	je	.L34
	movq	-16(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_sign_ctx@PLT
	movl	%eax, -4(%rbp)
	jmp	.L33
.L34:
	nop
.L33:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ASN1_item_sign_ex, .-ASN1_item_sign_ex
	.section	.rodata
.LC1:
	.string	"algorithm-id"
	.text
	.globl	ASN1_item_sign_ctx
	.type	ASN1_item_sign_ctx, @function
ASN1_item_sign_ctx:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%r8, -360(%rbp)
	movq	%r9, -368(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -32(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -40(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L36:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L39
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L40
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L40
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L40
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L40
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	je	.L40
.L39:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L40:
	leaq	-416(%rbp), %rax
	leaq	-240(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$128, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -288(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, -280(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-320(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jle	.L66
	movq	-288(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$198, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L43:
	movq	-336(%rbp), %rax
	testq	%rax, %rax
	je	.L44
	leaq	-240(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_ALGOR@PLT
	testq	%rax, %rax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L44:
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L46
	leaq	-240(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-344(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_ALGOR@PLT
	testq	%rax, %rax
	jne	.L46
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
	jmp	.L37
.L46:
	movl	$3, -24(%rbp)
	jmp	.L48
.L38:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %r10
	movq	-344(%rbp), %rdi
	movq	-336(%rbp), %rcx
	movq	-352(%rbp), %r8
	movq	-360(%rbp), %rdx
	movq	-328(%rbp), %rsi
	movq	-368(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	jne	.L50
	movq	-352(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
.L50:
	cmpl	$0, -24(%rbp)
	jg	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$222, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L51:
	cmpl	$1, -24(%rbp)
	jg	.L48
	jmp	.L37
.L49:
	movl	$2, -24(%rbp)
.L48:
	cmpl	$2, -24(%rbp)
	jne	.L52
	cmpq	$0, -40(%rbp)
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L53:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1172, %eax
	je	.L54
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	jmp	.L55
.L54:
	movl	$1172, -28(%rbp)
.L55:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	leaq	-92(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$198, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L56:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L57
	movl	$5, -20(%rbp)
	jmp	.L58
.L57:
	movl	$-1, -20(%rbp)
.L58:
	movq	-336(%rbp), %rax
	testq	%rax, %rax
	je	.L59
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-336(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	je	.L67
.L59:
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L52
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-344(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	je	.L68
.L52:
	movq	-328(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jg	.L60
	movq	$0, -80(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L60:
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-368(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jne	.L61
	movq	$0, -80(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L61:
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$269, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	cmpq	$0, -8(%rbp)
	jne	.L63
.L62:
	movq	$0, -80(%rbp)
	jmp	.L37
.L63:
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-368(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jne	.L64
	movq	$0, -80(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L37
.L64:
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -8(%rbp)
	movq	-352(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	jmp	.L37
.L66:
	nop
	jmp	.L37
.L67:
	nop
	jmp	.L37
.L68:
	nop
.L37:
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$288, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-88(%rbp), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$289, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-80(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ASN1_item_sign_ctx, .-ASN1_item_sign_ctx
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 10
__func__.2:
	.string	"ASN1_sign"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ASN1_item_sign_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"ASN1_item_sign_ctx"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

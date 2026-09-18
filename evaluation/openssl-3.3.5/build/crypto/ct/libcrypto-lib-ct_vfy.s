	.file	"ct_vfy.c"
	.text
	.type	sct_ctx_update, @function
sct_ctx_update:
.LFB585:
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
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$-1, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L14
.L2:
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$1, %eax
	jne	.L4
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movl	$0, %eax
	jmp	.L14
.L4:
	leaq	-36(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movl	88(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -24(%rbp)
	leaq	-36(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	leaq	-36(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L14
.L5:
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L6
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L7
.L6:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L14
.L8:
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
.L7:
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L14
.L9:
	leaq	-36(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$3, -24(%rbp)
	leaq	-36(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L14
.L10:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L14
.L11:
	leaq	-36(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -24(%rbp)
	leaq	-36(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L14
.L12:
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	sct_ctx_update, .-sct_ctx_update
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_vfy.c"
.LC1:
	.string	"SHA2-256"
	.text
	.globl	SCT_CTX_verify
	.type	SCT_CTX_verify, @function
SCT_CTX_verify:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_is_complete@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$-1, %eax
	je	.L16
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$1, %eax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L17
.L16:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L19
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L19:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L20
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L21
.L20:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L21:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L22
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L22:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	.LC1(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L28
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sct_ctx_update
	testl	%eax, %eax
	je	.L29
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L27:
	nop
	jmp	.L24
.L28:
	nop
	jmp	.L24
.L29:
	nop
	jmp	.L24
.L30:
	nop
.L24:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	SCT_CTX_verify, .-SCT_CTX_verify
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"SCT_CTX_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"ofb128.c"
	.text
	.globl	CRYPTO_ofb128_encrypt
	.type	CRYPTO_ofb128_encrypt, @function
CRYPTO_ofb128_encrypt:
.LFB30:
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
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L2
	movq	-64(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L1
.L2:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L4
.L6:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L4:
	cmpl	$0, -4(%rbp)
	je	.L7
	cmpq	$0, -40(%rbp)
	jne	.L6
	jmp	.L7
.L10:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L8
.L9:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %esi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$8, -4(%rbp)
.L8:
	cmpl	$15, -4(%rbp)
	jbe	.L9
	subq	$16, -40(%rbp)
	addq	$16, -32(%rbp)
	addq	$16, -24(%rbp)
	movl	$0, -4(%rbp)
.L7:
	cmpq	$15, -40(%rbp)
	ja	.L10
	cmpq	$0, -40(%rbp)
	je	.L11
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L12
.L13:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L12:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L13
.L11:
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	CRYPTO_ofb128_encrypt, .-CRYPTO_ofb128_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

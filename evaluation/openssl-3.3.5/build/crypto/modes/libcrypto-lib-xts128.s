	.file	"xts128.c"
	.text
	.globl	CRYPTO_xts128_encrypt
	.type	CRYPTO_xts128_encrypt, @function
CRYPTO_xts128_encrypt:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	%r9d, -140(%rbp)
	movl	$1, -28(%rbp)
	cmpq	$15, -136(%rbp)
	ja	.L2
	movl	$-1, %eax
	jmp	.L21
.L2:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %r8
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	cmpl	$0, -140(%rbp)
	jne	.L5
	movq	-136(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L5
	subq	$16, -136(%rbp)
	jmp	.L5
.L10:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %r8
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$16, -120(%rbp)
	addq	$16, -128(%rbp)
	subq	$16, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L21
.L6:
	cmpl	$0, -28(%rbp)
	je	.L7
	movl	-52(%rbp), %eax
	sarl	$31, %eax
	andl	$135, %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -48(%rbp)
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-44(%rbp), %eax
	xorq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-48(%rbp), %eax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L5
.L7:
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	movzbl	-64(%rbp,%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -64(%rbp,%rax)
	shrq	$8, -16(%rbp)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$15, -4(%rbp)
	jbe	.L9
	movzbl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	negl	%eax
	andl	$-121, %eax
	xorl	%edx, %eax
	movb	%al, -64(%rbp)
.L5:
	cmpq	$15, -136(%rbp)
	ja	.L10
	cmpl	$0, -140(%rbp)
	je	.L11
	movl	$0, -4(%rbp)
	jmp	.L12
.L13:
	movl	-4(%rbp), %edx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -38(%rbp)
	movl	-4(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	movzbl	-38(%rbp), %edx
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	cmpq	-136(%rbp), %rax
	jb	.L13
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %r8
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L14
.L11:
	cmpl	$0, -28(%rbp)
	je	.L15
	movl	-52(%rbp), %eax
	sarl	$31, %eax
	andl	$135, %eax
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-32(%rbp), %eax
	xorq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-36(%rbp), %eax
	orq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L16
.L15:
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movl	-4(%rbp), %eax
	movzbl	-64(%rbp,%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -96(%rbp,%rax)
	shrq	$8, -24(%rbp)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$15, -4(%rbp)
	jbe	.L18
	movzbl	-96(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	negl	%eax
	andl	$-121, %eax
	xorl	%edx, %eax
	movb	%al, -96(%rbp)
.L16:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-96(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %r8
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movl	-4(%rbp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	movl	-4(%rbp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	movzbl	-37(%rbp), %edx
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L19:
	movl	-4(%rbp), %eax
	cmpq	-136(%rbp), %rax
	jb	.L20
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %r8
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	xorq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
.L14:
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	CRYPTO_xts128_encrypt, .-CRYPTO_xts128_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

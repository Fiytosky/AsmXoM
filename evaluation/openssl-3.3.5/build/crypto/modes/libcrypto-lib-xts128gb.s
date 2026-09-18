	.file	"xts128gb.c"
	.text
	.globl	ossl_crypto_xts128gb_encrypt
	.type	ossl_crypto_xts128gb_encrypt, @function
ossl_crypto_xts128gb_encrypt:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movl	%r9d, -236(%rbp)
	movl	$1, -12(%rbp)
	cmpq	$15, -232(%rbp)
	ja	.L2
	movl	$-1, %eax
	jmp	.L23
.L2:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-200(%rbp), %rax
	movq	24(%rax), %r8
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	cmpl	$0, -236(%rbp)
	jne	.L5
	movq	-232(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L5
	subq	$16, -232(%rbp)
	jmp	.L5
.L11:
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-160(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-216(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rax
	movq	16(%rax), %r8
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$16, -216(%rbp)
	addq	$16, -224(%rbp)
	subq	$16, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L23
.L6:
	cmpl	$0, -12(%rbp)
	je	.L7
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
#APP
# 75 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
#APP
# 76 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andl	$1, %eax
	movb	%al, -113(%rbp)
	movq	-112(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	salq	$63, %rax
	orq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	shrq	%rax
	movq	%rax, -152(%rbp)
	cmpb	$0, -113(%rbp)
	je	.L8
	movzbl	-145(%rbp), %eax
	xorl	$-31, %eax
	movb	%al, -145(%rbp)
.L8:
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
#APP
# 89 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
#APP
# 90 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.L5
.L7:
	movb	$0, -5(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	movzbl	-160(%rbp,%rax), %eax
	sall	$7, %eax
	movb	%al, -6(%rbp)
	movl	-4(%rbp), %eax
	movzbl	-160(%rbp,%rax), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	-5(%rbp), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -160(%rbp,%rax)
	movzbl	-6(%rbp), %eax
	movb	%al, -5(%rbp)
	addl	$1, -4(%rbp)
.L9:
	cmpl	$15, -4(%rbp)
	jbe	.L10
	cmpb	$0, -6(%rbp)
	je	.L5
	movzbl	-160(%rbp), %eax
	xorl	$-31, %eax
	movb	%al, -160(%rbp)
.L5:
	cmpq	$15, -232(%rbp)
	ja	.L11
	cmpl	$0, -236(%rbp)
	je	.L12
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movl	-4(%rbp), %edx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -74(%rbp)
	movl	-4(%rbp), %edx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movzbl	-176(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	movzbl	-74(%rbp), %edx
	movb	%dl, -176(%rbp,%rax)
	addl	$1, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpq	-232(%rbp), %rax
	jb	.L14
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rax
	movq	16(%rax), %r8
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L15
.L12:
	cmpl	$0, -12(%rbp)
	je	.L16
	movq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
#APP
# 133 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
#APP
# 134 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andl	$1, %eax
	movb	%al, -49(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	salq	$63, %rax
	orq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, -184(%rbp)
	cmpb	$0, -49(%rbp)
	je	.L17
	movzbl	-177(%rbp), %eax
	xorl	$-31, %eax
	movb	%al, -177(%rbp)
.L17:
	movq	-192(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
#APP
# 147 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
#APP
# 148 "../crypto/modes/xts128gb.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L18
.L16:
	movb	$0, -7(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movl	-4(%rbp), %eax
	movzbl	-160(%rbp,%rax), %eax
	sall	$7, %eax
	movb	%al, -8(%rbp)
	movl	-4(%rbp), %eax
	movzbl	-160(%rbp,%rax), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	-7(%rbp), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -192(%rbp,%rax)
	movzbl	-8(%rbp), %eax
	movb	%al, -7(%rbp)
	addl	$1, -4(%rbp)
.L19:
	cmpl	$15, -4(%rbp)
	jbe	.L20
	cmpb	$0, -8(%rbp)
	je	.L18
	movzbl	-192(%rbp), %eax
	xorl	$-31, %eax
	movb	%al, -192(%rbp)
.L18:
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-216(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rax
	movq	16(%rax), %r8
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-176(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L21
.L22:
	movl	-4(%rbp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -73(%rbp)
	movl	-4(%rbp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movzbl	-176(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	movzbl	-73(%rbp), %edx
	movb	%dl, -176(%rbp,%rax)
	addl	$1, -4(%rbp)
.L21:
	movl	-4(%rbp), %eax
	cmpq	-232(%rbp), %rax
	jb	.L22
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rax
	movq	16(%rax), %r8
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	xorq	%rax, %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
.L15:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ossl_crypto_xts128gb_encrypt, .-ossl_crypto_xts128gb_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

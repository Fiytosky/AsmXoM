	.file	"cbc128.c"
	.text
	.globl	CRYPTO_cbc128_encrypt
	.type	CRYPTO_cbc128_encrypt, @function
CRYPTO_cbc128_encrypt:
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
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L17
	jmp	.L4
.L7:
	movq	$0, -8(%rbp)
	jmp	.L5
.L6:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$8, -8(%rbp)
.L5:
	cmpq	$15, -8(%rbp)
	jbe	.L6
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	subq	$16, -40(%rbp)
	addq	$16, -24(%rbp)
	addq	$16, -32(%rbp)
.L4:
	cmpq	$15, -40(%rbp)
	ja	.L7
	jmp	.L8
.L16:
	movq	$0, -8(%rbp)
	jmp	.L9
.L11:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L9:
	cmpq	$15, -8(%rbp)
	ja	.L12
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L11
	jmp	.L12
.L13:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L12:
	cmpq	$15, -8(%rbp)
	jbe	.L13
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$16, -40(%rbp)
	jbe	.L18
	subq	$16, -40(%rbp)
	addq	$16, -24(%rbp)
	addq	$16, -32(%rbp)
.L8:
	cmpq	$0, -40(%rbp)
	jne	.L16
	jmp	.L15
.L18:
	nop
.L15:
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L1
.L17:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	CRYPTO_cbc128_encrypt, .-CRYPTO_cbc128_encrypt
	.globl	CRYPTO_cbc128_decrypt
	.type	CRYPTO_cbc128_decrypt, @function
CRYPTO_cbc128_decrypt:
.LFB31:
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
	movq	%r9, -144(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L41
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L28
	movq	-136(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L23
.L26:
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	-144(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	$0, -8(%rbp)
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-56(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$1, -8(%rbp)
.L24:
	cmpq	$1, -8(%rbp)
	jbe	.L25
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	subq	$16, -120(%rbp)
	addq	$16, -104(%rbp)
	addq	$16, -112(%rbp)
.L23:
	cmpq	$15, -120(%rbp)
	ja	.L26
	movq	-136(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L32
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L32
.L31:
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	-144(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	$0, -8(%rbp)
	jmp	.L29
.L30:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L29:
	cmpq	$1, -8(%rbp)
	jbe	.L30
	subq	$16, -120(%rbp)
	addq	$16, -104(%rbp)
	addq	$16, -112(%rbp)
.L28:
	cmpq	$15, -120(%rbp)
	ja	.L31
	jmp	.L32
.L40:
	movq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	-144(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	$0, -8(%rbp)
	jmp	.L33
.L35:
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -65(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-65(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L33:
	cmpq	$15, -8(%rbp)
	ja	.L34
	movq	-8(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jb	.L35
.L34:
	cmpq	$16, -120(%rbp)
	ja	.L36
	jmp	.L37
.L38:
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-136(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L37:
	cmpq	$15, -8(%rbp)
	jbe	.L38
	jmp	.L19
.L36:
	subq	$16, -120(%rbp)
	addq	$16, -104(%rbp)
	addq	$16, -112(%rbp)
.L32:
	cmpq	$0, -120(%rbp)
	jne	.L40
	jmp	.L19
.L41:
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	CRYPTO_cbc128_decrypt, .-CRYPTO_cbc128_decrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

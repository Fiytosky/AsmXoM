	.file	"cfb128.c"
	.text
	.globl	CRYPTO_cfb128_encrypt
	.type	CRYPTO_cfb128_encrypt, @function
CRYPTO_cfb128_encrypt:
.LFB30:
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
	movq	%r9, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L2
	movq	-80(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L1
.L2:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, 16(%rbp)
	je	.L15
	jmp	.L5
.L7:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	%esi, %eax
	xorl	%ecx, %eax
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -56(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L5:
	cmpl	$0, -4(%rbp)
	je	.L8
	cmpq	$0, -56(%rbp)
	jne	.L7
	jmp	.L8
.L11:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L9
.L10:
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %esi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$8, -4(%rbp)
.L9:
	cmpl	$15, -4(%rbp)
	jbe	.L10
	subq	$16, -56(%rbp)
	addq	$16, -48(%rbp)
	addq	$16, -40(%rbp)
	movl	$0, -4(%rbp)
.L8:
	cmpq	$15, -56(%rbp)
	ja	.L11
	cmpq	$0, -56(%rbp)
	je	.L12
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L13
.L14:
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L13:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	testq	%rax, %rax
	jne	.L14
.L12:
	movl	-4(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1
.L17:
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	xorb	-17(%rbp), %dl
	movb	%dl, (%rax)
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-17(%rbp), %eax
	movb	%al, (%rdx)
	subq	$1, -56(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L15:
	cmpl	$0, -4(%rbp)
	je	.L18
	cmpq	$0, -56(%rbp)
	jne	.L17
	jmp	.L18
.L21:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L19
.L20:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	xorq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$8, -4(%rbp)
.L19:
	cmpl	$15, -4(%rbp)
	jbe	.L20
	subq	$16, -56(%rbp)
	addq	$16, -48(%rbp)
	addq	$16, -40(%rbp)
	movl	$0, -4(%rbp)
.L18:
	cmpq	$15, -56(%rbp)
	ja	.L21
	cmpq	$0, -56(%rbp)
	je	.L22
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L23
.L24:
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, -18(%rbp)
	movl	-4(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	xorb	-18(%rbp), %al
	movb	%al, (%rdx)
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-18(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L23:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	testq	%rax, %rax
	jne	.L24
.L22:
	movl	-4(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	CRYPTO_cfb128_encrypt, .-CRYPTO_cfb128_encrypt
	.type	cfbr_encrypt_block, @function
cfbr_encrypt_block:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -72(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L39
	cmpl	$128, -68(%rbp)
	jg	.L39
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	16(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	-68(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L29
	movl	$0, -4(%rbp)
	jmp	.L30
.L31:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$16, %eax
	xorl	%edx, %ecx
	movslq	%eax, %rdx
	movb	%cl, -48(%rbp,%rdx)
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L30:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L31
	jmp	.L32
.L29:
	movl	$0, -4(%rbp)
	jmp	.L33
.L34:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	addl	$16, %eax
	movzbl	(%rdx), %ecx
	movslq	%eax, %rdx
	movb	%cl, -48(%rbp,%rdx)
	cltq
	movzbl	-48(%rbp,%rax), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L33:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L34
.L32:
	movl	-68(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	movl	-68(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L35
	movl	-8(%rbp), %eax
	cltq
	leaq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L25
.L35:
	movl	$0, -4(%rbp)
	jmp	.L37
.L38:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	$8, %eax
	subl	-12(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L37:
	cmpl	$15, -4(%rbp)
	jle	.L38
	jmp	.L25
.L39:
	nop
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	cfbr_encrypt_block, .-cfbr_encrypt_block
	.globl	CRYPTO_cfb128_1_encrypt
	.type	CRYPTO_cfb128_1_encrypt, @function
CRYPTO_cfb128_1_encrypt:
.LFB32:
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
	movq	$0, -8(%rbp)
	jmp	.L41
.L42:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	sall	$7, %eax
	movb	%al, -9(%rbp)
	movl	16(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	-10(%rbp), %rsi
	leaq	-9(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	cfbr_encrypt_block
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	notl	%eax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	andl	%eax, %esi
	movzbl	-10(%rbp), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L41:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L42
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	CRYPTO_cfb128_1_encrypt, .-CRYPTO_cfb128_1_encrypt
	.globl	CRYPTO_cfb128_8_encrypt
	.type	CRYPTO_cfb128_8_encrypt, @function
CRYPTO_cfb128_8_encrypt:
.LFB33:
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
	movq	$0, -8(%rbp)
	jmp	.L44
.L45:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	16(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$8, %edx
	call	cfbr_encrypt_block
	addq	$16, %rsp
	addq	$1, -8(%rbp)
.L44:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L45
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	CRYPTO_cfb128_8_encrypt, .-CRYPTO_cfb128_8_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

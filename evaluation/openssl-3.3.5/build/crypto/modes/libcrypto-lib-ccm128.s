	.file	"ccm128.c"
	.text
	.globl	CRYPTO_ccm128_init
	.type	CRYPTO_ccm128_init, @function
CRYPTO_ccm128_init:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-16(%rbp), %eax
	subl	$1, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	subl	$2, %eax
	shrl	%eax
	sall	$3, %eax
	andl	$56, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	CRYPTO_ccm128_init, .-CRYPTO_ccm128_init
	.globl	CRYPTO_ccm128_setiv
	.type	CRYPTO_ccm128_setiv, @function
CRYPTO_ccm128_setiv:
.LFB31:
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
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$7, %eax
	movl	%eax, -4(%rbp)
	movl	$14, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %eax
	cmpq	%rax, -40(%rbp)
	jnb	.L3
	movl	$-1, %eax
	jmp	.L4
.L3:
	cmpl	$2, -4(%rbp)
	jbe	.L5
	movq	-48(%rbp), %rax
	shrq	$56, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 8(%rax)
	movq	-48(%rbp), %rax
	shrq	$48, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 9(%rax)
	movq	-48(%rbp), %rax
	shrq	$40, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 10(%rax)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 11(%rax)
	jmp	.L6
.L5:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L6:
	movq	-48(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-48(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 13(%rax)
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 14(%rax)
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 15(%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	$14, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	CRYPTO_ccm128_setiv, .-CRYPTO_ccm128_setiv
	.globl	CRYPTO_ccm128_aad
	.type	CRYPTO_ccm128_aad, @function
CRYPTO_ccm128_aad:
.LFB32:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	cmpq	$65279, -40(%rbp)
	ja	.L10
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 16(%rax)
	movq	-24(%rbp), %rax
	movzbl	17(%rax), %eax
	movq	-40(%rbp), %rdx
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 17(%rax)
	movl	$2, -4(%rbp)
	jmp	.L13
.L10:
	movl	$4294967295, %eax
	cmpq	-40(%rbp), %rax
	jnb	.L12
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 16(%rax)
	movq	-24(%rbp), %rax
	movzbl	17(%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 17(%rax)
	movq	-24(%rbp), %rax
	movzbl	18(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$56, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 18(%rax)
	movq	-24(%rbp), %rax
	movzbl	19(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$48, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 19(%rax)
	movq	-24(%rbp), %rax
	movzbl	20(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$40, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 20(%rax)
	movq	-24(%rbp), %rax
	movzbl	21(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$32, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 21(%rax)
	movq	-24(%rbp), %rax
	movzbl	22(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$24, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 22(%rax)
	movq	-24(%rbp), %rax
	movzbl	23(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 23(%rax)
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 24(%rax)
	movq	-24(%rbp), %rax
	movzbl	25(%rax), %eax
	movq	-40(%rbp), %rdx
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 25(%rax)
	movl	$10, -4(%rbp)
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 16(%rax)
	movq	-24(%rbp), %rax
	movzbl	17(%rax), %eax
	xorl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 17(%rax)
	movq	-24(%rbp), %rax
	movzbl	18(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$24, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 18(%rax)
	movq	-24(%rbp), %rax
	movzbl	19(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 19(%rax)
	movq	-24(%rbp), %rax
	movzbl	20(%rax), %edx
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 20(%rax)
	movq	-24(%rbp), %rax
	movzbl	21(%rax), %eax
	movq	-40(%rbp), %rdx
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 21(%rax)
	movl	$6, -4(%rbp)
	jmp	.L13
.L15:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movb	%cl, 16(%rdx,%rax)
	addl	$1, -4(%rbp)
	addq	$1, -32(%rbp)
	subq	$1, -40(%rbp)
.L13:
	cmpl	$15, -4(%rbp)
	ja	.L14
	cmpq	$0, -40(%rbp)
	jne	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	16(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	16(%rdx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L13
	jmp	.L7
.L17:
	nop
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	CRYPTO_ccm128_aad, .-CRYPTO_ccm128_aad
	.type	ctr64_inc, @function
ctr64_inc:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$8, -4(%rbp)
	addq	$8, -24(%rbp)
.L21:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	addb	$1, -5(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	cmpb	$0, -5(%rbp)
	jne	.L22
	cmpl	$0, -4(%rbp)
	jne	.L21
	jmp	.L18
.L22:
	nop
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ctr64_inc, .-ctr64_inc
	.globl	CRYPTO_ccm128_encrypt
	.type	CRYPTO_ccm128_encrypt, @function
CRYPTO_ccm128_encrypt:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L24
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
.L24:
	movzbl	-13(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
	movq	$0, -8(%rbp)
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L25
.L26:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	salq	$8, -8(%rbp)
	addl	$1, -12(%rbp)
.L25:
	cmpl	$14, -12(%rbp)
	jbe	.L26
	movq	-72(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movb	$1, 15(%rax)
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L27
	movl	$-1, %eax
	jmp	.L39
.L27:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-96(%rbp), %rdx
	addq	$15, %rdx
	shrq	$3, %rdx
	orq	$1, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movabsq	$2305843009213693952, %rdx
	cmpq	%rax, %rdx
	jnb	.L30
	movl	$-2, %eax
	jmp	.L39
.L31:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ctr64_inc
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$16, -80(%rbp)
	addq	$16, -88(%rbp)
	subq	$16, -96(%rbp)
.L30:
	cmpq	$15, -96(%rbp)
	ja	.L31
	cmpq	$0, -96(%rbp)
	je	.L32
	movl	$0, -12(%rbp)
	jmp	.L33
.L34:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movl	-12(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	%cl, 16(%rdx,%rax)
	addl	$1, -12(%rbp)
.L33:
	movl	-12(%rbp), %eax
	cmpq	-96(%rbp), %rax
	jb	.L34
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L35
.L36:
	movl	-12(%rbp), %eax
	movzbl	-64(%rbp,%rax), %esi
	movl	-12(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-12(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L35:
	movl	-12(%rbp), %eax
	cmpq	-96(%rbp), %rax
	jb	.L36
.L32:
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L37
.L38:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L37:
	cmpl	$15, -12(%rbp)
	jbe	.L38
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	movl	$0, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	CRYPTO_ccm128_encrypt, .-CRYPTO_ccm128_encrypt
	.globl	CRYPTO_ccm128_decrypt
	.type	CRYPTO_ccm128_decrypt, @function
CRYPTO_ccm128_decrypt:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L41
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
.L41:
	movzbl	-13(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
	movq	$0, -8(%rbp)
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L42
.L43:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	salq	$8, -8(%rbp)
	addl	$1, -12(%rbp)
.L42:
	cmpl	$14, -12(%rbp)
	jbe	.L43
	movq	-72(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movb	$1, 15(%rax)
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L46
	movl	$-1, %eax
	jmp	.L53
.L47:
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ctr64_inc
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
	addq	$16, -80(%rbp)
	addq	$16, -88(%rbp)
	subq	$16, -96(%rbp)
.L46:
	cmpq	$15, -96(%rbp)
	ja	.L47
	cmpq	$0, -96(%rbp)
	je	.L48
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L49
.L50:
	movl	-12(%rbp), %eax
	movzbl	-64(%rbp,%rax), %esi
	movl	-12(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-12(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	16(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	%cl, 16(%rdx,%rax)
	addl	$1, -12(%rbp)
.L49:
	movl	-12(%rbp), %eax
	cmpq	-96(%rbp), %rax
	jb	.L50
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
.L48:
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L51
.L52:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L51:
	cmpl	$15, -12(%rbp)
	jbe	.L52
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	CRYPTO_ccm128_decrypt, .-CRYPTO_ccm128_decrypt
	.type	ctr64_add, @function
ctr64_add:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$8, -8(%rbp)
	movq	$0, -16(%rbp)
	addq	$8, -24(%rbp)
.L56:
	subq	$1, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movzbl	%al, %eax
	addq	%rdx, %rax
	addq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	shrq	$8, -16(%rbp)
	shrq	$8, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	cmpq	$0, -32(%rbp)
	jne	.L56
	cmpq	$0, -16(%rbp)
	jne	.L56
.L57:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ctr64_add, .-ctr64_add
	.globl	CRYPTO_ccm128_encrypt_ccm64
	.type	CRYPTO_ccm128_encrypt_ccm64, @function
CRYPTO_ccm128_encrypt_ccm64:
.LFB37:
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
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L59
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
.L59:
	movzbl	-13(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
	movq	$0, -8(%rbp)
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L60
.L61:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	salq	$8, -8(%rbp)
	addl	$1, -12(%rbp)
.L60:
	cmpl	$14, -12(%rbp)
	jbe	.L61
	movq	-72(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movb	$1, 15(%rax)
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L62
	movl	$-1, %eax
	jmp	.L73
.L62:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-96(%rbp), %rdx
	addq	$15, %rdx
	shrq	$3, %rdx
	orq	$1, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movabsq	$2305843009213693952, %rdx
	cmpq	%rax, %rdx
	jnb	.L64
	movl	$-2, %eax
	jmp	.L73
.L64:
	movq	-96(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L65
	movq	-72(%rbp), %rax
	leaq	16(%rax), %r8
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	salq	$4, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L65
	movq	-8(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctr64_add
.L65:
	cmpq	$0, -96(%rbp)
	je	.L66
	movl	$0, -12(%rbp)
	jmp	.L67
.L68:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movl	-12(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	%cl, 16(%rdx,%rax)
	addl	$1, -12(%rbp)
.L67:
	movl	-12(%rbp), %eax
	cmpq	-96(%rbp), %rax
	jb	.L68
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L69
.L70:
	movl	-12(%rbp), %eax
	movzbl	-64(%rbp,%rax), %esi
	movl	-12(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-12(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L69:
	movl	-12(%rbp), %eax
	cmpq	-96(%rbp), %rax
	jb	.L70
.L66:
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L71
.L72:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L71:
	cmpl	$15, -12(%rbp)
	jbe	.L72
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	movl	$0, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	CRYPTO_ccm128_encrypt_ccm64, .-CRYPTO_ccm128_encrypt_ccm64
	.globl	CRYPTO_ccm128_decrypt_ccm64
	.type	CRYPTO_ccm128_decrypt_ccm64, @function
CRYPTO_ccm128_decrypt_ccm64:
.LFB38:
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
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L75
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
.L75:
	movzbl	-13(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
	movq	$0, -8(%rbp)
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L76
.L77:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	salq	$8, -8(%rbp)
	addl	$1, -12(%rbp)
.L76:
	cmpl	$14, -12(%rbp)
	jbe	.L77
	movq	-72(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movb	$1, 15(%rax)
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L78
	movl	$-1, %eax
	jmp	.L86
.L78:
	movq	-96(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-72(%rbp), %rax
	leaq	16(%rax), %r8
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	salq	$4, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctr64_add
.L80:
	cmpq	$0, -96(%rbp)
	je	.L81
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L82
.L83:
	movl	-12(%rbp), %eax
	movzbl	-64(%rbp,%rax), %esi
	movl	-12(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-12(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	16(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	%cl, 16(%rdx,%rax)
	addl	$1, -12(%rbp)
.L82:
	movl	-12(%rbp), %eax
	cmpq	-96(%rbp), %rax
	jb	.L83
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
.L81:
	movl	$15, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L84
.L85:
	movq	-72(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	$0, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L84:
	cmpl	$15, -12(%rbp)
	jbe	.L85
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	CRYPTO_ccm128_decrypt_ccm64, .-CRYPTO_ccm128_decrypt_ccm64
	.globl	CRYPTO_ccm128_tag
	.type	CRYPTO_ccm128_tag, @function
CRYPTO_ccm128_tag:
.LFB39:
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
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	andl	$7, %eax
	movl	%eax, -4(%rbp)
	sall	-4(%rbp)
	addl	$2, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpq	%rax, -40(%rbp)
	je	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	CRYPTO_ccm128_tag, .-CRYPTO_ccm128_tag
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

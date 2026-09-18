	.file	"wp_dgst.c"
	.text
	.globl	WHIRLPOOL_Init
	.type	WHIRLPOOL_Init, @function
WHIRLPOOL_Init:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$168, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	WHIRLPOOL_Init, .-WHIRLPOOL_Init
	.globl	WHIRLPOOL_Update
	.type	WHIRLPOOL_Update, @function
WHIRLPOOL_Update:
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
	movabsq	$1152921504606846976, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L4
.L5:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WHIRLPOOL_BitUpdate@PLT
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L4:
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L5
	cmpq	$0, -40(%rbp)
	je	.L6
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WHIRLPOOL_BitUpdate@PLT
.L6:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	WHIRLPOOL_Update, .-WHIRLPOOL_Update
	.globl	WHIRLPOOL_BitUpdate
	.type	WHIRLPOOL_BitUpdate, @function
WHIRLPOOL_BitUpdate:
.LFB32:
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
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	negl	%eax
	andl	$7, %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L32
	movq	$1, -8(%rbp)
.L10:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	%rcx, 8(%rax,%rdx,8)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L32
	addq	$1, -8(%rbp)
	cmpq	$3, -8(%rbp)
	jbe	.L10
.L32:
	nop
.L9:
.L21:
	cmpl	$0, -20(%rbp)
	jne	.L18
	cmpl	$0, -16(%rbp)
	jne	.L18
	jmp	.L12
.L16:
	cmpl	$0, -12(%rbp)
	jne	.L13
	movq	-72(%rbp), %rax
	shrq	$9, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	movq	-8(%rbp), %rax
	salq	$9, %rax
	shrq	$3, %rax
	addq	%rax, -32(%rbp)
	andq	$511, -72(%rbp)
	jmp	.L12
.L13:
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, -40(%rbp)
	movl	$512, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpq	%rax, -72(%rbp)
	jb	.L14
	movl	-16(%rbp), %eax
	subq	%rax, -72(%rbp)
	shrl	$3, -16(%rbp)
	movl	-16(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movl	-40(%rbp), %eax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-16(%rbp), %eax
	addq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	movl	$0, -12(%rbp)
	jmp	.L15
.L14:
	movq	-72(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movl	-40(%rbp), %eax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	addl	%eax, -12(%rbp)
	movq	$0, -72(%rbp)
.L15:
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 128(%rax)
.L12:
	cmpq	$0, -72(%rbp)
	jne	.L16
	jmp	.L17
.L31:
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L19
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	movzbl	64(%rdx,%rcx), %edx
	movl	%edx, %edi
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	$255, %esi
	movl	%edx, %ecx
	sarl	%cl, %esi
	movl	%esi, %edx
	andl	%r8d, %edx
	orl	%edi, %edx
	movl	%edx, %ecx
	movq	-56(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, 64(%rdx,%rax)
	movl	$8, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	-20(%rbp), %eax
	subq	%rax, -72(%rbp)
	movl	$0, -20(%rbp)
	addq	$1, -32(%rbp)
	cmpl	$512, -12(%rbp)
	jne	.L20
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	movl	$0, -12(%rbp)
.L20:
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 128(%rax)
	jmp	.L21
.L19:
	cmpq	$8, -72(%rbp)
	jbe	.L22
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$8, %eax
	subl	-20(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movb	%al, -41(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L23
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	movzbl	64(%rdx,%rcx), %edx
	movl	%edx, %edi
	movzbl	-41(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%edx, %ecx
	sarl	%cl, %esi
	movl	%esi, %edx
	orl	%edi, %edx
	movl	%edx, %ecx
	movq	-56(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, 64(%rdx,%rax)
	jmp	.L24
.L23:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	movzbl	-41(%rbp), %eax
	movb	%al, 64(%rdx,%rcx)
.L24:
	addl	$8, -12(%rbp)
	subq	$8, -72(%rbp)
	addq	$1, -32(%rbp)
	cmpl	$511, -12(%rbp)
	jbe	.L25
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	movl	$0, -36(%rbp)
	andl	$511, -12(%rbp)
.L25:
	cmpl	$0, -16(%rbp)
	je	.L26
	movzbl	-41(%rbp), %edx
	movl	$8, %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %eax
	movb	%cl, 64(%rdx,%rax)
	jmp	.L26
.L22:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movb	%al, -41(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L27
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	movzbl	64(%rdx,%rcx), %edx
	movl	%edx, %edi
	movzbl	-41(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%edx, %ecx
	sarl	%cl, %esi
	movl	%esi, %edx
	orl	%edi, %edx
	movl	%edx, %ecx
	movq	-56(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, 64(%rdx,%rax)
	jmp	.L28
.L27:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	movzbl	-41(%rbp), %eax
	movb	%al, 64(%rdx,%rcx)
.L28:
	movq	-72(%rbp), %rax
	addl	%eax, -12(%rbp)
	cmpl	$512, -12(%rbp)
	jne	.L29
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	movl	$0, -36(%rbp)
	andl	$511, -12(%rbp)
.L29:
	cmpl	$0, -16(%rbp)
	je	.L30
	movzbl	-41(%rbp), %edx
	movl	$8, %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %eax
	movb	%cl, 64(%rdx,%rax)
.L30:
	movq	$0, -72(%rbp)
.L26:
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 128(%rax)
.L18:
	cmpq	$0, -72(%rbp)
	jne	.L31
	nop
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	WHIRLPOOL_BitUpdate, .-WHIRLPOOL_BitUpdate
	.globl	WHIRLPOOL_Final
	.type	WHIRLPOOL_Final, @function
WHIRLPOOL_Final:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, -4(%rbp)
	andl	$7, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L34
	movq	-64(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	64(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	movl	$128, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movl	-4(%rbp), %eax
	movb	%cl, 64(%rdx,%rax)
	jmp	.L35
.L34:
	movq	-64(%rbp), %rdx
	movl	-4(%rbp), %eax
	movb	$-128, 64(%rdx,%rax)
.L35:
	addl	$1, -4(%rbp)
	cmpl	$32, -4(%rbp)
	jbe	.L36
	cmpl	$63, -4(%rbp)
	ja	.L37
	movl	$64, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	leaq	64(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L37:
	movq	-64(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	movl	$0, -4(%rbp)
.L36:
	cmpl	$31, -4(%rbp)
	ja	.L38
	movl	$32, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	leaq	64(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L38:
	movq	-64(%rbp), %rax
	addq	$127, %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L39
.L42:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L40
.L41:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
	shrq	$8, -32(%rbp)
.L40:
	cmpq	$7, -24(%rbp)
	jbe	.L41
	addq	$1, -16(%rbp)
.L39:
	cmpq	$3, -16(%rbp)
	jbe	.L42
	movq	-64(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whirlpool_block@PLT
	cmpq	$0, -56(%rbp)
	je	.L43
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-64(%rbp), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	WHIRLPOOL_Final, .-WHIRLPOOL_Final
	.globl	WHIRLPOOL
	.type	WHIRLPOOL, @function
WHIRLPOOL:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.L46
	leaq	m.0(%rip), %rax
	movq	%rax, -200(%rbp)
.L46:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WHIRLPOOL_Init@PLT
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WHIRLPOOL_Update@PLT
	leaq	-176(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WHIRLPOOL_Final@PLT
	movq	-200(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	WHIRLPOOL, .-WHIRLPOOL
	.local	m.0
	.comm	m.0,64,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

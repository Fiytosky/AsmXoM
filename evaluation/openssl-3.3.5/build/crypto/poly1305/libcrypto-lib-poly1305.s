	.file	"poly1305.c"
	.text
	.globl	Poly1305_ctx_size
	.type	Poly1305_ctx_size, @function
Poly1305_ctx_size:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$248, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Poly1305_ctx_size, .-Poly1305_ctx_size
	.type	U8TOU32, @function
U8TOU32:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	U8TOU32, .-U8TOU32
	.globl	Poly1305_Init
	.type	Poly1305_Init, @function
Poly1305_Init:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	U8TOU32
	movq	-8(%rbp), %rdx
	movl	%eax, 192(%rdx)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	U8TOU32
	movq	-8(%rbp), %rdx
	movl	%eax, 196(%rdx)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	U8TOU32
	movq	-8(%rbp), %rdx
	movl	%eax, 200(%rdx)
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	U8TOU32
	movq	-8(%rbp), %rdx
	movl	%eax, 204(%rdx)
	movq	-8(%rbp), %rax
	leaq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	poly1305_init@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-8(%rbp), %rax
	movq	poly1305_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 232(%rax)
	movq	-8(%rbp), %rax
	movq	poly1305_emit@GOTPCREL(%rip), %rdx
	movq	%rdx, 240(%rax)
.L6:
	movq	-8(%rbp), %rax
	movq	$0, 224(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Poly1305_Init, .-Poly1305_Init
	.globl	Poly1305_Update
	.type	Poly1305_Update, @function
Poly1305_Update:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L8
	movl	$16, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L9
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r8
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%r8
	movq	-24(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
	jmp	.L8
.L9:
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 224(%rax)
	jmp	.L7
.L8:
	movq	-56(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
	cmpq	$15, -56(%rbp)
	jbe	.L11
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r8
	movq	-56(%rbp), %rax
	addq	%rax, -48(%rbp)
.L11:
	cmpq	$0, -24(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L12:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 224(%rax)
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Poly1305_Update, .-Poly1305_Update
	.globl	Poly1305_Final
	.type	Poly1305_Final, @function
Poly1305_Final:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rdx
	movb	$1, 208(%rdx,%rax)
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rdx
	movb	$0, 208(%rdx,%rax)
.L15:
	cmpq	$15, -8(%rbp)
	jbe	.L16
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%r8
.L14:
	movq	-40(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-40(%rbp), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Poly1305_Final, .-Poly1305_Final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

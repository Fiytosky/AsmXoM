	.file	"mdc2dgst.c"
	.text
	.globl	MDC2_Init
	.type	MDC2_Init, @function
MDC2_Init:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	$8, %edx
	movl	$82, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movl	$8, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	MDC2_Init, .-MDC2_Init
	.globl	MDC2_Update
	.type	MDC2_Update, @function
MDC2_Update:
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
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	movl	$8, %eax
	subq	-8(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L5
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rdx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L6
.L5:
	movl	$8, %eax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mdc2_body
.L4:
	movq	-40(%rbp), %rax
	andq	$-8, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mdc2_body
.L7:
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L8
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	MDC2_Update, .-MDC2_Update
	.type	mdc2_body, @function
mdc2_body:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L10
.L11:
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movl	%r12d, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%ebx, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-200(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$-97, %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-200(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$-97, %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movb	%dl, 20(%rax)
	movq	-200(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movq	-200(%rbp), %rax
	leaq	12(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	DES_set_key_unchecked@PLT
	leaq	-192(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movq	-200(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movq	-200(%rbp), %rax
	leaq	20(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	DES_set_key_unchecked@PLT
	leaq	-192(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-64(%rbp), %eax
	xorl	%r12d, %eax
	movl	%eax, %r13d
	movl	-60(%rbp), %eax
	xorl	%ebx, %eax
	movl	%eax, %r14d
	movl	-56(%rbp), %eax
	xorl	%eax, %r12d
	movl	-52(%rbp), %eax
	xorl	%eax, %ebx
	movq	-200(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$24, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-200(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$8, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$24, %ebx
	movl	%ebx, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$8, -40(%rbp)
.L10:
	movq	-40(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jb	.L11
	nop
	nop
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	mdc2_body, .-mdc2_body
	.globl	MDC2_Final
	.type	MDC2_Final, @function
MDC2_Final:
.LFB33:
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
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L13
	cmpl	$2, -8(%rbp)
	jne	.L14
.L13:
	cmpl	$2, -8(%rbp)
	jne	.L15
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %eax
	movb	$-128, 4(%rdx,%rax)
.L15:
	movl	$8, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mdc2_body
.L14:
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$20, %rax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	MDC2_Final, .-MDC2_Final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

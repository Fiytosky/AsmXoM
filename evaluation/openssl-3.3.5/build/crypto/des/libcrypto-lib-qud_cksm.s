	.file	"qud_cksm.c"
	.text
	.globl	DES_quad_cksum
	.type	DES_quad_cksum, @function
DES_quad_cksum:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.L2
	movl	$1, -76(%rbp)
.L2:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-88(%rbp), %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-88(%rbp), %rax
	movzbl	6(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-88(%rbp), %rax
	movzbl	7(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L3
.L10:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L4
.L7:
	cmpq	$1, -24(%rbp)
	jle	.L5
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, -12(%rbp)
	subq	$1, -24(%rbp)
	jmp	.L6
.L5:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.L6:
	subq	$1, -24(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	imull	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	movabsq	$-9223372032559808509, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$30, %rax
	movq	%rcx, %rdx
	sarq	$63, %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	salq	$31, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	-44(%rbp), %edx
	addl	$83653421, %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movl	%eax, %ecx
	movabsq	$-9223372032559808509, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$30, %rax
	movq	%rcx, %rdx
	sarq	$63, %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	salq	$31, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movl	%eax, -8(%rbp)
.L4:
	cmpq	$0, -24(%rbp)
	jg	.L7
	cmpq	$0, -40(%rbp)
	je	.L8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L8:
	addl	$1, -16(%rbp)
.L3:
	cmpl	$3, -16(%rbp)
	jg	.L9
	movl	-16(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L10
.L9:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DES_quad_cksum, .-DES_quad_cksum
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

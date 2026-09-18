	.file	"rc2_ecb.c"
	.text
	.globl	RC2_ecb_encrypt
	.type	RC2_ecb_encrypt, @function
RC2_ecb_encrypt:
.LFB0:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L2
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RC2_encrypt@PLT
	jmp	.L3
.L2:
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RC2_decrypt@PLT
.L3:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	RC2_ecb_encrypt, .-RC2_ecb_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

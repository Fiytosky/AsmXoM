	.file	"c_ecb.c"
	.text
	.globl	CAST_ecb_encrypt
	.type	CAST_ecb_encrypt, @function
CAST_ecb_encrypt:
.LFB0:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L2
	movq	-40(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CAST_encrypt@PLT
	jmp	.L3
.L2:
	movq	-40(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CAST_decrypt@PLT
.L3:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	CAST_ecb_encrypt, .-CAST_ecb_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

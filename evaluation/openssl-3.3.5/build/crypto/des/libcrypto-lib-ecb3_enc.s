	.file	"ecb3_enc.c"
	.text
	.globl	DES_ecb3_encrypt
	.type	DES_ecb3_encrypt, @function
DES_ecb3_encrypt:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%r12d, -40(%rbp)
	movl	%ebx, -36(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L2
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DES_encrypt3@PLT
	jmp	.L3
.L2:
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DES_decrypt3@PLT
.L3:
	movl	-40(%rbp), %r12d
	movl	-36(%rbp), %ebx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$8, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$24, %ebx
	movl	%ebx, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DES_ecb3_encrypt, .-DES_ecb3_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

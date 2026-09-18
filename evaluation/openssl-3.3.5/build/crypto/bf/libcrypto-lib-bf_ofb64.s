	.file	"bf_ofb64.c"
	.text
	.globl	BF_ofb64_encrypt
	.type	BF_ofb64_encrypt, @function
BF_ofb64_encrypt:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %r14d
	movq	-104(%rbp), %r15
	movl	$0, -52(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r13d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, %r13d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, %r13d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r13d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r12d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, %r12d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, %r12d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r12d
	movl	%r13d, -80(%rbp)
	movl	%r12d, -76(%rbp)
	leaq	-72(%rbp), %rbx
	movl	%r13d, %edx
	shrl	$24, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r13d, %edx
	shrl	$16, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r13d, %edx
	shrl	$8, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$24, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$16, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$8, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	jmp	.L2
.L4:
	testl	%r14d, %r14d
	jne	.L3
	movq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BF_encrypt@PLT
	leaq	-72(%rbp), %rbx
	movl	-80(%rbp), %r12d
	movl	%r12d, %edx
	shrl	$24, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$16, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$8, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	-76(%rbp), %r12d
	movl	%r12d, %edx
	shrl	$24, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$16, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movl	%r12d, %edx
	shrl	$8, %edx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	addl	$1, -52(%rbp)
.L3:
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %esi
	movslq	%r14d, %rax
	movzbl	-72(%rbp,%rax), %ecx
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	leal	1(%r14), %eax
	andl	$7, %eax
	movl	%eax, %r14d
.L2:
	movq	%r15, %rax
	leaq	-1(%rax), %r15
	testq	%rax, %rax
	jne	.L4
	cmpl	$0, -52(%rbp)
	je	.L5
	movl	-80(%rbp), %r13d
	movl	-76(%rbp), %r12d
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
.L5:
	movl	$0, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-128(%rbp), %rax
	movl	%r14d, (%rax)
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	BF_ofb64_encrypt, .-BF_ofb64_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

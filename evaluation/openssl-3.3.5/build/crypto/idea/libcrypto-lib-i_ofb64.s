	.file	"i_ofb64.c"
	.text
	.globl	IDEA_ofb64_encrypt
	.type	IDEA_ofb64_encrypt, @function
IDEA_ofb64_encrypt:
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
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %r14d
	movq	-120(%rbp), %r15
	movl	$0, -52(%rbp)
	testl	%r14d, %r14d
	jns	.L2
	movq	-144(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L1
.L2:
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r13
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r13
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r13
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r12
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r12
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r12
	movq	%r13, -96(%rbp)
	movq	%r12, -88(%rbp)
	leaq	-72(%rbp), %rbx
	movq	%r13, %rdx
	shrq	$24, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r13, %rdx
	shrq	$16, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r13, %rdx
	shrq	$8, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$24, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$16, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$8, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	jmp	.L4
.L6:
	testl	%r14d, %r14d
	jne	.L5
	movq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_encrypt@PLT
	leaq	-72(%rbp), %rbx
	movq	-96(%rbp), %r12
	movq	%r12, %rdx
	shrq	$24, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$16, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$8, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movq	-88(%rbp), %r12
	movq	%r12, %rdx
	shrq	$24, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$16, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%r12, %rdx
	shrq	$8, %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	addl	$1, -52(%rbp)
.L5:
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %esi
	movslq	%r14d, %rax
	movzbl	-72(%rbp,%rax), %ecx
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	leal	1(%r14), %eax
	andl	$7, %eax
	movl	%eax, %r14d
.L4:
	movq	%r15, %rax
	leaq	-1(%rax), %r15
	testq	%rax, %rax
	jne	.L6
	cmpl	$0, -52(%rbp)
	je	.L7
	movq	-96(%rbp), %r13
	movq	-88(%rbp), %r12
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%r13, %rcx
	shrq	$24, %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$16, %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$8, %rcx
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
	movq	%r12, %rcx
	shrq	$24, %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r12, %rcx
	shrq	$16, %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r12, %rcx
	shrq	$8, %rcx
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
.L7:
	movq	$0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-144(%rbp), %rax
	movl	%r14d, (%rax)
.L1:
	addq	$104, %rsp
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
	.size	IDEA_ofb64_encrypt, .-IDEA_ofb64_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

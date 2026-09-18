	.file	"i_cfb64.c"
	.text
	.globl	IDEA_cfb64_encrypt
	.type	IDEA_cfb64_encrypt, @function
IDEA_cfb64_encrypt:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %r12d
	movq	-88(%rbp), %r13
	testl	%r12d, %r12d
	jns	.L2
	movq	-112(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L1
.L2:
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, 16(%rbp)
	je	.L9
	jmp	.L5
.L7:
	testl	%r12d, %r12d
	jne	.L6
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_encrypt@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rbx
	movq	%rbx, %rcx
	shrq	$24, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$16, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rbx
	movq	%rbx, %rcx
	shrq	$24, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$16, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
.L6:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %ecx
	movslq	%r12d, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%ecx, %eax
	movb	%al, -42(%rbp)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	-42(%rbp), %edx
	movb	%dl, (%rax)
	movslq	%r12d, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-42(%rbp), %eax
	movb	%al, (%rdx)
	leal	1(%r12), %eax
	andl	$7, %eax
	movl	%eax, %r12d
.L5:
	movq	%r13, %rax
	leaq	-1(%rax), %r13
	testq	%rax, %rax
	jne	.L7
	jmp	.L8
.L11:
	testl	%r12d, %r12d
	jne	.L10
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_encrypt@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rbx
	movq	%rbx, %rcx
	shrq	$24, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$16, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rbx
	movq	%rbx, %rcx
	shrq	$24, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$16, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
.L10:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -41(%rbp)
	movslq	%r12d, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -42(%rbp)
	movslq	%r12d, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-41(%rbp), %eax
	movb	%al, (%rdx)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	-42(%rbp), %edx
	xorb	-41(%rbp), %dl
	movb	%dl, (%rax)
	leal	1(%r12), %eax
	andl	$7, %eax
	movl	%eax, %r12d
.L9:
	movq	%r13, %rax
	leaq	-1(%rax), %r13
	testq	%rax, %rax
	jne	.L11
.L8:
	movb	$0, -41(%rbp)
	movzbl	-41(%rbp), %eax
	movb	%al, -42(%rbp)
	movzbl	-42(%rbp), %ebx
	movq	%rbx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movl	%r12d, (%rax)
.L1:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	IDEA_cfb64_encrypt, .-IDEA_cfb64_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

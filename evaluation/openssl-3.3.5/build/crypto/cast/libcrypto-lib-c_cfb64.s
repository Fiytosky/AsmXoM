	.file	"c_cfb64.c"
	.text
	.globl	CAST_cfb64_encrypt
	.type	CAST_cfb64_encrypt, @function
CAST_cfb64_encrypt:
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
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, 16(%rbp)
	je	.L7
	jmp	.L3
.L5:
	testl	%r12d, %r12d
	jne	.L4
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
	movl	%ebx, -52(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
	movl	%ebx, -48(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CAST_encrypt@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-52(%rbp), %ebx
	movl	%ebx, %ecx
	shrl	$24, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$8, %ecx
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
	movl	-48(%rbp), %ebx
	movl	%ebx, %ecx
	shrl	$24, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$8, %ecx
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
.L4:
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
.L3:
	movq	%r13, %rax
	leaq	-1(%rax), %r13
	testq	%rax, %rax
	jne	.L5
	jmp	.L6
.L9:
	testl	%r12d, %r12d
	jne	.L8
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
	movl	%ebx, -52(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
	movl	%ebx, -48(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CAST_encrypt@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-52(%rbp), %ebx
	movl	%ebx, %ecx
	shrl	$24, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$8, %ecx
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
	movl	-48(%rbp), %ebx
	movl	%ebx, %ecx
	shrl	$24, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%ebx, %ecx
	shrl	$8, %ecx
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
.L8:
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
.L7:
	movq	%r13, %rax
	leaq	-1(%rax), %r13
	testq	%rax, %rax
	jne	.L9
.L6:
	movb	$0, -41(%rbp)
	movzbl	-41(%rbp), %eax
	movb	%al, -42(%rbp)
	movzbl	-42(%rbp), %ebx
	movl	%ebx, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-112(%rbp), %rax
	movl	%r12d, (%rax)
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	CAST_cfb64_encrypt, .-CAST_cfb64_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

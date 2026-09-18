	.file	"cbc_cksm.c"
	.text
	.globl	DES_cbc_cksum
	.type	DES_cbc_cksum, @function
DES_cbc_cksum:
.LFB6:
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
	movq	-104(%rbp), %r12
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r15d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r15d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r15d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r14d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r14d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r14d
	jmp	.L2
.L13:
	cmpq	$7, %r12
	jle	.L3
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r13d
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	jmp	.L4
.L3:
	movq	%r12, %rax
	addq	%rax, -88(%rbp)
	movl	$0, %ebx
	movl	%ebx, %r13d
	cmpq	$8, %r12
	je	.L5
	cmpq	$8, %r12
	jg	.L4
	cmpq	$7, %r12
	je	.L6
	cmpq	$7, %r12
	jg	.L4
	cmpq	$6, %r12
	je	.L7
	cmpq	$6, %r12
	jg	.L4
	cmpq	$5, %r12
	je	.L8
	cmpq	$5, %r12
	jg	.L4
	cmpq	$4, %r12
	je	.L9
	cmpq	$4, %r12
	jg	.L4
	cmpq	$3, %r12
	je	.L10
	cmpq	$3, %r12
	jg	.L4
	cmpq	$1, %r12
	je	.L11
	cmpq	$2, %r12
	je	.L12
	jmp	.L4
.L5:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
.L6:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
.L7:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
.L8:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
.L9:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r13d
.L10:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
.L12:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
.L11:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r13d
.L4:
	xorl	%r15d, %r13d
	movl	%r13d, -72(%rbp)
	xorl	%r14d, %ebx
	movl	%ebx, -68(%rbp)
	movq	-112(%rbp), %rcx
	leaq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-72(%rbp), %r15d
	movl	-68(%rbp), %r14d
	subq	$8, %r12
.L2:
	testq	%r12, %r12
	jg	.L13
	cmpq	$0, -56(%rbp)
	je	.L14
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%r15d, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L14:
	movl	$0, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	%r14d, %edx
	shrl	$24, %edx
	movl	%r14d, %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	%r14d, %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	%r14d, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movl	%edx, %r14d
	movl	%r14d, %eax
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
.LFE6:
	.size	DES_cbc_cksum, .-DES_cbc_cksum
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

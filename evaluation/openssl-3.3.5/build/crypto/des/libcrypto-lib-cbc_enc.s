	.file	"cbc_enc.c"
	.text
	.globl	DES_cbc_encrypt
	.type	DES_cbc_encrypt, @function
DES_cbc_encrypt:
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
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -108(%rbp)
	movq	-88(%rbp), %r15
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L2
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r14d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r14d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r14d
	subq	$8, %r15
	jmp	.L3
.L4:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	xorl	%r13d, %r12d
	movl	%r12d, -64(%rbp)
	xorl	%r14d, %ebx
	movl	%ebx, -60(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-64(%rbp), %r13d
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-60(%rbp), %r14d
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$24, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	subq	$8, %r15
.L3:
	testq	%r15, %r15
	jns	.L4
	cmpq	$-8, %r15
	je	.L5
	movq	%r15, %rax
	addq	$8, %rax
	addq	%rax, -72(%rbp)
	movl	$0, %ebx
	movl	%ebx, %r12d
	leaq	8(%r15), %rax
	cmpq	$8, %rax
	je	.L6
	cmpq	$8, %rax
	jg	.L7
	cmpq	$7, %rax
	je	.L8
	cmpq	$7, %rax
	jg	.L7
	cmpq	$6, %rax
	je	.L9
	cmpq	$6, %rax
	jg	.L7
	cmpq	$5, %rax
	je	.L10
	cmpq	$5, %rax
	jg	.L7
	cmpq	$4, %rax
	je	.L11
	cmpq	$4, %rax
	jg	.L7
	cmpq	$3, %rax
	je	.L12
	cmpq	$3, %rax
	jg	.L7
	cmpq	$1, %rax
	je	.L13
	cmpq	$2, %rax
	je	.L14
	jmp	.L7
.L6:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
.L8:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
.L9:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
.L10:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
.L11:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r12d
.L12:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
.L14:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
.L13:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r12d
.L7:
	xorl	%r13d, %r12d
	movl	%r12d, -64(%rbp)
	xorl	%r14d, %ebx
	movl	%ebx, -60(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-64(%rbp), %r13d
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-60(%rbp), %r14d
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$24, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L5
.L2:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r13d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r14d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r14d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r14d
	subq	$8, %r15
	jmp	.L15
.L16:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movl	%r12d, -64(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%ebx, -60(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-64(%rbp), %eax
	xorl	%eax, %r13d
	movl	-60(%rbp), %eax
	xorl	%eax, %r14d
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$24, %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %r13d
	movl	%ebx, %r14d
	subq	$8, %r15
.L15:
	testq	%r15, %r15
	jns	.L16
	cmpq	$-8, %r15
	je	.L5
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movl	%r12d, -64(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%ebx, -60(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-64(%rbp), %eax
	xorl	%eax, %r13d
	movl	-60(%rbp), %eax
	xorl	%eax, %r14d
	movq	%r15, %rax
	addq	$8, %rax
	addq	%rax, -80(%rbp)
	leaq	8(%r15), %rax
	cmpq	$8, %rax
	je	.L17
	cmpq	$8, %rax
	jg	.L5
	cmpq	$7, %rax
	je	.L18
	cmpq	$7, %rax
	jg	.L5
	cmpq	$6, %rax
	je	.L19
	cmpq	$6, %rax
	jg	.L5
	cmpq	$5, %rax
	je	.L20
	cmpq	$5, %rax
	jg	.L5
	cmpq	$4, %rax
	je	.L21
	cmpq	$4, %rax
	jg	.L5
	cmpq	$3, %rax
	je	.L22
	cmpq	$3, %rax
	jg	.L5
	cmpq	$1, %rax
	je	.L23
	cmpq	$2, %rax
	je	.L24
	jmp	.L5
.L17:
	movl	%r14d, %eax
	shrl	$24, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L18:
	movl	%r14d, %eax
	shrl	$16, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L19:
	movl	%r14d, %eax
	shrl	$8, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L20:
	subq	$1, -80(%rbp)
	movl	%r14d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movl	%r13d, %eax
	shrl	$24, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L22:
	movl	%r13d, %eax
	shrl	$16, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	movl	%r13d, %eax
	shrl	$8, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L23:
	subq	$1, -80(%rbp)
	movl	%r13d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L5:
	movl	$0, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	nop
	addq	$72, %rsp
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
	.size	DES_cbc_encrypt, .-DES_cbc_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

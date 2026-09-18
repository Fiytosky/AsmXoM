	.file	"rc2_cbc.c"
	.text
	.globl	RC2_cbc_encrypt
	.type	RC2_cbc_encrypt, @function
RC2_cbc_encrypt:
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
	cmpl	$0, -108(%rbp)
	je	.L2
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r14
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r14
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r14
	subq	$8, -104(%rbp)
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
	salq	$8, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r12
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
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rbx
	xorq	%r13, %r12
	xorq	%r14, %rbx
	movq	%r12, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RC2_encrypt@PLT
	movq	-64(%rbp), %r13
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$24, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %r14
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
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
	movq	%rbx, %r12
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
	salq	$24, %rax
	movq	%rax, %rbx
.L8:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
.L9:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rbx
.L10:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
.L11:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r12
.L12:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r12
.L14:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r12
.L13:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r12
.L7:
	xorq	%r13, %r12
	xorq	%r14, %rbx
	movq	%r12, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RC2_encrypt@PLT
	movq	-64(%rbp), %r13
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$24, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %r14
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L5:
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$8, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$16, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$24, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$8, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$16, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L15
.L2:
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r14
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r14
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r14
	subq	$8, -104(%rbp)
	subq	$8, %r15
	jmp	.L16
.L17:
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
	salq	$8, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r12
	movq	%r12, -64(%rbp)
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
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RC2_decrypt@PLT
	movq	-64(%rbp), %rax
	xorq	%rax, %r13
	movq	-56(%rbp), %rax
	xorq	%rax, %r14
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$24, %rcx
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
	movq	%r14, %rcx
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r12, %r13
	movq	%rbx, %r14
	subq	$8, %r15
.L16:
	testq	%r15, %r15
	jns	.L17
	cmpq	$-8, %r15
	je	.L18
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
	salq	$8, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %r12
	movq	%r12, -64(%rbp)
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
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RC2_decrypt@PLT
	movq	-64(%rbp), %rax
	xorq	%rax, %r13
	movq	-56(%rbp), %rax
	xorq	%rax, %r14
	movq	%r15, %rax
	addq	$8, %rax
	addq	%rax, -80(%rbp)
	leaq	8(%r15), %rax
	cmpq	$8, %rax
	je	.L19
	cmpq	$8, %rax
	jg	.L20
	cmpq	$7, %rax
	je	.L21
	cmpq	$7, %rax
	jg	.L20
	cmpq	$6, %rax
	je	.L22
	cmpq	$6, %rax
	jg	.L20
	cmpq	$5, %rax
	je	.L23
	cmpq	$5, %rax
	jg	.L20
	cmpq	$4, %rax
	je	.L24
	cmpq	$4, %rax
	jg	.L20
	cmpq	$3, %rax
	je	.L25
	cmpq	$3, %rax
	jg	.L20
	cmpq	$1, %rax
	je	.L26
	cmpq	$2, %rax
	je	.L27
	jmp	.L20
.L19:
	movq	%r14, %rax
	shrq	$24, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movq	%r14, %rax
	shrq	$16, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L22:
	movq	%r14, %rax
	shrq	$8, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L23:
	subq	$1, -80(%rbp)
	movl	%r14d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	movq	%r13, %rax
	shrq	$24, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	movq	%r13, %rax
	shrq	$16, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L27:
	movq	%r13, %rax
	shrq	$8, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L26:
	subq	$1, -80(%rbp)
	movl	%r13d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L20:
	movq	%r12, %r13
	movq	%rbx, %r14
.L18:
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$8, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$16, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r13, %rcx
	shrq	$24, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$8, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$16, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L15:
	movq	$0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
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
.LFE0:
	.size	RC2_cbc_encrypt, .-RC2_cbc_encrypt
	.globl	RC2_encrypt
	.type	RC2_encrypt, @function
RC2_encrypt:
.LFB1:
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	%ax, %r13d
	movq	-56(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %r15d
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	%ax, %r12d
	movq	-56(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %r14d
	movl	$3, -48(%rbp)
	movl	$5, -44(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rax, %rcx
.L34:
	movl	%r14d, %eax
	notl	%eax
	andl	%r15d, %eax
	leal	0(%r13,%rax), %edx
	movl	%r12d, %eax
	andl	%r14d, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	leaq	4(%rax), %rdi
	movl	(%rax), %eax
	addl	%edx, %eax
	movzwl	%ax, %ebx
	leal	(%rbx,%rbx), %eax
	shrl	$15, %ebx
	movl	%ebx, %edx
	movl	%eax, %r13d
	orl	%edx, %r13d
	movl	%r13d, %eax
	notl	%eax
	andl	%r12d, %eax
	leal	(%r15,%rax), %edx
	movl	%r14d, %eax
	andl	%r13d, %eax
	addl	%eax, %edx
	movq	%rdi, %rax
	leaq	4(%rax), %rcx
	movl	(%rax), %eax
	addl	%edx, %eax
	movzwl	%ax, %ebx
	leal	0(,%rbx,4), %eax
	shrl	$14, %ebx
	movl	%ebx, %edx
	movl	%eax, %r15d
	orl	%edx, %r15d
	movl	%r15d, %eax
	notl	%eax
	andl	%r14d, %eax
	leal	(%r12,%rax), %edx
	movl	%r13d, %eax
	andl	%r15d, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	leaq	4(%rax), %rdi
	movl	(%rax), %eax
	addl	%edx, %eax
	movzwl	%ax, %ebx
	leal	0(,%rbx,8), %eax
	shrl	$13, %ebx
	movl	%ebx, %edx
	movl	%eax, %r12d
	orl	%edx, %r12d
	movl	%r12d, %eax
	notl	%eax
	andl	%r13d, %eax
	leal	(%r14,%rax), %edx
	movl	%r15d, %eax
	andl	%r12d, %eax
	addl	%eax, %edx
	movq	%rdi, %rax
	leaq	4(%rax), %rcx
	movl	(%rax), %eax
	addl	%edx, %eax
	movzwl	%ax, %ebx
	movl	%ebx, %edx
	sall	$5, %edx
	movl	%ebx, %eax
	shrl	$11, %eax
	orl	%eax, %edx
	movl	%edx, %r14d
	subl	$1, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L34
	subl	$1, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L36
	cmpl	$2, -48(%rbp)
	jne	.L32
	movl	$6, -44(%rbp)
	jmp	.L33
.L32:
	movl	$5, -44(%rbp)
.L33:
	movl	%r14d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movl	%r13d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%eax, %r15d
	movl	%r15d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	%r12d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	jmp	.L34
.L36:
	nop
	movl	%r13d, %eax
	movzwl	%ax, %eax
	movl	%r15d, %edx
	salq	$16, %rdx
	movl	%edx, %edx
	orq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	%r12d, %eax
	movzwl	%ax, %edx
	movl	%r14d, %eax
	salq	$16, %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	addq	$8, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	RC2_encrypt, .-RC2_encrypt
	.globl	RC2_decrypt
	.type	RC2_decrypt, @function
RC2_decrypt:
.LFB2:
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	%ax, %r12d
	movq	-56(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %r14d
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	%ax, %ebx
	movq	-56(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %r13d
	movl	$3, -48(%rbp)
	movl	$5, -44(%rbp)
	movq	-72(%rbp), %rax
	addq	$252, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
.L43:
	movl	%r13d, %edx
	sall	$11, %edx
	movl	%r13d, %eax
	shrl	$5, %eax
	orl	%edx, %eax
	movzwl	%ax, %r15d
	movl	%ebx, %eax
	notl	%eax
	andl	%r12d, %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	movl	%r14d, %eax
	andl	%ebx, %eax
	subl	%eax, %edx
	movq	%rcx, %rax
	leaq	-4(%rax), %rdi
	movl	(%rax), %eax
	subl	%eax, %edx
	movzwl	%dx, %r13d
	movl	%ebx, %edx
	sall	$13, %edx
	shrl	$3, %ebx
	movl	%ebx, %eax
	orl	%edx, %eax
	movzwl	%ax, %r15d
	movl	%r14d, %eax
	notl	%eax
	andl	%r13d, %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	movl	%r12d, %eax
	andl	%r14d, %eax
	subl	%eax, %edx
	movq	%rdi, %rax
	leaq	-4(%rax), %rcx
	movl	(%rax), %eax
	subl	%eax, %edx
	movzwl	%dx, %ebx
	movl	%r14d, %edx
	sall	$14, %edx
	shrl	$2, %r14d
	movl	%r14d, %eax
	orl	%edx, %eax
	movzwl	%ax, %r15d
	movl	%r12d, %eax
	notl	%eax
	andl	%ebx, %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	movl	%r13d, %eax
	andl	%r12d, %eax
	subl	%eax, %edx
	movq	%rcx, %rax
	leaq	-4(%rax), %rdi
	movl	(%rax), %eax
	subl	%eax, %edx
	movzwl	%dx, %r14d
	movl	%r12d, %edx
	sall	$15, %edx
	shrl	%r12d
	movl	%r12d, %eax
	orl	%edx, %eax
	movzwl	%ax, %r15d
	movl	%r13d, %eax
	notl	%eax
	andl	%r14d, %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	andl	%r13d, %eax
	subl	%eax, %edx
	movq	%rdi, %rax
	leaq	-4(%rax), %rcx
	movl	(%rax), %eax
	subl	%eax, %edx
	movzwl	%dx, %r12d
	subl	$1, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L43
	subl	$1, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L45
	cmpl	$2, -48(%rbp)
	jne	.L41
	movl	$6, -44(%rbp)
	jmp	.L42
.L41:
	movl	$5, -44(%rbp)
.L42:
	movl	%ebx, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	movl	%r13d, %edx
	subl	%eax, %edx
	movzwl	%dx, %r13d
	movl	%r14d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movzwl	%dx, %ebx
	movl	%r12d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	movl	%r14d, %edx
	subl	%eax, %edx
	movzwl	%dx, %r14d
	movl	%r13d, %eax
	andl	$63, %eax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	movl	%r12d, %edx
	subl	%eax, %edx
	movzwl	%dx, %r12d
	jmp	.L43
.L45:
	nop
	movl	%r12d, %eax
	movzwl	%ax, %eax
	movl	%r14d, %edx
	salq	$16, %rdx
	movl	%edx, %edx
	orq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	%ebx, %eax
	movzwl	%ax, %edx
	movl	%r13d, %eax
	salq	$16, %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	addq	$8, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	RC2_decrypt, .-RC2_decrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

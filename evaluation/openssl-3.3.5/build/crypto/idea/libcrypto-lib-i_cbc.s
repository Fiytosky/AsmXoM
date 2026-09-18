	.file	"i_cbc.c"
	.text
	.globl	IDEA_cbc_encrypt
	.type	IDEA_cbc_encrypt, @function
IDEA_cbc_encrypt:
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
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r13
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
	salq	$8, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r14
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
	salq	$8, %rax
	orq	%rax, %r14
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r14
	subq	$8, -104(%rbp)
	subq	$8, %r15
	jmp	.L3
.L4:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r12
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
	salq	$8, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
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
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	xorq	%r13, %r12
	xorq	%r14, %rbx
	movq	%r12, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_encrypt@PLT
	movq	-64(%rbp), %r13
	movq	%r13, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %r14
	movq	%r14, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
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
	movzbl	%al, %ebx
.L8:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rbx
.L9:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rbx
.L10:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rbx
.L11:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
.L12:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %r12
.L14:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %r12
.L13:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
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
	call	IDEA_encrypt@PLT
	movq	-64(%rbp), %r13
	movq	%r13, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %r14
	movq	%r14, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
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
.L5:
	movq	%r13, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
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
	jmp	.L15
.L2:
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r13
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
	salq	$8, %rax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r13
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r14
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
	salq	$8, %rax
	orq	%rax, %r14
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r14
	subq	$8, -104(%rbp)
	subq	$8, %r15
	jmp	.L16
.L17:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r12
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
	salq	$8, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r12
	movq	%r12, -64(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
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
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_encrypt@PLT
	movq	-64(%rbp), %rax
	xorq	%rax, %r13
	movq	-56(%rbp), %rax
	xorq	%rax, %r14
	movq	%r13, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
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
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %r12
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
	salq	$8, %rax
	orq	%rax, %r12
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %r12
	movq	%r12, -64(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rbx
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
	salq	$8, %rax
	orq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_encrypt@PLT
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
	subq	$1, -80(%rbp)
	movl	%r14d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movq	%r14, %rax
	shrq	$8, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L22:
	movq	%r14, %rax
	shrq	$16, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L23:
	movq	%r14, %rax
	shrq	$24, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	subq	$1, -80(%rbp)
	movl	%r13d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	movq	%r13, %rax
	shrq	$8, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L27:
	movq	%r13, %rax
	shrq	$16, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L26:
	movq	%r13, %rax
	shrq	$24, %rax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L20:
	movq	%r12, %r13
	movq	%rbx, %r14
.L18:
	movq	%r13, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movq	%r14, %rcx
	shrq	$24, %rcx
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
	shrq	$8, %rcx
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
	.size	IDEA_cbc_encrypt, .-IDEA_cbc_encrypt
	.globl	IDEA_encrypt
	.type	IDEA_encrypt, @function
IDEA_encrypt:
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
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9
	movq	%rax, %r15
	shrq	$16, %r15
	movq	-48(%rbp), %rax
	movq	8(%rax), %r14
	movq	%r14, %rax
	shrq	$16, %rax
	movq	%rax, %r10
	movq	-56(%rbp), %rbx
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L29
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L30
.L29:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L30:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rcx
	addq	%rax, %rcx
	movq	%rcx, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L31
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L32
.L31:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L32:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L33
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L34
.L33:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L34:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %ecx
	movq	%rcx, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rcx
	movq	%rcx, %r12
	testq	%r12, %r12
	je	.L35
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	%rsi, %rax
	shrq	$16, %rax
	subq	%rax, %rsi
	movq	%rsi, %r8
	jmp	.L36
.L35:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L36:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rdi
	xorq	%rax, %rdi
	movq	%rdi, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L37
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L38
.L37:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L38:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rcx
	addq	%rax, %rcx
	movq	%rcx, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L39
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L40
.L39:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L40:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L41
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L42
.L41:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L42:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %esi
	movq	%rsi, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rsi
	movq	%rsi, %r12
	testq	%r12, %r12
	je	.L43
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$16, %rax
	subq	%rax, %rdi
	movq	%rdi, %r8
	jmp	.L44
.L43:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L44:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L45
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L46
.L45:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L46:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L47
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L48
.L47:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L48:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L49
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L50
.L49:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L50:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %edi
	movq	%rdi, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rdi
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.L51
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L52
.L51:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L52:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L53
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L54
.L53:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L54:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L55
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L56
.L55:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L56:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L57
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L58
.L57:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L58:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %ecx
	movq	%rcx, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rcx
	movq	%rcx, %r12
	testq	%r12, %r12
	je	.L59
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	%rsi, %rax
	shrq	$16, %rax
	subq	%rax, %rsi
	movq	%rsi, %r8
	jmp	.L60
.L59:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L60:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L61
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L62
.L61:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L62:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L63
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L64
.L63:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L64:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L65
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L66
.L65:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L66:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %esi
	movq	%rsi, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rsi
	movq	%rsi, %r12
	testq	%r12, %r12
	je	.L67
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$16, %rax
	subq	%rax, %rdi
	movq	%rdi, %r8
	jmp	.L68
.L67:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L68:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L69
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L70
.L69:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L70:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L71
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L72
.L71:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L72:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L73
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L74
.L73:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L74:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %edi
	movq	%rdi, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rdi
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.L75
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L76
.L75:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L76:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L77
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L78
.L77:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L78:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L79
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L80
.L79:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L80:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L81
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L82
.L81:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L82:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %ecx
	movq	%rcx, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rcx
	movq	%rcx, %r12
	testq	%r12, %r12
	je	.L83
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	%rsi, %rax
	shrq	$16, %rax
	subq	%rax, %rsi
	movq	%rsi, %r8
	jmp	.L84
.L83:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L84:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L85
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L86
.L85:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L86:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r9
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %rdi
	addq	%rax, %rdi
	movq	%rdi, %r10
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L87
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L88
.L87:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L88:
	addq	$4, %rbx
	movq	%r10, %rax
	xorq	%r15, %rax
	movzwl	%ax, %r13d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r13, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L89
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, %rax
	shrq	$16, %rax
	subq	%rax, %r13
	jmp	.L90
.L89:
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r13d
.L90:
	addq	$4, %rbx
	movq	%r9, %rax
	xorq	%r14, %rax
	addq	%r13, %rax
	movzwl	%ax, %esi
	movq	%rsi, %r8
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%rax, %rsi
	movq	%rsi, %r12
	testq	%r12, %r12
	je	.L91
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$16, %rax
	subq	%rax, %rdi
	movq	%rdi, %r8
	jmp	.L92
.L91:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %eax
	movq	%rax, %r8
.L92:
	addq	$4, %rbx
	movq	%r8, %rax
	addq	%rax, %r13
	xorq	%rax, %r15
	xorq	%r13, %r14
	movq	%r9, %r12
	xorq	%r13, %r12
	movq	%r10, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %r9
	movq	%r12, %r10
	movzwl	%r15w, %r15d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r15, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L93
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$16, %rax
	subq	%rax, %r15
	jmp	.L94
.L93:
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r15d
.L94:
	addq	$4, %rbx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r10, %r13
	addq	%rax, %r13
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%r9, %rsi
	addq	%rax, %rsi
	movq	%rsi, %r8
	movzwl	%r14w, %r14d
	movl	(%rbx), %eax
	movl	%eax, %eax
	imulq	%r14, %rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L95
	movzwl	%r12w, %edx
	movq	%r12, %rax
	shrq	$16, %rax
	subq	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, %rax
	shrq	$16, %rax
	subq	%rax, %r14
	jmp	.L96
.L95:
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, %edx
	movl	(%rbx), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %r14d
.L96:
	movzwl	%r13w, %eax
	movq	%r15, %rdx
	salq	$16, %rdx
	movl	%edx, %edx
	orq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movzwl	%r14w, %edx
	movq	%r8, %rax
	salq	$16, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
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
	.size	IDEA_encrypt, .-IDEA_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

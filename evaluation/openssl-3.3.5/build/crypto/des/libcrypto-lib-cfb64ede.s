	.file	"cfb64ede.c"
	.text
	.globl	DES_ede3_cfb64_encrypt
	.type	DES_ede3_cfb64_encrypt, @function
DES_ede3_cfb64_encrypt:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-88(%rbp), %r14
	movq	24(%rbp), %rax
	movl	(%rax), %r13d
	movq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, 32(%rbp)
	je	.L7
	jmp	.L3
.L5:
	testl	%r13d, %r13d
	jne	.L4
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%r12d, -52(%rbp)
	movl	%ebx, -48(%rbp)
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	DES_encrypt3@PLT
	movl	-52(%rbp), %r12d
	movl	-48(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
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
	movl	%ebx, %ecx
	shrl	$8, %ecx
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
	shrl	$24, %ebx
	movl	%ebx, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L4:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %ecx
	movslq	%r13d, %rdx
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
	movslq	%r13d, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-42(%rbp), %eax
	movb	%al, (%rdx)
	leal	1(%r13), %eax
	andl	$7, %eax
	movl	%eax, %r13d
.L3:
	movq	%r14, %rax
	leaq	-1(%rax), %r14
	testq	%rax, %rax
	jne	.L5
	jmp	.L6
.L9:
	testl	%r13d, %r13d
	jne	.L8
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%r12d, -52(%rbp)
	movl	%ebx, -48(%rbp)
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	DES_encrypt3@PLT
	movl	-52(%rbp), %r12d
	movl	-48(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
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
	movl	%ebx, %ecx
	shrl	$8, %ecx
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
	shrl	$24, %ebx
	movl	%ebx, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L8:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -41(%rbp)
	movslq	%r13d, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -42(%rbp)
	movslq	%r13d, %rdx
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
	leal	1(%r13), %eax
	andl	$7, %eax
	movl	%eax, %r13d
.L7:
	movq	%r14, %rax
	leaq	-1(%rax), %r14
	testq	%rax, %rax
	jne	.L9
.L6:
	movb	$0, -41(%rbp)
	movzbl	-41(%rbp), %eax
	movb	%al, -42(%rbp)
	movzbl	-42(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	24(%rbp), %rax
	movl	%r13d, (%rax)
	nop
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DES_ede3_cfb64_encrypt, .-DES_ede3_cfb64_encrypt
	.globl	DES_ede3_cfb_encrypt
	.type	DES_ede3_cfb_encrypt, @function
DES_ede3_cfb_encrypt:
.LFB7:
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-100(%rbp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, %ebx
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$64, %eax
	jg	.L70
	movq	24(%rbp), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	cmpl	$0, 32(%rbp)
	je	.L42
	jmp	.L14
.L40:
	subq	%rbx, -136(%rbp)
	movl	%r14d, -64(%rbp)
	movl	%r12d, -60(%rbp)
	movq	16(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DES_encrypt3@PLT
	addq	%rbx, -88(%rbp)
	movl	$0, %r13d
	movl	%r13d, %r15d
	cmpq	$8, %rbx
	je	.L15
	cmpq	$8, %rbx
	ja	.L16
	cmpq	$7, %rbx
	je	.L17
	cmpq	$7, %rbx
	ja	.L16
	cmpq	$6, %rbx
	je	.L18
	cmpq	$6, %rbx
	ja	.L16
	cmpq	$5, %rbx
	je	.L19
	cmpq	$5, %rbx
	ja	.L16
	cmpq	$4, %rbx
	je	.L20
	cmpq	$4, %rbx
	ja	.L16
	cmpq	$3, %rbx
	je	.L21
	cmpq	$3, %rbx
	ja	.L16
	cmpq	$1, %rbx
	je	.L22
	cmpq	$2, %rbx
	je	.L23
	jmp	.L16
.L15:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r13d
.L17:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
.L18:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
.L19:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r13d
.L20:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r15d
.L21:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r15d
.L23:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r15d
.L22:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r15d
.L16:
	addq	%rbx, -88(%rbp)
	movl	-64(%rbp), %eax
	xorl	%eax, %r15d
	movl	-60(%rbp), %eax
	xorl	%eax, %r13d
	addq	%rbx, -96(%rbp)
	cmpq	$8, %rbx
	je	.L24
	cmpq	$8, %rbx
	ja	.L25
	cmpq	$7, %rbx
	je	.L26
	cmpq	$7, %rbx
	ja	.L25
	cmpq	$6, %rbx
	je	.L27
	cmpq	$6, %rbx
	ja	.L25
	cmpq	$5, %rbx
	je	.L28
	cmpq	$5, %rbx
	ja	.L25
	cmpq	$4, %rbx
	je	.L29
	cmpq	$4, %rbx
	ja	.L25
	cmpq	$3, %rbx
	je	.L30
	cmpq	$3, %rbx
	ja	.L25
	cmpq	$1, %rbx
	je	.L31
	cmpq	$2, %rbx
	je	.L32
	jmp	.L25
.L24:
	movl	%r13d, %eax
	shrl	$24, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L26:
	movl	%r13d, %eax
	shrl	$16, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L27:
	movl	%r13d, %eax
	shrl	$8, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L28:
	subq	$1, -96(%rbp)
	movl	%r13d, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L29:
	movl	%r15d, %eax
	shrl	$24, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L30:
	movl	%r15d, %eax
	shrl	$16, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L32:
	movl	%r15d, %eax
	shrl	$8, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L31:
	subq	$1, -96(%rbp)
	movl	%r15d, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	addq	%rbx, -96(%rbp)
	cmpl	$32, -104(%rbp)
	jne	.L33
	movl	%r12d, %r14d
	movl	%r15d, %r12d
	jmp	.L14
.L33:
	cmpl	$64, -104(%rbp)
	jne	.L34
	movl	%r15d, %r14d
	movl	%r13d, %r12d
	jmp	.L14
.L34:
	leaq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
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
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-104(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L35
	movl	$9, %esi
	jmp	.L36
.L35:
	movl	$8, %esi
.L36:
	movl	-104(%rbp), %r14d
	movl	%r14d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	leaq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	%r14d, %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L37
	movl	$0, %r12d
	jmp	.L38
.L39:
	movslq	%r12d, %rax
	movzbl	-80(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-104(%rbp), %edi
	movl	%edi, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -80(%rbp,%rax)
	movslq	%r12d, %rax
	movzbl	-80(%rbp,%rax), %eax
	movl	%eax, %esi
	leal	1(%r12), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	%edi, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rdi,%rax), %ecx
	andl	$7, %ecx
	subl	%eax, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, %r12d
.L38:
	cmpl	$7, %r12d
	jle	.L39
.L37:
	leaq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
.L14:
	cmpq	%rbx, -136(%rbp)
	jnb	.L40
	jmp	.L41
.L69:
	subq	%rbx, -136(%rbp)
	movl	%r14d, -64(%rbp)
	movl	%r12d, -60(%rbp)
	movq	16(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DES_encrypt3@PLT
	addq	%rbx, -88(%rbp)
	movl	$0, %r13d
	movl	%r13d, %r15d
	cmpq	$8, %rbx
	je	.L43
	cmpq	$8, %rbx
	ja	.L44
	cmpq	$7, %rbx
	je	.L45
	cmpq	$7, %rbx
	ja	.L44
	cmpq	$6, %rbx
	je	.L46
	cmpq	$6, %rbx
	ja	.L44
	cmpq	$5, %rbx
	je	.L47
	cmpq	$5, %rbx
	ja	.L44
	cmpq	$4, %rbx
	je	.L48
	cmpq	$4, %rbx
	ja	.L44
	cmpq	$3, %rbx
	je	.L49
	cmpq	$3, %rbx
	ja	.L44
	cmpq	$1, %rbx
	je	.L50
	cmpq	$2, %rbx
	je	.L51
	jmp	.L44
.L43:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r13d
.L45:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
.L46:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
.L47:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r13d
.L48:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r15d
.L49:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r15d
.L51:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r15d
.L50:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r15d
.L44:
	addq	%rbx, -88(%rbp)
	cmpl	$32, -104(%rbp)
	jne	.L52
	movl	%r12d, %r14d
	movl	%r15d, %r12d
	jmp	.L53
.L52:
	cmpl	$64, -104(%rbp)
	jne	.L54
	movl	%r15d, %r14d
	movl	%r13d, %r12d
	jmp	.L53
.L54:
	leaq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
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
	movl	%r13d, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r13d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-104(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L55
	movl	$9, %esi
	jmp	.L56
.L55:
	movl	$8, %esi
.L56:
	movl	-104(%rbp), %r14d
	movl	%r14d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	leaq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	%r14d, %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L57
	movl	$0, %r12d
	jmp	.L58
.L59:
	movslq	%r12d, %rax
	movzbl	-80(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-104(%rbp), %edi
	movl	%edi, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -80(%rbp,%rax)
	movslq	%r12d, %rax
	movzbl	-80(%rbp,%rax), %eax
	movl	%eax, %esi
	leal	1(%r12), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	%edi, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rdi,%rax), %ecx
	andl	$7, %ecx
	subl	%eax, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, %r12d
.L58:
	cmpl	$7, %r12d
	jle	.L59
.L57:
	leaq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
.L53:
	movl	-64(%rbp), %eax
	xorl	%eax, %r15d
	movl	-60(%rbp), %eax
	xorl	%eax, %r13d
	addq	%rbx, -96(%rbp)
	cmpq	$8, %rbx
	je	.L60
	cmpq	$8, %rbx
	ja	.L61
	cmpq	$7, %rbx
	je	.L62
	cmpq	$7, %rbx
	ja	.L61
	cmpq	$6, %rbx
	je	.L63
	cmpq	$6, %rbx
	ja	.L61
	cmpq	$5, %rbx
	je	.L64
	cmpq	$5, %rbx
	ja	.L61
	cmpq	$4, %rbx
	je	.L65
	cmpq	$4, %rbx
	ja	.L61
	cmpq	$3, %rbx
	je	.L66
	cmpq	$3, %rbx
	ja	.L61
	cmpq	$1, %rbx
	je	.L67
	cmpq	$2, %rbx
	je	.L68
	jmp	.L61
.L60:
	movl	%r13d, %eax
	shrl	$24, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L62:
	movl	%r13d, %eax
	shrl	$16, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L63:
	movl	%r13d, %eax
	shrl	$8, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L64:
	subq	$1, -96(%rbp)
	movl	%r13d, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L65:
	movl	%r15d, %eax
	shrl	$24, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L66:
	movl	%r15d, %eax
	shrl	$16, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L68:
	movl	%r15d, %eax
	shrl	$8, %eax
	subq	$1, -96(%rbp)
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L67:
	subq	$1, -96(%rbp)
	movl	%r15d, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L61:
	addq	%rbx, -96(%rbp)
.L42:
	cmpq	%rbx, -136(%rbp)
	jnb	.L69
.L41:
	movq	24(%rbp), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%r12d, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$8, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r12d, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	$0, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.L10
.L70:
	nop
.L10:
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
.LFE7:
	.size	DES_ede3_cfb_encrypt, .-DES_ede3_cfb_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

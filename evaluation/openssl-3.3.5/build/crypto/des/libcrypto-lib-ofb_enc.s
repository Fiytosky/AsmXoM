	.file	"ofb_enc.c"
	.text
	.globl	DES_ofb_encrypt
	.type	DES_ofb_encrypt, @function
DES_ofb_encrypt:
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	-84(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ebx
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-84(%rbp), %r12d
	cmpl	$64, %r12d
	jg	.L32
	cmpl	$32, %r12d
	jle	.L4
	movl	$-1, %eax
	movl	%eax, -88(%rbp)
	cmpl	$63, %r12d
	jle	.L5
	movl	%eax, -116(%rbp)
	jmp	.L6
.L5:
	leal	-32(%r12), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	subl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.L6
.L4:
	cmpl	$32, %r12d
	jne	.L7
	movl	$-1, -88(%rbp)
	jmp	.L8
.L7:
	movl	$1, %eax
	movl	%r12d, %ecx
	salq	%cl, %rax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
.L8:
	movl	$0, -116(%rbp)
.L6:
	movq	-112(%rbp), %rax
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
	movl	%r14d, -64(%rbp)
	movl	%r13d, -60(%rbp)
	jmp	.L9
.L31:
	movl	%r14d, -64(%rbp)
	movl	%r13d, -60(%rbp)
	movq	-104(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-64(%rbp), %eax
	movl	%eax, %r10d
	movl	-60(%rbp), %eax
	movl	%eax, %r11d
	movl	%ebx, %eax
	addq	%rax, -72(%rbp)
	movl	$0, %r15d
	movl	%r15d, %esi
	cmpl	$8, %ebx
	je	.L10
	cmpl	$8, %ebx
	ja	.L11
	cmpl	$7, %ebx
	je	.L12
	cmpl	$7, %ebx
	ja	.L11
	cmpl	$6, %ebx
	je	.L13
	cmpl	$6, %ebx
	ja	.L11
	cmpl	$5, %ebx
	je	.L14
	cmpl	$5, %ebx
	ja	.L11
	cmpl	$4, %ebx
	je	.L15
	cmpl	$4, %ebx
	ja	.L11
	cmpl	$3, %ebx
	je	.L16
	cmpl	$3, %ebx
	ja	.L11
	cmpl	$1, %ebx
	je	.L17
	cmpl	$2, %ebx
	je	.L18
	jmp	.L11
.L10:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r15d
.L12:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r15d
.L13:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r15d
.L14:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r15d
.L15:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %esi
.L16:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, %esi
.L18:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %esi
.L17:
	subq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, %esi
.L11:
	movl	%ebx, %eax
	addq	%rax, -72(%rbp)
	movl	%esi, %eax
	movl	%r10d, %esi
	xorl	%esi, %eax
	movl	-88(%rbp), %esi
	andl	%eax, %esi
	movl	%r11d, %eax
	xorl	%r15d, %eax
	movl	-116(%rbp), %r15d
	andl	%eax, %r15d
	movl	%ebx, %eax
	addq	%rax, -80(%rbp)
	cmpl	$8, %ebx
	je	.L19
	cmpl	$8, %ebx
	ja	.L20
	cmpl	$7, %ebx
	je	.L21
	cmpl	$7, %ebx
	ja	.L20
	cmpl	$6, %ebx
	je	.L22
	cmpl	$6, %ebx
	ja	.L20
	cmpl	$5, %ebx
	je	.L23
	cmpl	$5, %ebx
	ja	.L20
	cmpl	$4, %ebx
	je	.L24
	cmpl	$4, %ebx
	ja	.L20
	cmpl	$3, %ebx
	je	.L25
	cmpl	$3, %ebx
	ja	.L20
	cmpl	$1, %ebx
	je	.L26
	cmpl	$2, %ebx
	je	.L27
	jmp	.L20
.L19:
	movl	%r15d, %eax
	shrl	$24, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movl	%r15d, %eax
	shrl	$16, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L22:
	movl	%r15d, %eax
	shrl	$8, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L23:
	subq	$1, -80(%rbp)
	movl	%r15d, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	movl	%esi, %eax
	shrl	$24, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	movl	%esi, %eax
	shrl	$16, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L27:
	movl	%esi, %eax
	shrl	$8, %eax
	subq	$1, -80(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L26:
	subq	$1, -80(%rbp)
	movl	%esi, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L20:
	movl	%ebx, %eax
	addq	%rax, -80(%rbp)
	cmpl	$32, %r12d
	jne	.L28
	movl	%r13d, %r14d
	movl	%r10d, %r13d
	jmp	.L9
.L28:
	cmpl	$64, %r12d
	jne	.L29
	movl	%r10d, %r14d
	movl	%r11d, %r13d
	jmp	.L9
.L29:
	cmpl	$32, %r12d
	jle	.L30
	leal	-32(%r12), %eax
	movl	%r13d, %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	$64, %eax
	subl	%r12d, %eax
	movl	%r10d, %esi
	movl	%esi, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%eax, %edx
	movl	%edx, %r14d
	leal	-32(%r12), %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %edx
	movl	$64, %eax
	subl	%r12d, %eax
	movl	%r11d, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%eax, %edx
	movl	%edx, %r13d
	jmp	.L9
.L30:
	movl	%r14d, %edx
	movl	%r12d, %ecx
	shrl	%cl, %edx
	movl	$32, %eax
	subl	%r12d, %eax
	movl	%r13d, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	orl	%eax, %edx
	movl	%edx, %r14d
	movl	%r13d, %edx
	movl	%r12d, %ecx
	shrl	%cl, %edx
	movl	$32, %eax
	subl	%r12d, %eax
	movl	%r10d, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%eax, %edx
	movl	%edx, %r13d
.L9:
	movq	-128(%rbp), %rax
	leaq	-1(%rax), %rdi
	movq	%rdi, -128(%rbp)
	testq	%rax, %rax
	jg	.L31
	movq	-112(%rbp), %rax
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
	movl	$0, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.L1
.L32:
	nop
.L1:
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
	.size	DES_ofb_encrypt, .-DES_ofb_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

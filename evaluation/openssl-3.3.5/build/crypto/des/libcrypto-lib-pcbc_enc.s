	.file	"pcbc_enc.c"
	.text
	.globl	DES_pcbc_encrypt
	.type	DES_pcbc_encrypt, @function
DES_pcbc_encrypt:
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
	movl	%r9d, -124(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L2
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r14d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r14d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r14d
	jmp	.L3
.L14:
	cmpq	$7, -104(%rbp)
	jle	.L4
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	jmp	.L5
.L4:
	movq	-104(%rbp), %rax
	addq	%rax, -56(%rbp)
	movl	$0, %ebx
	movl	%ebx, %r12d
	cmpq	$8, -104(%rbp)
	je	.L6
	cmpq	$8, -104(%rbp)
	jg	.L5
	cmpq	$7, -104(%rbp)
	je	.L7
	cmpq	$7, -104(%rbp)
	jg	.L5
	cmpq	$6, -104(%rbp)
	je	.L8
	cmpq	$6, -104(%rbp)
	jg	.L5
	cmpq	$5, -104(%rbp)
	je	.L9
	cmpq	$5, -104(%rbp)
	jg	.L5
	cmpq	$4, -104(%rbp)
	je	.L10
	cmpq	$4, -104(%rbp)
	jg	.L5
	cmpq	$3, -104(%rbp)
	je	.L11
	cmpq	$3, -104(%rbp)
	jg	.L5
	cmpq	$1, -104(%rbp)
	je	.L12
	cmpq	$2, -104(%rbp)
	je	.L13
	jmp	.L5
.L6:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
.L7:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
.L8:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
.L9:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %ebx
.L10:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r12d
.L11:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
.L13:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
.L12:
	subq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r12d
.L5:
	movl	%r13d, %eax
	xorl	%r12d, %eax
	movl	%eax, -80(%rbp)
	movl	%r14d, %eax
	xorl	%ebx, %eax
	movl	%eax, -76(%rbp)
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-80(%rbp), %r15d
	movl	-76(%rbp), %esi
	movl	%r12d, %r13d
	xorl	%r15d, %r13d
	movl	%esi, %r14d
	xorl	%ebx, %r14d
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%r15d, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$24, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	%esi, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%esi, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$24, %esi
	movl	%esi, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	subq	$8, -104(%rbp)
.L3:
	cmpq	$0, -104(%rbp)
	jg	.L14
	jmp	.L15
.L2:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r13d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %r14d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r14d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r14d
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r14d
	jmp	.L16
.L27:
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
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movl	%r12d, -80(%rbp)
	movl	%ebx, -76(%rbp)
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movl	-80(%rbp), %eax
	movl	%r13d, %r15d
	xorl	%eax, %r15d
	movl	-76(%rbp), %eax
	movl	%r14d, %edi
	xorl	%eax, %edi
	movl	%edi, -128(%rbp)
	cmpq	$7, -104(%rbp)
	jle	.L17
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%r15d, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r15d, %ecx
	shrl	$24, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%edi, %edx
	movb	%dl, (%rax)
	movl	%edi, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%edi, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$24, %edi
	movl	%edi, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L18
.L17:
	movq	-104(%rbp), %rax
	addq	%rax, -64(%rbp)
	cmpq	$8, -104(%rbp)
	je	.L19
	cmpq	$8, -104(%rbp)
	jg	.L18
	cmpq	$7, -104(%rbp)
	je	.L20
	cmpq	$7, -104(%rbp)
	jg	.L18
	cmpq	$6, -104(%rbp)
	je	.L21
	cmpq	$6, -104(%rbp)
	jg	.L18
	cmpq	$5, -104(%rbp)
	je	.L22
	cmpq	$5, -104(%rbp)
	jg	.L18
	cmpq	$4, -104(%rbp)
	je	.L23
	cmpq	$4, -104(%rbp)
	jg	.L18
	cmpq	$3, -104(%rbp)
	je	.L24
	cmpq	$3, -104(%rbp)
	jg	.L18
	cmpq	$1, -104(%rbp)
	je	.L25
	cmpq	$2, -104(%rbp)
	je	.L26
	jmp	.L18
.L19:
	movl	-128(%rbp), %eax
	shrl	$24, %eax
	subq	$1, -64(%rbp)
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L20:
	movl	-128(%rbp), %eax
	shrl	$16, %eax
	subq	$1, -64(%rbp)
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movl	-128(%rbp), %eax
	shrl	$8, %eax
	subq	$1, -64(%rbp)
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L22:
	subq	$1, -64(%rbp)
	movzbl	-128(%rbp), %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L23:
	movl	%r15d, %eax
	shrl	$24, %eax
	subq	$1, -64(%rbp)
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	movl	%r15d, %eax
	shrl	$16, %eax
	subq	$1, -64(%rbp)
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L26:
	movl	%r15d, %eax
	shrl	$8, %eax
	subq	$1, -64(%rbp)
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	subq	$1, -64(%rbp)
	movl	%r15d, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L18:
	xorl	%r12d, %r15d
	movl	%r15d, %r13d
	movl	-128(%rbp), %r14d
	xorl	%ebx, %r14d
	subq	$8, -104(%rbp)
.L16:
	cmpq	$0, -104(%rbp)
	jg	.L27
.L15:
	movl	$0, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
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
.LFE6:
	.size	DES_pcbc_encrypt, .-DES_pcbc_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cfb_enc.c"
	.text
	.globl	DES_cfb_encrypt
	.type	DES_cfb_encrypt, @function
DES_cfb_encrypt:
.LFB30:
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-116(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ebx
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, -156(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -116(%rbp)
	jle	.L60
	cmpl	$64, -116(%rbp)
	jg	.L60
	movq	-144(%rbp), %rax
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
	cmpl	$0, 16(%rbp)
	je	.L33
	jmp	.L6
.L31:
	movslq	%ebx, %rax
	subq	%rax, -152(%rbp)
	movl	%r15d, -72(%rbp)
	movl	%r14d, -68(%rbp)
	movq	-136(%rbp), %rcx
	leaq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movslq	%ebx, %rax
	addq	%rax, -104(%rbp)
	movl	$0, %r12d
	movl	%r12d, %r13d
	cmpl	$8, %ebx
	je	.L7
	cmpl	$8, %ebx
	jg	.L8
	cmpl	$7, %ebx
	je	.L9
	cmpl	$7, %ebx
	jg	.L8
	cmpl	$6, %ebx
	je	.L10
	cmpl	$6, %ebx
	jg	.L8
	cmpl	$5, %ebx
	je	.L11
	cmpl	$5, %ebx
	jg	.L8
	cmpl	$4, %ebx
	je	.L12
	cmpl	$4, %ebx
	jg	.L8
	cmpl	$3, %ebx
	je	.L13
	cmpl	$3, %ebx
	jg	.L8
	cmpl	$1, %ebx
	je	.L14
	cmpl	$2, %ebx
	je	.L15
	jmp	.L8
.L7:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r12d
.L9:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
.L10:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
.L11:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r12d
.L12:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r13d
.L13:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
.L15:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
.L14:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r13d
.L8:
	movslq	%ebx, %rax
	addq	%rax, -104(%rbp)
	movl	-72(%rbp), %eax
	xorl	%eax, %r13d
	movl	-68(%rbp), %eax
	xorl	%eax, %r12d
	movslq	%ebx, %rax
	addq	%rax, -112(%rbp)
	cmpl	$8, %ebx
	je	.L16
	cmpl	$8, %ebx
	jg	.L17
	cmpl	$7, %ebx
	je	.L18
	cmpl	$7, %ebx
	jg	.L17
	cmpl	$6, %ebx
	je	.L19
	cmpl	$6, %ebx
	jg	.L17
	cmpl	$5, %ebx
	je	.L20
	cmpl	$5, %ebx
	jg	.L17
	cmpl	$4, %ebx
	je	.L21
	cmpl	$4, %ebx
	jg	.L17
	cmpl	$3, %ebx
	je	.L22
	cmpl	$3, %ebx
	jg	.L17
	cmpl	$1, %ebx
	je	.L23
	cmpl	$2, %ebx
	je	.L24
	jmp	.L17
.L16:
	movl	%r12d, %eax
	shrl	$24, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L18:
	movl	%r12d, %eax
	shrl	$16, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L19:
	movl	%r12d, %eax
	shrl	$8, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L20:
	subq	$1, -112(%rbp)
	movl	%r12d, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movl	%r13d, %eax
	shrl	$24, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L22:
	movl	%r13d, %eax
	shrl	$16, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	movl	%r13d, %eax
	shrl	$8, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L23:
	subq	$1, -112(%rbp)
	movl	%r13d, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L17:
	movslq	%ebx, %rax
	addq	%rax, -112(%rbp)
	cmpl	$32, -116(%rbp)
	jne	.L25
	movl	%r14d, %r15d
	movl	%r13d, %r14d
	jmp	.L6
.L25:
	cmpl	$64, -116(%rbp)
	jne	.L26
	movl	%r13d, %r15d
	movl	%r12d, %r14d
	jmp	.L6
.L26:
	movl	%r15d, -96(%rbp)
	movl	%r14d, -92(%rbp)
	movl	%r13d, -88(%rbp)
	movl	%r12d, -84(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.L27
	movslq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L28
.L27:
	movl	$0, %r14d
	jmp	.L29
.L30:
	movl	-120(%rbp), %edi
	leal	(%r14,%rdi), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-156(%rbp), %r10d
	movl	%r10d, %ecx
	sall	%cl, %eax
	movl	%eax, %esi
	leal	(%r14,%rdi), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$8, %eax
	subl	%r10d, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movslq	%r14d, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, %r14d
.L29:
	cmpl	$7, %r14d
	jle	.L30
.L28:
	movl	-96(%rbp), %r15d
	movl	-92(%rbp), %r14d
.L6:
	movslq	%ebx, %rax
	cmpq	%rax, -152(%rbp)
	jnb	.L31
	jmp	.L32
.L59:
	movslq	%ebx, %rax
	subq	%rax, -152(%rbp)
	movl	%r15d, -72(%rbp)
	movl	%r14d, -68(%rbp)
	movq	-136(%rbp), %rcx
	leaq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_encrypt1@PLT
	movslq	%ebx, %rax
	addq	%rax, -104(%rbp)
	movl	$0, %r12d
	movl	%r12d, %r13d
	cmpl	$8, %ebx
	je	.L34
	cmpl	$8, %ebx
	jg	.L35
	cmpl	$7, %ebx
	je	.L36
	cmpl	$7, %ebx
	jg	.L35
	cmpl	$6, %ebx
	je	.L37
	cmpl	$6, %ebx
	jg	.L35
	cmpl	$5, %ebx
	je	.L38
	cmpl	$5, %ebx
	jg	.L35
	cmpl	$4, %ebx
	je	.L39
	cmpl	$4, %ebx
	jg	.L35
	cmpl	$3, %ebx
	je	.L40
	cmpl	$3, %ebx
	jg	.L35
	cmpl	$1, %ebx
	je	.L41
	cmpl	$2, %ebx
	je	.L42
	jmp	.L35
.L34:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r12d
.L36:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
.L37:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
.L38:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r12d
.L39:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %r13d
.L40:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r13d
.L42:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r13d
.L41:
	subq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %r13d
.L35:
	movslq	%ebx, %rax
	addq	%rax, -104(%rbp)
	cmpl	$32, -116(%rbp)
	jne	.L43
	movl	%r14d, %r15d
	movl	%r13d, %r14d
	jmp	.L44
.L43:
	cmpl	$64, -116(%rbp)
	jne	.L45
	movl	%r13d, %r15d
	movl	%r12d, %r14d
	jmp	.L44
.L45:
	movl	%r15d, -96(%rbp)
	movl	%r14d, -92(%rbp)
	movl	%r13d, -88(%rbp)
	movl	%r12d, -84(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.L46
	movslq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L47
.L46:
	movl	$0, %r14d
	jmp	.L48
.L49:
	movl	-120(%rbp), %edi
	leal	(%r14,%rdi), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-156(%rbp), %r11d
	movl	%r11d, %ecx
	sall	%cl, %eax
	movl	%eax, %esi
	leal	(%r14,%rdi), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$8, %eax
	subl	%r11d, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movslq	%r14d, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, %r14d
.L48:
	cmpl	$7, %r14d
	jle	.L49
.L47:
	movl	-96(%rbp), %r15d
	movl	-92(%rbp), %r14d
.L44:
	movl	-72(%rbp), %eax
	xorl	%eax, %r13d
	movl	-68(%rbp), %eax
	xorl	%eax, %r12d
	movslq	%ebx, %rax
	addq	%rax, -112(%rbp)
	cmpl	$8, %ebx
	je	.L50
	cmpl	$8, %ebx
	jg	.L51
	cmpl	$7, %ebx
	je	.L52
	cmpl	$7, %ebx
	jg	.L51
	cmpl	$6, %ebx
	je	.L53
	cmpl	$6, %ebx
	jg	.L51
	cmpl	$5, %ebx
	je	.L54
	cmpl	$5, %ebx
	jg	.L51
	cmpl	$4, %ebx
	je	.L55
	cmpl	$4, %ebx
	jg	.L51
	cmpl	$3, %ebx
	je	.L56
	cmpl	$3, %ebx
	jg	.L51
	cmpl	$1, %ebx
	je	.L57
	cmpl	$2, %ebx
	je	.L58
	jmp	.L51
.L50:
	movl	%r12d, %eax
	shrl	$24, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L52:
	movl	%r12d, %eax
	shrl	$16, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L53:
	movl	%r12d, %eax
	shrl	$8, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L54:
	subq	$1, -112(%rbp)
	movl	%r12d, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L55:
	movl	%r13d, %eax
	shrl	$24, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L56:
	movl	%r13d, %eax
	shrl	$16, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L58:
	movl	%r13d, %eax
	shrl	$8, %eax
	subq	$1, -112(%rbp)
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L57:
	subq	$1, -112(%rbp)
	movl	%r13d, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L51:
	movslq	%ebx, %rax
	addq	%rax, -112(%rbp)
.L33:
	movslq	%ebx, %rax
	cmpq	%rax, -152(%rbp)
	jnb	.L59
.L32:
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
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
	movl	%r14d, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	%r14d, %ecx
	shrl	$24, %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	$0, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L1
.L60:
	nop
.L1:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	DES_cfb_encrypt, .-DES_cfb_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

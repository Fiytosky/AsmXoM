	.file	"f_generic.c"
	.text
	.type	constant_time_msb_64, @function
constant_time_msb_64:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	constant_time_msb_64, .-constant_time_msb_64
	.type	constant_time_is_zero_64, @function
constant_time_is_zero_64:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andq	%rdx, %rax
	movq	%rax, %rdi
	call	constant_time_msb_64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	constant_time_is_zero_64, .-constant_time_is_zero_64
	.section	.rodata
	.align 32
	.type	ZERO, @object
	.size	ZERO, 64
ZERO:
	.zero	64
	.align 32
	.type	ONE, @object
	.size	ONE, 64
ONE:
	.quad	1
	.zero	56
	.text
	.type	gf_sqrn, @function
gf_sqrn:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L6
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	subl	$1, -84(%rbp)
	jmp	.L8
.L6:
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	subl	$2, -84(%rbp)
	jmp	.L8
.L9:
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	subl	$2, -84(%rbp)
.L8:
	cmpl	$0, -84(%rbp)
	jne	.L9
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	gf_sqrn, .-gf_sqrn
	.section	.rodata
	.align 32
	.type	MODULUS, @object
	.size	MODULUS, 64
MODULUS:
	.quad	72057594037927935
	.quad	72057594037927935
	.quad	72057594037927935
	.quad	72057594037927935
	.quad	72057594037927934
	.quad	72057594037927935
	.quad	72057594037927935
	.quad	72057594037927935
	.text
	.globl	gf_serialize
	.type	gf_serialize, @function
gf_serialize:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	gf_strong_reduce@PLT
	movl	$0, -52(%rbp)
	jmp	.L11
.L13:
	cmpl	$7, -24(%rbp)
	ja	.L12
	cmpl	$7, -20(%rbp)
	ja	.L12
	movl	-20(%rbp), %eax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, %rax
	movl	$0, %edx
	movl	-24(%rbp), %ecx
	shldq	%cl, %rax, %rdx
	salq	%cl, %rax
	testb	$64, %cl
	je	.L14
	movq	%rax, %rdx
	xorl	%eax, %eax
.L14:
	orq	%rax, -48(%rbp)
	orq	%rdx, -40(%rbp)
	addl	$56, -24(%rbp)
	addl	$1, -20(%rbp)
.L12:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movb	%dl, (%rax)
	subl	$8, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$8, %rdx, %rax
	shrq	$8, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addl	$1, -52(%rbp)
.L11:
	cmpl	$55, -52(%rbp)
	jle	.L13
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	gf_serialize, .-gf_serialize
	.globl	gf_hibit
	.type	gf_hibit, @function
gf_hibit:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	gf_strong_reduce@PLT
	movq	-64(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	gf_hibit, .-gf_hibit
	.globl	gf_lobit
	.type	gf_lobit, @function
gf_lobit:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	gf_strong_reduce@PLT
	movq	-96(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	gf_lobit, .-gf_lobit
	.globl	gf_deserialize
	.type	gf_deserialize, @function
gf_deserialize:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, %eax
	movb	%al, -120(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$56, -88(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L20
.L24:
	movl	-20(%rbp), %edx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -81(%rbp)
	movl	-88(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jne	.L22
	movzbl	-120(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movzbl	-81(%rbp), %eax
	andl	%edx, %eax
	movb	%al, -81(%rbp)
.L22:
	movzbl	-81(%rbp), %eax
	movq	%rax, %rax
	movl	$0, %edx
	movl	-24(%rbp), %ecx
	shldq	%cl, %rax, %rdx
	salq	%cl, %rax
	testb	$64, %cl
	je	.L31
	movq	%rax, %rdx
	xorl	%eax, %eax
.L31:
	orq	%rax, -48(%rbp)
	orq	%rdx, -40(%rbp)
	addl	$8, -24(%rbp)
	addl	$1, -20(%rbp)
.L21:
	cmpl	$55, -24(%rbp)
	ja	.L23
	movl	-20(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jb	.L24
.L23:
	cmpl	$6, -68(%rbp)
	ja	.L25
	movq	-48(%rbp), %rax
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	jmp	.L26
.L25:
	movq	-48(%rbp), %rax
.L26:
	movq	-104(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	%rax, (%rdx,%rcx,8)
	subl	$56, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-104(%rbp), %rax
	movl	-68(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movl	-68(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	leaq	MODULUS(%rip), %rcx
	movq	(%rsi,%rcx), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	addl	$1, -68(%rbp)
.L20:
	cmpl	$7, -68(%rbp)
	jbe	.L21
	cmpl	$0, -116(%rbp)
	jne	.L28
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	gf_hibit@PLT
	notq	%rax
	movq	%rax, -80(%rbp)
	jmp	.L29
.L28:
	movq	$-1, -80(%rbp)
.L29:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_64
	andq	-80(%rbp), %rax
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_64
	notq	%rax
	andq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	gf_deserialize, .-gf_deserialize
	.globl	gf_strong_reduce
	.type	gf_strong_reduce, @function
gf_strong_reduce:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -92(%rbp)
	jmp	.L33
.L34:
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	-92(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -92(%rbp)
.L33:
	cmpl	$0, -92(%rbp)
	jne	.L34
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L35
.L36:
	movq	-104(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movl	-52(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	leaq	MODULUS(%rip), %rcx
	movq	(%rsi,%rcx), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	sarq	$56, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addl	$1, -52(%rbp)
.L35:
	cmpl	$7, -52(%rbp)
	jbe	.L36
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L37
.L38:
	movq	-104(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movl	-52(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	leaq	MODULUS(%rip), %rcx
	movq	(%rsi,%rcx), %rcx
	andq	-64(%rbp), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addl	$1, -52(%rbp)
.L37:
	cmpl	$7, -52(%rbp)
	jbe	.L38
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	gf_strong_reduce, .-gf_strong_reduce
	.globl	gf_sub
	.type	gf_sub, @function
gf_sub:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$144115188075855870, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L40
.L43:
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	cmpl	$4, -92(%rbp)
	jne	.L41
	movq	-88(%rbp), %rax
	jmp	.L42
.L41:
	movq	-80(%rbp), %rax
.L42:
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -92(%rbp)
.L40:
	cmpl	$7, -92(%rbp)
	jbe	.L43
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -124(%rbp)
	jmp	.L44
.L45:
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -124(%rbp)
.L44:
	cmpl	$0, -124(%rbp)
	jne	.L45
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$2, -44(%rbp)
	nop
	movq	-136(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -28(%rbp)
	jmp	.L46
.L47:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -28(%rbp)
.L46:
	cmpl	$0, -28(%rbp)
	jne	.L47
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	gf_sub, .-gf_sub
	.globl	gf_add
	.type	gf_add, @function
gf_add:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L49
.L50:
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -60(%rbp)
.L49:
	cmpl	$7, -60(%rbp)
	jbe	.L50
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -92(%rbp)
	jmp	.L51
.L52:
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	-92(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -92(%rbp)
.L51:
	cmpl	$0, -92(%rbp)
	jne	.L52
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -28(%rbp)
	jmp	.L53
.L54:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -28(%rbp)
.L53:
	cmpl	$0, -28(%rbp)
	jne	.L54
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	gf_add, .-gf_add
	.globl	gf_eq
	.type	gf_eq, @function
gf_eq:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	gf_strong_reduce@PLT
	movl	$0, -12(%rbp)
	jmp	.L56
.L57:
	movl	-12(%rbp), %eax
	movq	-80(%rbp,%rax,8), %rax
	orq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L56:
	cmpl	$7, -12(%rbp)
	jbe	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	gf_eq, .-gf_eq
	.globl	gf_isr
	.type	gf_isr, @function
gf_isr:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	-240(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-160(%rbp), %rdx
	movq	-240(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-224(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-160(%rbp), %rdx
	movq	-240(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-224(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-160(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-96(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-160(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-96(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-224(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-160(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-96(%rbp), %rdx
	movq	-240(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$18, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-96(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-96(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-224(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-96(%rbp), %rdx
	movq	-240(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$223, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sqrn
	leaq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-160(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-240(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-232(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	leaq	ONE(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_eq@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	gf_isr, .-gf_isr
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

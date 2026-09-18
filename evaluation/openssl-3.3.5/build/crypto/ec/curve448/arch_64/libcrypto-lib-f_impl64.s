	.file	"f_impl64.c"
	.text
	.type	widemul, @function
widemul:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	-32(%rbp), %rcx
	movl	$0, %ebx
	movq	%rdx, %rdi
	imulq	%rcx, %rdi
	movq	%rbx, %rsi
	imulq	%rax, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	widemul, .-widemul
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
	.globl	ossl_gf_mul
	.type	ossl_gf_mul, @function
ossl_gf_mul:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L4
.L5:
	movl	-52(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, -128(%rbp,%rax,8)
	movl	-52(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, -160(%rbp,%rax,8)
	movl	-52(%rbp), %eax
	movq	-160(%rbp,%rax,8), %rdx
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, -192(%rbp,%rax,8)
	addl	$1, -52(%rbp)
.L4:
	cmpl	$3, -52(%rbp)
	jbe	.L5
	movl	$0, -52(%rbp)
	jmp	.L6
.L11:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L7
.L8:
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-56(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, %eax
	movq	-160(%rbp,%rax,8), %rdx
	movl	-56(%rbp), %eax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -32(%rbp)
	adcq	%rdx, -24(%rbp)
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -16(%rbp)
	adcq	%rdx, -8(%rbp)
	addl	$1, -56(%rbp)
.L7:
	movl	-56(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jnb	.L8
	jmp	.L9
.L10:
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$8, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-56(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	movq	-192(%rbp,%rax,8), %rdx
	movl	-56(%rbp), %eax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -32(%rbp)
	adcq	%rdx, -24(%rbp)
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	movq	-160(%rbp,%rax,8), %rdx
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -16(%rbp)
	adcq	%rdx, -8(%rbp)
	addl	$1, -56(%rbp)
.L9:
	cmpl	$3, -56(%rbp)
	jbe	.L10
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, -32(%rbp)
	sbbq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rax, -16(%rbp)
	adcq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	-52(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	andq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	addl	$4, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,8), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	andq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addl	$1, -52(%rbp)
.L6:
	cmpl	$3, -52(%rbp)
	jbe	.L11
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rax, -16(%rbp)
	adcq	%rdx, -8(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rax
	movl	$0, %edx
	addq	%rax, -16(%rbp)
	adcq	%rdx, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rax
	movl	$0, %edx
	addq	%rax, -32(%rbp)
	adcq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	andq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	andq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	$40, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	ossl_gf_mul, .-ossl_gf_mul
	.globl	ossl_gf_mulw_unsigned
	.type	ossl_gf_mulw_unsigned, @function
ossl_gf_mulw_unsigned:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L13
.L14:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-100(%rbp), %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -32(%rbp)
	adcq	%rdx, -24(%rbp)
	movl	-52(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-100(%rbp), %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	andq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	andq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addl	$1, -52(%rbp)
.L13:
	cmpl	$3, -52(%rbp)
	jle	.L14
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	addq	%rax, -32(%rbp)
	adcq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	$32, %rdx
	andq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	$40, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rax
	movl	$0, %edx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	ossl_gf_mulw_unsigned, .-ossl_gf_mulw_unsigned
	.globl	ossl_gf_sqr
	.type	ossl_gf_sqr, @function
ossl_gf_sqr:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L16
.L17:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, -128(%rbp,%rax,8)
	addl	$1, -4(%rbp)
.L16:
	cmpl	$3, -4(%rbp)
	jbe	.L17
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-104(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -96(%rbp)
	adcq	%rdx, -88(%rbp)
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	%rax, -48(%rbp)
	sbbq	%rdx, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, %rax
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	movq	-24(%rbp), %rdx
	addq	$56, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$55, %rdx, %rax
	shrq	$55, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	shrdq	$55, %rdx, %rax
	shrq	$55, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$40, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	subq	%rax, -48(%rbp)
	sbbq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	%rax, -64(%rbp)
	sbbq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	subq	%rax, -48(%rbp)
	sbbq	%rdx, -40(%rbp)
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	andq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	subq	%rax, -48(%rbp)
	sbbq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	%rax, -64(%rbp)
	sbbq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$40, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	subq	%rax, -48(%rbp)
	sbbq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	-128(%rbp), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -96(%rbp)
	adcq	%rdx, -88(%rbp)
	movq	-120(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	widemul
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	%rax, -64(%rbp)
	sbbq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$16, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$48, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rax
	movl	$0, %edx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	%rax, %rax
	movl	$0, %edx
	addq	%rax, -64(%rbp)
	adcq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$56, %rdx
	andq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	shrdq	$56, %rdx, %rax
	shrq	$56, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	ossl_gf_sqr, .-ossl_gf_sqr
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

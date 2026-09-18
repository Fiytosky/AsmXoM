	.file	"curve25519.c"
	.text
	.type	load_8, @function
load_8:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	load_8, .-load_8
	.type	fe64_frombytes, @function
fe64_frombytes:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	load_8
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	load_8
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rdx
	leaq	16(%rdx), %rbx
	movq	%rax, %rdi
	call	load_8
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	load_8
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movabsq	$9223372036854775807, %rcx
	andq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	fe64_frombytes, .-fe64_frombytes
	.type	fe64_0, @function
fe64_0:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	fe64_0, .-fe64_0
	.type	fe64_1, @function
fe64_1:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$1, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	fe64_1, .-fe64_1
	.type	fe64_copy, @function
fe64_copy:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	-8(%rbp), %rdx
	addq	$24, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	fe64_copy, .-fe64_copy
	.type	fe64_cswap, @function
fe64_cswap:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
	negq	%rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	andq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	xorq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	xorq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$3, -4(%rbp)
	jle	.L9
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	fe64_cswap, .-fe64_cswap
	.type	fe64_invert, @function
fe64_invert:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-80(%rbp), %rdx
	movq	-160(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L11
.L12:
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L11:
	cmpl	$4, -4(%rbp)
	jle	.L12
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L13
.L14:
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L13:
	cmpl	$9, -4(%rbp)
	jle	.L14
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L15
.L16:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L15:
	cmpl	$19, -4(%rbp)
	jle	.L16
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L17:
	cmpl	$9, -4(%rbp)
	jle	.L18
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L19
.L20:
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L19:
	cmpl	$49, -4(%rbp)
	jle	.L20
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L21
.L22:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L21:
	cmpl	$99, -4(%rbp)
	jle	.L22
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	movl	$0, -4(%rbp)
	jmp	.L23
.L24:
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L23:
	cmpl	$49, -4(%rbp)
	jle	.L24
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	addl	$1, -4(%rbp)
.L25:
	cmpl	$4, -4(%rbp)
	jle	.L26
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	fe64_invert, .-fe64_invert
	.type	x25519_scalar_mulx, @function
x25519_scalar_mulx:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movl	$0, -4(%rbp)
	movq	-288(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movzbl	-272(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -272(%rbp)
	movzbl	-241(%rbp), %eax
	andl	$127, %eax
	movb	%al, -241(%rbp)
	movzbl	-241(%rbp), %eax
	orl	$64, %eax
	movb	%al, -241(%rbp)
	movq	-296(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe64_frombytes
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	fe64_1
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	fe64_0
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe64_copy
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	fe64_1
	movl	$254, -8(%rbp)
	jmp	.L28
.L29:
	movl	-8(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	leaq	-144(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe64_cswap
	movl	-4(%rbp), %edx
	leaq	-176(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe64_cswap
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sub@PLT
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sub@PLT
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_add@PLT
	leaq	-176(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_add@PLT
	leaq	-208(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-240(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-240(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-80(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-112(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_add@PLT
	leaq	-112(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sub@PLT
	leaq	-208(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-208(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sub@PLT
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-240(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul121666@PLT
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_sqr@PLT
	leaq	-176(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_add@PLT
	leaq	-112(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-208(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	subl	$1, -8(%rbp)
.L28:
	cmpl	$0, -8(%rbp)
	jns	.L29
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe64_invert
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_mul@PLT
	leaq	-80(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe64_tobytes@PLT
	leaq	-272(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	x25519_scalar_mulx, .-x25519_scalar_mulx
	.section	.rodata
	.align 8
	.type	MASK51, @object
	.size	MASK51, 8
MASK51:
	.quad	2251799813685247
	.text
	.type	load_7, @function
load_7:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	load_7, .-load_7
	.type	load_6, @function
load_6:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	load_6, .-load_6
	.type	fe51_frombytes, @function
fe51_frombytes:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	load_7
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	load_6
	salq	$5, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	addq	$13, %rax
	movq	%rax, %rdi
	call	load_7
	salq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	load_6
	salq	$7, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	$26, %rax
	movq	%rax, %rdi
	call	load_6
	salq	$4, %rax
	movq	%rax, %rdx
	movabsq	$2251799813685232, %rax
	andq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	shrq	$51, %rax
	orq	%rax, -16(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	shrq	$51, %rax
	orq	%rax, -24(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$51, %rax
	orq	%rax, -32(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	shrq	$51, %rax
	orq	%rax, -40(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	fe51_frombytes, .-fe51_frombytes
	.type	fe51_tobytes, @function
fe51_tobytes:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$19, %rax
	shrq	$51, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	shrq	$51, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	shrq	$51, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	shrq	$51, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	shrq	$51, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$51, %rax
	addq	%rax, -16(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	shrq	$51, %rax
	addq	%rax, -24(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$51, %rax
	addq	%rax, -32(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	shrq	$51, %rax
	addq	%rax, -40(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -32(%rbp)
	movabsq	$2251799813685247, %rax
	andq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$48, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leal	0(,%rax,8), %edx
	movq	-56(%rbp), %rax
	addq	$6, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$5, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$13, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$21, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$9, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$29, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$37, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$45, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$12, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$10, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$18, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$26, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$34, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$17, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$42, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$18, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$50, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leal	(%rax,%rax), %edx
	movq	-56(%rbp), %rax
	addq	$19, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$7, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$20, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$15, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$21, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$23, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$22, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$31, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$23, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$39, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$47, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	sall	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$25, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$26, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$12, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$27, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$20, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$28, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$28, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$29, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$36, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$30, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$44, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$31, %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	fe51_tobytes, .-fe51_tobytes
	.type	fe51_add, @function
fe51_add:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	fe51_add, .-fe51_add
	.type	fe51_sub, @function
fe51_sub:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movabsq	$4503599627370458, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movabsq	$4503599627370494, %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movabsq	$4503599627370494, %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movabsq	$4503599627370494, %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movabsq	$4503599627370494, %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	fe51_sub, .-fe51_sub
	.type	fe51_0, @function
fe51_0:
.LFB381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	fe51_0, .-fe51_0
	.type	fe51_1, @function
fe51_1:
.LFB382:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$1, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	fe51_1, .-fe51_1
	.type	fe51_copy, @function
fe51_copy:
.LFB383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	-8(%rbp), %rdx
	addq	$24, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	fe51_copy, .-fe51_copy
	.type	fe51_cswap, @function
fe51_cswap:
.LFB384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
	negq	%rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L42
.L43:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L42:
	cmpl	$4, -4(%rbp)
	jle	.L43
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	fe51_cswap, .-fe51_cswap
	.type	fe51_invert, @function
fe51_invert:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	-208(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-96(%rbp), %rdx
	movq	-208(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-144(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L45
.L46:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L45:
	cmpl	$4, -4(%rbp)
	jle	.L46
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L47
.L48:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L47:
	cmpl	$9, -4(%rbp)
	jle	.L48
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L49
.L50:
	leaq	-192(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L49:
	cmpl	$19, -4(%rbp)
	jle	.L50
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	movl	$0, -4(%rbp)
	jmp	.L51
.L52:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L51:
	cmpl	$9, -4(%rbp)
	jle	.L52
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L53
.L54:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L53:
	cmpl	$49, -4(%rbp)
	jle	.L54
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	movl	$1, -4(%rbp)
	jmp	.L55
.L56:
	leaq	-192(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L55:
	cmpl	$99, -4(%rbp)
	jle	.L56
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	movl	$0, -4(%rbp)
	jmp	.L57
.L58:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L57:
	cmpl	$49, -4(%rbp)
	jle	.L58
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	movl	$0, -4(%rbp)
	jmp	.L59
.L60:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	addl	$1, -4(%rbp)
.L59:
	cmpl	$4, -4(%rbp)
	jle	.L60
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	fe51_invert, .-fe51_invert
	.type	x25519_scalar_mult, @function
x25519_scalar_mult:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movl	$0, -4(%rbp)
	call	x25519_fe64_eligible@PLT
	testl	%eax, %eax
	je	.L62
	movq	-408(%rbp), %rdx
	movq	-400(%rbp), %rcx
	movq	-392(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_scalar_mulx
	jmp	.L61
.L62:
	movq	-400(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -384(%rbp)
	movq	%rdx, -376(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movzbl	-384(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -384(%rbp)
	movzbl	-353(%rbp), %eax
	andl	$127, %eax
	movb	%al, -353(%rbp)
	movzbl	-353(%rbp), %eax
	orl	$64, %eax
	movb	%al, -353(%rbp)
	movq	-408(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe51_frombytes
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	fe51_1
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	fe51_0
	leaq	-64(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe51_copy
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	fe51_1
	movl	$254, -8(%rbp)
	jmp	.L64
.L65:
	movl	-8(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	-384(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	leaq	-208(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_cswap
	movl	-4(%rbp), %edx
	leaq	-256(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_cswap
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_sub
	leaq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_sub
	leaq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_add
	leaq	-256(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_add
	leaq	-112(%rbp), %rdx
	leaq	-304(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-352(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-352(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-112(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-160(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_add
	leaq	-160(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_sub
	leaq	-304(%rbp), %rdx
	leaq	-352(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-304(%rbp), %rdx
	leaq	-352(%rbp), %rcx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_sub
	leaq	-160(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-352(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul121666@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_sqr@PLT
	leaq	-256(%rbp), %rdx
	leaq	-304(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe51_add
	leaq	-160(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-304(%rbp), %rdx
	leaq	-352(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	subl	$1, -8(%rbp)
.L64:
	cmpl	$0, -8(%rbp)
	jns	.L65
	leaq	-160(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe51_invert
	leaq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_fe51_mul@PLT
	leaq	-112(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe51_tobytes
	leaq	-384(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	x25519_scalar_mult, .-x25519_scalar_mult
	.section	.rodata
	.align 8
	.type	kBottom21Bits, @object
	.size	kBottom21Bits, 8
kBottom21Bits:
	.quad	2097151
	.align 8
	.type	kBottom25Bits, @object
	.size	kBottom25Bits, 8
kBottom25Bits:
	.quad	33554431
	.align 8
	.type	kBottom26Bits, @object
	.size	kBottom26Bits, 8
kBottom26Bits:
	.quad	67108863
	.align 8
	.type	kTop39Bits, @object
	.size	kTop39Bits, 8
kTop39Bits:
	.quad	-33554432
	.align 8
	.type	kTop38Bits, @object
	.size	kTop38Bits, 8
kTop38Bits:
	.quad	-67108864
	.text
	.type	load_3, @function
load_3:
.LFB387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	load_3, .-load_3
	.type	load_4, @function
load_4:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	load_4, .-load_4
	.type	fe_frombytes, @function
fe_frombytes:
.LFB389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	load_4
	movq	%rax, -8(%rbp)
	movq	-176(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$6, %rax
	movq	%rax, -16(%rbp)
	movq	-176(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$5, %rax
	movq	%rax, -24(%rbp)
	movq	-176(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	addq	$13, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-176(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	load_4
	movq	%rax, -48(%rbp)
	movq	-176(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$7, %rax
	movq	%rax, -56(%rbp)
	movq	-176(%rbp), %rax
	addq	$23, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rax
	addq	$26, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-176(%rbp), %rax
	addq	$29, %rax
	movq	%rax, %rdi
	call	load_3
	salq	$2, %rax
	andl	$33554428, %eax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	sarq	$25, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, -8(%rbp)
	movq	$-33554432, %rax
	andq	-88(%rbp), %rax
	subq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -24(%rbp)
	movq	$-33554432, %rax
	andq	-96(%rbp), %rax
	subq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -40(%rbp)
	movq	$-33554432, %rax
	andq	-104(%rbp), %rax
	subq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -56(%rbp)
	movq	$-33554432, %rax
	andq	-112(%rbp), %rax
	subq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -72(%rbp)
	movq	$-33554432, %rax
	andq	-120(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -16(%rbp)
	movq	$-67108864, %rax
	andq	-128(%rbp), %rax
	subq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -32(%rbp)
	movq	$-67108864, %rax
	andq	-136(%rbp), %rax
	subq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -48(%rbp)
	movq	$-67108864, %rax
	andq	-144(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -64(%rbp)
	movq	$-67108864, %rax
	andq	-152(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -80(%rbp)
	movq	$-67108864, %rax
	andq	-160(%rbp), %rax
	subq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-168(%rbp), %rax
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$4, %rax
	movq	-16(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$12, %rax
	movq	-32(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$16, %rax
	movq	-40(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$20, %rax
	movq	-48(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$24, %rax
	movq	-56(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$28, %rax
	movq	-64(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$32, %rax
	movq	-72(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	addq	$36, %rax
	movq	-80(%rbp), %rdx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	fe_frombytes, .-fe_frombytes
	.type	fe_tobytes, @function
fe_tobytes:
.LFB390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-64(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$16777216, %eax
	sarl	$25, %eax
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$26, %eax
	movl	%eax, -44(%rbp)
	movl	-8(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$25, %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$26, %eax
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$25, %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$26, %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$25, %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$26, %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$25, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$26, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	sarl	$25, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$26, %eax
	addl	%eax, -8(%rbp)
	movl	$67108863, %eax
	andl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	sarl	$25, %eax
	addl	%eax, -12(%rbp)
	movl	$33554431, %eax
	andl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	sarl	$26, %eax
	addl	%eax, -16(%rbp)
	movl	$67108863, %eax
	andl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	sarl	$25, %eax
	addl	%eax, -20(%rbp)
	movl	$33554431, %eax
	andl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	sarl	$26, %eax
	addl	%eax, -24(%rbp)
	movl	$67108863, %eax
	andl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	sarl	$25, %eax
	addl	%eax, -28(%rbp)
	movl	$33554431, %eax
	andl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	sarl	$26, %eax
	addl	%eax, -32(%rbp)
	movl	$67108863, %eax
	andl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sarl	$25, %eax
	addl	%eax, -36(%rbp)
	movl	$33554431, %eax
	andl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	sarl	$26, %eax
	addl	%eax, -40(%rbp)
	movl	$67108863, %eax
	andl	%eax, -36(%rbp)
	movl	$33554431, %eax
	andl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	sarl	$24, %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-56(%rbp), %rax
	addq	$3, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	sarl	$14, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	sarl	$22, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	leal	0(,%rax,8), %edx
	movq	-56(%rbp), %rax
	addq	$6, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	sarl	$13, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	sarl	$21, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$9, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	sarl	$11, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	sarl	$19, %eax
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$12, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	sarl	$10, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$17, %rax
	movb	%dl, (%rax)
	movl	-24(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$18, %rax
	movb	%dl, (%rax)
	movl	-24(%rbp), %eax
	sarl	$24, %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-56(%rbp), %rax
	addq	$19, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$20, %rax
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	sarl	$15, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$21, %rax
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	sarl	$23, %eax
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	leal	0(,%rax,8), %edx
	movq	-56(%rbp), %rax
	addq	$22, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-32(%rbp), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$23, %rax
	movb	%dl, (%rax)
	movl	-32(%rbp), %eax
	sarl	$13, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movb	%dl, (%rax)
	movl	-32(%rbp), %eax
	sarl	$21, %eax
	movl	%eax, %ecx
	movl	-36(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$25, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$26, %rax
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$27, %rax
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$28, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$29, %rax
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	sarl	$10, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$30, %rax
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$31, %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	fe_tobytes, .-fe_tobytes
	.type	fe_copy, @function
fe_copy:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	fe_copy, .-fe_copy
	.type	fe_0, @function
fe_0:
.LFB392:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	fe_0, .-fe_0
	.type	fe_1, @function
fe_1:
.LFB393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	fe_1, .-fe_1
	.type	fe_add, @function
fe_add:
.LFB394:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L76
.L77:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L76:
	cmpl	$9, -4(%rbp)
	jbe	.L77
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	fe_add, .-fe_add
	.type	fe_sub, @function
fe_sub:
.LFB395:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L79
.L80:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-4(%rbp), %edx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%eax, %ecx
	movl	%ecx, (%rdx)
	addl	$1, -4(%rbp)
.L79:
	cmpl	$9, -4(%rbp)
	jbe	.L80
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	fe_sub, .-fe_sub
	.type	fe_mul, @function
fe_mul:
.LFB396:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1008, %rsp
	movq	%rdi, -1112(%rbp)
	movq	%rsi, -1120(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-1120(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-1120(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-1120(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-1120(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-1120(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-1120(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-1120(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-1120(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-1120(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-1128(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-1128(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-1128(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-1128(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-1128(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-1128(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-1128(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-1128(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-1128(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-1128(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	-48(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-56(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-60(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-64(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-68(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-72(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-76(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-80(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -116(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -120(%rbp)
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -124(%rbp)
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -128(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -132(%rbp)
	movl	-40(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -136(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -288(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -296(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -320(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -344(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -360(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -368(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -376(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -384(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -400(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -408(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -416(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -432(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -440(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -456(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -464(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -472(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -480(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -488(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -496(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -504(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-104(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -520(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -528(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -536(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -544(%rbp)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -552(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -560(%rbp)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -568(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -576(%rbp)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-100(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -584(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-104(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -592(%rbp)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -600(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -608(%rbp)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -616(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -624(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -632(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -640(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -648(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-96(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -656(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-100(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -664(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-104(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -672(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -680(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -688(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -696(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -704(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -712(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -720(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -728(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-96(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -736(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movl	-100(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -744(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-104(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -752(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -760(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -768(%rbp)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -776(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -784(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -792(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -800(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -808(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-96(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -816(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-100(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -824(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-104(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -832(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -840(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -848(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -856(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-44(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -864(%rbp)
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -872(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -880(%rbp)
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -888(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-96(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -896(%rbp)
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movl	-100(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -904(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-104(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -912(%rbp)
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -920(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-112(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -928(%rbp)
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movl	-116(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -936(%rbp)
	movq	-144(%rbp), %rdx
	movq	-296(%rbp), %rax
	addq	%rax, %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movq	-440(%rbp), %rax
	addq	%rax, %rdx
	movq	-512(%rbp), %rax
	addq	%rax, %rdx
	movq	-584(%rbp), %rax
	addq	%rax, %rdx
	movq	-656(%rbp), %rax
	addq	%rax, %rdx
	movq	-728(%rbp), %rax
	addq	%rax, %rdx
	movq	-800(%rbp), %rax
	addq	%rax, %rdx
	movq	-872(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -944(%rbp)
	movq	-152(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rax, %rdx
	movq	-448(%rbp), %rax
	addq	%rax, %rdx
	movq	-520(%rbp), %rax
	addq	%rax, %rdx
	movq	-592(%rbp), %rax
	addq	%rax, %rdx
	movq	-664(%rbp), %rax
	addq	%rax, %rdx
	movq	-736(%rbp), %rax
	addq	%rax, %rdx
	movq	-808(%rbp), %rax
	addq	%rax, %rdx
	movq	-880(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -952(%rbp)
	movq	-160(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	movq	-456(%rbp), %rax
	addq	%rax, %rdx
	movq	-528(%rbp), %rax
	addq	%rax, %rdx
	movq	-600(%rbp), %rax
	addq	%rax, %rdx
	movq	-672(%rbp), %rax
	addq	%rax, %rdx
	movq	-744(%rbp), %rax
	addq	%rax, %rdx
	movq	-816(%rbp), %rax
	addq	%rax, %rdx
	movq	-888(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -960(%rbp)
	movq	-168(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rax, %rdx
	movq	-384(%rbp), %rax
	addq	%rax, %rdx
	movq	-536(%rbp), %rax
	addq	%rax, %rdx
	movq	-608(%rbp), %rax
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	%rax, %rdx
	movq	-752(%rbp), %rax
	addq	%rax, %rdx
	movq	-824(%rbp), %rax
	addq	%rax, %rdx
	movq	-896(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -968(%rbp)
	movq	-176(%rbp), %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	movq	-320(%rbp), %rax
	addq	%rax, %rdx
	movq	-392(%rbp), %rax
	addq	%rax, %rdx
	movq	-464(%rbp), %rax
	addq	%rax, %rdx
	movq	-616(%rbp), %rax
	addq	%rax, %rdx
	movq	-688(%rbp), %rax
	addq	%rax, %rdx
	movq	-760(%rbp), %rax
	addq	%rax, %rdx
	movq	-832(%rbp), %rax
	addq	%rax, %rdx
	movq	-904(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -976(%rbp)
	movq	-184(%rbp), %rdx
	movq	-256(%rbp), %rax
	addq	%rax, %rdx
	movq	-328(%rbp), %rax
	addq	%rax, %rdx
	movq	-400(%rbp), %rax
	addq	%rax, %rdx
	movq	-472(%rbp), %rax
	addq	%rax, %rdx
	movq	-544(%rbp), %rax
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	addq	%rax, %rdx
	movq	-768(%rbp), %rax
	addq	%rax, %rdx
	movq	-840(%rbp), %rax
	addq	%rax, %rdx
	movq	-912(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -984(%rbp)
	movq	-192(%rbp), %rdx
	movq	-264(%rbp), %rax
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	addq	%rax, %rdx
	movq	-408(%rbp), %rax
	addq	%rax, %rdx
	movq	-480(%rbp), %rax
	addq	%rax, %rdx
	movq	-552(%rbp), %rax
	addq	%rax, %rdx
	movq	-624(%rbp), %rax
	addq	%rax, %rdx
	movq	-776(%rbp), %rax
	addq	%rax, %rdx
	movq	-848(%rbp), %rax
	addq	%rax, %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -992(%rbp)
	movq	-200(%rbp), %rdx
	movq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	%rax, %rdx
	movq	-416(%rbp), %rax
	addq	%rax, %rdx
	movq	-488(%rbp), %rax
	addq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rax, %rdx
	movq	-632(%rbp), %rax
	addq	%rax, %rdx
	movq	-704(%rbp), %rax
	addq	%rax, %rdx
	movq	-856(%rbp), %rax
	addq	%rax, %rdx
	movq	-928(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1000(%rbp)
	movq	-208(%rbp), %rdx
	movq	-280(%rbp), %rax
	addq	%rax, %rdx
	movq	-352(%rbp), %rax
	addq	%rax, %rdx
	movq	-424(%rbp), %rax
	addq	%rax, %rdx
	movq	-496(%rbp), %rax
	addq	%rax, %rdx
	movq	-568(%rbp), %rax
	addq	%rax, %rdx
	movq	-640(%rbp), %rax
	addq	%rax, %rdx
	movq	-712(%rbp), %rax
	addq	%rax, %rdx
	movq	-784(%rbp), %rax
	addq	%rax, %rdx
	movq	-936(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1008(%rbp)
	movq	-216(%rbp), %rdx
	movq	-288(%rbp), %rax
	addq	%rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rax, %rdx
	movq	-504(%rbp), %rax
	addq	%rax, %rdx
	movq	-576(%rbp), %rax
	addq	%rax, %rdx
	movq	-648(%rbp), %rax
	addq	%rax, %rdx
	movq	-720(%rbp), %rax
	addq	%rax, %rdx
	movq	-792(%rbp), %rax
	addq	%rax, %rdx
	movq	-864(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1016(%rbp)
	movq	-944(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -952(%rbp)
	movq	$-67108864, %rax
	andq	-1024(%rbp), %rax
	subq	%rax, -944(%rbp)
	movq	-976(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1032(%rbp)
	movq	-1032(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -984(%rbp)
	movq	$-67108864, %rax
	andq	-1032(%rbp), %rax
	subq	%rax, -976(%rbp)
	movq	-952(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -1040(%rbp)
	movq	-1040(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -960(%rbp)
	movq	$-33554432, %rax
	andq	-1040(%rbp), %rax
	subq	%rax, -952(%rbp)
	movq	-984(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -992(%rbp)
	movq	$-33554432, %rax
	andq	-1048(%rbp), %rax
	subq	%rax, -984(%rbp)
	movq	-960(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -968(%rbp)
	movq	$-67108864, %rax
	andq	-1056(%rbp), %rax
	subq	%rax, -960(%rbp)
	movq	-992(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -1000(%rbp)
	movq	$-67108864, %rax
	andq	-1064(%rbp), %rax
	subq	%rax, -992(%rbp)
	movq	-968(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -976(%rbp)
	movq	$-33554432, %rax
	andq	-1072(%rbp), %rax
	subq	%rax, -968(%rbp)
	movq	-1000(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -1008(%rbp)
	movq	$-33554432, %rax
	andq	-1080(%rbp), %rax
	subq	%rax, -1000(%rbp)
	movq	-976(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1032(%rbp)
	movq	-1032(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -984(%rbp)
	movq	$-67108864, %rax
	andq	-1032(%rbp), %rax
	subq	%rax, -976(%rbp)
	movq	-1008(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -1016(%rbp)
	movq	$-67108864, %rax
	andq	-1088(%rbp), %rax
	subq	%rax, -1008(%rbp)
	movq	-1016(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	sarq	$25, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, -944(%rbp)
	movq	$-33554432, %rax
	andq	-1096(%rbp), %rax
	subq	%rax, -1016(%rbp)
	movq	-944(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -952(%rbp)
	movq	$-67108864, %rax
	andq	-1024(%rbp), %rax
	subq	%rax, -944(%rbp)
	movq	-944(%rbp), %rax
	movl	%eax, %edx
	movq	-1112(%rbp), %rax
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$4, %rax
	movq	-952(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$8, %rax
	movq	-960(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$12, %rax
	movq	-968(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$16, %rax
	movq	-976(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$20, %rax
	movq	-984(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$24, %rax
	movq	-992(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$28, %rax
	movq	-1000(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$32, %rax
	movq	-1008(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-1112(%rbp), %rax
	addq	$36, %rax
	movq	-1016(%rbp), %rdx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	fe_mul, .-fe_mul
	.type	fe_sq, @function
fe_sq:
.LFB397:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$600, %rsp
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	-720(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-720(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-720(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-720(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-720(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-720(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-720(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-720(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-720(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-720(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -68(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -72(%rbp)
	movl	-24(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, -76(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-32(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, -84(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-40(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, -92(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-40(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -288(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -296(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -320(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -344(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -360(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -368(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -376(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -384(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -400(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -408(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -416(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -432(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -440(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -456(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -464(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -472(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -480(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -488(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -496(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -504(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -520(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -528(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -536(%rbp)
	movq	-104(%rbp), %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	movq	-352(%rbp), %rax
	addq	%rax, %rdx
	movq	-392(%rbp), %rax
	addq	%rax, %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -544(%rbp)
	movq	-112(%rbp), %rdx
	movq	-312(%rbp), %rax
	addq	%rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rax, %rdx
	movq	-400(%rbp), %rax
	addq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -552(%rbp)
	movq	-120(%rbp), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movq	-408(%rbp), %rax
	addq	%rax, %rdx
	movq	-440(%rbp), %rax
	addq	%rax, %rdx
	movq	-464(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -560(%rbp)
	movq	-128(%rbp), %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-416(%rbp), %rax
	addq	%rax, %rdx
	movq	-448(%rbp), %rax
	addq	%rax, %rdx
	movq	-472(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -568(%rbp)
	movq	-136(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rax, %rdx
	movq	-256(%rbp), %rax
	addq	%rax, %rdx
	movq	-456(%rbp), %rax
	addq	%rax, %rdx
	movq	-480(%rbp), %rax
	addq	%rax, %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -576(%rbp)
	movq	-144(%rbp), %rdx
	movq	-208(%rbp), %rax
	addq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rax, %rdx
	movq	-488(%rbp), %rax
	addq	%rax, %rdx
	movq	-504(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -584(%rbp)
	movq	-152(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-320(%rbp), %rax
	addq	%rax, %rdx
	movq	-512(%rbp), %rax
	addq	%rax, %rdx
	movq	-520(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -592(%rbp)
	movq	-160(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rax, %rdx
	movq	-328(%rbp), %rax
	addq	%rax, %rdx
	movq	-528(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -600(%rbp)
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-288(%rbp), %rax
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	addq	%rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rax, %rdx
	movq	-536(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -608(%rbp)
	movq	-176(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movq	-296(%rbp), %rax
	addq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	%rax, %rdx
	movq	-384(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -616(%rbp)
	movq	-544(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -552(%rbp)
	movq	$-67108864, %rax
	andq	-624(%rbp), %rax
	subq	%rax, -544(%rbp)
	movq	-576(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -584(%rbp)
	movq	$-67108864, %rax
	andq	-632(%rbp), %rax
	subq	%rax, -576(%rbp)
	movq	-552(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -560(%rbp)
	movq	$-33554432, %rax
	andq	-640(%rbp), %rax
	subq	%rax, -552(%rbp)
	movq	-584(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -592(%rbp)
	movq	$-33554432, %rax
	andq	-648(%rbp), %rax
	subq	%rax, -584(%rbp)
	movq	-560(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -568(%rbp)
	movq	$-67108864, %rax
	andq	-656(%rbp), %rax
	subq	%rax, -560(%rbp)
	movq	-592(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -600(%rbp)
	movq	$-67108864, %rax
	andq	-664(%rbp), %rax
	subq	%rax, -592(%rbp)
	movq	-568(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -576(%rbp)
	movq	$-33554432, %rax
	andq	-672(%rbp), %rax
	subq	%rax, -568(%rbp)
	movq	-600(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -608(%rbp)
	movq	$-33554432, %rax
	andq	-680(%rbp), %rax
	subq	%rax, -600(%rbp)
	movq	-576(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -584(%rbp)
	movq	$-67108864, %rax
	andq	-632(%rbp), %rax
	subq	%rax, -576(%rbp)
	movq	-608(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -616(%rbp)
	movq	$-67108864, %rax
	andq	-688(%rbp), %rax
	subq	%rax, -608(%rbp)
	movq	-616(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	sarq	$25, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, -544(%rbp)
	movq	$-33554432, %rax
	andq	-696(%rbp), %rax
	subq	%rax, -616(%rbp)
	movq	-544(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -552(%rbp)
	movq	$-67108864, %rax
	andq	-624(%rbp), %rax
	subq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movl	%eax, %edx
	movq	-712(%rbp), %rax
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$4, %rax
	movq	-552(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$8, %rax
	movq	-560(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$12, %rax
	movq	-568(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$16, %rax
	movq	-576(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$20, %rax
	movq	-584(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$24, %rax
	movq	-592(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$28, %rax
	movq	-600(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$32, %rax
	movq	-608(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$36, %rax
	movq	-616(%rbp), %rdx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	fe_sq, .-fe_sq
	.type	fe_invert, @function
fe_invert:
.LFB398:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	-208(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-96(%rbp), %rdx
	movq	-208(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-144(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L84
.L85:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L84:
	cmpl	$4, -4(%rbp)
	jle	.L85
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L86
.L87:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L86:
	cmpl	$9, -4(%rbp)
	jle	.L87
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L88
.L89:
	leaq	-192(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L88:
	cmpl	$19, -4(%rbp)
	jle	.L89
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movl	$0, -4(%rbp)
	jmp	.L90
.L91:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L90:
	cmpl	$9, -4(%rbp)
	jle	.L91
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L92
.L93:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L92:
	cmpl	$49, -4(%rbp)
	jle	.L93
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L94
.L95:
	leaq	-192(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L94:
	cmpl	$99, -4(%rbp)
	jle	.L95
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L96
.L97:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L96:
	cmpl	$49, -4(%rbp)
	jle	.L97
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L98
.L99:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L98:
	cmpl	$4, -4(%rbp)
	jle	.L99
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	fe_invert, .-fe_invert
	.type	fe_neg, @function
fe_neg:
.LFB399:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L101
.L102:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	negl	%edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L101:
	cmpl	$9, -4(%rbp)
	jbe	.L102
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	fe_neg, .-fe_neg
	.type	fe_cmov, @function
fe_cmov:
.LFB400:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	negl	-36(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L104
.L105:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	xorl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	addq	$1, -8(%rbp)
.L104:
	cmpq	$9, -8(%rbp)
	jbe	.L105
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE400:
	.size	fe_cmov, .-fe_cmov
	.type	fe_isnonzero, @function
fe_isnonzero:
.LFB401:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_tobytes
	leaq	zero.1(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	fe_isnonzero, .-fe_isnonzero
	.type	fe_isnegative, @function
fe_isnegative:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_tobytes
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	fe_isnegative, .-fe_isnegative
	.type	fe_sq2, @function
fe_sq2:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$600, %rsp
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	-720(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-720(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-720(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-720(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-720(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-720(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-720(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-720(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-720(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-720(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -68(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -72(%rbp)
	movl	-24(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, -76(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-32(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, -84(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-40(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, -92(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-40(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -288(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -296(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -320(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -344(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -360(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -368(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -376(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -384(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -400(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -408(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -416(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -432(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -440(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -456(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-80(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -464(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -472(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -480(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -488(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-84(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -496(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -504(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -520(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -528(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-92(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -536(%rbp)
	movq	-104(%rbp), %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	movq	-352(%rbp), %rax
	addq	%rax, %rdx
	movq	-392(%rbp), %rax
	addq	%rax, %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -544(%rbp)
	movq	-112(%rbp), %rdx
	movq	-312(%rbp), %rax
	addq	%rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rax, %rdx
	movq	-400(%rbp), %rax
	addq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -552(%rbp)
	movq	-120(%rbp), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movq	-408(%rbp), %rax
	addq	%rax, %rdx
	movq	-440(%rbp), %rax
	addq	%rax, %rdx
	movq	-464(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -560(%rbp)
	movq	-128(%rbp), %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-416(%rbp), %rax
	addq	%rax, %rdx
	movq	-448(%rbp), %rax
	addq	%rax, %rdx
	movq	-472(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -568(%rbp)
	movq	-136(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rax, %rdx
	movq	-256(%rbp), %rax
	addq	%rax, %rdx
	movq	-456(%rbp), %rax
	addq	%rax, %rdx
	movq	-480(%rbp), %rax
	addq	%rax, %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -576(%rbp)
	movq	-144(%rbp), %rdx
	movq	-208(%rbp), %rax
	addq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rax, %rdx
	movq	-488(%rbp), %rax
	addq	%rax, %rdx
	movq	-504(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -584(%rbp)
	movq	-152(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-320(%rbp), %rax
	addq	%rax, %rdx
	movq	-512(%rbp), %rax
	addq	%rax, %rdx
	movq	-520(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -592(%rbp)
	movq	-160(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rax, %rdx
	movq	-328(%rbp), %rax
	addq	%rax, %rdx
	movq	-528(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -600(%rbp)
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-288(%rbp), %rax
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	addq	%rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rax, %rdx
	movq	-536(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -608(%rbp)
	movq	-176(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movq	-296(%rbp), %rax
	addq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	%rax, %rdx
	movq	-384(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -616(%rbp)
	salq	-544(%rbp)
	salq	-552(%rbp)
	salq	-560(%rbp)
	salq	-568(%rbp)
	salq	-576(%rbp)
	salq	-584(%rbp)
	salq	-592(%rbp)
	salq	-600(%rbp)
	salq	-608(%rbp)
	salq	-616(%rbp)
	movq	-544(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -552(%rbp)
	movq	$-67108864, %rax
	andq	-624(%rbp), %rax
	subq	%rax, -544(%rbp)
	movq	-576(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -584(%rbp)
	movq	$-67108864, %rax
	andq	-632(%rbp), %rax
	subq	%rax, -576(%rbp)
	movq	-552(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -560(%rbp)
	movq	$-33554432, %rax
	andq	-640(%rbp), %rax
	subq	%rax, -552(%rbp)
	movq	-584(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -592(%rbp)
	movq	$-33554432, %rax
	andq	-648(%rbp), %rax
	subq	%rax, -584(%rbp)
	movq	-560(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -568(%rbp)
	movq	$-67108864, %rax
	andq	-656(%rbp), %rax
	subq	%rax, -560(%rbp)
	movq	-592(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -600(%rbp)
	movq	$-67108864, %rax
	andq	-664(%rbp), %rax
	subq	%rax, -592(%rbp)
	movq	-568(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -576(%rbp)
	movq	$-33554432, %rax
	andq	-672(%rbp), %rax
	subq	%rax, -568(%rbp)
	movq	-600(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	sarq	$25, %rax
	addq	%rax, -608(%rbp)
	movq	$-33554432, %rax
	andq	-680(%rbp), %rax
	subq	%rax, -600(%rbp)
	movq	-576(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -584(%rbp)
	movq	$-67108864, %rax
	andq	-632(%rbp), %rax
	subq	%rax, -576(%rbp)
	movq	-608(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -616(%rbp)
	movq	$-67108864, %rax
	andq	-688(%rbp), %rax
	subq	%rax, -608(%rbp)
	movq	-616(%rbp), %rax
	addq	$16777216, %rax
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	sarq	$25, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, -544(%rbp)
	movq	$-33554432, %rax
	andq	-696(%rbp), %rax
	subq	%rax, -616(%rbp)
	movq	-544(%rbp), %rax
	addq	$33554432, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	sarq	$26, %rax
	addq	%rax, -552(%rbp)
	movq	$-67108864, %rax
	andq	-624(%rbp), %rax
	subq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movl	%eax, %edx
	movq	-712(%rbp), %rax
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$4, %rax
	movq	-552(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$8, %rax
	movq	-560(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$12, %rax
	movq	-568(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$16, %rax
	movq	-576(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$20, %rax
	movq	-584(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$24, %rax
	movq	-592(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$28, %rax
	movq	-600(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$32, %rax
	movq	-608(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-712(%rbp), %rax
	addq	$36, %rax
	movq	-616(%rbp), %rdx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	fe_sq2, .-fe_sq2
	.type	fe_pow22523, @function
fe_pow22523:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L112
.L113:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L112:
	cmpl	$1, -4(%rbp)
	jle	.L113
	leaq	-96(%rbp), %rdx
	movq	-160(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L114
.L115:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L114:
	cmpl	$4, -4(%rbp)
	jle	.L115
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L116
.L117:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L116:
	cmpl	$9, -4(%rbp)
	jle	.L117
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L118
.L119:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L118:
	cmpl	$19, -4(%rbp)
	jle	.L119
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L120
.L121:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L120:
	cmpl	$9, -4(%rbp)
	jle	.L121
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L122
.L123:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L122:
	cmpl	$49, -4(%rbp)
	jle	.L123
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L124
.L125:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L124:
	cmpl	$99, -4(%rbp)
	jle	.L125
	leaq	-96(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L126
.L127:
	leaq	-96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L126:
	cmpl	$49, -4(%rbp)
	jle	.L127
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movl	$1, -4(%rbp)
	jmp	.L128
.L129:
	leaq	-48(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	addl	$1, -4(%rbp)
.L128:
	cmpl	$1, -4(%rbp)
	jle	.L129
	movq	-160(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	fe_pow22523, .-fe_pow22523
	.type	ge_tobytes, @function
ge_tobytes:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_invert
	movq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-160(%rbp), %rax
	leaq	40(%rax), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_tobytes
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	fe_isnegative
	sall	$7, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rax
	addq	$31, %rax
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ge_tobytes, .-ge_tobytes
	.type	ge_p3_tobytes, @function
ge_p3_tobytes:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_invert
	movq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-160(%rbp), %rax
	leaq	40(%rax), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_tobytes
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	fe_isnegative
	sall	$7, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rax
	addq	$31, %rax
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ge_p3_tobytes, .-ge_p3_tobytes
	.section	.rodata
	.align 32
	.type	d, @object
	.size	d, 40
d:
	.long	-10913610
	.long	13857413
	.long	-15372611
	.long	6949391
	.long	114729
	.long	-8787816
	.long	-6275908
	.long	-3247719
	.long	-18696448
	.long	-12055116
	.align 32
	.type	sqrtm1, @object
	.size	sqrtm1, 40
sqrtm1:
	.long	-32595792
	.long	-7943725
	.long	9377950
	.long	3500415
	.long	12389472
	.long	-272473
	.long	-25146209
	.long	-2005654
	.long	326686
	.long	11406482
	.text
	.type	ge_frombytes_vartime, @function
ge_frombytes_vartime:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	-248(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fe_frombytes
	movq	-248(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	fe_1
	movq	-248(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	d(%rip), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-248(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	movq	-248(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-248(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_pow22523
	movq	-248(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-248(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-48(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	fe_isnonzero
	testl	%eax, %eax
	je	.L133
	leaq	-48(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	fe_isnonzero
	testl	%eax, %eax
	je	.L134
	movl	$-1, %eax
	jmp	.L137
.L134:
	movq	-248(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	sqrtm1(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
.L133:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	fe_isnegative
	movl	%eax, %edx
	movq	-256(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L136
	movq	-248(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_neg
.L136:
	movq	-248(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	-248(%rbp), %rcx
	addq	$120, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_mul
	movl	$0, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ge_frombytes_vartime, .-ge_frombytes_vartime
	.type	ge_p2_0, @function
ge_p2_0:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fe_0
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	fe_1
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	fe_1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ge_p2_0, .-ge_p2_0
	.type	ge_p3_0, @function
ge_p3_0:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fe_0
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	fe_1
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	fe_1
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	fe_0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ge_p3_0, .-ge_p3_0
	.type	ge_precomp_0, @function
ge_precomp_0:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fe_1
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	fe_1
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	fe_0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ge_precomp_0, .-ge_precomp_0
	.type	ge_p3_to_p2, @function
ge_p3_to_p2:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_copy
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_copy
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_copy
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ge_p3_to_p2, .-ge_p3_to_p2
	.section	.rodata
	.align 32
	.type	d2, @object
	.size	d2, 40
d2:
	.long	-21827239
	.long	-5839606
	.long	-30745221
	.long	13898782
	.long	229458
	.long	15978800
	.long	-12551817
	.long	-6495438
	.long	29715968
	.long	9444199
	.text
	.type	ge_p3_to_cached, @function
ge_p3_to_cached:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_sub
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_copy
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$120, %rax
	leaq	d2(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ge_p3_to_cached, .-ge_p3_to_cached
	.type	ge_p1p1_to_p2, @function
ge_p1p1_to_p2:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ge_p1p1_to_p2, .-ge_p1p1_to_p2
	.type	ge_p1p1_to_p3, @function
ge_p1p1_to_p3:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$120, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_mul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ge_p1p1_to_p3, .-ge_p1p1_to_p3
	.type	ge_p2_dbl, @function
ge_p2_dbl:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$80, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq2
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$40, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_sq
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	80(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	80(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	80(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ge_p2_dbl, .-ge_p2_dbl
	.type	ge_p3_dbl, @function
ge_p3_dbl:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p3_to_p2
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p2_dbl
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ge_p3_dbl, .-ge_p3_dbl
	.type	ge_madd, @function
ge_madd:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_sub
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$80, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_mul
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-64(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_sub
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ge_madd, .-ge_madd
	.type	ge_msub, @function
ge_msub:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_sub
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$80, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_mul
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_mul
	movq	-64(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_add
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ge_msub, .-ge_msub
	.type	ge_add, @function
ge_add:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_sub
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$80, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_mul
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-64(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-72(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_sub
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ge_add, .-ge_add
	.type	ge_sub, @function
ge_sub:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_sub
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$80, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_mul
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	fe_mul
	movq	-64(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-72(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_sub
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	120(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fe_add
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ge_sub, .-ge_sub
	.type	equal, @function
equal:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movzbl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	movzbl	-24(%rbp), %eax
	movb	%al, -2(%rbp)
	movzbl	-1(%rbp), %eax
	xorb	-2(%rbp), %al
	movb	%al, -3(%rbp)
	movzbl	-3(%rbp), %eax
	movl	%eax, -8(%rbp)
	subl	$1, -8(%rbp)
	shrl	$31, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	equal, .-equal
	.type	cmov, @function
cmov:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	movzbl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_cmov
	movzbl	-20(%rbp), %eax
	movq	-16(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	fe_cmov
	movzbl	-20(%rbp), %eax
	movq	-16(%rbp), %rdx
	leaq	80(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	80(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	fe_cmov
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	cmov, .-cmov
	.section	.rodata
	.align 32
	.type	k25519Precomp, @object
	.size	k25519Precomp, 30720
k25519Precomp:
	.long	25967493
	.long	-14356035
	.long	29566456
	.long	3660896
	.long	-12694345
	.long	4014787
	.long	27544626
	.long	-11754271
	.long	-6079156
	.long	2047605
	.long	-12545711
	.long	934262
	.long	-2722910
	.long	3049990
	.long	-727428
	.long	9406986
	.long	12720692
	.long	5043384
	.long	19500929
	.long	-15469378
	.long	-8738181
	.long	4489570
	.long	9688441
	.long	-14785194
	.long	10184609
	.long	-12363380
	.long	29287919
	.long	11864899
	.long	-24514362
	.long	-4438546
	.long	-12815894
	.long	-12976347
	.long	-21581243
	.long	11784320
	.long	-25355658
	.long	-2750717
	.long	-11717903
	.long	-3814571
	.long	-358445
	.long	-10211303
	.long	-21703237
	.long	6903825
	.long	27185491
	.long	6451973
	.long	-29577724
	.long	-9554005
	.long	-15616551
	.long	11189268
	.long	-26829678
	.long	-5319081
	.long	26966642
	.long	11152617
	.long	32442495
	.long	15396054
	.long	14353839
	.long	-12752335
	.long	-3128826
	.long	-9541118
	.long	-15472047
	.long	-4166697
	.long	15636291
	.long	-9688557
	.long	24204773
	.long	-7912398
	.long	616977
	.long	-16685262
	.long	27787600
	.long	-14772189
	.long	28944400
	.long	-1550024
	.long	16568933
	.long	4717097
	.long	-11556148
	.long	-1102322
	.long	15682896
	.long	-11807043
	.long	16354577
	.long	-11775962
	.long	7689662
	.long	11199574
	.long	30464156
	.long	-5976125
	.long	-11779434
	.long	-15670865
	.long	23220365
	.long	15915852
	.long	7512774
	.long	10017326
	.long	-17749093
	.long	-9920357
	.long	-17036878
	.long	13921892
	.long	10945806
	.long	-6033431
	.long	27105052
	.long	-16084379
	.long	-28926210
	.long	15006023
	.long	3284568
	.long	-6276540
	.long	23599295
	.long	-8306047
	.long	-11193664
	.long	-7687416
	.long	13236774
	.long	10506355
	.long	7464579
	.long	9656445
	.long	13059162
	.long	10374397
	.long	7798556
	.long	16710257
	.long	3033922
	.long	2874086
	.long	28997861
	.long	2835604
	.long	32406664
	.long	-3839045
	.long	-641708
	.long	-101325
	.long	10861363
	.long	11473154
	.long	27284546
	.long	1981175
	.long	-30064349
	.long	12577861
	.long	32867885
	.long	14515107
	.long	-15438304
	.long	10819380
	.long	4708026
	.long	6336745
	.long	20377586
	.long	9066809
	.long	-11272109
	.long	6594696
	.long	-25653668
	.long	12483688
	.long	-12668491
	.long	5581306
	.long	19563160
	.long	16186464
	.long	-29386857
	.long	4097519
	.long	10237984
	.long	-4348115
	.long	28542350
	.long	13850243
	.long	-23678021
	.long	-15815942
	.long	-15371964
	.long	-12862754
	.long	32573250
	.long	4720197
	.long	-26436522
	.long	5875511
	.long	-19188627
	.long	-15224819
	.long	-9818940
	.long	-12085777
	.long	-8549212
	.long	109983
	.long	15149363
	.long	2178705
	.long	22900618
	.long	4543417
	.long	3044240
	.long	-15689887
	.long	1762328
	.long	14866737
	.long	-18199695
	.long	-15951423
	.long	-10473290
	.long	1707278
	.long	-17185920
	.long	3916101
	.long	-28236412
	.long	3959421
	.long	27914454
	.long	4383652
	.long	5153746
	.long	9909285
	.long	1723747
	.long	-2777874
	.long	30523605
	.long	5516873
	.long	19480852
	.long	5230134
	.long	-23952439
	.long	-15175766
	.long	-30269007
	.long	-3463509
	.long	7665486
	.long	10083793
	.long	28475525
	.long	1649722
	.long	20654025
	.long	16520125
	.long	30598449
	.long	7715701
	.long	28881845
	.long	14381568
	.long	9657904
	.long	3680757
	.long	-20181635
	.long	7843316
	.long	-31400660
	.long	1370708
	.long	29794553
	.long	-1409300
	.long	14499471
	.long	-2729599
	.long	-33191113
	.long	-4254652
	.long	28494862
	.long	14271267
	.long	30290735
	.long	10876454
	.long	-33154098
	.long	2381726
	.long	-7195431
	.long	-2655363
	.long	-14730155
	.long	462251
	.long	-27724326
	.long	3941372
	.long	-6236617
	.long	3696005
	.long	-32300832
	.long	15351955
	.long	27431194
	.long	8222322
	.long	16448760
	.long	-3907995
	.long	-18707002
	.long	11938355
	.long	-32961401
	.long	-2970515
	.long	29551813
	.long	10109425
	.long	-13657040
	.long	-13155431
	.long	-31283750
	.long	11777098
	.long	21447386
	.long	6519384
	.long	-2378284
	.long	-1627556
	.long	10092783
	.long	-4764171
	.long	27939166
	.long	14210322
	.long	4677035
	.long	16277044
	.long	-22964462
	.long	-12398139
	.long	-32508754
	.long	12005538
	.long	-17810127
	.long	12803510
	.long	17228999
	.long	-15661624
	.long	-1233527
	.long	300140
	.long	-1224870
	.long	-11714777
	.long	30364213
	.long	-9038194
	.long	18016357
	.long	4397660
	.long	-10958843
	.long	-7690207
	.long	4776341
	.long	-14954238
	.long	27850028
	.long	-15602212
	.long	-26619106
	.long	14544525
	.long	-17477504
	.long	982639
	.long	29253598
	.long	15796703
	.long	-2863982
	.long	-9908884
	.long	10057023
	.long	3163536
	.long	7332899
	.long	-4120128
	.long	-21047696
	.long	9934963
	.long	5793303
	.long	16271923
	.long	-24131614
	.long	-10116404
	.long	29188560
	.long	1206517
	.long	-14747930
	.long	4559895
	.long	-30123922
	.long	-10897950
	.long	-27643952
	.long	-11493006
	.long	16282657
	.long	-11036493
	.long	28414021
	.long	-15012264
	.long	24191034
	.long	4541697
	.long	-13338309
	.long	5500568
	.long	12650548
	.long	-1497113
	.long	9052871
	.long	11355358
	.long	-17680037
	.long	-8400164
	.long	-17430592
	.long	12264343
	.long	10874051
	.long	13524335
	.long	25556948
	.long	-3045990
	.long	714651
	.long	2510400
	.long	23394682
	.long	-10415330
	.long	33119038
	.long	5080568
	.long	-22528059
	.long	5376628
	.long	-26088264
	.long	-4011052
	.long	-17013699
	.long	-3537628
	.long	-6726793
	.long	1920897
	.long	-22321305
	.long	-9447443
	.long	4535768
	.long	1569007
	.long	-2255422
	.long	14606630
	.long	-21692440
	.long	-8039818
	.long	28430649
	.long	8775819
	.long	-30494562
	.long	3044290
	.long	31848280
	.long	12543772
	.long	-22028579
	.long	2943893
	.long	-31857513
	.long	6777306
	.long	13784462
	.long	-4292203
	.long	-27377195
	.long	-2062731
	.long	7718482
	.long	14474653
	.long	2385315
	.long	2454213
	.long	-22631320
	.long	46603
	.long	-4437935
	.long	-15680415
	.long	656965
	.long	-7236665
	.long	24316168
	.long	-5253567
	.long	13741529
	.long	10911568
	.long	-33233417
	.long	-8603737
	.long	-20177830
	.long	-1033297
	.long	33040651
	.long	-13424532
	.long	-20729456
	.long	8321686
	.long	21060490
	.long	-2212744
	.long	15712757
	.long	-4336099
	.long	1639040
	.long	10656336
	.long	23845965
	.long	-11874838
	.long	-9984458
	.long	608372
	.long	-13672732
	.long	-15087586
	.long	-10889693
	.long	-7557059
	.long	-6036909
	.long	11305547
	.long	1123968
	.long	-6780577
	.long	27229399
	.long	23887
	.long	-23244140
	.long	-294205
	.long	-11744728
	.long	14712571
	.long	-29465699
	.long	-2029617
	.long	12797024
	.long	-6440308
	.long	-1633405
	.long	16678954
	.long	-29500620
	.long	4770662
	.long	-16054387
	.long	14001338
	.long	7830047
	.long	9564805
	.long	-1508144
	.long	-4795045
	.long	-17169265
	.long	4904953
	.long	24059557
	.long	14617003
	.long	19037157
	.long	-15039908
	.long	19766093
	.long	-14906429
	.long	5169211
	.long	16191880
	.long	2128236
	.long	-4326833
	.long	-16981152
	.long	4124966
	.long	-8540610
	.long	-10653797
	.long	30336522
	.long	-14105247
	.long	-29806336
	.long	916033
	.long	-6882542
	.long	-2986532
	.long	-22630907
	.long	12419372
	.long	-7134229
	.long	-7473371
	.long	-16478904
	.long	16739175
	.long	285431
	.long	2763829
	.long	15736322
	.long	4143876
	.long	2379352
	.long	11839345
	.long	-4110402
	.long	-5988665
	.long	11274298
	.long	794957
	.long	212801
	.long	-14594663
	.long	23527084
	.long	-16458268
	.long	33431127
	.long	-11130478
	.long	-17838966
	.long	-15626900
	.long	8909499
	.long	8376530
	.long	-32625340
	.long	4087881
	.long	-15188911
	.long	-14416214
	.long	1767683
	.long	7197987
	.long	-13205226
	.long	-2022635
	.long	-13091350
	.long	448826
	.long	5799055
	.long	4357868
	.long	-4774191
	.long	-16323038
	.long	6721966
	.long	13833823
	.long	-23523388
	.long	-1551314
	.long	26354293
	.long	-11863321
	.long	23365147
	.long	-3949732
	.long	7390890
	.long	2759800
	.long	4409041
	.long	2052381
	.long	23373853
	.long	10530217
	.long	7676779
	.long	-12885954
	.long	21302353
	.long	-4264057
	.long	1244380
	.long	-12919645
	.long	-4421239
	.long	7169619
	.long	4982368
	.long	-2957590
	.long	30256825
	.long	-2777540
	.long	14086413
	.long	9208236
	.long	15886429
	.long	16489664
	.long	1996075
	.long	10375649
	.long	14346367
	.long	13311202
	.long	-6874135
	.long	-16438411
	.long	-13693198
	.long	398369
	.long	-30606455
	.long	-712933
	.long	-25307465
	.long	9795880
	.long	-2777414
	.long	14878809
	.long	-33531835
	.long	14780363
	.long	13348553
	.long	12076947
	.long	-30836462
	.long	5113182
	.long	-17770784
	.long	11797796
	.long	31950843
	.long	13929123
	.long	-25888302
	.long	12288344
	.long	-30341101
	.long	-7336386
	.long	13847711
	.long	5387222
	.long	-18582163
	.long	-3416217
	.long	17824843
	.long	-2340966
	.long	22744343
	.long	-10442611
	.long	8763061
	.long	3617786
	.long	-19600662
	.long	10370991
	.long	20246567
	.long	-14369378
	.long	22358229
	.long	-543712
	.long	18507283
	.long	-10413996
	.long	14554437
	.long	-8746092
	.long	32232924
	.long	16763880
	.long	9648505
	.long	10094563
	.long	26416693
	.long	14745928
	.long	-30374318
	.long	-6472621
	.long	11094161
	.long	15689506
	.long	3140038
	.long	-16510092
	.long	-16160072
	.long	5472695
	.long	31895588
	.long	4744994
	.long	8823515
	.long	10365685
	.long	-27224800
	.long	9448613
	.long	-28774454
	.long	366295
	.long	19153450
	.long	11523972
	.long	-11096490
	.long	-6503142
	.long	-24647631
	.long	5420647
	.long	28344573
	.long	8041113
	.long	719605
	.long	11671788
	.long	8678025
	.long	2694440
	.long	-6808014
	.long	2517372
	.long	4964326
	.long	11152271
	.long	-15432916
	.long	-15266516
	.long	27000813
	.long	-10195553
	.long	-15157904
	.long	7134312
	.long	8639287
	.long	-2814877
	.long	-7235688
	.long	10421742
	.long	564065
	.long	5336097
	.long	6750977
	.long	-14521026
	.long	11836410
	.long	-3979488
	.long	26297894
	.long	16080799
	.long	23455045
	.long	15735944
	.long	1695823
	.long	-8819122
	.long	8169720
	.long	16220347
	.long	-18115838
	.long	8653647
	.long	17578566
	.long	-6092619
	.long	-8025777
	.long	-16012763
	.long	-11144307
	.long	-2627664
	.long	-5990708
	.long	-14166033
	.long	-23308498
	.long	-10968312
	.long	15213228
	.long	-10081214
	.long	-30853605
	.long	-11050004
	.long	27884329
	.long	2847284
	.long	2655861
	.long	1738395
	.long	-27537433
	.long	-14253021
	.long	-25336301
	.long	-8002780
	.long	-9370762
	.long	8129821
	.long	21651608
	.long	-3239336
	.long	-19087449
	.long	-11005278
	.long	1533110
	.long	3437855
	.long	23735889
	.long	459276
	.long	29970501
	.long	11335377
	.long	26030092
	.long	5821408
	.long	10478196
	.long	8544890
	.long	32173121
	.long	-16129311
	.long	24896207
	.long	3921497
	.long	22579056
	.long	-3410854
	.long	19270449
	.long	12217473
	.long	17789017
	.long	-3395995
	.long	-30552961
	.long	-2228401
	.long	-15578829
	.long	-10147201
	.long	13243889
	.long	517024
	.long	15479401
	.long	-3853233
	.long	30460520
	.long	1052596
	.long	-11614875
	.long	13323618
	.long	32618793
	.long	8175907
	.long	-15230173
	.long	12596687
	.long	27491595
	.long	-4612359
	.long	3179268
	.long	-9478891
	.long	31947069
	.long	-14366651
	.long	-4640583
	.long	-15339921
	.long	-15125977
	.long	-6039709
	.long	-14756777
	.long	-16411740
	.long	19072640
	.long	-9511060
	.long	11685058
	.long	11822410
	.long	3158003
	.long	-13952594
	.long	33402194
	.long	-4165066
	.long	5977896
	.long	-5215017
	.long	473099
	.long	5040608
	.long	-20290863
	.long	8198642
	.long	-27410132
	.long	11602123
	.long	1290375
	.long	-2799760
	.long	28326862
	.long	1721092
	.long	-19558642
	.long	-3131606
	.long	7881532
	.long	10687937
	.long	7578723
	.long	7738378
	.long	-18951012
	.long	-2553952
	.long	21820786
	.long	8076149
	.long	-27868496
	.long	11538389
	.long	-19935666
	.long	3899861
	.long	18283497
	.long	-6801568
	.long	-15728660
	.long	-11249211
	.long	8754525
	.long	7446702
	.long	-5676054
	.long	5797016
	.long	-11295600
	.long	-3793569
	.long	-15782110
	.long	-7964573
	.long	12708869
	.long	-8456199
	.long	2014099
	.long	-9050574
	.long	-2369172
	.long	-5877341
	.long	-22472376
	.long	-11568741
	.long	-27682020
	.long	1146375
	.long	18956691
	.long	16640559
	.long	1192730
	.long	-3714199
	.long	15123619
	.long	10811505
	.long	14352098
	.long	-3419715
	.long	-18942044
	.long	10822655
	.long	32750596
	.long	4699007
	.long	-70363
	.long	15776356
	.long	-28886779
	.long	-11974553
	.long	-28241164
	.long	-8072475
	.long	-4978962
	.long	-5315317
	.long	29416931
	.long	1847569
	.long	-20654173
	.long	-16484855
	.long	4714547
	.long	-9600655
	.long	15200332
	.long	8368572
	.long	19679101
	.long	15970074
	.long	-31872674
	.long	1959451
	.long	24611599
	.long	-4543832
	.long	-11745876
	.long	12340220
	.long	12876937
	.long	-10480056
	.long	33134381
	.long	6590940
	.long	-6307776
	.long	14872440
	.long	9613953
	.long	8241152
	.long	15370987
	.long	9608631
	.long	-4143277
	.long	-12014408
	.long	8446281
	.long	-391603
	.long	4407738
	.long	13629032
	.long	-7724868
	.long	15866074
	.long	-28210621
	.long	-8814099
	.long	26660628
	.long	-15677655
	.long	8393734
	.long	358047
	.long	-7401291
	.long	992988
	.long	-23904233
	.long	858697
	.long	20571223
	.long	8420556
	.long	14620715
	.long	13067227
	.long	-15447274
	.long	8264467
	.long	14106269
	.long	15080814
	.long	33531827
	.long	12516406
	.long	-21574435
	.long	-12476749
	.long	236881
	.long	10476226
	.long	57258
	.long	-14677024
	.long	6472998
	.long	2466984
	.long	17258519
	.long	7256740
	.long	8791136
	.long	15069930
	.long	1276410
	.long	-9371918
	.long	22949635
	.long	-16322807
	.long	-23493039
	.long	-5702186
	.long	14711875
	.long	4874229
	.long	-30663140
	.long	-2331391
	.long	5855666
	.long	4990204
	.long	-13711848
	.long	7294284
	.long	-7804282
	.long	1924647
	.long	-1423175
	.long	-7912378
	.long	-33069337
	.long	9234253
	.long	20590503
	.long	-9018988
	.long	31529744
	.long	-7352666
	.long	-2706834
	.long	10650548
	.long	31559055
	.long	-11609587
	.long	18979186
	.long	13396066
	.long	24474287
	.long	4968103
	.long	22267082
	.long	4407354
	.long	24063882
	.long	-8325180
	.long	-18816887
	.long	13594782
	.long	33514650
	.long	7021958
	.long	-11566906
	.long	-6565505
	.long	-21365085
	.long	15928892
	.long	-26158305
	.long	4315421
	.long	-25948728
	.long	-3916677
	.long	-21480480
	.long	12868082
	.long	-28635013
	.long	13504661
	.long	19988037
	.long	-2132761
	.long	21078225
	.long	6443208
	.long	-21446107
	.long	2244500
	.long	-12455797
	.long	-8089383
	.long	-30595528
	.long	13793479
	.long	-5852820
	.long	319136
	.long	-25723172
	.long	-6263899
	.long	33086546
	.long	8957937
	.long	-15233648
	.long	5540521
	.long	-11630176
	.long	-11503902
	.long	-8119500
	.long	-7643073
	.long	2620056
	.long	1022908
	.long	-23710744
	.long	-1568984
	.long	-16128528
	.long	-14962807
	.long	23152971
	.long	775386
	.long	27395463
	.long	14006635
	.long	-9701118
	.long	4649512
	.long	1689819
	.long	892185
	.long	-11513277
	.long	-15205948
	.long	9770129
	.long	9586738
	.long	26496094
	.long	4324120
	.long	1556511
	.long	-3550024
	.long	27453819
	.long	4763127
	.long	-19179614
	.long	5867134
	.long	-32765025
	.long	1927590
	.long	31726409
	.long	-4753295
	.long	23962434
	.long	-16019500
	.long	27846559
	.long	5931263
	.long	-29749703
	.long	-16108455
	.long	27461885
	.long	-2977536
	.long	22380810
	.long	1815854
	.long	-23033753
	.long	-3031938
	.long	7283490
	.long	-15148073
	.long	-19526700
	.long	7734629
	.long	-8010264
	.long	-9590817
	.long	-11120403
	.long	6196038
	.long	29344158
	.long	-13430885
	.long	7585295
	.long	-3176626
	.long	18549497
	.long	15302069
	.long	-32658337
	.long	-6171222
	.long	-7672793
	.long	-11051681
	.long	6258878
	.long	13504381
	.long	10458790
	.long	-6418461
	.long	-8872242
	.long	8424746
	.long	24687205
	.long	8613276
	.long	-30667046
	.long	-3233545
	.long	1863892
	.long	-1830544
	.long	19206234
	.long	7134917
	.long	-11284482
	.long	-828919
	.long	11334899
	.long	-9218022
	.long	8025293
	.long	12707519
	.long	17523892
	.long	-10476071
	.long	10243738
	.long	-14685461
	.long	-5066034
	.long	16498837
	.long	8911542
	.long	6887158
	.long	-9584260
	.long	-6958590
	.long	11145641
	.long	-9543680
	.long	17303925
	.long	-14124238
	.long	6536641
	.long	10543906
	.long	-28946384
	.long	15479763
	.long	-17466835
	.long	568876
	.long	-1497683
	.long	11223454
	.long	-2669190
	.long	-16625574
	.long	-27235709
	.long	8876771
	.long	-25742899
	.long	-12566864
	.long	-15649966
	.long	-846607
	.long	-33026686
	.long	-796288
	.long	-33481822
	.long	15824474
	.long	-604426
	.long	-9039817
	.long	10330056
	.long	70051
	.long	7957388
	.long	-9002667
	.long	9764902
	.long	15609756
	.long	27698697
	.long	-4890037
	.long	1657394
	.long	3084098
	.long	10477963
	.long	-7470260
	.long	12119566
	.long	-13250805
	.long	29016247
	.long	-5365589
	.long	31280319
	.long	14396151
	.long	-30233575
	.long	15272409
	.long	-12288309
	.long	3169463
	.long	28813183
	.long	16658753
	.long	25116432
	.long	-5630466
	.long	-25173957
	.long	-12636138
	.long	-25014757
	.long	1950504
	.long	-26180358
	.long	9489187
	.long	11053416
	.long	-14746161
	.long	-31053720
	.long	5825630
	.long	-8384306
	.long	-8767532
	.long	15341279
	.long	8373727
	.long	28685821
	.long	7759505
	.long	-14378516
	.long	-12002860
	.long	-31971820
	.long	4079242
	.long	298136
	.long	-10232602
	.long	-2878207
	.long	15190420
	.long	-32932876
	.long	13806336
	.long	-14337485
	.long	-15794431
	.long	-24004620
	.long	10940928
	.long	8669718
	.long	2742393
	.long	-26033313
	.long	-6875003
	.long	-1580388
	.long	-11729417
	.long	-25979658
	.long	-11445023
	.long	-17411874
	.long	-10912854
	.long	9291594
	.long	-16247779
	.long	-12154742
	.long	6048605
	.long	-30305315
	.long	14843444
	.long	1539301
	.long	11864366
	.long	20201677
	.long	1900163
	.long	13934231
	.long	5128323
	.long	11213262
	.long	9168384
	.long	-26280513
	.long	11007847
	.long	19408960
	.long	-940758
	.long	-18592965
	.long	-4328580
	.long	-5088060
	.long	-11105150
	.long	20470157
	.long	-16398701
	.long	-23136053
	.long	9282192
	.long	14855179
	.long	-15390078
	.long	-7362815
	.long	-14408560
	.long	-22783952
	.long	14461608
	.long	14042978
	.long	5230683
	.long	29969567
	.long	-2741594
	.long	-16711867
	.long	-8552442
	.long	9175486
	.long	-2468974
	.long	21556951
	.long	3506042
	.long	-5933891
	.long	-12449708
	.long	-3144746
	.long	8744661
	.long	19704003
	.long	4581278
	.long	-20430686
	.long	6830683
	.long	-21284170
	.long	8971513
	.long	-28539189
	.long	15326563
	.long	-19464629
	.long	10110288
	.long	-17262528
	.long	-3503892
	.long	-23500387
	.long	1355669
	.long	-15523050
	.long	15300988
	.long	-20514118
	.long	9168260
	.long	-5353335
	.long	4488613
	.long	-23803248
	.long	16314347
	.long	7780487
	.long	-15638939
	.long	-28948358
	.long	9601605
	.long	33087103
	.long	-9011387
	.long	-19443170
	.long	-15512900
	.long	-20797467
	.long	-12445323
	.long	-29824447
	.long	10229461
	.long	-27444329
	.long	-15000531
	.long	-5996870
	.long	15664672
	.long	23294591
	.long	-16632613
	.long	-22650781
	.long	-8470978
	.long	27844204
	.long	11461195
	.long	13099750
	.long	-2460356
	.long	18151676
	.long	13417686
	.long	-24722913
	.long	-4176517
	.long	-31150679
	.long	5988919
	.long	-26858785
	.long	6685065
	.long	1661597
	.long	-12551441
	.long	15271676
	.long	-15452665
	.long	11433042
	.long	-13228665
	.long	8239631
	.long	-5279517
	.long	-1985436
	.long	-725718
	.long	-18698764
	.long	2167544
	.long	-6921301
	.long	-13440182
	.long	-31436171
	.long	15575146
	.long	30436815
	.long	12192228
	.long	-22463353
	.long	9395379
	.long	-9917708
	.long	-8638997
	.long	12215110
	.long	12028277
	.long	14098400
	.long	6555944
	.long	23007258
	.long	5757252
	.long	-15427832
	.long	-12950502
	.long	30123440
	.long	4617780
	.long	-16900089
	.long	-655628
	.long	-4026201
	.long	-15240835
	.long	11893168
	.long	13718664
	.long	-14809462
	.long	1847385
	.long	-15819999
	.long	10154009
	.long	23973261
	.long	-12684474
	.long	-26531820
	.long	-3695990
	.long	-1908898
	.long	2534301
	.long	-31870557
	.long	-16550355
	.long	18341390
	.long	-11419951
	.long	32013174
	.long	-10103539
	.long	-25479301
	.long	10876443
	.long	-11771086
	.long	-14625140
	.long	-12369567
	.long	1838104
	.long	21911214
	.long	6354752
	.long	4425632
	.long	-837822
	.long	-10433389
	.long	-14612966
	.long	22229858
	.long	-3091047
	.long	-13191166
	.long	776729
	.long	-17415375
	.long	-12020462
	.long	4725005
	.long	14044970
	.long	19268650
	.long	-7304421
	.long	1555349
	.long	8692754
	.long	-21474059
	.long	-9910664
	.long	6347390
	.long	-1411784
	.long	-19522291
	.long	-16109756
	.long	-24864089
	.long	12986008
	.long	-10898878
	.long	-5558584
	.long	-11312371
	.long	-148526
	.long	19541418
	.long	8180106
	.long	9282262
	.long	10282508
	.long	-26205082
	.long	4428547
	.long	-8661196
	.long	-13194263
	.long	4098402
	.long	-14165257
	.long	15522535
	.long	8372215
	.long	5542595
	.long	-10702683
	.long	-10562541
	.long	14895633
	.long	26814552
	.long	-16673850
	.long	-17480754
	.long	-2489360
	.long	-2781891
	.long	6993761
	.long	-18093885
	.long	10114655
	.long	-20107055
	.long	-929418
	.long	31422704
	.long	10427861
	.long	-7110749
	.long	6150669
	.long	-29091755
	.long	-11529146
	.long	25953725
	.long	-106158
	.long	-4234397
	.long	-8039292
	.long	-9119125
	.long	3046000
	.long	2101609
	.long	-12607294
	.long	19390020
	.long	6094296
	.long	-3315279
	.long	12831125
	.long	-15998678
	.long	7578152
	.long	5310217
	.long	14408357
	.long	-33548620
	.long	-224739
	.long	31575954
	.long	6326196
	.long	7381791
	.long	-2421839
	.long	-20902779
	.long	3296811
	.long	24736065
	.long	-16328389
	.long	18374254
	.long	7318640
	.long	6295303
	.long	8082724
	.long	-15362489
	.long	12339664
	.long	27724736
	.long	2291157
	.long	6088201
	.long	-14184798
	.long	1792727
	.long	5857634
	.long	13848414
	.long	15768922
	.long	25091167
	.long	14856294
	.long	-18866652
	.long	8331043
	.long	24373479
	.long	8541013
	.long	-701998
	.long	-9269457
	.long	12927300
	.long	-12695493
	.long	-22182473
	.long	-9012899
	.long	-11423429
	.long	-5421590
	.long	11632845
	.long	3405020
	.long	30536730
	.long	-11674039
	.long	-27260765
	.long	13866390
	.long	30146206
	.long	9142070
	.long	3924129
	.long	-15307516
	.long	-13817122
	.long	-10054960
	.long	12291820
	.long	-668366
	.long	-27702774
	.long	9326384
	.long	-8237858
	.long	4171294
	.long	-15921940
	.long	16037937
	.long	6713787
	.long	16606682
	.long	-21612135
	.long	2790944
	.long	26396185
	.long	3731949
	.long	345228
	.long	-5462949
	.long	-21327538
	.long	13448259
	.long	25284571
	.long	1143661
	.long	20614966
	.long	-8849387
	.long	2031539
	.long	-12391231
	.long	-16253183
	.long	-13582083
	.long	31016211
	.long	-16722429
	.long	26371392
	.long	-14451233
	.long	-5027349
	.long	14854137
	.long	17477601
	.long	3842657
	.long	28012650
	.long	-16405420
	.long	-5075835
	.long	9368966
	.long	-8562079
	.long	-4600902
	.long	-15249953
	.long	6970560
	.long	-9189873
	.long	16292057
	.long	-8867157
	.long	3507940
	.long	29439664
	.long	3537914
	.long	23333589
	.long	6997794
	.long	-17555561
	.long	-11018068
	.long	-15209202
	.long	-15051267
	.long	-9164929
	.long	6580396
	.long	-12185861
	.long	-7679788
	.long	16438269
	.long	10826160
	.long	-8696817
	.long	-6235611
	.long	17860444
	.long	-9273846
	.long	-2095802
	.long	9304567
	.long	20714564
	.long	-4336911
	.long	29088195
	.long	7406487
	.long	11426967
	.long	-5095705
	.long	14792667
	.long	-14608617
	.long	5289421
	.long	-477127
	.long	-16665533
	.long	-10650790
	.long	-6160345
	.long	-13305760
	.long	9192020
	.long	-1802462
	.long	17271490
	.long	12349094
	.long	26939669
	.long	-3752294
	.long	-12889898
	.long	9373458
	.long	31595848
	.long	16374215
	.long	21471720
	.long	13221525
	.long	-27283495
	.long	-12348559
	.long	-3698806
	.long	117887
	.long	22263325
	.long	-6560050
	.long	3984570
	.long	-11174646
	.long	-15114008
	.long	-566785
	.long	28311253
	.long	5358056
	.long	-23319780
	.long	541964
	.long	16259219
	.long	3261970
	.long	2309254
	.long	-15534474
	.long	-16885711
	.long	-4581916
	.long	24134070
	.long	-16705829
	.long	-13337066
	.long	-13552195
	.long	9378160
	.long	-13140186
	.long	-22845982
	.long	-12745264
	.long	28198281
	.long	-7244098
	.long	-2399684
	.long	-717351
	.long	690426
	.long	14876244
	.long	24977353
	.long	-314384
	.long	-8223969
	.long	-13465086
	.long	28432343
	.long	-1176353
	.long	-13068804
	.long	-12297348
	.long	-22380984
	.long	6618999
	.long	-1538174
	.long	11685646
	.long	12944378
	.long	13682314
	.long	-24389511
	.long	-14413193
	.long	8044829
	.long	-13817328
	.long	32239829
	.long	-5652762
	.long	-18603066
	.long	4762990
	.long	-926250
	.long	8885304
	.long	-28412480
	.long	-3187315
	.long	9781647
	.long	-10350059
	.long	32779359
	.long	5095274
	.long	-33008130
	.long	-5214506
	.long	-32264887
	.long	-3685216
	.long	9460461
	.long	-9327423
	.long	-24601656
	.long	14506724
	.long	21639561
	.long	-2630236
	.long	-16400943
	.long	-13112215
	.long	25239338
	.long	15531969
	.long	3987758
	.long	-4499318
	.long	-1289502
	.long	-6863535
	.long	17874574
	.long	558605
	.long	-13600129
	.long	10240081
	.long	9171883
	.long	16131053
	.long	-20869254
	.long	9599700
	.long	33499487
	.long	5080151
	.long	2085892
	.long	5119761
	.long	-22205145
	.long	-2519528
	.long	-16381601
	.long	414691
	.long	-25019550
	.long	2170430
	.long	30634760
	.long	-8363614
	.long	-31999993
	.long	-5759884
	.long	-6845704
	.long	15791202
	.long	8550074
	.long	-1312654
	.long	29928809
	.long	-12092256
	.long	27534430
	.long	-7192145
	.long	-22351378
	.long	12961482
	.long	-24492060
	.long	-9570771
	.long	10368194
	.long	11582341
	.long	-23397293
	.long	-2245287
	.long	16533930
	.long	8206996
	.long	-30194652
	.long	-5159638
	.long	-11121496
	.long	-3382234
	.long	2307366
	.long	6362031
	.long	-135455
	.long	8868177
	.long	-16835630
	.long	7031275
	.long	7589640
	.long	8945490
	.long	-32152748
	.long	8917967
	.long	6661220
	.long	-11677616
	.long	-1192060
	.long	-15793393
	.long	7251489
	.long	-11182180
	.long	24099109
	.long	-14456170
	.long	5019558
	.long	-7907470
	.long	4244127
	.long	-14714356
	.long	-26933272
	.long	6453165
	.long	-19118182
	.long	-13289025
	.long	-6231896
	.long	-10280736
	.long	10853594
	.long	10721687
	.long	26480089
	.long	5861829
	.long	-22995819
	.long	1972175
	.long	-1866647
	.long	-10557898
	.long	-3363451
	.long	-6441124
	.long	-17002408
	.long	5906790
	.long	221599
	.long	-6563147
	.long	7828208
	.long	-13248918
	.long	24362661
	.long	-2008168
	.long	-13866408
	.long	7421392
	.long	8139927
	.long	-6546497
	.long	32257646
	.long	-5890546
	.long	30375719
	.long	1886181
	.long	-21175108
	.long	15441252
	.long	28826358
	.long	-4123029
	.long	6267086
	.long	9695052
	.long	7709135
	.long	-16603597
	.long	-32869068
	.long	-1886135
	.long	14795160
	.long	-7840124
	.long	13746021
	.long	-1742048
	.long	28584902
	.long	7787108
	.long	-6732942
	.long	-15050729
	.long	22846041
	.long	-7571236
	.long	-3181936
	.long	-363524
	.long	4771362
	.long	-8419958
	.long	24949256
	.long	6376279
	.long	-27466481
	.long	-8174608
	.long	-18646154
	.long	-9930606
	.long	33543569
	.long	-12141695
	.long	3569627
	.long	11342593
	.long	26514989
	.long	4740088
	.long	27912651
	.long	3697550
	.long	19331575
	.long	-11472339
	.long	6809886
	.long	4608608
	.long	7325975
	.long	-14801071
	.long	-11618399
	.long	-14554430
	.long	-24321212
	.long	7655128
	.long	-1369274
	.long	5214312
	.long	-27400540
	.long	10258390
	.long	-17646694
	.long	-8186692
	.long	11431204
	.long	15823007
	.long	26570245
	.long	14329124
	.long	18029990
	.long	4796082
	.long	-31446179
	.long	15580664
	.long	9280358
	.long	-3973687
	.long	-160783
	.long	-10326257
	.long	-22855316
	.long	-4304997
	.long	-20861367
	.long	-13621002
	.long	-32810901
	.long	-11181622
	.long	-15545091
	.long	4387441
	.long	-20799378
	.long	12194512
	.long	3937617
	.long	-5805892
	.long	-27154820
	.long	9340370
	.long	-24513992
	.long	8548137
	.long	20617071
	.long	-7482001
	.long	-938825
	.long	-3930586
	.long	-8714311
	.long	16124718
	.long	24603125
	.long	-6225393
	.long	-13775352
	.long	-11875822
	.long	24345683
	.long	10325460
	.long	-19855277
	.long	-1568885
	.long	-22202708
	.long	8714034
	.long	14007766
	.long	6928528
	.long	16318175
	.long	-1010689
	.long	4766743
	.long	3552007
	.long	-21751364
	.long	-16730916
	.long	1351763
	.long	-803421
	.long	-4009670
	.long	3950935
	.long	3217514
	.long	14481909
	.long	10988822
	.long	-3994762
	.long	15564307
	.long	-14311570
	.long	3101243
	.long	5684148
	.long	30446780
	.long	-8051356
	.long	12677127
	.long	-6505343
	.long	-8295852
	.long	13296005
	.long	-9442290
	.long	6624296
	.long	-30298964
	.long	-11913677
	.long	-4670981
	.long	-2057379
	.long	31521204
	.long	9614054
	.long	-30000824
	.long	12074674
	.long	4771191
	.long	-135239
	.long	14290749
	.long	-13089852
	.long	27992298
	.long	14998318
	.long	-1413936
	.long	-1556716
	.long	29832613
	.long	-16391035
	.long	7064884
	.long	-7541174
	.long	-19161962
	.long	-5067537
	.long	-18891269
	.long	-2912736
	.long	25825242
	.long	5293297
	.long	-27122660
	.long	13101590
	.long	-2298563
	.long	2439670
	.long	-7466610
	.long	1719965
	.long	-27267541
	.long	-16328445
	.long	32512469
	.long	-5317593
	.long	-30356070
	.long	-4190957
	.long	-30006540
	.long	10162316
	.long	-33180176
	.long	3981723
	.long	-16482138
	.long	-13070044
	.long	14413974
	.long	9515896
	.long	19568978
	.long	9628812
	.long	33053803
	.long	199357
	.long	15894591
	.long	1583059
	.long	27380243
	.long	-4580435
	.long	-17838894
	.long	-6106839
	.long	-6291786
	.long	3437740
	.long	-18978877
	.long	3884493
	.long	19469877
	.long	12726490
	.long	15913552
	.long	13614290
	.long	-22961733
	.long	70104
	.long	7463304
	.long	4176122
	.long	-27124001
	.long	10659917
	.long	11482427
	.long	-16070381
	.long	12771467
	.long	-6635117
	.long	-32719404
	.long	-5322751
	.long	24216882
	.long	5944158
	.long	8894125
	.long	7450974
	.long	-2664149
	.long	-9765752
	.long	-28080517
	.long	-12389115
	.long	19345746
	.long	14680796
	.long	11632993
	.long	5847885
	.long	26942781
	.long	-2315317
	.long	9129564
	.long	-4906607
	.long	26024105
	.long	11769399
	.long	-11518837
	.long	6367194
	.long	-9727230
	.long	4782140
	.long	19916461
	.long	-4828410
	.long	-22910704
	.long	-11414391
	.long	25606324
	.long	-5972441
	.long	33253853
	.long	8220911
	.long	6358847
	.long	-1873857
	.long	801428
	.long	-2081702
	.long	16569428
	.long	11065167
	.long	29875704
	.long	96627
	.long	7908388
	.long	-4480480
	.long	-13538503
	.long	1387155
	.long	19646058
	.long	5720633
	.long	-11416706
	.long	12814209
	.long	11607948
	.long	12749789
	.long	14147075
	.long	15156355
	.long	-21866831
	.long	11835260
	.long	19299512
	.long	1155910
	.long	28703737
	.long	14890794
	.long	2925026
	.long	7269399
	.long	26121523
	.long	15467869
	.long	-26560550
	.long	5052483
	.long	-3017432
	.long	10058206
	.long	1980837
	.long	3964243
	.long	22160966
	.long	12322533
	.long	-6431123
	.long	-12618185
	.long	12228557
	.long	-7003677
	.long	32944382
	.long	14922211
	.long	-22844894
	.long	5188528
	.long	21913450
	.long	-8719943
	.long	4001465
	.long	13238564
	.long	-6114803
	.long	8653815
	.long	22865569
	.long	-4652735
	.long	27603668
	.long	-12545395
	.long	14348958
	.long	8234005
	.long	24808405
	.long	5719875
	.long	28483275
	.long	2841751
	.long	-16420968
	.long	-1113305
	.long	-327719
	.long	-12107856
	.long	21886282
	.long	-15552774
	.long	-1887966
	.long	-315658
	.long	19932058
	.long	-12739203
	.long	-11656086
	.long	10087521
	.long	-8864888
	.long	-5536143
	.long	-19278573
	.long	-3055912
	.long	3999228
	.long	13239134
	.long	-4777469
	.long	-13910208
	.long	1382174
	.long	-11694719
	.long	17266790
	.long	9194690
	.long	-13324356
	.long	9720081
	.long	20403944
	.long	11284705
	.long	-14013818
	.long	3093230
	.long	16650921
	.long	-11037932
	.long	-1064178
	.long	1570629
	.long	-8329746
	.long	7352753
	.long	-302424
	.long	16271225
	.long	-24049421
	.long	-6691850
	.long	-21911077
	.long	-5927941
	.long	-4611316
	.long	-5560156
	.long	-31744103
	.long	-10785293
	.long	24123614
	.long	15193618
	.long	-21652117
	.long	-16739389
	.long	-9935934
	.long	-4289447
	.long	-25279823
	.long	4372842
	.long	2087473
	.long	10399484
	.long	31870908
	.long	14690798
	.long	17361620
	.long	11864968
	.long	-11307610
	.long	6210372
	.long	13206574
	.long	5806320
	.long	-29017692
	.long	-13967200
	.long	-12331205
	.long	-7486601
	.long	-25578460
	.long	-16240689
	.long	14668462
	.long	-12270235
	.long	26039039
	.long	15305210
	.long	25515617
	.long	4542480
	.long	10453892
	.long	6577524
	.long	9145645
	.long	-6443880
	.long	5974874
	.long	3053895
	.long	-9433049
	.long	-10385191
	.long	-31865124
	.long	3225009
	.long	-7972642
	.long	3936128
	.long	-5652273
	.long	-3050304
	.long	30625386
	.long	-4729400
	.long	-25555961
	.long	-12792866
	.long	-20484575
	.long	7695099
	.long	17097188
	.long	-16303496
	.long	-27999779
	.long	1803632
	.long	-3553091
	.long	9865099
	.long	-5228566
	.long	4272701
	.long	-5673832
	.long	-16689700
	.long	14911344
	.long	12196514
	.long	-21405489
	.long	7047412
	.long	20093277
	.long	9920966
	.long	-11138194
	.long	-5343857
	.long	13161587
	.long	12044805
	.long	-32856851
	.long	4124601
	.long	-32343828
	.long	-10257566
	.long	-20788824
	.long	14084654
	.long	-13531713
	.long	7842147
	.long	19119038
	.long	-13822605
	.long	4752377
	.long	-8714640
	.long	-21679658
	.long	2288038
	.long	-26819236
	.long	-3283715
	.long	29965059
	.long	3039786
	.long	-14473765
	.long	2540457
	.long	29457502
	.long	14625692
	.long	-24819617
	.long	12570232
	.long	-1063558
	.long	-11551823
	.long	16920318
	.long	12494842
	.long	1278292
	.long	-5869109
	.long	-21159943
	.long	-3498680
	.long	-11974704
	.long	4724943
	.long	17960970
	.long	-11775534
	.long	-4140968
	.long	-9702530
	.long	-8876562
	.long	-1410617
	.long	-12907383
	.long	-8659932
	.long	-29576300
	.long	1903856
	.long	23134274
	.long	-14279132
	.long	-10681997
	.long	-1611936
	.long	20684485
	.long	15770816
	.long	-12989750
	.long	3190296
	.long	26955097
	.long	14109738
	.long	15308788
	.long	5320727
	.long	-30113809
	.long	-14318877
	.long	22902008
	.long	7767164
	.long	29425325
	.long	-11277562
	.long	31960942
	.long	11934971
	.long	-27395711
	.long	8435796
	.long	4109644
	.long	12222639
	.long	-24627868
	.long	14818669
	.long	20638173
	.long	4875028
	.long	10491392
	.long	1379718
	.long	-13159415
	.long	9197841
	.long	3875503
	.long	-8936108
	.long	-1383712
	.long	-5879801
	.long	33518459
	.long	16176658
	.long	21432314
	.long	12180697
	.long	-11787308
	.long	11500838
	.long	13787581
	.long	-13832590
	.long	-22430679
	.long	10140205
	.long	1465425
	.long	12689540
	.long	-10301319
	.long	-13872883
	.long	5414091
	.long	-15386041
	.long	-21007664
	.long	9643570
	.long	12834970
	.long	1186149
	.long	-2622916
	.long	-1342231
	.long	26128231
	.long	6032912
	.long	-26337395
	.long	-13766162
	.long	32496025
	.long	-13653919
	.long	17847801
	.long	-12669156
	.long	3604025
	.long	8316894
	.long	-25875034
	.long	-10437358
	.long	3296484
	.long	6223048
	.long	24680646
	.long	-12246460
	.long	-23052020
	.long	5903205
	.long	-8862297
	.long	-4639164
	.long	12376617
	.long	3188849
	.long	29190488
	.long	-14659046
	.long	27549113
	.long	-1183516
	.long	3520066
	.long	-10697301
	.long	32049515
	.long	-7309113
	.long	-16109234
	.long	-9852307
	.long	-14744486
	.long	-9309156
	.long	735818
	.long	-598978
	.long	-20407687
	.long	-5057904
	.long	25246078
	.long	-15795669
	.long	18640741
	.long	-960977
	.long	-6928835
	.long	-16430795
	.long	10361374
	.long	5642961
	.long	4910474
	.long	12345252
	.long	-31638386
	.long	-494430
	.long	10530747
	.long	1053335
	.long	-29265967
	.long	-14186805
	.long	-13538216
	.long	-12117373
	.long	-19457059
	.long	-10655384
	.long	-31462369
	.long	-2948985
	.long	24018831
	.long	15026644
	.long	-22592535
	.long	-3145277
	.long	-2289276
	.long	5953843
	.long	-13440189
	.long	9425631
	.long	25310643
	.long	13003497
	.long	-2314791
	.long	-15145616
	.long	-27419985
	.long	-603321
	.long	-8043984
	.long	-1669117
	.long	-26092265
	.long	13987819
	.long	-27297622
	.long	187899
	.long	-23166419
	.long	-2531735
	.long	-21744398
	.long	-13810475
	.long	1844840
	.long	5021428
	.long	-10434399
	.long	-15911473
	.long	9716667
	.long	16266922
	.long	-5070217
	.long	726099
	.long	29370922
	.long	-6053998
	.long	7334071
	.long	-15342259
	.long	9385287
	.long	2247707
	.long	-13661962
	.long	-4839461
	.long	30007388
	.long	-15823341
	.long	-936379
	.long	16086691
	.long	23751945
	.long	-543318
	.long	-1167538
	.long	-5189036
	.long	9137109
	.long	730663
	.long	9835848
	.long	4555336
	.long	-23376435
	.long	1410446
	.long	-22253753
	.long	-12899614
	.long	30867635
	.long	15826977
	.long	17693930
	.long	544696
	.long	-11985298
	.long	12422646
	.long	31117226
	.long	-12215734
	.long	-13502838
	.long	6561947
	.long	-9876867
	.long	-12757670
	.long	-5118685
	.long	-4096706
	.long	29120153
	.long	13924425
	.long	-17400879
	.long	-14233209
	.long	19675799
	.long	-2734756
	.long	-11006962
	.long	-5858820
	.long	-9383939
	.long	-11317700
	.long	7240931
	.long	-237388
	.long	-31361739
	.long	-11346780
	.long	-15007447
	.long	-5856218
	.long	-22453340
	.long	-12152771
	.long	1222336
	.long	4389483
	.long	3293637
	.long	-15551743
	.long	-16684801
	.long	-14444245
	.long	11038544
	.long	11054958
	.long	-13801175
	.long	-3338533
	.long	-24319580
	.long	7733547
	.long	12796905
	.long	-6335822
	.long	-8759414
	.long	-10817836
	.long	-25418864
	.long	10783769
	.long	-30615557
	.long	-9746811
	.long	-28253339
	.long	3647836
	.long	3222231
	.long	-11160462
	.long	18606113
	.long	1693100
	.long	-25448386
	.long	-15170272
	.long	4112353
	.long	10045021
	.long	23603893
	.long	-2048234
	.long	-7550776
	.long	2484985
	.long	9255317
	.long	-3131197
	.long	-12156162
	.long	-1004256
	.long	13098013
	.long	-9214866
	.long	16377220
	.long	-2102812
	.long	-19802075
	.long	-3034702
	.long	-22729289
	.long	7496160
	.long	-5742199
	.long	11329249
	.long	19991973
	.long	-3347502
	.long	-31718148
	.long	9936966
	.long	-30097688
	.long	-10618797
	.long	21878590
	.long	-5001297
	.long	4338336
	.long	13643897
	.long	-3036865
	.long	13160960
	.long	19708896
	.long	5415497
	.long	-7360503
	.long	-4109293
	.long	27736861
	.long	10103576
	.long	12500508
	.long	8502413
	.long	-3413016
	.long	-9633558
	.long	10436918
	.long	-1550276
	.long	-23659143
	.long	-8132100
	.long	19492550
	.long	-12104365
	.long	-29681976
	.long	-852630
	.long	-3208171
	.long	12403437
	.long	30066266
	.long	8367329
	.long	13243957
	.long	8709688
	.long	12015105
	.long	2801261
	.long	28198131
	.long	10151021
	.long	24818120
	.long	-4743133
	.long	-11194191
	.long	-5645734
	.long	5150968
	.long	7274186
	.long	2831366
	.long	-12492146
	.long	1478975
	.long	6122054
	.long	23825128
	.long	-12733586
	.long	31097299
	.long	6083058
	.long	31021603
	.long	-9793610
	.long	-2529932
	.long	-2229646
	.long	445613
	.long	10720828
	.long	-13849527
	.long	-11505937
	.long	-23507731
	.long	16354465
	.long	15067285
	.long	-14147707
	.long	7840942
	.long	14037873
	.long	-33364863
	.long	15934016
	.long	-728213
	.long	-3642706
	.long	21403988
	.long	1057586
	.long	-19379462
	.long	-12403220
	.long	915865
	.long	-16469274
	.long	15608285
	.long	-8789130
	.long	-24357026
	.long	6060030
	.long	-17371319
	.long	8410997
	.long	-7220461
	.long	16527025
	.long	32922597
	.long	-556987
	.long	20336074
	.long	-16184568
	.long	10903705
	.long	-5384487
	.long	16957574
	.long	52992
	.long	23834301
	.long	6588044
	.long	32752030
	.long	11232950
	.long	3381995
	.long	-8714866
	.long	22652988
	.long	-10744103
	.long	17159699
	.long	16689107
	.long	-20314580
	.long	-1305992
	.long	-4689649
	.long	9166776
	.long	-25710296
	.long	-10847306
	.long	11576752
	.long	12733943
	.long	7924251
	.long	-2752281
	.long	1976123
	.long	-7249027
	.long	21251222
	.long	16309901
	.long	-2983015
	.long	-6783122
	.long	30810597
	.long	12967303
	.long	156041
	.long	-3371252
	.long	12331345
	.long	-8237197
	.long	8651614
	.long	-4477032
	.long	-16085636
	.long	-4996994
	.long	13002507
	.long	2950805
	.long	29054427
	.long	-5106970
	.long	10008136
	.long	-4667901
	.long	31486080
	.long	15114593
	.long	-14261250
	.long	12951354
	.long	14369431
	.long	-7387845
	.long	16347321
	.long	-13662089
	.long	8684155
	.long	-10532952
	.long	19443825
	.long	11385320
	.long	24468943
	.long	-9659068
	.long	-23919258
	.long	2187569
	.long	-26263207
	.long	-6086921
	.long	31316348
	.long	14219878
	.long	-28594490
	.long	1193785
	.long	32245219
	.long	11392485
	.long	31092169
	.long	15722801
	.long	27146014
	.long	6992409
	.long	29126555
	.long	9207390
	.long	32382935
	.long	1110093
	.long	18477781
	.long	11028262
	.long	-27411763
	.long	-7548111
	.long	-4980517
	.long	10843782
	.long	-7957600
	.long	-14435730
	.long	2814918
	.long	7836403
	.long	27519878
	.long	-7868156
	.long	-20894015
	.long	-11553689
	.long	-21494559
	.long	8550130
	.long	28346258
	.long	1994730
	.long	-19578299
	.long	8085545
	.long	-14000519
	.long	-3948622
	.long	2785838
	.long	-16231307
	.long	-19516951
	.long	7174894
	.long	22628102
	.long	8115180
	.long	-30405132
	.long	955511
	.long	-11133838
	.long	-15078069
	.long	-32447087
	.long	-13278079
	.long	-25651578
	.long	3317160
	.long	-9943017
	.long	930272
	.long	-15303681
	.long	-6833769
	.long	28856490
	.long	1357446
	.long	23421993
	.long	1057177
	.long	24091212
	.long	-1388970
	.long	-22765376
	.long	-10650715
	.long	-22751231
	.long	-5303997
	.long	-12907607
	.long	-12768866
	.long	-15811511
	.long	-7797053
	.long	-14839018
	.long	-16554220
	.long	-1867018
	.long	8398970
	.long	-31969310
	.long	2106403
	.long	-4736360
	.long	1362501
	.long	12813763
	.long	16200670
	.long	22981545
	.long	-6291273
	.long	18009408
	.long	-15772772
	.long	-17220923
	.long	-9545221
	.long	-27784654
	.long	14166835
	.long	29815394
	.long	7444469
	.long	29551787
	.long	-3727419
	.long	19288549
	.long	1325865
	.long	15100157
	.long	-15835752
	.long	-23923978
	.long	-1005098
	.long	-26450192
	.long	15509408
	.long	12376730
	.long	-3479146
	.long	33166107
	.long	-8042750
	.long	20909231
	.long	13023121
	.long	-9209752
	.long	16251778
	.long	-5778415
	.long	-8094914
	.long	12412151
	.long	10018715
	.long	2213263
	.long	-13878373
	.long	32529814
	.long	-11074689
	.long	30361439
	.long	-16689753
	.long	-9135940
	.long	1513226
	.long	22922121
	.long	6382134
	.long	-5766928
	.long	8371348
	.long	9923462
	.long	11271500
	.long	12616794
	.long	3544722
	.long	-29998368
	.long	-1721626
	.long	12891687
	.long	-8193132
	.long	-26442943
	.long	10486144
	.long	-22597207
	.long	-7012665
	.long	8587003
	.long	-8257861
	.long	4084309
	.long	-12970062
	.long	361726
	.long	2610596
	.long	-23921530
	.long	-11455195
	.long	5408411
	.long	-1136691
	.long	-4969122
	.long	10561668
	.long	24145918
	.long	14240566
	.long	31319731
	.long	-4235541
	.long	19985175
	.long	-3436086
	.long	-13994457
	.long	16616821
	.long	14549246
	.long	3341099
	.long	32155958
	.long	13648976
	.long	-17577068
	.long	8849297
	.long	65030
	.long	8370684
	.long	-8320926
	.long	-12049626
	.long	31204563
	.long	5839400
	.long	-20627288
	.long	-1057277
	.long	-19442942
	.long	6922164
	.long	12743482
	.long	-9800518
	.long	-2361371
	.long	12678785
	.long	28815050
	.long	4759974
	.long	-23893047
	.long	4884717
	.long	23783145
	.long	11038569
	.long	18800704
	.long	255233
	.long	-5269658
	.long	-1773886
	.long	13957886
	.long	7990715
	.long	23132995
	.long	728773
	.long	13393847
	.long	9066957
	.long	19258688
	.long	-14753793
	.long	-2936654
	.long	-10827535
	.long	-10432089
	.long	14516793
	.long	-3640786
	.long	4372541
	.long	-31934921
	.long	2209390
	.long	-1524053
	.long	2055794
	.long	580882
	.long	16705327
	.long	5468415
	.long	-2683018
	.long	-30926419
	.long	-14696000
	.long	-7203346
	.long	-8994389
	.long	-30021019
	.long	7394435
	.long	23838809
	.long	1822728
	.long	-15738443
	.long	15242727
	.long	8318092
	.long	-3733104
	.long	-21672180
	.long	-3492205
	.long	-4821741
	.long	14799921
	.long	13345610
	.long	9759151
	.long	3371034
	.long	-16137791
	.long	16353039
	.long	8577942
	.long	31129804
	.long	13496856
	.long	-9056018
	.long	7402518
	.long	2286874
	.long	-4435931
	.long	-20042458
	.long	-2008336
	.long	-13696227
	.long	5038122
	.long	11006906
	.long	-15760352
	.long	8205061
	.long	1607563
	.long	14414086
	.long	-8002132
	.long	3331830
	.long	-3208217
	.long	22249151
	.long	-5594188
	.long	18364661
	.long	-2906958
	.long	30019587
	.long	-9029278
	.long	-27688051
	.long	1585953
	.long	-10775053
	.long	931069
	.long	-29120221
	.long	-11002319
	.long	-14410829
	.long	12029093
	.long	9944378
	.long	8024
	.long	4368715
	.long	-3709630
	.long	29874200
	.long	-15022983
	.long	-20230386
	.long	-11410704
	.long	-16114594
	.long	-999085
	.long	-8142388
	.long	5640030
	.long	10299610
	.long	13746483
	.long	11661824
	.long	16234854
	.long	7630238
	.long	5998374
	.long	9809887
	.long	-16694564
	.long	15219798
	.long	-14327783
	.long	27425505
	.long	-5719081
	.long	3055006
	.long	10660664
	.long	23458024
	.long	595578
	.long	-15398605
	.long	-1173195
	.long	-18342183
	.long	9742717
	.long	6744077
	.long	2427284
	.long	26042789
	.long	2720740
	.long	-847906
	.long	1118974
	.long	32324614
	.long	7406442
	.long	12420155
	.long	1994844
	.long	14012521
	.long	-5024720
	.long	-18384453
	.long	-9578469
	.long	-26485342
	.long	-3936439
	.long	-13033478
	.long	-10909803
	.long	24319929
	.long	-6446333
	.long	16412690
	.long	-4507367
	.long	10772641
	.long	15929391
	.long	-17068788
	.long	-4658621
	.long	10555945
	.long	-10484049
	.long	-30102368
	.long	-4739048
	.long	22397382
	.long	-7767684
	.long	-9293161
	.long	-12792868
	.long	17166287
	.long	-9755136
	.long	-27333065
	.long	6199366
	.long	21880021
	.long	-12250760
	.long	-4283307
	.long	5368523
	.long	-31117018
	.long	8163389
	.long	-30323063
	.long	3209128
	.long	16557151
	.long	8890729
	.long	8840445
	.long	4957760
	.long	-15447727
	.long	709327
	.long	-6919446
	.long	-10870178
	.long	-29777922
	.long	6522332
	.long	-21720181
	.long	12130072
	.long	-14796503
	.long	5005757
	.long	-2114751
	.long	-14308128
	.long	23019042
	.long	15765735
	.long	-25269683
	.long	6002752
	.long	10183197
	.long	-13239326
	.long	-16395286
	.long	-2176112
	.long	-19025756
	.long	1632005
	.long	13466291
	.long	-7995100
	.long	-23640451
	.long	16573537
	.long	-32013908
	.long	-3057104
	.long	22208662
	.long	2000468
	.long	3065073
	.long	-1412761
	.long	-25598674
	.long	-361432
	.long	-17683065
	.long	-5703415
	.long	-8164212
	.long	11248527
	.long	-3691214
	.long	-7414184
	.long	10379208
	.long	-6045554
	.long	8877319
	.long	1473647
	.long	-29291284
	.long	-12507580
	.long	16690915
	.long	2553332
	.long	-3132688
	.long	16400289
	.long	15716668
	.long	1254266
	.long	-18472690
	.long	7446274
	.long	-8448918
	.long	6344164
	.long	-22097271
	.long	-7285580
	.long	26894937
	.long	9132066
	.long	24158887
	.long	12938817
	.long	11085297
	.long	-8177598
	.long	-28063478
	.long	-4457083
	.long	-30576463
	.long	64452
	.long	-6817084
	.long	-2692882
	.long	13488534
	.long	7794716
	.long	22236231
	.long	5989356
	.long	25426474
	.long	-12578208
	.long	2350710
	.long	-3418511
	.long	-4688006
	.long	2364226
	.long	16335052
	.long	9132434
	.long	25640582
	.long	6678888
	.long	1725628
	.long	8517937
	.long	-11807024
	.long	-11697457
	.long	15445875
	.long	-7798101
	.long	29004207
	.long	-7867081
	.long	28661402
	.long	-640412
	.long	-12794003
	.long	-7943086
	.long	31863255
	.long	-4135540
	.long	-278050
	.long	-15759279
	.long	-6122061
	.long	-14866665
	.long	-28614905
	.long	14569919
	.long	-10857999
	.long	-3591829
	.long	10343412
	.long	-6976290
	.long	-29828287
	.long	-10815811
	.long	27081650
	.long	3463984
	.long	14099042
	.long	-4517604
	.long	1616303
	.long	-6205604
	.long	29542636
	.long	15372179
	.long	17293797
	.long	960709
	.long	20263915
	.long	11434237
	.long	-5765435
	.long	11236810
	.long	13505955
	.long	-10857102
	.long	-16111345
	.long	6493122
	.long	-19384511
	.long	7639714
	.long	-2830798
	.long	-14839232
	.long	25403038
	.long	-8215196
	.long	-8317012
	.long	-16173699
	.long	18006287
	.long	-16043750
	.long	29994677
	.long	-15808121
	.long	9769828
	.long	5202651
	.long	-24157398
	.long	-13631392
	.long	-28051003
	.long	-11561624
	.long	-24613141
	.long	-13860782
	.long	-31184575
	.long	709464
	.long	12286395
	.long	13076066
	.long	-21775189
	.long	-1176622
	.long	-25003198
	.long	4057652
	.long	-32018128
	.long	-8890874
	.long	16102007
	.long	13205847
	.long	13733362
	.long	5599946
	.long	10557076
	.long	3195751
	.long	-5557991
	.long	8536970
	.long	-25540170
	.long	8525972
	.long	10151379
	.long	10394400
	.long	4024660
	.long	-16137551
	.long	22436262
	.long	12276534
	.long	-9099015
	.long	-2686099
	.long	19698229
	.long	11743039
	.long	-33302334
	.long	8934414
	.long	-15879800
	.long	-4525240
	.long	-8580747
	.long	-2934061
	.long	14634845
	.long	-698278
	.long	-9449077
	.long	3137094
	.long	-11536886
	.long	11721158
	.long	17555939
	.long	-5013938
	.long	8268606
	.long	2331751
	.long	-22738815
	.long	9761013
	.long	9319229
	.long	8835153
	.long	-9205489
	.long	-1280045
	.long	-461409
	.long	-7830014
	.long	20614118
	.long	16688288
	.long	-7514766
	.long	-4807119
	.long	22300304
	.long	505429
	.long	6108462
	.long	-6183415
	.long	-5070281
	.long	12367917
	.long	-30663534
	.long	3234473
	.long	32617080
	.long	-8422642
	.long	29880583
	.long	-13483331
	.long	-26898490
	.long	-7867459
	.long	-31975283
	.long	5726539
	.long	26934134
	.long	10237677
	.long	-3173717
	.long	-605053
	.long	24199304
	.long	3795095
	.long	7592688
	.long	-14992079
	.long	21594432
	.long	-14964228
	.long	17466408
	.long	-4077222
	.long	32537084
	.long	2739898
	.long	6407723
	.long	12018833
	.long	-28256052
	.long	4298412
	.long	-20650503
	.long	-11961496
	.long	-27236275
	.long	570498
	.long	3767144
	.long	-1717540
	.long	13891942
	.long	-1569194
	.long	13717174
	.long	10805743
	.long	-14676630
	.long	-15644296
	.long	15287174
	.long	11927123
	.long	24177847
	.long	-8175568
	.long	-796431
	.long	14860609
	.long	-26938930
	.long	-5863836
	.long	12962541
	.long	5311799
	.long	-10060768
	.long	11658280
	.long	18855286
	.long	-7954201
	.long	13286263
	.long	-12808704
	.long	-4381056
	.long	9882022
	.long	18512079
	.long	11319350
	.long	-20123124
	.long	15090309
	.long	18818594
	.long	5271736
	.long	-22727904
	.long	3666879
	.long	-23967430
	.long	-3299429
	.long	-6789020
	.long	-3146043
	.long	16192429
	.long	13241070
	.long	15898607
	.long	-14206114
	.long	-10084880
	.long	-6661110
	.long	-2403099
	.long	5276065
	.long	30169808
	.long	-5317648
	.long	26306206
	.long	-11750859
	.long	27814964
	.long	7069267
	.long	7152851
	.long	3684982
	.long	1449224
	.long	13082861
	.long	10342826
	.long	3098505
	.long	2119311
	.long	193222
	.long	25702612
	.long	12233820
	.long	23697382
	.long	15056736
	.long	-21016438
	.long	-8202000
	.long	-33150110
	.long	3261608
	.long	22745853
	.long	7948688
	.long	19370557
	.long	-15177665
	.long	-26171976
	.long	6482814
	.long	-10300080
	.long	-11060101
	.long	32869458
	.long	-5408545
	.long	25609743
	.long	15678670
	.long	-10687769
	.long	-15471071
	.long	26112421
	.long	2521008
	.long	-22664288
	.long	6904815
	.long	29506923
	.long	4457497
	.long	3377935
	.long	-9796444
	.long	-30510046
	.long	12935080
	.long	1561737
	.long	3841096
	.long	-29003639
	.long	-6657642
	.long	10340844
	.long	-6630377
	.long	-18656632
	.long	-2278430
	.long	12621151
	.long	-13339055
	.long	30878497
	.long	-11824370
	.long	-25584551
	.long	5181966
	.long	25940115
	.long	-12658025
	.long	17324188
	.long	-10307374
	.long	-8671468
	.long	15029094
	.long	24396252
	.long	-16450922
	.long	-2322852
	.long	-12388574
	.long	-21765684
	.long	9916823
	.long	-1300409
	.long	4079498
	.long	-1028346
	.long	11909559
	.long	1782390
	.long	12641087
	.long	20603771
	.long	-6561742
	.long	-18882287
	.long	-11673380
	.long	24849422
	.long	11501709
	.long	13161720
	.long	-4768874
	.long	1925523
	.long	11914390
	.long	4662781
	.long	7820689
	.long	12241050
	.long	-425982
	.long	8132691
	.long	9393934
	.long	32846760
	.long	-1599620
	.long	29749456
	.long	12172924
	.long	16136752
	.long	15264020
	.long	-10349955
	.long	-14680563
	.long	-8211979
	.long	2330220
	.long	-17662549
	.long	-14545780
	.long	10658213
	.long	6671822
	.long	19012087
	.long	3772772
	.long	3753511
	.long	-3421066
	.long	10617074
	.long	2028709
	.long	14841030
	.long	-6721664
	.long	28718732
	.long	-15762884
	.long	20527771
	.long	12988982
	.long	-14822485
	.long	-5797269
	.long	-3707987
	.long	12689773
	.long	-898983
	.long	-10914866
	.long	-24183046
	.long	-10564943
	.long	3299665
	.long	-12424953
	.long	-16777703
	.long	-15253301
	.long	-9642417
	.long	4978983
	.long	3308785
	.long	8755439
	.long	6943197
	.long	6461331
	.long	-25583147
	.long	8991218
	.long	-17226263
	.long	1816362
	.long	-1673288
	.long	-6086439
	.long	31783888
	.long	-8175991
	.long	-32948145
	.long	7417950
	.long	-30242287
	.long	1507265
	.long	29692663
	.long	6829891
	.long	-10498800
	.long	4334896
	.long	20945975
	.long	-11906496
	.long	-28887608
	.long	8209391
	.long	14606362
	.long	-10647073
	.long	-3481570
	.long	8707081
	.long	32188102
	.long	5672294
	.long	22096700
	.long	1711240
	.long	-33020695
	.long	9761487
	.long	4170404
	.long	-2085325
	.long	-11587470
	.long	14855945
	.long	-4127778
	.long	-1531857
	.long	-26649089
	.long	15084046
	.long	22186522
	.long	16002000
	.long	-14276837
	.long	-8400798
	.long	-4811456
	.long	13761029
	.long	-31703877
	.long	-2483919
	.long	-3312471
	.long	7869047
	.long	-7113572
	.long	-9620092
	.long	13240845
	.long	10965870
	.long	-7742563
	.long	-8256762
	.long	-14768334
	.long	-13656260
	.long	-23232383
	.long	12387166
	.long	4498947
	.long	14147411
	.long	29514390
	.long	4302863
	.long	-13413405
	.long	-12407859
	.long	20757302
	.long	-13801832
	.long	14785143
	.long	8976368
	.long	-5061276
	.long	-2144373
	.long	17846988
	.long	-13971927
	.long	-2244452
	.long	-754728
	.long	-4597030
	.long	-1066309
	.long	-6247172
	.long	1455299
	.long	-21647728
	.long	-9214789
	.long	-5222701
	.long	12650267
	.long	-9906797
	.long	-16070310
	.long	21134160
	.long	12198166
	.long	-27064575
	.long	708126
	.long	387813
	.long	13770293
	.long	-19134326
	.long	10958663
	.long	22470984
	.long	12369526
	.long	23446014
	.long	-5441109
	.long	-21520802
	.long	-9698723
	.long	-11772496
	.long	-11574455
	.long	-25083830
	.long	4271862
	.long	-25169565
	.long	-10053642
	.long	-19909332
	.long	15361595
	.long	-5984358
	.long	2159192
	.long	75375
	.long	-4278529
	.long	-32526221
	.long	8469673
	.long	15854970
	.long	4148314
	.long	-8893890
	.long	7259002
	.long	11666551
	.long	13824734
	.long	-30531198
	.long	2697372
	.long	24154791
	.long	-9460943
	.long	15446137
	.long	-15806644
	.long	29759747
	.long	14019369
	.long	30811221
	.long	-9610191
	.long	-31582008
	.long	12840104
	.long	24913809
	.long	9815020
	.long	-4709286
	.long	-5614269
	.long	-31841498
	.long	-12288893
	.long	-14443537
	.long	10799414
	.long	-9103676
	.long	13438769
	.long	18735128
	.long	9466238
	.long	11933045
	.long	9281483
	.long	5081055
	.long	-5183824
	.long	-2628162
	.long	-4905629
	.long	-7727821
	.long	-10896103
	.long	-22728655
	.long	16199064
	.long	14576810
	.long	379472
	.long	-26786533
	.long	-8317236
	.long	-29426508
	.long	-10812974
	.long	-102766
	.long	1876699
	.long	30801119
	.long	2164795
	.long	15995086
	.long	3199873
	.long	13672555
	.long	13712240
	.long	-19378835
	.long	-4647646
	.long	-13081610
	.long	-15496269
	.long	-13492807
	.long	1268052
	.long	-10290614
	.long	-3659039
	.long	-3286592
	.long	10948818
	.long	23037027
	.long	3794475
	.long	-3470338
	.long	-12600221
	.long	-17055369
	.long	3565904
	.long	29210088
	.long	-9419337
	.long	-5919792
	.long	-4952785
	.long	10834811
	.long	-13327726
	.long	-16512102
	.long	-10820713
	.long	-27162222
	.long	-14030531
	.long	-13161890
	.long	15508588
	.long	16663704
	.long	-8156150
	.long	-28349942
	.long	9019123
	.long	-29183421
	.long	-3769423
	.long	2244111
	.long	-14001979
	.long	-5152875
	.long	-3800936
	.long	-9306475
	.long	-6071583
	.long	16243069
	.long	14684434
	.long	-25673088
	.long	-16180800
	.long	13491506
	.long	4641841
	.long	10813417
	.long	643330
	.long	-19188515
	.long	-728916
	.long	30292062
	.long	-16600078
	.long	27548447
	.long	-7721242
	.long	14476989
	.long	-12767431
	.long	10292079
	.long	9984945
	.long	6481436
	.long	8279905
	.long	-7251514
	.long	7032743
	.long	27282937
	.long	-1644259
	.long	-27912810
	.long	12651324
	.long	-31185513
	.long	-813383
	.long	22271204
	.long	11835308
	.long	10201545
	.long	15351028
	.long	17099662
	.long	3988035
	.long	21721536
	.long	-3148940
	.long	10202177
	.long	-6545839
	.long	-31373232
	.long	-9574638
	.long	-32150642
	.long	-8119683
	.long	-12906320
	.long	3852694
	.long	13216206
	.long	14842320
	.long	-15815640
	.long	-10601066
	.long	-6538952
	.long	-7258995
	.long	-6984659
	.long	-6581778
	.long	-31500847
	.long	13765824
	.long	-27434397
	.long	9900184
	.long	14465505
	.long	-13833331
	.long	-32133984
	.long	-14738873
	.long	-27443187
	.long	12990492
	.long	33046193
	.long	15796406
	.long	-7051866
	.long	-8040114
	.long	30924417
	.long	-8279620
	.long	6359016
	.long	-12816335
	.long	16508377
	.long	9071735
	.long	-25488601
	.long	15413635
	.long	9524356
	.long	-7018878
	.long	12274201
	.long	-13175547
	.long	32627641
	.long	-1785326
	.long	6736625
	.long	13267305
	.long	5237659
	.long	-5109483
	.long	15663516
	.long	4035784
	.long	-2951309
	.long	8903985
	.long	17349946
	.long	601635
	.long	-16432815
	.long	-4612556
	.long	-13732739
	.long	-15889334
	.long	-22258478
	.long	4659091
	.long	-16916263
	.long	-4952973
	.long	-30393711
	.long	-15158821
	.long	20774812
	.long	15897498
	.long	5736189
	.long	15026997
	.long	-2178256
	.long	-13455585
	.long	-8858980
	.long	-2219056
	.long	28571666
	.long	-10155518
	.long	-474467
	.long	-10105698
	.long	-3801496
	.long	278095
	.long	23440562
	.long	-290208
	.long	10226241
	.long	-5928702
	.long	15139956
	.long	120818
	.long	-14867693
	.long	5218603
	.long	32937275
	.long	11551483
	.long	-16571960
	.long	-7442864
	.long	17932739
	.long	-12437276
	.long	-24039557
	.long	10749060
	.long	11316803
	.long	7535897
	.long	22503767
	.long	5561594
	.long	-3646624
	.long	3898661
	.long	7749907
	.long	-969567
	.long	-16339731
	.long	-16464
	.long	-25018111
	.long	15122143
	.long	-1573531
	.long	7152530
	.long	21831162
	.long	1245233
	.long	26958459
	.long	-14658026
	.long	4314586
	.long	8346991
	.long	-5677764
	.long	11960072
	.long	-32589295
	.long	-620035
	.long	-30402091
	.long	-16716212
	.long	-12165896
	.long	9166947
	.long	33491384
	.long	13673479
	.long	29787085
	.long	13096535
	.long	6280834
	.long	14587357
	.long	-22338025
	.long	13987525
	.long	-24349909
	.long	7778775
	.long	21116000
	.long	15572597
	.long	-4833266
	.long	-5357778
	.long	-4300898
	.long	-5124639
	.long	-7469781
	.long	-2858068
	.long	9681908
	.long	-6737123
	.long	-31951644
	.long	13591838
	.long	-6883821
	.long	386950
	.long	31622781
	.long	6439245
	.long	-14581012
	.long	4091397
	.long	-8426427
	.long	1470727
	.long	-28109679
	.long	-1596990
	.long	3978627
	.long	-5123623
	.long	-19622683
	.long	12092163
	.long	29077877
	.long	-14741988
	.long	5269168
	.long	-6859726
	.long	-13230211
	.long	-8020715
	.long	25932563
	.long	1763552
	.long	-5606110
	.long	-5505881
	.long	-20017847
	.long	2357889
	.long	32264008
	.long	-15407652
	.long	-5387735
	.long	-1160093
	.long	-2091322
	.long	-3946900
	.long	23104804
	.long	-12869908
	.long	5727338
	.long	189038
	.long	14609123
	.long	-8954470
	.long	-6000566
	.long	-16622781
	.long	-14577387
	.long	-7743898
	.long	-26745169
	.long	10942115
	.long	-25888931
	.long	-14884697
	.long	20513500
	.long	5557931
	.long	-15604613
	.long	7829531
	.long	26413943
	.long	-2019404
	.long	-21378968
	.long	7471781
	.long	13913677
	.long	-5137875
	.long	-25574376
	.long	11967826
	.long	29233242
	.long	12948236
	.long	-6754465
	.long	4713227
	.long	-8940970
	.long	14059180
	.long	12878652
	.long	8511905
	.long	-25656801
	.long	3393631
	.long	-2955415
	.long	-7075526
	.long	-2250709
	.long	9366908
	.long	-30223418
	.long	6812974
	.long	5568676
	.long	-3127656
	.long	11630004
	.long	12144454
	.long	2116339
	.long	13606037
	.long	27378885
	.long	15676917
	.long	-17408753
	.long	-13504373
	.long	-14395196
	.long	8070818
	.long	27117696
	.long	-10007378
	.long	-31282771
	.long	-5570088
	.long	1127282
	.long	12772488
	.long	-29845906
	.long	10483306
	.long	-11552749
	.long	-1028714
	.long	10637467
	.long	-5688064
	.long	5674781
	.long	1072708
	.long	-26343588
	.long	-6982302
	.long	-1683975
	.long	9177853
	.long	-27493162
	.long	15431203
	.long	20525145
	.long	10892566
	.long	-12742472
	.long	12779443
	.long	-29493034
	.long	16150075
	.long	-28240519
	.long	14943142
	.long	-15056790
	.long	-7935931
	.long	-30024462
	.long	5626926
	.long	-551567
	.long	-9981087
	.long	753598
	.long	11981191
	.long	25244767
	.long	-3239766
	.long	-3356550
	.long	9594024
	.long	-23752644
	.long	2636870
	.long	-5163910
	.long	-10103818
	.long	585134
	.long	7877383
	.long	11345683
	.long	-6492290
	.long	13352335
	.long	-10977084
	.long	-1931799
	.long	-5407458
	.long	3304649
	.long	-12884869
	.long	17015806
	.long	-4877091
	.long	-29783850
	.long	-7752482
	.long	-13215537
	.long	-319204
	.long	20239939
	.long	6607058
	.long	6203985
	.long	3483793
	.long	-18386976
	.long	-779229
	.long	-20723742
	.long	15077870
	.long	-22750759
	.long	14523817
	.long	27406042
	.long	-6041657
	.long	27423596
	.long	-4497394
	.long	4996214
	.long	10002360
	.long	-28842031
	.long	-4545494
	.long	-30172742
	.long	-4805667
	.long	11374242
	.long	12660715
	.long	17861383
	.long	-12540833
	.long	10935568
	.long	1099227
	.long	-13886076
	.long	-9091740
	.long	-27727044
	.long	11358504
	.long	-12730809
	.long	10311867
	.long	1510375
	.long	10778093
	.long	-2119455
	.long	-9145702
	.long	32676003
	.long	11149336
	.long	-26123651
	.long	4985768
	.long	-19096303
	.long	341147
	.long	-6197485
	.long	-239033
	.long	15756973
	.long	-8796662
	.long	-983043
	.long	13794114
	.long	-19414307
	.long	-15621255
	.long	6490081
	.long	11940286
	.long	25495923
	.long	-7726360
	.long	8668373
	.long	-8751316
	.long	3367603
	.long	6970005
	.long	-1691065
	.long	-9004790
	.long	1656497
	.long	13457317
	.long	15370807
	.long	6364910
	.long	13605745
	.long	8362338
	.long	-19174622
	.long	-5475723
	.long	-16796596
	.long	-5031438
	.long	-22273315
	.long	-13524424
	.long	-64685
	.long	-4334223
	.long	-18605636
	.long	-10921968
	.long	-20571065
	.long	-7007978
	.long	-99853
	.long	-10237333
	.long	17747465
	.long	10039260
	.long	19368299
	.long	-4050591
	.long	-20630635
	.long	-16041286
	.long	31992683
	.long	-15857976
	.long	-29260363
	.long	-5511971
	.long	31932027
	.long	-4986141
	.long	-19612382
	.long	16366580
	.long	22023614
	.long	88450
	.long	11371999
	.long	-3744247
	.long	4882242
	.long	-10626905
	.long	29796507
	.long	37186
	.long	19818052
	.long	10115756
	.long	-11829032
	.long	3352736
	.long	18551198
	.long	3272828
	.long	-5190932
	.long	-4162409
	.long	12501286
	.long	4044383
	.long	-8612957
	.long	-13392385
	.long	-32430052
	.long	5136599
	.long	-19230378
	.long	-3529697
	.long	330070
	.long	-3659409
	.long	6384877
	.long	2899513
	.long	17807477
	.long	7663917
	.long	-2358888
	.long	12363165
	.long	25366522
	.long	-8573892
	.long	-271295
	.long	12071499
	.long	-8365515
	.long	-4042521
	.long	25133448
	.long	-4517355
	.long	-6211027
	.long	2265927
	.long	-32769618
	.long	1936675
	.long	-5159697
	.long	3829363
	.long	28425966
	.long	-5835433
	.long	-577090
	.long	-4697198
	.long	-14217555
	.long	6870930
	.long	7921550
	.long	-6567787
	.long	26333140
	.long	14267664
	.long	-11067219
	.long	11871231
	.long	27385719
	.long	-10559544
	.long	-4585914
	.long	-11189312
	.long	10004786
	.long	-8709488
	.long	-21761224
	.long	8930324
	.long	-21197785
	.long	-16396035
	.long	25654216
	.long	-1725397
	.long	12282012
	.long	11008919
	.long	1541940
	.long	4757911
	.long	-26491501
	.long	-16408940
	.long	13537262
	.long	-7759490
	.long	-20604840
	.long	10961927
	.long	-5922820
	.long	-13218065
	.long	-13156584
	.long	6217254
	.long	-15943699
	.long	13814990
	.long	-17422573
	.long	15157790
	.long	18705543
	.long	29619
	.long	24409717
	.long	-260476
	.long	27361681
	.long	9257833
	.long	-1956526
	.long	-1776914
	.long	-25045300
	.long	-10191966
	.long	15366585
	.long	15166509
	.long	-13105086
	.long	8423556
	.long	-29171540
	.long	12361135
	.long	-18685978
	.long	4578290
	.long	24579768
	.long	3711570
	.long	1342322
	.long	-11180126
	.long	-27005135
	.long	14124956
	.long	-22544529
	.long	14074919
	.long	21964432
	.long	8235257
	.long	-6528613
	.long	-2411497
	.long	9442966
	.long	-5925588
	.long	12025640
	.long	-1487420
	.long	-2981514
	.long	-1669206
	.long	13006806
	.long	2355433
	.long	-16304899
	.long	-13605259
	.long	-6632427
	.long	-5142349
	.long	16974359
	.long	-10911083
	.long	27202044
	.long	1719366
	.long	1141648
	.long	-12796236
	.long	-12863944
	.long	-13219986
	.long	-8318266
	.long	-11018091
	.long	-6810145
	.long	-4843894
	.long	13475066
	.long	-3133972
	.long	32674895
	.long	13715045
	.long	11423335
	.long	-5468059
	.long	32344216
	.long	8962751
	.long	24989809
	.long	9241752
	.long	-13265253
	.long	16086212
	.long	-28740881
	.long	-15642093
	.long	-1409668
	.long	12530728
	.long	-6368726
	.long	10847387
	.long	19531186
	.long	-14132160
	.long	-11709148
	.long	7791794
	.long	-27245943
	.long	4383347
	.long	-28970898
	.long	5271447
	.long	-1266009
	.long	-9736989
	.long	-12455236
	.long	16732599
	.long	-4862407
	.long	-4906449
	.long	27193557
	.long	6245191
	.long	-15193956
	.long	5362278
	.long	-1783893
	.long	2695834
	.long	4960227
	.long	12840725
	.long	23061898
	.long	3260492
	.long	22510453
	.long	8577507
	.long	-12632451
	.long	11257346
	.long	-32692994
	.long	13548177
	.long	-721004
	.long	10879011
	.long	31168030
	.long	13952092
	.long	-29571492
	.long	-3635906
	.long	3877321
	.long	-9572739
	.long	32416692
	.long	5405324
	.long	-11004407
	.long	-13656635
	.long	3759769
	.long	11935320
	.long	5611860
	.long	8164018
	.long	-16275802
	.long	14667797
	.long	15906460
	.long	12155291
	.long	-22111149
	.long	-9039718
	.long	32003002
	.long	-8832289
	.long	5773085
	.long	-8422109
	.long	-23788118
	.long	-8254300
	.long	1950875
	.long	8937633
	.long	18686727
	.long	16459170
	.long	-905725
	.long	12376320
	.long	31632953
	.long	190926
	.long	-24593607
	.long	-16138885
	.long	-8423991
	.long	13378746
	.long	14162407
	.long	6901328
	.long	-8288749
	.long	4508564
	.long	-25341555
	.long	-3627528
	.long	8884438
	.long	-5884009
	.long	6023974
	.long	10104341
	.long	-6881569
	.long	-4941533
	.long	18722941
	.long	-14786005
	.long	-1672488
	.long	827625
	.long	-32720583
	.long	-16289296
	.long	-32503547
	.long	7101210
	.long	13354605
	.long	2659080
	.long	-1800575
	.long	-14108036
	.long	-24878478
	.long	1541286
	.long	2901347
	.long	-1117687
	.long	3880376
	.long	-10059388
	.long	-17620940
	.long	-3612781
	.long	-21802117
	.long	-3567481
	.long	20456845
	.long	-1885033
	.long	27019610
	.long	12299467
	.long	-13658288
	.long	-1603234
	.long	-12861660
	.long	-4861471
	.long	-19540150
	.long	-5016058
	.long	29439641
	.long	15138866
	.long	21536104
	.long	-6626420
	.long	-32447818
	.long	-10690208
	.long	-22408077
	.long	5175814
	.long	-5420040
	.long	-16361163
	.long	7779328
	.long	109896
	.long	30279744
	.long	14648750
	.long	-8044871
	.long	6425558
	.long	13639621
	.long	-743509
	.long	28698390
	.long	12180118
	.long	23177719
	.long	-554075
	.long	26572847
	.long	3405927
	.long	-31701700
	.long	12890905
	.long	-19265668
	.long	5335866
	.long	-6493768
	.long	2378492
	.long	4439158
	.long	-13279347
	.long	-22716706
	.long	3489070
	.long	-9225266
	.long	-332753
	.long	18875722
	.long	-1140095
	.long	14819434
	.long	-12731527
	.long	-17717757
	.long	-5461437
	.long	-5056483
	.long	16566551
	.long	15953661
	.long	3767752
	.long	-10436499
	.long	15627060
	.long	-820954
	.long	2177225
	.long	8550082
	.long	-15114165
	.long	-18473302
	.long	16596775
	.long	-381660
	.long	15663611
	.long	22860960
	.long	15585581
	.long	-27844109
	.long	-3582739
	.long	-23260460
	.long	-8428588
	.long	-32480551
	.long	15707275
	.long	-8205912
	.long	-5652081
	.long	29464558
	.long	2713815
	.long	-22725137
	.long	15860482
	.long	-21902570
	.long	1494193
	.long	-19562091
	.long	-14087393
	.long	-25583872
	.long	-9299552
	.long	13127842
	.long	759709
	.long	21923482
	.long	16529112
	.long	8742704
	.long	12967017
	.long	-28464899
	.long	1553205
	.long	32536856
	.long	-10473729
	.long	-24691605
	.long	-406174
	.long	-8914625
	.long	-2933896
	.long	-29903758
	.long	15553883
	.long	21877909
	.long	3230008
	.long	9881174
	.long	10539357
	.long	-4797115
	.long	2841332
	.long	11543572
	.long	14513274
	.long	19375923
	.long	-12647961
	.long	8832269
	.long	-14495485
	.long	13253511
	.long	5137575
	.long	5037871
	.long	4078777
	.long	24880818
	.long	-6222716
	.long	2862653
	.long	9455043
	.long	29306751
	.long	5123106
	.long	20245049
	.long	-14149889
	.long	9592566
	.long	8447059
	.long	-2077124
	.long	-2990080
	.long	15511449
	.long	4789663
	.long	-20679756
	.long	7004547
	.long	8824831
	.long	-9434977
	.long	-4045704
	.long	-3750736
	.long	-5754762
	.long	108893
	.long	23513200
	.long	16652362
	.long	-33256173
	.long	4144782
	.long	-4476029
	.long	-6579123
	.long	10770039
	.long	-7155542
	.long	-6650416
	.long	-12936300
	.long	-18319198
	.long	10212860
	.long	2756081
	.long	8598110
	.long	7383731
	.long	-6859892
	.long	22312759
	.long	-1105012
	.long	21179801
	.long	2600940
	.long	-9988298
	.long	-12506466
	.long	-24645692
	.long	13317462
	.long	-30449259
	.long	-15653928
	.long	21365574
	.long	-10869657
	.long	11344424
	.long	864440
	.long	-2499677
	.long	-16710063
	.long	-26432803
	.long	6148329
	.long	-17184412
	.long	-14474154
	.long	18782929
	.long	-275997
	.long	-22561534
	.long	211300
	.long	2719757
	.long	4940997
	.long	-1323882
	.long	3911313
	.long	-6948744
	.long	14759765
	.long	-30027150
	.long	7851207
	.long	21690126
	.long	8518463
	.long	26699843
	.long	5276295
	.long	-13149873
	.long	-6429067
	.long	9396249
	.long	365013
	.long	24703301
	.long	-10488939
	.long	1321586
	.long	149635
	.long	-15452774
	.long	7159369
	.long	9987780
	.long	-3404759
	.long	17507962
	.long	9505530
	.long	9731535
	.long	-2165514
	.long	22356009
	.long	8312176
	.long	22477218
	.long	-8403385
	.long	18155857
	.long	-16504990
	.long	19744716
	.long	9006923
	.long	15154154
	.long	-10538976
	.long	24256460
	.long	-4864995
	.long	-22548173
	.long	9334109
	.long	2986088
	.long	-4911893
	.long	10776628
	.long	-3473844
	.long	10620590
	.long	-7083203
	.long	-21413845
	.long	14253545
	.long	-22587149
	.long	536906
	.long	4377756
	.long	8115836
	.long	24567078
	.long	15495314
	.long	11625074
	.long	13064599
	.long	7390551
	.long	10589625
	.long	10838060
	.long	-15420424
	.long	-19342404
	.long	867880
	.long	9277171
	.long	-3218459
	.long	-14431572
	.long	-1986443
	.long	19295826
	.long	-15796950
	.long	6378260
	.long	699185
	.long	7895026
	.long	4057113
	.long	-7081772
	.long	-13077756
	.long	-17886831
	.long	-323126
	.long	-716039
	.long	15693155
	.long	-5045064
	.long	-13373962
	.long	-7737563
	.long	-5869402
	.long	-14566319
	.long	-7406919
	.long	11385654
	.long	13201616
	.long	31730678
	.long	-10962840
	.long	-3918636
	.long	-9669325
	.long	10188286
	.long	-15770834
	.long	-7336361
	.long	13427543
	.long	22223443
	.long	14896287
	.long	30743455
	.long	7116568
	.long	-21786507
	.long	5427593
	.long	696102
	.long	13206899
	.long	27047647
	.long	-10632082
	.long	15285305
	.long	-9853179
	.long	10798490
	.long	-4578720
	.long	19236243
	.long	12477404
	.long	-11229439
	.long	11243796
	.long	-17054270
	.long	-8040865
	.long	-788228
	.long	-8167967
	.long	-3897669
	.long	11180504
	.long	-23169516
	.long	7733644
	.long	17800790
	.long	-14036179
	.long	-27000429
	.long	-11766671
	.long	23887827
	.long	3149671
	.long	23466177
	.long	-10538171
	.long	10322027
	.long	15313801
	.long	26246234
	.long	11968874
	.long	32263343
	.long	-5468728
	.long	6830755
	.long	-13323031
	.long	-15794704
	.long	-101982
	.long	-24449242
	.long	10890804
	.long	-31365647
	.long	10271363
	.long	-12660625
	.long	-6267268
	.long	16690207
	.long	-13062544
	.long	-14982212
	.long	16484931
	.long	25180797
	.long	-5334884
	.long	-586574
	.long	10376444
	.long	-32586414
	.long	-11286356
	.long	19801893
	.long	10997610
	.long	2276632
	.long	9482883
	.long	316878
	.long	13820577
	.long	-9882808
	.long	-4510367
	.long	-2115506
	.long	16457136
	.long	-11100081
	.long	11674996
	.long	30756178
	.long	-7515054
	.long	30696930
	.long	-3712849
	.long	32988917
	.long	-9603412
	.long	12499366
	.long	7910787
	.long	-10617257
	.long	-11931514
	.long	-7342816
	.long	-9985397
	.long	-32349517
	.long	7392473
	.long	-8855661
	.long	15927861
	.long	9866406
	.long	-3649411
	.long	-2396914
	.long	-16655781
	.long	-30409476
	.long	-9134995
	.long	25112947
	.long	-2926644
	.long	-2504044
	.long	-436966
	.long	25621774
	.long	-5678772
	.long	15085042
	.long	-5479877
	.long	-24884878
	.long	-13526194
	.long	5537438
	.long	-13914319
	.long	-11225584
	.long	2320285
	.long	-9584280
	.long	10149187
	.long	-33444663
	.long	5808648
	.long	-14876251
	.long	-1729667
	.long	31234590
	.long	6090599
	.long	-9633316
	.long	116426
	.long	26083934
	.long	2897444
	.long	-6364437
	.long	-2688086
	.long	609721
	.long	15878753
	.long	-6970405
	.long	-9034768
	.long	-27757857
	.long	247744
	.long	-15194774
	.long	-9002551
	.long	23288161
	.long	-10011936
	.long	-23869595
	.long	6503646
	.long	20650474
	.long	1804084
	.long	-27589786
	.long	15456424
	.long	8972517
	.long	8469608
	.long	15640622
	.long	4439847
	.long	3121995
	.long	-10329713
	.long	27842616
	.long	-202328
	.long	-15306973
	.long	2839644
	.long	22530074
	.long	10026331
	.long	4602058
	.long	5048462
	.long	28248656
	.long	5031932
	.long	-11375082
	.long	12714369
	.long	20807691
	.long	-7270825
	.long	29286141
	.long	11421711
	.long	-27876523
	.long	-13868230
	.long	-21227475
	.long	1035546
	.long	-19733229
	.long	12796920
	.long	12076899
	.long	-14301286
	.long	-8785001
	.long	-11848922
	.long	-25012791
	.long	16400684
	.long	-17591495
	.long	-12899438
	.long	3480665
	.long	-15182815
	.long	-32361549
	.long	5457597
	.long	28548107
	.long	7833186
	.long	7303070
	.long	-11953545
	.long	-24363064
	.long	-15921875
	.long	-33374054
	.long	2771025
	.long	-21389266
	.long	421932
	.long	26597266
	.long	6860826
	.long	22486084
	.long	-6737172
	.long	-17137485
	.long	-4210226
	.long	-24552282
	.long	15673397
	.long	-20184622
	.long	2338216
	.long	19788685
	.long	-9620956
	.long	-4001265
	.long	-8740893
	.long	-20271184
	.long	4733254
	.long	3727144
	.long	-12934448
	.long	6120119
	.long	814863
	.long	-11794402
	.long	-622716
	.long	6812205
	.long	-15747771
	.long	2019594
	.long	7975683
	.long	31123697
	.long	-10958981
	.long	30069250
	.long	-11435332
	.long	30434654
	.long	2958439
	.long	18399564
	.long	-976289
	.long	12296869
	.long	9204260
	.long	-16432438
	.long	9648165
	.long	32705432
	.long	-1550977
	.long	30705658
	.long	7451065
	.long	-11805606
	.long	9631813
	.long	3305266
	.long	5248604
	.long	-26008332
	.long	-11377501
	.long	17219865
	.long	2375039
	.long	-31570947
	.long	-5575615
	.long	-19459679
	.long	9219903
	.long	294711
	.long	15298639
	.long	2662509
	.long	-16297073
	.long	-1172927
	.long	-7558695
	.long	-4366770
	.long	-4287744
	.long	-21346413
	.long	-8434326
	.long	32087529
	.long	-1222777
	.long	32247248
	.long	-14389861
	.long	14312628
	.long	1221556
	.long	17395390
	.long	-8700143
	.long	-4945741
	.long	-8684635
	.long	-28197744
	.long	-9637817
	.long	-16027623
	.long	-13378845
	.long	-1428825
	.long	-9678990
	.long	-9235681
	.long	6549687
	.long	-7383069
	.long	-468664
	.long	23046502
	.long	9803137
	.long	17597934
	.long	2346211
	.long	18510800
	.long	15337574
	.long	26171504
	.long	981392
	.long	-22241552
	.long	7827556
	.long	-23491134
	.long	-11323352
	.long	3059833
	.long	-11782870
	.long	10141598
	.long	6082907
	.long	17829293
	.long	-1947643
	.long	9830092
	.long	13613136
	.long	-25556636
	.long	-5544586
	.long	-33502212
	.long	3592096
	.long	33114168
	.long	-15889352
	.long	-26525686
	.long	-13343397
	.long	33076705
	.long	8716171
	.long	1151462
	.long	1521897
	.long	-982665
	.long	-6837803
	.long	-32939165
	.long	-4255815
	.long	23947181
	.long	-324178
	.long	-33072974
	.long	-12305637
	.long	-16637686
	.long	3891704
	.long	26353178
	.long	693168
	.long	30374239
	.long	1595580
	.long	-16884039
	.long	13186931
	.long	4600344
	.long	406904
	.long	9585294
	.long	-400668
	.long	31375464
	.long	14369965
	.long	-14370654
	.long	-7772529
	.long	1510301
	.long	6434173
	.long	-18784789
	.long	-6262728
	.long	32732230
	.long	-13108839
	.long	17901441
	.long	16011505
	.long	18171223
	.long	-11934626
	.long	-12500402
	.long	15197122
	.long	-11038147
	.long	-15230035
	.long	-19172240
	.long	-16046376
	.long	8764035
	.long	12309598
	.long	5975908
	.long	-5243188
	.long	-19459362
	.long	-9681747
	.long	-11541277
	.long	14015782
	.long	-23665757
	.long	1228319
	.long	17544096
	.long	-10593782
	.long	5811932
	.long	-1715293
	.long	3442887
	.long	-2269310
	.long	-18367348
	.long	-8359541
	.long	-18044043
	.long	-15410127
	.long	-5565381
	.long	12348900
	.long	-31399660
	.long	11407555
	.long	25755363
	.long	6891399
	.long	-3256938
	.long	14872274
	.long	-24849353
	.long	8141295
	.long	-10632534
	.long	-585479
	.long	-12675304
	.long	694026
	.long	-5076145
	.long	13300344
	.long	14015258
	.long	-14451394
	.long	-9698672
	.long	-11329050
	.long	30944593
	.long	1130208
	.long	8247766
	.long	-6710942
	.long	-26562381
	.long	-7709309
	.long	-14401939
	.long	-14648910
	.long	4652152
	.long	2488540
	.long	23550156
	.long	-271232
	.long	17294316
	.long	-3788438
	.long	7026748
	.long	15626851
	.long	22990044
	.long	113481
	.long	2267737
	.long	-5908146
	.long	-408818
	.long	-137719
	.long	16091085
	.long	-16253926
	.long	18599252
	.long	7340678
	.long	2137637
	.long	-1221657
	.long	-3364161
	.long	14550936
	.long	3260525
	.long	-7166271
	.long	-4910104
	.long	-13332887
	.long	18550887
	.long	10864893
	.long	-16459325
	.long	-7291596
	.long	-23028869
	.long	-13204905
	.long	-12748722
	.long	2701326
	.long	-8574695
	.long	16099415
	.long	4629974
	.long	-16340524
	.long	-20786213
	.long	-6005432
	.long	-10018363
	.long	9276971
	.long	11329923
	.long	1862132
	.long	14763076
	.long	-15903608
	.long	-30918270
	.long	3689867
	.long	3511892
	.long	10313526
	.long	-21951088
	.long	12219231
	.long	-9037963
	.long	-940300
	.long	8894987
	.long	-3446094
	.long	6150753
	.long	3013931
	.long	301220
	.long	15693451
	.long	-31981216
	.long	-2909717
	.long	-15438168
	.long	11595570
	.long	15214962
	.long	3537601
	.long	-26238722
	.long	-14058872
	.long	4418657
	.long	-15230761
	.long	13947276
	.long	10730794
	.long	-13489462
	.long	-4363670
	.long	-2538306
	.long	7682793
	.long	32759013
	.long	263109
	.long	-29984731
	.long	-7955452
	.long	-22332124
	.long	-10188635
	.long	977108
	.long	699994
	.long	-12466472
	.long	4195084
	.long	-9211532
	.long	550904
	.long	-15565337
	.long	12917920
	.long	19118110
	.long	-439841
	.long	-30534533
	.long	-14337913
	.long	31788461
	.long	-14507657
	.long	4799989
	.long	7372237
	.long	8808585
	.long	-14747943
	.long	9408237
	.long	-10051775
	.long	12493932
	.long	-5409317
	.long	-25680606
	.long	5260744
	.long	-19235809
	.long	-6284470
	.long	-3695942
	.long	16566087
	.long	27218280
	.long	2607121
	.long	29375955
	.long	6024730
	.long	842132
	.long	-2794693
	.long	-4763381
	.long	-8722815
	.long	26332018
	.long	-12405641
	.long	11831880
	.long	6985184
	.long	-9940361
	.long	2854096
	.long	-4847262
	.long	-7969331
	.long	2516242
	.long	-5847713
	.long	9695691
	.long	-7221186
	.long	16512645
	.long	960770
	.long	12121869
	.long	16648078
	.long	-15218652
	.long	14667096
	.long	-13336229
	.long	2013717
	.long	30598287
	.long	-464137
	.long	-31504922
	.long	-7882064
	.long	20237806
	.long	2838411
	.long	-19288047
	.long	4453152
	.long	15298546
	.long	-16178388
	.long	22115043
	.long	-15972604
	.long	12544294
	.long	-13470457
	.long	1068881
	.long	-12499905
	.long	-9558883
	.long	-16518835
	.long	33238498
	.long	13506958
	.long	30505848
	.long	-1114596
	.long	-8486907
	.long	-2630053
	.long	12521378
	.long	4845654
	.long	-28198521
	.long	10744108
	.long	-2958380
	.long	10199664
	.long	7759311
	.long	-13088600
	.long	3409348
	.long	-873400
	.long	-6482306
	.long	-12885870
	.long	-23561822
	.long	6230156
	.long	-20382013
	.long	10655314
	.long	-24040585
	.long	-11621172
	.long	10477734
	.long	-1240216
	.long	-3113227
	.long	13974498
	.long	12966261
	.long	15550616
	.long	-32038948
	.long	-1615346
	.long	21025980
	.long	-629444
	.long	5642325
	.long	7188737
	.long	18895762
	.long	12629579
	.long	14741879
	.long	-14946887
	.long	22177208
	.long	-11721237
	.long	1279741
	.long	8058600
	.long	11758140
	.long	789443
	.long	32195181
	.long	3895677
	.long	10758205
	.long	15755439
	.long	-4509950
	.long	9243698
	.long	-4879422
	.long	6879879
	.long	-2204575
	.long	-3566119
	.long	-8982069
	.long	4429647
	.long	-2453894
	.long	15725973
	.long	-20436342
	.long	-10410672
	.long	-5803908
	.long	-11040220
	.long	-7135870
	.long	-11642895
	.long	18047436
	.long	-15281743
	.long	-25173001
	.long	-11307165
	.long	29759956
	.long	11776784
	.long	-22262383
	.long	-15820455
	.long	10993114
	.long	-12850837
	.long	-17620701
	.long	-9408468
	.long	21987233
	.long	700364
	.long	-24505048
	.long	14972008
	.long	-7774265
	.long	-5718395
	.long	32155026
	.long	2581431
	.long	-29958985
	.long	8773375
	.long	-25568350
	.long	454463
	.long	-13211935
	.long	16126715
	.long	25240068
	.long	8594567
	.long	20656846
	.long	12017935
	.long	-7874389
	.long	-13920155
	.long	6028182
	.long	6263078
	.long	-31011806
	.long	-11301710
	.long	-818919
	.long	2461772
	.long	-31841174
	.long	-5468042
	.long	-1721788
	.long	-2776725
	.long	-12278994
	.long	16624277
	.long	987579
	.long	-5922598
	.long	32908203
	.long	1248608
	.long	7719845
	.long	-4166698
	.long	28408820
	.long	6816612
	.long	-10358094
	.long	-8237829
	.long	19549651
	.long	-12169222
	.long	22082623
	.long	16147817
	.long	20613181
	.long	13982702
	.long	-10339570
	.long	5067943
	.long	-30505967
	.long	-3821767
	.long	12074681
	.long	13582412
	.long	-19877972
	.long	2443951
	.long	-19719286
	.long	12746132
	.long	5331210
	.long	-10105944
	.long	30528811
	.long	3601899
	.long	-1957090
	.long	4619785
	.long	-27361822
	.long	-15436388
	.long	24180793
	.long	-12570394
	.long	27679908
	.long	-1648928
	.long	9402404
	.long	-13957065
	.long	32834043
	.long	10838634
	.long	-26580150
	.long	-13237195
	.long	26653274
	.long	-8685565
	.long	22611444
	.long	-12715406
	.long	22190590
	.long	1118029
	.long	22736441
	.long	15130463
	.long	-30460692
	.long	-5991321
	.long	19189625
	.long	-4648942
	.long	4854859
	.long	6622139
	.long	-8310738
	.long	-2953450
	.long	-8262579
	.long	-3388049
	.long	-10401731
	.long	-271929
	.long	13424426
	.long	-3567227
	.long	26404409
	.long	13001963
	.long	-31241838
	.long	-15415700
	.long	-2994250
	.long	8939346
	.long	11562230
	.long	-12840670
	.long	-26064365
	.long	-11621720
	.long	-15405155
	.long	11020693
	.long	1866042
	.long	-7949489
	.long	-7898649
	.long	-10301010
	.long	12483315
	.long	13477547
	.long	3175636
	.long	-12424163
	.long	28761762
	.long	1406734
	.long	-448555
	.long	-1777666
	.long	13018551
	.long	3194501
	.long	-9580420
	.long	-11161737
	.long	24760585
	.long	-4347088
	.long	25577411
	.long	-13378680
	.long	-24290378
	.long	4759345
	.long	-690653
	.long	-1852816
	.long	2066747
	.long	10693769
	.long	-29595790
	.long	9884936
	.long	-9368926
	.long	4745410
	.long	-9141284
	.long	6049714
	.long	-19531061
	.long	-4341411
	.long	-31260798
	.long	9944276
	.long	-15462008
	.long	-11311852
	.long	10931924
	.long	-11931931
	.long	-16561513
	.long	14112680
	.long	-8012645
	.long	4817318
	.long	-8040464
	.long	-11414606
	.long	-22853429
	.long	10856641
	.long	-20470770
	.long	13434654
	.long	22759489
	.long	-10073434
	.long	-16766264
	.long	-1871422
	.long	13637442
	.long	-10168091
	.long	1765144
	.long	-12654326
	.long	28445307
	.long	-5364710
	.long	29875063
	.long	12493613
	.long	2795536
	.long	-3786330
	.long	1710620
	.long	15181182
	.long	-10195717
	.long	-8788675
	.long	9074234
	.long	1167180
	.long	-26205683
	.long	11014233
	.long	-9842651
	.long	-2635485
	.long	-26908120
	.long	7532294
	.long	-18716888
	.long	-9535498
	.long	3843903
	.long	9367684
	.long	-10969595
	.long	-6403711
	.long	9591134
	.long	9582310
	.long	11349256
	.long	108879
	.long	16235123
	.long	8601684
	.long	-139197
	.long	4242895
	.long	22092954
	.long	-13191123
	.long	-2042793
	.long	-11968512
	.long	32186753
	.long	-11517388
	.long	-6574341
	.long	2470660
	.long	-27417366
	.long	16625501
	.long	-11057722
	.long	3042016
	.long	13770083
	.long	-9257922
	.long	584236
	.long	-544855
	.long	-7770857
	.long	2602725
	.long	-27351616
	.long	14247413
	.long	6314175
	.long	-10264892
	.long	-32772502
	.long	15957557
	.long	-10157730
	.long	168750
	.long	-8618807
	.long	14290061
	.long	27108877
	.long	-1180880
	.long	-8586597
	.long	-7170966
	.long	13241782
	.long	10960156
	.long	-32991015
	.long	-13794596
	.long	33547976
	.long	-11058889
	.long	-27148451
	.long	981874
	.long	22833440
	.long	9293594
	.long	-32649448
	.long	-13618667
	.long	-9136966
	.long	14756819
	.long	-22928859
	.long	-13970780
	.long	-10479804
	.long	-16197962
	.long	-7768587
	.long	3326786
	.long	-28111797
	.long	10783824
	.long	19178761
	.long	14905060
	.long	22680049
	.long	13906969
	.long	-15933690
	.long	3797899
	.long	21721356
	.long	-4212746
	.long	-12206123
	.long	9310182
	.long	-3882239
	.long	-13653110
	.long	23740224
	.long	-2709232
	.long	20491983
	.long	-8042152
	.long	9209270
	.long	-15135055
	.long	-13256557
	.long	-6167798
	.long	-731016
	.long	15289673
	.long	25947805
	.long	15286587
	.long	30997318
	.long	-6703063
	.long	7392032
	.long	16618386
	.long	23946583
	.long	-8039892
	.long	-13265164
	.long	-1533858
	.long	-14197445
	.long	-2321576
	.long	17649998
	.long	-250080
	.long	-9301088
	.long	-14193827
	.long	30609526
	.long	-3049543
	.long	-25175069
	.long	-1283752
	.long	-15241566
	.long	-9525724
	.long	-2233253
	.long	7662146
	.long	-17558673
	.long	1763594
	.long	-33114336
	.long	15908610
	.long	-30040870
	.long	-12174295
	.long	7335080
	.long	-8472199
	.long	-3174674
	.long	3440183
	.long	-19889700
	.long	-5977008
	.long	-24111293
	.long	-9688870
	.long	10799743
	.long	-16571957
	.long	40450
	.long	-4431835
	.long	4862400
	.long	1133
	.long	-32856209
	.long	-7873957
	.long	-5422389
	.long	14860950
	.long	-16319031
	.long	7956142
	.long	7258061
	.long	311861
	.long	-30594991
	.long	-7379421
	.long	-3773428
	.long	-1565936
	.long	28985340
	.long	7499440
	.long	24445838
	.long	9325937
	.long	29727763
	.long	16527196
	.long	18278453
	.long	15405622
	.long	-4381906
	.long	8508652
	.long	-19898366
	.long	-3674424
	.long	-5984453
	.long	15149970
	.long	-13313598
	.long	843523
	.long	-21875062
	.long	13626197
	.long	2281448
	.long	-13487055
	.long	-10915418
	.long	-2609910
	.long	1879358
	.long	16164207
	.long	-10783882
	.long	3953792
	.long	13340839
	.long	15928663
	.long	31727126
	.long	-7179855
	.long	-18437503
	.long	-8283652
	.long	2875793
	.long	-16390330
	.long	-25269894
	.long	-7014826
	.long	-23452306
	.long	5964753
	.long	4100420
	.long	-5959452
	.long	-17179337
	.long	6017714
	.long	-18705837
	.long	12227141
	.long	-26684835
	.long	11344144
	.long	2538215
	.long	-7570755
	.long	-9433605
	.long	6123113
	.long	11159803
	.long	-2156608
	.long	30016280
	.long	14966241
	.long	-20474983
	.long	1485421
	.long	-629256
	.long	-15958862
	.long	-26804558
	.long	4260919
	.long	11851389
	.long	9658551
	.long	-32017107
	.long	16367492
	.long	-20205425
	.long	-13191288
	.long	11659922
	.long	-11115118
	.long	26180396
	.long	10015009
	.long	-30844224
	.long	-8581293
	.long	5418197
	.long	9480663
	.long	2231568
	.long	-10170080
	.long	33100372
	.long	-1306171
	.long	15121113
	.long	-5201871
	.long	-10389905
	.long	15427821
	.long	-27509937
	.long	-15992507
	.long	21670947
	.long	4486675
	.long	-5931810
	.long	-14466380
	.long	16166486
	.long	-9483733
	.long	-11104130
	.long	6023908
	.long	-31926798
	.long	-1364923
	.long	2340060
	.long	-16254968
	.long	-10735770
	.long	-10039824
	.long	28042865
	.long	-3557089
	.long	-12126526
	.long	12259706
	.long	-3717498
	.long	-6945899
	.long	6766453
	.long	-8689599
	.long	18036436
	.long	5803270
	.long	-817581
	.long	6763912
	.long	11803561
	.long	1585585
	.long	10958447
	.long	-2671165
	.long	23855391
	.long	4598332
	.long	-6159431
	.long	-14117438
	.long	-31031306
	.long	-14256194
	.long	17332029
	.long	-2383520
	.long	31312682
	.long	-5967183
	.long	696309
	.long	50292
	.long	-20095739
	.long	11763584
	.long	-594563
	.long	-2514283
	.long	-32234153
	.long	12643980
	.long	12650761
	.long	14811489
	.long	665117
	.long	-12613632
	.long	-19773211
	.long	-10713562
	.long	30464590
	.long	-11262872
	.long	-4127476
	.long	-12734478
	.long	19835327
	.long	-7105613
	.long	-24396175
	.long	2075773
	.long	-17020157
	.long	992471
	.long	18357185
	.long	-6994433
	.long	7766382
	.long	16342475
	.long	-29324918
	.long	411174
	.long	14578841
	.long	8080033
	.long	-11574335
	.long	-10601610
	.long	19598397
	.long	10334610
	.long	12555054
	.long	2555664
	.long	18821899
	.long	-10339780
	.long	21873263
	.long	16014234
	.long	26224780
	.long	16452269
	.long	-30223925
	.long	5145196
	.long	5944548
	.long	16385966
	.long	3976735
	.long	2009897
	.long	-11377804
	.long	-7618186
	.long	-20533829
	.long	3698650
	.long	14187449
	.long	3448569
	.long	-10636236
	.long	-10810935
	.long	-22663880
	.long	-3433596
	.long	7268410
	.long	-10890444
	.long	27394301
	.long	12015369
	.long	19695761
	.long	16087646
	.long	28032085
	.long	12999827
	.long	6817792
	.long	11427614
	.long	20244189
	.long	-1312777
	.long	-13259127
	.long	-3402461
	.long	30860103
	.long	12735208
	.long	-1888245
	.long	-4699734
	.long	-16974906
	.long	2256940
	.long	-8166013
	.long	12298312
	.long	-8550524
	.long	-10393462
	.long	-5719826
	.long	-11245325
	.long	-1910649
	.long	15569035
	.long	26642876
	.long	-7587760
	.long	-5789354
	.long	-15118654
	.long	-4976164
	.long	12651793
	.long	-2848395
	.long	9953421
	.long	11531313
	.long	-5282879
	.long	26895123
	.long	-12697089
	.long	-13118820
	.long	-16517902
	.long	9768698
	.long	-2533218
	.long	-24719459
	.long	1894651
	.long	-287698
	.long	-4704085
	.long	15348719
	.long	-8156530
	.long	32767513
	.long	12765450
	.long	4940095
	.long	10678226
	.long	18860224
	.long	15980149
	.long	-18987240
	.long	-1562570
	.long	-26233012
	.long	-11071856
	.long	-7843882
	.long	13944024
	.long	-24372348
	.long	16582019
	.long	-15504260
	.long	4970268
	.long	-29893044
	.long	4175593
	.long	-20993212
	.long	-2199756
	.long	-11704054
	.long	15444560
	.long	-11003761
	.long	7989037
	.long	31490452
	.long	5568061
	.long	-2412803
	.long	2182383
	.long	-32336847
	.long	4531686
	.long	-32078269
	.long	6200206
	.long	-19686113
	.long	-14800171
	.long	-17308668
	.long	-15879940
	.long	-31522777
	.long	-2831
	.long	-32887382
	.long	16375549
	.long	8680158
	.long	-16371713
	.long	28550068
	.long	-6857132
	.long	-28126887
	.long	-5688091
	.long	16837845
	.long	-1820458
	.long	-6850681
	.long	12700016
	.long	-30039981
	.long	4364038
	.long	1155602
	.long	5988841
	.long	21890435
	.long	-13272907
	.long	-12624011
	.long	12154349
	.long	-7831873
	.long	15300496
	.long	23148983
	.long	-4470481
	.long	24618407
	.long	8283181
	.long	-33136107
	.long	-10512751
	.long	9975416
	.long	6841041
	.long	-31559793
	.long	16356536
	.long	3070187
	.long	-7025928
	.long	1466169
	.long	10740210
	.long	-1509399
	.long	-15488185
	.long	-13503385
	.long	-10655916
	.long	32799044
	.long	909394
	.long	-13938903
	.long	-5779719
	.long	-32164649
	.long	-15327040
	.long	3960823
	.long	-14267803
	.long	-28026090
	.long	-15918051
	.long	-19404858
	.long	13146868
	.long	15567327
	.long	951507
	.long	-3260321
	.long	-573935
	.long	24740841
	.long	5052253
	.long	-30094131
	.long	8961361
	.long	25877428
	.long	6165135
	.long	-24368180
	.long	14397372
	.long	-7380369
	.long	-6144105
	.long	-28888365
	.long	3510803
	.long	-28103278
	.long	-1158478
	.long	-11238128
	.long	-10631454
	.long	-15441463
	.long	-14453128
	.long	-1625486
	.long	-6494814
	.long	793299
	.long	-9230478
	.long	8836302
	.long	-6235707
	.long	-27360908
	.long	-2369593
	.long	33152843
	.long	-4885251
	.long	-9906200
	.long	-621852
	.long	5666233
	.long	525582
	.long	20782575
	.long	-8038419
	.long	-24538499
	.long	14657740
	.long	16099374
	.long	1468826
	.long	-6171428
	.long	-15186581
	.long	-4859255
	.long	-3779343
	.long	-2917758
	.long	-6748019
	.long	7778750
	.long	11688288
	.long	-30404353
	.long	-9871238
	.long	-1558923
	.long	-9863646
	.long	10896332
	.long	-7719704
	.long	824275
	.long	472601
	.long	-19460308
	.long	3009587
	.long	25248958
	.long	14783338
	.long	-30581476
	.long	-15757844
	.long	10566929
	.long	12612572
	.long	-31944212
	.long	11118703
	.long	-12633376
	.long	12362879
	.long	21752402
	.long	8822496
	.long	24003793
	.long	14264025
	.long	27713862
	.long	-7355973
	.long	-11008240
	.long	9227530
	.long	27050101
	.long	2504721
	.long	23886875
	.long	-13117525
	.long	13958495
	.long	-5732453
	.long	-23481610
	.long	4867226
	.long	-27247128
	.long	3900521
	.long	29838369
	.long	-8212291
	.long	-31889399
	.long	-10041781
	.long	7340521
	.long	-15410068
	.long	4646514
	.long	-8011124
	.long	-22766023
	.long	-11532654
	.long	23184553
	.long	8566613
	.long	31366726
	.long	-1381061
	.long	-15066784
	.long	-10375192
	.long	-17270517
	.long	12723032
	.long	-16993061
	.long	14878794
	.long	21619651
	.long	-6197576
	.long	27584817
	.long	3093888
	.long	-8843694
	.long	3849921
	.long	-9064912
	.long	2103172
	.long	25561640
	.long	-15125738
	.long	-5239824
	.long	9582958
	.long	32477045
	.long	-9017955
	.long	5002294
	.long	-15550259
	.long	-12057553
	.long	-11177906
	.long	21115585
	.long	-13365155
	.long	8808712
	.long	-12030708
	.long	16489530
	.long	13378448
	.long	-25845716
	.long	12741426
	.long	-5946367
	.long	10645103
	.long	-30911586
	.long	15390284
	.long	-3286982
	.long	-7118677
	.long	24306472
	.long	15852464
	.long	28834118
	.long	-7646072
	.long	-17335748
	.long	-9107057
	.long	-24531279
	.long	9434953
	.long	-8472084
	.long	-583362
	.long	-13090771
	.long	455841
	.long	20461858
	.long	5491305
	.long	13669248
	.long	-16095482
	.long	-12481974
	.long	-10203039
	.long	-14569770
	.long	-11893198
	.long	-24995986
	.long	11293807
	.long	-28588204
	.long	-9421832
	.long	28497928
	.long	6272777
	.long	-33022994
	.long	14470570
	.long	8906179
	.long	-1225630
	.long	18504674
	.long	-14165166
	.long	29867745
	.long	-8795943
	.long	-16207023
	.long	13517196
	.long	-27799630
	.long	-13697798
	.long	24009064
	.long	-6373891
	.long	-6367600
	.long	-13175392
	.long	22853429
	.long	-4012011
	.long	24191378
	.long	16712145
	.long	-13931797
	.long	15217831
	.long	14542237
	.long	1646131
	.long	18603514
	.long	-11037887
	.long	12876623
	.long	-2112447
	.long	17902668
	.long	4518229
	.long	-411702
	.long	-2829247
	.long	26878217
	.long	5258055
	.long	-12860753
	.long	608397
	.long	16031844
	.long	3723494
	.long	-28632773
	.long	12763728
	.long	-20446446
	.long	7577504
	.long	33001348
	.long	-13017745
	.long	17558842
	.long	-7872890
	.long	23896954
	.long	-4314245
	.long	-20005381
	.long	-12011952
	.long	31520464
	.long	605201
	.long	2543521
	.long	5991821
	.long	-2945064
	.long	7229064
	.long	-9919646
	.long	-8826859
	.long	28816045
	.long	298879
	.long	-28165016
	.long	-15920938
	.long	19000928
	.long	-1665890
	.long	-12680833
	.long	-2949325
	.long	-18051778
	.long	-2082915
	.long	16000882
	.long	-344896
	.long	3493092
	.long	-11447198
	.long	-29504595
	.long	-13159789
	.long	12577740
	.long	16041268
	.long	-19715240
	.long	7847707
	.long	10151868
	.long	10572098
	.long	27312476
	.long	7922682
	.long	14825339
	.long	4723128
	.long	-32855931
	.long	-6519018
	.long	-10020567
	.long	3852848
	.long	-11430470
	.long	15697596
	.long	-21121557
	.long	-4420647
	.long	5386314
	.long	15063598
	.long	16514493
	.long	-15932110
	.long	29330899
	.long	-15076224
	.long	-25499735
	.long	-4378794
	.long	-15222908
	.long	-6901211
	.long	16615731
	.long	2051784
	.long	3303702
	.long	15490
	.long	-27548796
	.long	12314391
	.long	15683520
	.long	-6003043
	.long	18109120
	.long	-9980648
	.long	15337968
	.long	-5997823
	.long	-16717435
	.long	15921866
	.long	16103996
	.long	-3731215
	.long	-23169824
	.long	-10781249
	.long	13588192
	.long	-1628807
	.long	-3798557
	.long	-1074929
	.long	-19273607
	.long	5402699
	.long	-29815713
	.long	-9841101
	.long	23190676
	.long	2384583
	.long	-32714340
	.long	3462154
	.long	-29903655
	.long	-1529132
	.long	-11266856
	.long	8911517
	.long	-25205859
	.long	2739713
	.long	21374101
	.long	-3554250
	.long	-33524649
	.long	9874411
	.long	15377179
	.long	11831242
	.long	-33529904
	.long	6134907
	.long	4931255
	.long	11987849
	.long	-7732
	.long	-2978858
	.long	-16223486
	.long	7277597
	.long	105524
	.long	-322051
	.long	-31480539
	.long	13861388
	.long	-30076310
	.long	10117930
	.long	-29501170
	.long	-10744872
	.long	-26163768
	.long	13051539
	.long	-25625564
	.long	5089643
	.long	-6325503
	.long	6704079
	.long	12890019
	.long	15728940
	.long	-21972360
	.long	-11771379
	.long	-951059
	.long	-4418840
	.long	14704840
	.long	2695116
	.long	903376
	.long	-10428139
	.long	12885167
	.long	8311031
	.long	-17516482
	.long	5352194
	.long	10384213
	.long	-13811658
	.long	7506451
	.long	13453191
	.long	26423267
	.long	4384730
	.long	1888765
	.long	-5435404
	.long	-25817338
	.long	-3107312
	.long	-13494599
	.long	-3182506
	.long	30896459
	.long	-13921729
	.long	-32251644
	.long	-12707869
	.long	-19464434
	.long	-3340243
	.long	-23607977
	.long	-2665774
	.long	-526091
	.long	4651136
	.long	5765089
	.long	4618330
	.long	6092245
	.long	14845197
	.long	17151279
	.long	-9854116
	.long	-24830458
	.long	-12733720
	.long	-15165978
	.long	10367250
	.long	-29530908
	.long	-265356
	.long	22825805
	.long	-7087279
	.long	-16866484
	.long	16176525
	.long	-23583256
	.long	6564961
	.long	20063689
	.long	3798228
	.long	-4740178
	.long	7359225
	.long	2006182
	.long	-10363426
	.long	-28746253
	.long	-10197509
	.long	-10626600
	.long	-4486402
	.long	-13320562
	.long	-5125317
	.long	3432136
	.long	-6393229
	.long	23632037
	.long	-1940610
	.long	32808310
	.long	1099883
	.long	15030977
	.long	5768825
	.long	-27451236
	.long	-2887299
	.long	-6427378
	.long	-15361371
	.long	-15277896
	.long	-6809350
	.long	2051441
	.long	-15225865
	.long	-3362323
	.long	-7239372
	.long	7517890
	.long	9824992
	.long	23555850
	.long	295369
	.long	5148398
	.long	-14154188
	.long	-22686354
	.long	16633660
	.long	4577086
	.long	-16752288
	.long	13249841
	.long	-15304328
	.long	19958763
	.long	-14537274
	.long	18559670
	.long	-10759549
	.long	8402478
	.long	-9864273
	.long	-28406330
	.long	-1051581
	.long	-26790155
	.long	-907698
	.long	-17212414
	.long	-11030789
	.long	9453451
	.long	-14980072
	.long	17983010
	.long	9967138
	.long	-25762494
	.long	6524722
	.long	26585488
	.long	9969270
	.long	24709298
	.long	1220360
	.long	-1677990
	.long	7806337
	.long	17507396
	.long	3651560
	.long	-10420457
	.long	-4118111
	.long	14584639
	.long	15971087
	.long	-15768321
	.long	8861010
	.long	26556809
	.long	-5574557
	.long	-18553322
	.long	-11357135
	.long	2839101
	.long	14284142
	.long	4029895
	.long	3472686
	.long	14402957
	.long	12689363
	.long	-26642121
	.long	8459447
	.long	-5605463
	.long	-7621941
	.long	-4839289
	.long	-3535444
	.long	9744961
	.long	2871048
	.long	25113978
	.long	3187018
	.long	-25110813
	.long	-849066
	.long	17258084
	.long	-7977739
	.long	18164541
	.long	-10595176
	.long	-17154882
	.long	-1542417
	.long	19237078
	.long	-9745295
	.long	23357533
	.long	-15217008
	.long	26908270
	.long	12150756
	.long	-30264870
	.long	-7647865
	.long	5112249
	.long	-7036672
	.long	-1499807
	.long	-6974257
	.long	43168
	.long	-5537701
	.long	-32302074
	.long	16215819
	.long	-6898905
	.long	9824394
	.long	-12304779
	.long	-4401089
	.long	-31397141
	.long	-6276835
	.long	32574489
	.long	12532905
	.long	-7503072
	.long	-8675347
	.long	-27343522
	.long	-16515468
	.long	-27151524
	.long	-10722951
	.long	946346
	.long	16291093
	.long	254968
	.long	7168080
	.long	21676107
	.long	-1943028
	.long	21260961
	.long	-8424752
	.long	-16831886
	.long	-11920822
	.long	-23677961
	.long	3968121
	.long	-3651949
	.long	-6215466
	.long	-3556191
	.long	-7913075
	.long	16544754
	.long	13250366
	.long	-16804428
	.long	15546242
	.long	-4583003
	.long	12757258
	.long	-2462308
	.long	-8680336
	.long	-18907032
	.long	-9662799
	.long	-2415239
	.long	-15577728
	.long	18312303
	.long	4964443
	.long	-15272530
	.long	-12653564
	.long	26820651
	.long	16690659
	.long	25459437
	.long	-4564609
	.long	-25144690
	.long	11425020
	.long	28423002
	.long	-11020557
	.long	-6144921
	.long	-15826224
	.long	9142795
	.long	-2391602
	.long	-6432418
	.long	-1644817
	.long	-23104652
	.long	6253476
	.long	16964147
	.long	-3768872
	.long	-25113972
	.long	-12296437
	.long	-27457225
	.long	-16344658
	.long	6335692
	.long	7249989
	.long	-30333227
	.long	13979675
	.long	7503222
	.long	-12368314
	.long	-11956721
	.long	-4621693
	.long	-30272269
	.long	2682242
	.long	25993170
	.long	-12478523
	.long	4364628
	.long	5930691
	.long	32304656
	.long	-10044554
	.long	-8054781
	.long	15091131
	.long	22857016
	.long	-10598955
	.long	31820368
	.long	15075278
	.long	31879134
	.long	-8918693
	.long	17258761
	.long	90626
	.long	-8041836
	.long	-4917709
	.long	24162788
	.long	-9650886
	.long	-17970238
	.long	12833045
	.long	19073683
	.long	14851414
	.long	-24403169
	.long	-11860168
	.long	7625278
	.long	11091125
	.long	-19619190
	.long	2074449
	.long	-9413939
	.long	14905377
	.long	24483667
	.long	-11935567
	.long	-2518866
	.long	-11547418
	.long	-1553130
	.long	15355506
	.long	-25282080
	.long	9253129
	.long	27628530
	.long	-7555480
	.long	17597607
	.long	8340603
	.long	19355617
	.long	552187
	.long	26198470
	.long	-3176583
	.long	4593324
	.long	-9157582
	.long	-14110875
	.long	15297016
	.long	510886
	.long	14337390
	.long	-31785257
	.long	16638632
	.long	6328095
	.long	2713355
	.long	-20217417
	.long	-11864220
	.long	8683221
	.long	2921426
	.long	18606791
	.long	11874196
	.long	27155355
	.long	-5281482
	.long	-24031742
	.long	6265446
	.long	-25178240
	.long	-1278924
	.long	4674690
	.long	13890525
	.long	13609624
	.long	13069022
	.long	-27372361
	.long	-13055908
	.long	24360586
	.long	9592974
	.long	14977157
	.long	9835105
	.long	4389687
	.long	288396
	.long	9922506
	.long	-519394
	.long	13613107
	.long	5883594
	.long	-18758345
	.long	-434263
	.long	-12304062
	.long	8317628
	.long	23388070
	.long	16052080
	.long	12720016
	.long	11937594
	.long	-31970060
	.long	-5028689
	.long	26900120
	.long	8561328
	.long	-20155687
	.long	-11632979
	.long	-14754271
	.long	-10812892
	.long	15961858
	.long	14150409
	.long	26716931
	.long	-665832
	.long	-22794328
	.long	13603569
	.long	11829573
	.long	7467844
	.long	-28822128
	.long	929275
	.long	11038231
	.long	-11582396
	.long	-27310482
	.long	-7316562
	.long	-10498527
	.long	-16307831
	.long	-23479533
	.long	-9371869
	.long	-21393143
	.long	2465074
	.long	20017163
	.long	-4323226
	.long	27915242
	.long	1529148
	.long	12396362
	.long	15675764
	.long	13817261
	.long	-9658066
	.long	2463391
	.long	-4622140
	.long	-16358878
	.long	-12663911
	.long	-12065183
	.long	4996454
	.long	-1256422
	.long	1073572
	.long	9583558
	.long	12851107
	.long	4003896
	.long	12673717
	.long	-1731589
	.long	-15155870
	.long	-3262930
	.long	16143082
	.long	19294135
	.long	13385325
	.long	14741514
	.long	-9103726
	.long	7903886
	.long	2348101
	.long	24536016
	.long	-16515207
	.long	12715592
	.long	-3862155
	.long	1511293
	.long	10047386
	.long	-3842346
	.long	-7129159
	.long	-28377538
	.long	10048127
	.long	-12622226
	.long	-6204820
	.long	30718825
	.long	2591312
	.long	-10617028
	.long	12192840
	.long	18873298
	.long	-7297090
	.long	-32297756
	.long	15221632
	.long	-26478122
	.long	-11103864
	.long	11546244
	.long	-1852483
	.long	9180880
	.long	7656409
	.long	-21343950
	.long	2095755
	.long	29769758
	.long	6593415
	.long	-31994208
	.long	-2907461
	.long	4176912
	.long	3264766
	.long	12538965
	.long	-868111
	.long	26312345
	.long	-6118678
	.long	30958054
	.long	8292160
	.long	31429822
	.long	-13959116
	.long	29173532
	.long	15632448
	.long	12174511
	.long	-2760094
	.long	32808831
	.long	3977186
	.long	26143136
	.long	-3148876
	.long	22648901
	.long	1402143
	.long	-22799984
	.long	13746059
	.long	7936347
	.long	365344
	.long	-8668633
	.long	-1674433
	.long	-3758243
	.long	-2304625
	.long	-15491917
	.long	8012313
	.long	-2514730
	.long	-12702462
	.long	-23965846
	.long	-10254029
	.long	-1612713
	.long	-1535569
	.long	-16664475
	.long	8194478
	.long	27338066
	.long	-7507420
	.long	-7414224
	.long	10140405
	.long	-19026427
	.long	-6589889
	.long	27277191
	.long	8855376
	.long	28572286
	.long	3005164
	.long	26287124
	.long	4821776
	.long	25476601
	.long	-4145903
	.long	-3764513
	.long	-15788984
	.long	-18008582
	.long	1182479
	.long	-26094821
	.long	-13079595
	.long	-7171154
	.long	3178080
	.long	23970071
	.long	6201893
	.long	-17195577
	.long	-4489192
	.long	-21876275
	.long	-13982627
	.long	32208683
	.long	-1198248
	.long	-16657702
	.long	2817643
	.long	-10286362
	.long	14811298
	.long	6024667
	.long	13349505
	.long	-27315504
	.long	-10497842
	.long	-27672585
	.long	-11539858
	.long	15941029
	.long	-9405932
	.long	-21367050
	.long	8062055
	.long	31876073
	.long	-238629
	.long	-15278393
	.long	-1444429
	.long	15397331
	.long	-4130193
	.long	8934485
	.long	-13485467
	.long	-23286397
	.long	-13423241
	.long	-32446090
	.long	14047986
	.long	31170398
	.long	-1441021
	.long	-27505566
	.long	15087184
	.long	-18357243
	.long	-2156491
	.long	24524913
	.long	-16677868
	.long	15520427
	.long	-6360776
	.long	-15502406
	.long	11461896
	.long	16788528
	.long	-5868942
	.long	-1947386
	.long	16013773
	.long	21750665
	.long	3714552
	.long	-17401782
	.long	-16055433
	.long	-3770287
	.long	-10323320
	.long	31322514
	.long	-11615635
	.long	21426655
	.long	-5650218
	.long	-13648287
	.long	-5347537
	.long	-28812189
	.long	-4920970
	.long	-18275391
	.long	-14621414
	.long	13040862
	.long	-12112948
	.long	11293895
	.long	12478086
	.long	-27136401
	.long	15083750
	.long	-29307421
	.long	14748872
	.long	14555558
	.long	-13417103
	.long	1613711
	.long	4896935
	.long	-25894883
	.long	15323294
	.long	-8489791
	.long	-8057900
	.long	25967126
	.long	-13425460
	.long	2825960
	.long	-4897045
	.long	-23971776
	.long	-11267415
	.long	-15924766
	.long	-5229880
	.long	-17443532
	.long	6410664
	.long	3622847
	.long	10243618
	.long	20615400
	.long	12405433
	.long	-23753030
	.long	-8436416
	.long	-7091295
	.long	12556208
	.long	-20191352
	.long	9025187
	.long	-17072479
	.long	4333801
	.long	4378436
	.long	2432030
	.long	23097949
	.long	-566018
	.long	4565804
	.long	-16025654
	.long	20084412
	.long	-7842817
	.long	1724999
	.long	189254
	.long	24767264
	.long	10103221
	.long	-18512313
	.long	2424778
	.long	366633
	.long	-11976806
	.long	8173090
	.long	-6890119
	.long	30788634
	.long	5745705
	.long	-7168678
	.long	1344109
	.long	-3642553
	.long	12412659
	.long	-24001791
	.long	7690286
	.long	14929416
	.long	-168257
	.long	-32210835
	.long	-13412986
	.long	24162697
	.long	-15326504
	.long	-3141501
	.long	11179385
	.long	18289522
	.long	-14724954
	.long	8056945
	.long	16430056
	.long	-21729724
	.long	7842514
	.long	-6001441
	.long	-1486897
	.long	-18684645
	.long	-11443503
	.long	476239
	.long	6601091
	.long	-6152790
	.long	-9723375
	.long	17503545
	.long	-4863900
	.long	27672959
	.long	13403813
	.long	11052904
	.long	5219329
	.long	20678546
	.long	-8375738
	.long	-32671898
	.long	8849123
	.long	-5009758
	.long	14574752
	.long	31186971
	.long	-3973730
	.long	9014762
	.long	-8579056
	.long	-13644050
	.long	-10350239
	.long	-15962508
	.long	5075808
	.long	-1514661
	.long	-11534600
	.long	-33102500
	.long	9160280
	.long	8473550
	.long	-3256838
	.long	24900749
	.long	14435722
	.long	17209120
	.long	-15292541
	.long	-22592275
	.long	9878983
	.long	-7689309
	.long	-16335821
	.long	-24568481
	.long	11788948
	.long	-3118155
	.long	-11395194
	.long	-13802089
	.long	14797441
	.long	9652448
	.long	-6845904
	.long	-20037437
	.long	10410733
	.long	-24568470
	.long	-1458691
	.long	-15659161
	.long	16736706
	.long	-22467150
	.long	10215878
	.long	-9097177
	.long	7563911
	.long	11871841
	.long	-12505194
	.long	-18513325
	.long	8464118
	.long	-23400612
	.long	8348507
	.long	-14585951
	.long	-861714
	.long	-3950205
	.long	-6373419
	.long	14325289
	.long	8628612
	.long	33313881
	.long	-8370517
	.long	-20186973
	.long	-4967935
	.long	22367356
	.long	5271547
	.long	-1097117
	.long	-4788838
	.long	-24805667
	.long	-10236854
	.long	-8940735
	.long	-5818269
	.long	-6948785
	.long	-1795212
	.long	-32625683
	.long	-16021179
	.long	32635414
	.long	-7374245
	.long	15989197
	.long	-12838188
	.long	28358192
	.long	-4253904
	.long	-23561781
	.long	-2799059
	.long	-32351682
	.long	-1661963
	.long	-9147719
	.long	10429267
	.long	-16637684
	.long	4072016
	.long	-5351664
	.long	5596589
	.long	-28236598
	.long	-3390048
	.long	12312896
	.long	6213178
	.long	3117142
	.long	16078565
	.long	29266239
	.long	2557221
	.long	1768301
	.long	15373193
	.long	-7243358
	.long	-3246960
	.long	-4593467
	.long	-7553353
	.long	-127927
	.long	-912245
	.long	-1090902
	.long	-4504991
	.long	-24660491
	.long	3442910
	.long	-30210571
	.long	5124043
	.long	14181784
	.long	8197961
	.long	18964734
	.long	-11939093
	.long	22597931
	.long	7176455
	.long	-18585478
	.long	13365930
	.long	-7877390
	.long	-1499958
	.long	8324673
	.long	4690079
	.long	6261860
	.long	890446
	.long	24538107
	.long	-8570186
	.long	-9689599
	.long	-3031667
	.long	25008904
	.long	-10771599
	.long	-4305031
	.long	-9638010
	.long	16265036
	.long	15721635
	.long	683793
	.long	-11823784
	.long	15723479
	.long	-15163481
	.long	-9660625
	.long	12374379
	.long	-27006999
	.long	-7026148
	.long	-7724114
	.long	-12314514
	.long	11879682
	.long	5400171
	.long	519526
	.long	-1235876
	.long	22258397
	.long	-16332233
	.long	-7869817
	.long	14613016
	.long	-22520255
	.long	-2950923
	.long	-20353881
	.long	7315967
	.long	16648397
	.long	7605640
	.long	-8081308
	.long	-8464597
	.long	-8223311
	.long	9719710
	.long	19259459
	.long	-15348212
	.long	23994942
	.long	-5281555
	.long	-9468848
	.long	4763278
	.long	-21699244
	.long	9220969
	.long	-15730624
	.long	1084137
	.long	-25476107
	.long	-2852390
	.long	31088447
	.long	-7764523
	.long	-11356529
	.long	728112
	.long	26047220
	.long	-11751471
	.long	-6900323
	.long	-16521798
	.long	24092068
	.long	9158119
	.long	-4273545
	.long	-12555558
	.long	-29365436
	.long	-5498272
	.long	17510331
	.long	-322857
	.long	5854289
	.long	8403524
	.long	17133918
	.long	-3112612
	.long	-28111007
	.long	12327945
	.long	10750447
	.long	10014012
	.long	-10312768
	.long	3936952
	.long	9156313
	.long	-8897683
	.long	16498692
	.long	-994647
	.long	-27481051
	.long	-666732
	.long	3424691
	.long	7540221
	.long	30322361
	.long	-6964110
	.long	11361005
	.long	-4143317
	.long	7433304
	.long	4989748
	.long	-7071422
	.long	-16317219
	.long	-9244265
	.long	15258046
	.long	13054562
	.long	-2779497
	.long	19155474
	.long	469045
	.long	-12482797
	.long	4566042
	.long	5631406
	.long	2711395
	.long	1062915
	.long	-5136345
	.long	-19240248
	.long	-11254599
	.long	-29509029
	.long	-7499965
	.long	-5835763
	.long	13005411
	.long	-6066489
	.long	12194497
	.long	32960380
	.long	1459310
	.long	19852034
	.long	7027924
	.long	23669353
	.long	10020366
	.long	8586503
	.long	-6657907
	.long	394197
	.long	-6101885
	.long	18638003
	.long	-11174937
	.long	31395534
	.long	15098109
	.long	26581030
	.long	8030562
	.long	-16527914
	.long	-5007134
	.long	9012486
	.long	-7584354
	.long	-6643087
	.long	-5442636
	.long	-9192165
	.long	-2347377
	.long	-1997099
	.long	4529534
	.long	25766844
	.long	607986
	.long	-13222
	.long	9677543
	.long	-32294889
	.long	-6456008
	.long	-2444496
	.long	-149937
	.long	29348902
	.long	8186665
	.long	1873760
	.long	12489863
	.long	-30934579
	.long	-7839692
	.long	-7852844
	.long	-8138429
	.long	-15236356
	.long	-15433509
	.long	7766470
	.long	746860
	.long	26346930
	.long	-10221762
	.long	-27333451
	.long	10754588
	.long	-9431476
	.long	5203576
	.long	31834314
	.long	14135496
	.long	-770007
	.long	5159118
	.long	20917671
	.long	-16768096
	.long	-7467973
	.long	-7337524
	.long	31809243
	.long	7347066
	.long	-9606723
	.long	-11874240
	.long	20414459
	.long	13033986
	.long	13716524
	.long	-11691881
	.long	19797970
	.long	-12211255
	.long	15192876
	.long	-2087490
	.long	-12663563
	.long	-2181719
	.long	1168162
	.long	-3804809
	.long	26747877
	.long	-14138091
	.long	10609330
	.long	12694420
	.long	33473243
	.long	-13382104
	.long	33184999
	.long	11180355
	.long	15832085
	.long	-11385430
	.long	-1633671
	.long	225884
	.long	15089336
	.long	-11023903
	.long	-6135662
	.long	14480053
	.long	31308717
	.long	-5619998
	.long	31030840
	.long	-1897099
	.long	15674547
	.long	-6582883
	.long	5496208
	.long	13685227
	.long	27595050
	.long	8737275
	.long	-20318852
	.long	-15150239
	.long	10933843
	.long	-16178022
	.long	8335352
	.long	-7546022
	.long	-31008351
	.long	-12610604
	.long	26498114
	.long	66511
	.long	22644454
	.long	-8761729
	.long	-16671776
	.long	4884562
	.long	-3105614
	.long	-13559366
	.long	30540766
	.long	-4286747
	.long	-13327787
	.long	-7515095
	.long	-28017847
	.long	9834845
	.long	18617207
	.long	-2681312
	.long	-3401956
	.long	-13307506
	.long	8205540
	.long	13585437
	.long	-17127465
	.long	15115439
	.long	23711543
	.long	-672915
	.long	31206561
	.long	-8362711
	.long	6164647
	.long	-9709987
	.long	-33535882
	.long	-1426096
	.long	8236921
	.long	16492939
	.long	-23910559
	.long	-13515526
	.long	-26299483
	.long	-4503841
	.long	25005590
	.long	-7687270
	.long	19574902
	.long	10071562
	.long	6708380
	.long	-6222424
	.long	2101391
	.long	-4930054
	.long	19702731
	.long	2367575
	.long	-15427167
	.long	1047675
	.long	5301017
	.long	9328700
	.long	29955601
	.long	-11678310
	.long	3096359
	.long	9271816
	.long	-21620864
	.long	-15521844
	.long	-14847996
	.long	-7592937
	.long	-25892142
	.long	-12635595
	.long	-9917575
	.long	6216608
	.long	-32615849
	.long	338663
	.long	-25195611
	.long	2510422
	.long	-29213566
	.long	-13820213
	.long	24822830
	.long	-6146567
	.long	-26767480
	.long	7525079
	.long	-23066649
	.long	-13985623
	.long	16133487
	.long	-7896178
	.long	-3389565
	.long	778788
	.long	-910336
	.long	-2782495
	.long	-19386633
	.long	11994101
	.long	21691500
	.long	-13624626
	.long	-641331
	.long	-14367021
	.long	3285881
	.long	-3483596
	.long	-25064666
	.long	9718258
	.long	-7477437
	.long	13381418
	.long	18445390
	.long	-4202236
	.long	14979846
	.long	11622458
	.long	-1727110
	.long	-3582980
	.long	23111648
	.long	-6375247
	.long	28535282
	.long	15779576
	.long	30098053
	.long	3089662
	.long	-9234387
	.long	16662135
	.long	-21306940
	.long	11308411
	.long	-14068454
	.long	12021730
	.long	9955285
	.long	-16303356
	.long	9734894
	.long	-14576830
	.long	-7473633
	.long	-9138735
	.long	2060392
	.long	11313496
	.long	-18426029
	.long	9924399
	.long	20194861
	.long	13380996
	.long	-26378102
	.long	-7965207
	.long	-22167821
	.long	15789297
	.long	-18055342
	.long	-6168792
	.long	-1984914
	.long	15707771
	.long	26342023
	.long	10146099
	.long	-26016874
	.long	-219943
	.long	21339191
	.long	-41388
	.long	19745256
	.long	-2878700
	.long	-29637280
	.long	2227040
	.long	21612326
	.long	-545728
	.long	-13077387
	.long	1184228
	.long	23562814
	.long	-5970442
	.long	-20351244
	.long	-6348714
	.long	25764461
	.long	12243797
	.long	-20856566
	.long	11649658
	.long	-10031494
	.long	11262626
	.long	27384172
	.long	2271902
	.long	26947504
	.long	-15997771
	.long	39944
	.long	6114064
	.long	33514190
	.long	2333242
	.long	-21433588
	.long	-12421821
	.long	8119782
	.long	7219913
	.long	-21830522
	.long	-9016134
	.long	-6679750
	.long	-12670638
	.long	24350578
	.long	-13450001
	.long	-4116307
	.long	-11271533
	.long	-23886186
	.long	4843615
	.long	-30088339
	.long	690623
	.long	-31536088
	.long	-10406836
	.long	8317860
	.long	12352766
	.long	18200138
	.long	-14475911
	.long	-33087759
	.long	-2696619
	.long	-23702521
	.long	-9102511
	.long	-23552096
	.long	-2287550
	.long	20712163
	.long	6719373
	.long	26656208
	.long	6075253
	.long	-7858556
	.long	1886072
	.long	-28344043
	.long	4262326
	.long	11117530
	.long	-3763210
	.long	26224235
	.long	-3297458
	.long	-17168938
	.long	-14854097
	.long	-3395676
	.long	-16369877
	.long	-19954045
	.long	14050420
	.long	21728352
	.long	9493610
	.long	18620611
	.long	-16428628
	.long	-13323321
	.long	13325349
	.long	11432106
	.long	5964811
	.long	18609221
	.long	6062965
	.long	-5269471
	.long	-9725556
	.long	-30701573
	.long	-16479657
	.long	-23860538
	.long	-11233159
	.long	26961357
	.long	1640861
	.long	-32413112
	.long	-16737940
	.long	12248509
	.long	-5240639
	.long	13735342
	.long	1934062
	.long	25089769
	.long	6742589
	.long	17081145
	.long	-13406266
	.long	21909293
	.long	-16067981
	.long	-15136294
	.long	-3765346
	.long	-21277997
	.long	5473616
	.long	31883677
	.long	-7961101
	.long	1083432
	.long	-11572403
	.long	22828471
	.long	13290673
	.long	-7125085
	.long	12469656
	.long	29111212
	.long	-5451014
	.long	24244947
	.long	-15050407
	.long	-26262976
	.long	2791540
	.long	-14997599
	.long	16666678
	.long	24367466
	.long	6388839
	.long	-10295587
	.long	452383
	.long	-25640782
	.long	-3417841
	.long	5217916
	.long	16224624
	.long	19987036
	.long	-4082269
	.long	-24236251
	.long	-5915248
	.long	15766062
	.long	8407814
	.long	-20406999
	.long	13990231
	.long	15495425
	.long	16395525
	.long	5377168
	.long	15166495
	.long	-8917023
	.long	-4388953
	.long	-8067909
	.long	2276718
	.long	30157918
	.long	12924066
	.long	-17712050
	.long	9245753
	.long	19895028
	.long	3368142
	.long	-23827587
	.long	5096219
	.long	22740376
	.long	-7303417
	.long	2041139
	.long	-14256350
	.long	7783687
	.long	13876377
	.long	-25946985
	.long	-13352459
	.long	24051124
	.long	13742383
	.long	-15637599
	.long	13295222
	.long	33338237
	.long	-8505733
	.long	12532113
	.long	7977527
	.long	9106186
	.long	-1715251
	.long	-17720195
	.long	-4612972
	.long	-4451357
	.long	-14669444
	.long	-20045281
	.long	5454097
	.long	-14346548
	.long	6447146
	.long	28862071
	.long	1883651
	.long	-2469266
	.long	-4141880
	.long	7770569
	.long	9620597
	.long	23208068
	.long	7979712
	.long	33071466
	.long	8149229
	.long	1758231
	.long	-10834995
	.long	30945528
	.long	-1694323
	.long	-33502340
	.long	-14767970
	.long	1439958
	.long	-16270480
	.long	-1079989
	.long	-793782
	.long	4625402
	.long	10647766
	.long	-5043801
	.long	1220118
	.long	30494170
	.long	-11440799
	.long	-5037580
	.long	-13028295
	.long	-2970559
	.long	-3061767
	.long	15640974
	.long	-6701666
	.long	-26739026
	.long	926050
	.long	-1684339
	.long	-13333647
	.long	13908495
	.long	-3549272
	.long	30919928
	.long	-6273825
	.long	-21521863
	.long	7989039
	.long	9021034
	.long	9078865
	.long	3353509
	.long	4033511
	.long	-29663431
	.long	-15113610
	.long	32259991
	.long	-344482
	.long	24295849
	.long	-12912123
	.long	23161163
	.long	8839127
	.long	27485041
	.long	7356032
	.long	9661027
	.long	705443
	.long	11980065
	.long	-5370154
	.long	-1628543
	.long	14661173
	.long	-6346142
	.long	2625015
	.long	28431036
	.long	-16771834
	.long	-23839233
	.long	-8311415
	.long	-25945511
	.long	7480958
	.long	-17681669
	.long	-8354183
	.long	-22545972
	.long	14150565
	.long	15970762
	.long	4099461
	.long	29262576
	.long	16756590
	.long	26350592
	.long	-8793563
	.long	8529671
	.long	-11208050
	.long	13617293
	.long	-9937143
	.long	11465739
	.long	8317062
	.long	-25493081
	.long	-6962928
	.long	32500200
	.long	-9419051
	.long	-23038724
	.long	-2302222
	.long	14898637
	.long	3848455
	.long	20969334
	.long	-5157516
	.long	-20384450
	.long	-14347713
	.long	-18336405
	.long	13884722
	.long	-33039454
	.long	2842114
	.long	-21610826
	.long	-3649888
	.long	11177095
	.long	14989547
	.long	-24496721
	.long	-11716016
	.long	16959896
	.long	2278463
	.long	12066309
	.long	10137771
	.long	13515641
	.long	2581286
	.long	-28487508
	.long	9930240
	.long	-17751622
	.long	-2097826
	.long	16544300
	.long	-13009300
	.long	-15914807
	.long	-14949081
	.long	18345767
	.long	-13403753
	.long	16291481
	.long	-5314038
	.long	-33229194
	.long	2553288
	.long	32678213
	.long	9875984
	.long	8534129
	.long	6889387
	.long	-9676774
	.long	6957617
	.long	4368891
	.long	9788741
	.long	16660756
	.long	7281060
	.long	-10830758
	.long	12911820
	.long	20108584
	.long	-8101676
	.long	-21722536
	.long	-8613148
	.long	16250552
	.long	-11111103
	.long	-19765507
	.long	2390526
	.long	-16551031
	.long	14161980
	.long	1905286
	.long	6414907
	.long	4689584
	.long	10604807
	.long	-30190403
	.long	4782747
	.long	-1354539
	.long	14736941
	.long	-7367442
	.long	-13292886
	.long	7710542
	.long	-14155590
	.long	-9981571
	.long	4383045
	.long	22546403
	.long	437323
	.long	31665577
	.long	-12180464
	.long	-16186830
	.long	1491339
	.long	-18368625
	.long	3294682
	.long	27343084
	.long	2786261
	.long	-30633590
	.long	-14097016
	.long	-14467279
	.long	-683715
	.long	-33374107
	.long	7448552
	.long	19294360
	.long	14334329
	.long	-19690631
	.long	2355319
	.long	-19284671
	.long	-6114373
	.long	15121312
	.long	-15796162
	.long	6377020
	.long	-6031361
	.long	-10798111
	.long	-12957845
	.long	18952177
	.long	15496498
	.long	-29380133
	.long	11754228
	.long	-2637277
	.long	-13483075
	.long	8488727
	.long	-14303896
	.long	12728761
	.long	-1622493
	.long	7141596
	.long	11724556
	.long	22761615
	.long	-10134141
	.long	16918416
	.long	11729663
	.long	-18083579
	.long	3022987
	.long	-31015732
	.long	-13339659
	.long	-28741185
	.long	-12227393
	.long	32851222
	.long	11717399
	.long	11166634
	.long	7338049
	.long	-6722523
	.long	4531520
	.long	-29468672
	.long	-7302055
	.long	31474879
	.long	3483633
	.long	-1193175
	.long	-4030831
	.long	-185635
	.long	9921305
	.long	31456609
	.long	-13536438
	.long	-12013818
	.long	13348923
	.long	33142652
	.long	6546660
	.long	-19985279
	.long	-3948376
	.long	-32460596
	.long	11266712
	.long	-11197107
	.long	-7899103
	.long	31703694
	.long	3855903
	.long	-8537131
	.long	-12833048
	.long	-30772034
	.long	-15486313
	.long	-18006477
	.long	12709068
	.long	3991746
	.long	-6479188
	.long	-21491523
	.long	-10550425
	.long	-31135347
	.long	-16049879
	.long	10928917
	.long	3011958
	.long	-6957757
	.long	-15594337
	.long	31696059
	.long	334240
	.long	29576716
	.long	14796075
	.long	-30831056
	.long	-12805180
	.long	18008031
	.long	10258577
	.long	-22448644
	.long	15655569
	.long	7018479
	.long	-4410003
	.long	-30314266
	.long	-1201591
	.long	-1853465
	.long	1367120
	.long	25127874
	.long	6671743
	.long	29701166
	.long	-14373934
	.long	-10878120
	.long	9279288
	.long	-17568
	.long	13127210
	.long	21382910
	.long	11042292
	.long	25838796
	.long	4642684
	.long	-20430234
	.long	14955537
	.long	-24126347
	.long	8124619
	.long	-5369288
	.long	-5990470
	.long	30468147
	.long	-13900640
	.long	18423289
	.long	4177476
	.text
	.type	negative, @function
negative:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movsbl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	shrl	$31, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	negative, .-negative
	.type	table_select, @function
table_select:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	%edx, %eax
	movb	%al, -144(%rbp)
	movsbl	-144(%rbp), %eax
	movl	%eax, %edi
	call	negative
	movb	%al, -1(%rbp)
	movzbl	-144(%rbp), %eax
	movzbl	-1(%rbp), %edx
	negl	%edx
	andb	-144(%rbp), %dl
	addl	%edx, %edx
	subl	%edx, %eax
	movb	%al, -2(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ge_precomp_0
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	k25519Precomp(%rip), %rcx
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	120(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	240(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	360(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	480(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$6, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	600(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	720(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movzbl	-2(%rbp), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	equal
	movzbl	%al, %edx
	movl	-140(%rbp), %eax
	cltq
	imulq	$960, %rax, %rax
	leaq	840(%rax), %rcx
	leaq	k25519Precomp(%rip), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	movq	-136(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_copy
	movq	-136(%rbp), %rax
	leaq	-128(%rbp), %rdx
	addq	$40, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fe_copy
	movq	-136(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-128(%rbp), %rax
	addq	$80, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_neg
	movzbl	-1(%rbp), %edx
	leaq	-128(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmov
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	table_select, .-table_select
	.type	ge_scalarmult_base, @function
ge_scalarmult_base:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$512, %rsp
	movq	%rdi, -504(%rbp)
	movq	%rsi, -512(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L158
.L159:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-512(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	andl	$15, %edx
	cltq
	movb	%dl, -80(%rbp,%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-512(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	cltq
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -8(%rbp)
.L158:
	cmpl	$31, -8(%rbp)
	jle	.L159
	movb	$0, -1(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L160
.L161:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -80(%rbp,%rax)
	movl	-8(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	addl	$8, %eax
	movb	%al, -1(%rbp)
	sarb	$4, -1(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movl	%eax, %ecx
	movzbl	-1(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -8(%rbp)
.L160:
	cmpl	$62, -8(%rbp)
	jle	.L161
	movzbl	-17(%rbp), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -17(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	call	ge_p3_0
	movl	$1, -8(%rbp)
	jmp	.L162
.L163:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movsbl	%al, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %ecx
	leaq	-496(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	table_select
	leaq	-496(%rbp), %rdx
	movq	-504(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_madd
	leaq	-240(%rbp), %rdx
	movq	-504(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	addl	$2, -8(%rbp)
.L162:
	cmpl	$63, -8(%rbp)
	jle	.L163
	movq	-504(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p3_dbl
	leaq	-240(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p2
	leaq	-368(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p2_dbl
	leaq	-240(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p2
	leaq	-368(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p2_dbl
	leaq	-240(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p2
	leaq	-368(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p2_dbl
	leaq	-240(%rbp), %rdx
	movq	-504(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	movl	$0, -8(%rbp)
	jmp	.L164
.L165:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movsbl	%al, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %ecx
	leaq	-496(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	table_select
	leaq	-496(%rbp), %rdx
	movq	-504(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_madd
	leaq	-240(%rbp), %rdx
	movq	-504(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	addl	$2, -8(%rbp)
.L164:
	cmpl	$63, -8(%rbp)
	jle	.L165
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ge_scalarmult_base, .-ge_scalarmult_base
	.type	slide, @function
slide:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L167
.L168:
	movl	-4(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	andl	$1, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L167:
	cmpl	$255, -4(%rbp)
	jle	.L168
	movl	$0, -4(%rbp)
	jmp	.L169
.L180:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L170
	movl	$1, -8(%rbp)
	jmp	.L171
.L179:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L172
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	addl	%edx, %eax
	cmpl	$15, %eax
	jg	.L173
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	leal	(%rsi,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L172
.L173:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	cmpl	$-15, %edx
	jl	.L181
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	jmp	.L175
.L178:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L176
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	jmp	.L172
.L176:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -12(%rbp)
.L175:
	cmpl	$255, -12(%rbp)
	jle	.L178
.L172:
	addl	$1, -8(%rbp)
.L171:
	cmpl	$6, -8(%rbp)
	jg	.L170
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cmpl	$255, %eax
	jle	.L179
	jmp	.L170
.L181:
	nop
.L170:
	addl	$1, -4(%rbp)
.L169:
	cmpl	$255, -4(%rbp)
	jle	.L180
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	slide, .-slide
	.section	.rodata
	.align 32
	.type	Bi, @object
	.size	Bi, 960
Bi:
	.long	25967493
	.long	-14356035
	.long	29566456
	.long	3660896
	.long	-12694345
	.long	4014787
	.long	27544626
	.long	-11754271
	.long	-6079156
	.long	2047605
	.long	-12545711
	.long	934262
	.long	-2722910
	.long	3049990
	.long	-727428
	.long	9406986
	.long	12720692
	.long	5043384
	.long	19500929
	.long	-15469378
	.long	-8738181
	.long	4489570
	.long	9688441
	.long	-14785194
	.long	10184609
	.long	-12363380
	.long	29287919
	.long	11864899
	.long	-24514362
	.long	-4438546
	.long	15636291
	.long	-9688557
	.long	24204773
	.long	-7912398
	.long	616977
	.long	-16685262
	.long	27787600
	.long	-14772189
	.long	28944400
	.long	-1550024
	.long	16568933
	.long	4717097
	.long	-11556148
	.long	-1102322
	.long	15682896
	.long	-11807043
	.long	16354577
	.long	-11775962
	.long	7689662
	.long	11199574
	.long	30464156
	.long	-5976125
	.long	-11779434
	.long	-15670865
	.long	23220365
	.long	15915852
	.long	7512774
	.long	10017326
	.long	-17749093
	.long	-9920357
	.long	10861363
	.long	11473154
	.long	27284546
	.long	1981175
	.long	-30064349
	.long	12577861
	.long	32867885
	.long	14515107
	.long	-15438304
	.long	10819380
	.long	4708026
	.long	6336745
	.long	20377586
	.long	9066809
	.long	-11272109
	.long	6594696
	.long	-25653668
	.long	12483688
	.long	-12668491
	.long	5581306
	.long	19563160
	.long	16186464
	.long	-29386857
	.long	4097519
	.long	10237984
	.long	-4348115
	.long	28542350
	.long	13850243
	.long	-23678021
	.long	-15815942
	.long	5153746
	.long	9909285
	.long	1723747
	.long	-2777874
	.long	30523605
	.long	5516873
	.long	19480852
	.long	5230134
	.long	-23952439
	.long	-15175766
	.long	-30269007
	.long	-3463509
	.long	7665486
	.long	10083793
	.long	28475525
	.long	1649722
	.long	20654025
	.long	16520125
	.long	30598449
	.long	7715701
	.long	28881845
	.long	14381568
	.long	9657904
	.long	3680757
	.long	-20181635
	.long	7843316
	.long	-31400660
	.long	1370708
	.long	29794553
	.long	-1409300
	.long	-22518993
	.long	-6692182
	.long	14201702
	.long	-8745502
	.long	-23510406
	.long	8844726
	.long	18474211
	.long	-1361450
	.long	-13062696
	.long	13821877
	.long	-6455177
	.long	-7839871
	.long	3374702
	.long	-4740862
	.long	-27098617
	.long	-10571707
	.long	31655028
	.long	-7212327
	.long	18853322
	.long	-14220951
	.long	4566830
	.long	-12963868
	.long	-28974889
	.long	-12240689
	.long	-7602672
	.long	-2830569
	.long	-8514358
	.long	-10431137
	.long	2207753
	.long	-3209784
	.long	-25154831
	.long	-4185821
	.long	29681144
	.long	7868801
	.long	-6854661
	.long	-9423865
	.long	-12437364
	.long	-663000
	.long	-31111463
	.long	-16132436
	.long	25576264
	.long	-2703214
	.long	7349804
	.long	-11814844
	.long	16472782
	.long	9300885
	.long	3844789
	.long	15725684
	.long	171356
	.long	6466918
	.long	23103977
	.long	13316479
	.long	9739013
	.long	-16149481
	.long	817875
	.long	-15038942
	.long	8965339
	.long	-14088058
	.long	-30714912
	.long	16193877
	.long	-33521811
	.long	3180713
	.long	-2394130
	.long	14003687
	.long	-16903474
	.long	-16270840
	.long	17238398
	.long	4729455
	.long	-18074513
	.long	9256800
	.long	-25182317
	.long	-4174131
	.long	32336398
	.long	5036987
	.long	-21236817
	.long	11360617
	.long	22616405
	.long	9761698
	.long	-19827198
	.long	630305
	.long	-13720693
	.long	2639453
	.long	-24237460
	.long	-7406481
	.long	9494427
	.long	-5774029
	.long	-6554551
	.long	-15960994
	.long	-2449256
	.long	-14291300
	.long	-3151181
	.long	-5046075
	.long	9282714
	.long	6866145
	.long	-31907062
	.long	-863023
	.long	-18940575
	.long	15033784
	.long	25105118
	.long	-7894876
	.long	-24326370
	.long	15950226
	.long	-31801215
	.long	-14592823
	.long	-11662737
	.long	-5090925
	.long	1573892
	.long	-2625887
	.long	2198790
	.long	-15804619
	.long	-3099351
	.long	10324967
	.long	-2241613
	.long	7453183
	.long	-5446979
	.long	-2735503
	.long	-13812022
	.long	-16236442
	.long	-32461234
	.long	-12290683
	.text
	.type	ge_double_scalarmult_vartime, @function
ge_double_scalarmult_vartime:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2320, %rsp
	movq	%rdi, -2296(%rbp)
	movq	%rsi, -2304(%rbp)
	movq	%rdx, -2312(%rbp)
	movq	%rcx, -2320(%rbp)
	movq	-2304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	slide
	movq	-2320(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	slide
	movq	-2312(%rbp), %rdx
	leaq	-1808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p3_to_cached
	movq	-2312(%rbp), %rdx
	leaq	-1968(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p3_dbl
	leaq	-1968(%rbp), %rdx
	leaq	-2288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-1808(%rbp), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$160, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	leaq	-1808(%rbp), %rax
	leaq	160(%rax), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$320, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	leaq	-1808(%rbp), %rax
	leaq	320(%rax), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$480, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	leaq	-1808(%rbp), %rax
	leaq	480(%rax), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$640, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	leaq	-1808(%rbp), %rax
	leaq	640(%rax), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$800, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	leaq	-1808(%rbp), %rax
	leaq	800(%rax), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$960, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	leaq	-1808(%rbp), %rax
	leaq	960(%rax), %rdx
	leaq	-2288(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	leaq	-2128(%rbp), %rax
	leaq	-1808(%rbp), %rdx
	addq	$1120, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ge_p3_to_cached
	movq	-2296(%rbp), %rax
	movq	%rax, %rdi
	call	ge_p2_0
	movl	$255, -4(%rbp)
	jmp	.L183
.L185:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L186
	movl	-4(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L186
	subl	$1, -4(%rbp)
.L183:
	cmpl	$0, -4(%rbp)
	jns	.L185
	jmp	.L186
.L191:
	movq	-2296(%rbp), %rdx
	leaq	-1968(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p2_dbl
	movl	-4(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	jle	.L187
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	movl	-4(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	movl	%eax, %edx
	shrb	$7, %dl
	addl	%edx, %eax
	sarb	%al
	movsbl	%al, %eax
	leaq	-1808(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	-2128(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_add
	jmp	.L188
.L187:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	jns	.L188
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	movl	-4(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	negl	%eax
	leaq	-1808(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	-2128(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_sub
.L188:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	testb	%al, %al
	jle	.L189
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	movl	-4(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	movl	%eax, %edx
	shrb	$7, %dl
	addl	%edx, %eax
	sarb	%al
	movsbl	%al, %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	Bi(%rip), %rdx
	addq	%rax, %rdx
	leaq	-2128(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_madd
	jmp	.L190
.L189:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	testb	%al, %al
	jns	.L190
	leaq	-1968(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p3
	movl	-4(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	negl	%eax
	cltq
	imulq	$120, %rax, %rax
	leaq	Bi(%rip), %rdx
	addq	%rax, %rdx
	leaq	-2128(%rbp), %rcx
	leaq	-1968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ge_msub
.L190:
	leaq	-1968(%rbp), %rdx
	movq	-2296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p1p1_to_p2
	subl	$1, -4(%rbp)
.L186:
	cmpl	$0, -4(%rbp)
	jns	.L191
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ge_double_scalarmult_vartime, .-ge_double_scalarmult_vartime
	.type	x25519_sc_reduce, @function
x25519_sc_reduce:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$344, %rsp
	movq	%rdi, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-344(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-344(%rbp), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-344(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-344(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$4, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-344(%rbp), %rax
	addq	$13, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	%rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-344(%rbp), %rax
	addq	$15, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$6, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-344(%rbp), %rax
	addq	$18, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$3, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-344(%rbp), %rax
	addq	$21, %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-344(%rbp), %rax
	addq	$23, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-344(%rbp), %rax
	addq	$26, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-344(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-344(%rbp), %rax
	addq	$31, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$4, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-344(%rbp), %rax
	addq	$34, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	%rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-344(%rbp), %rax
	addq	$36, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$6, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-344(%rbp), %rax
	addq	$39, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$3, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-344(%rbp), %rax
	addq	$42, %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-344(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-344(%rbp), %rax
	addq	$47, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-344(%rbp), %rax
	addq	$49, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-344(%rbp), %rax
	addq	$52, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$4, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-344(%rbp), %rax
	addq	$55, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	%rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-344(%rbp), %rax
	addq	$57, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$6, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-344(%rbp), %rax
	addq	$60, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$3, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -96(%rbp)
	movq	-192(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -104(%rbp)
	movq	-192(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -112(%rbp)
	movq	-192(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -120(%rbp)
	movq	-192(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -128(%rbp)
	movq	-192(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -136(%rbp)
	movq	$0, -192(%rbp)
	movq	-184(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -104(%rbp)
	movq	-184(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -112(%rbp)
	movq	-184(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -120(%rbp)
	movq	-184(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -128(%rbp)
	movq	$0, -184(%rbp)
	movq	-176(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -80(%rbp)
	movq	-176(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -88(%rbp)
	movq	-176(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -96(%rbp)
	movq	-176(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -104(%rbp)
	movq	-176(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -112(%rbp)
	movq	-176(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -120(%rbp)
	movq	$0, -176(%rbp)
	movq	-168(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -72(%rbp)
	movq	-168(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -88(%rbp)
	movq	-168(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -96(%rbp)
	movq	-168(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -112(%rbp)
	movq	$0, -168(%rbp)
	movq	-160(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -64(%rbp)
	movq	-160(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -72(%rbp)
	movq	-160(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -80(%rbp)
	movq	-160(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -96(%rbp)
	movq	-160(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -104(%rbp)
	movq	$0, -160(%rbp)
	movq	-152(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -88(%rbp)
	movq	-152(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -96(%rbp)
	movq	$0, -152(%rbp)
	movq	-56(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-200(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-208(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	%rax, -112(%rbp)
	movq	-224(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	addq	%rax, -128(%rbp)
	movq	-232(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	addq	%rax, -144(%rbp)
	movq	-240(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -136(%rbp)
	movq	-64(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-248(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-256(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-264(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	addq	%rax, -120(%rbp)
	movq	-272(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	addq	%rax, -136(%rbp)
	movq	-280(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -128(%rbp)
	movq	-144(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	-144(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -64(%rbp)
	movq	-144(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -72(%rbp)
	movq	-144(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -80(%rbp)
	movq	-144(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -88(%rbp)
	movq	$0, -144(%rbp)
	movq	-136(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-136(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -80(%rbp)
	movq	$0, -136(%rbp)
	movq	-128(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -32(%rbp)
	movq	-128(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -56(%rbp)
	movq	-128(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -72(%rbp)
	movq	$0, -128(%rbp)
	movq	-120(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -64(%rbp)
	movq	$0, -120(%rbp)
	movq	-112(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -16(%rbp)
	movq	-112(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	-112(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -56(%rbp)
	movq	$0, -112(%rbp)
	movq	-104(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	$0, -104(%rbp)
	movq	-8(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-288(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-296(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-304(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-200(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-208(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-312(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-320(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-328(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-248(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-256(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-264(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	$0, -104(%rbp)
	movq	-8(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-288(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-312(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-296(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-320(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-304(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-328(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-200(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-248(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-208(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-256(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-264(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -48(%rbp)
	movq	$0, -104(%rbp)
	movq	-8(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-288(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-312(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-296(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-320(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-304(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-328(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-200(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-248(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-208(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-256(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-344(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	sarq	$8, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	sarq	$16, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	sall	$5, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	sarq	$11, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	sarq	$19, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	sall	$2, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	sarq	$14, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	sall	$7, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$8, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	sarq	$9, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$9, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	sarq	$17, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	sall	$4, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	sarq	$12, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$12, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	sarq	$20, %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addl	%eax, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	sarq	$15, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	sall	$6, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$16, %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	sarq	$10, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$17, %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	sarq	$18, %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	sall	$3, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$18, %rax
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$19, %rax
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	sarq	$13, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$20, %rax
	movb	%dl, (%rax)
	movq	-344(%rbp), %rax
	addq	$21, %rax
	movq	-72(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	sarq	$8, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$22, %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	sarq	$16, %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	sall	$5, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$23, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$24, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	sarq	$11, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$25, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	sarq	$19, %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	sall	$2, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$26, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$27, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	sarq	$14, %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	sall	$7, %eax
	orl	%eax, %edx
	movq	-344(%rbp), %rax
	addq	$28, %rax
	movb	%dl, (%rax)
	movq	-96(%rbp), %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$29, %rax
	movb	%dl, (%rax)
	movq	-96(%rbp), %rax
	sarq	$9, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$30, %rax
	movb	%dl, (%rax)
	movq	-96(%rbp), %rax
	sarq	$17, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	$31, %rax
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	x25519_sc_reduce, .-x25519_sc_reduce
	.type	sc_muladd, @function
sc_muladd:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$704, %rsp
	movq	%rdi, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	%rdx, -696(%rbp)
	movq	%rcx, -704(%rbp)
	movq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-688(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-688(%rbp), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-688(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-688(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$4, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-688(%rbp), %rax
	addq	$13, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	%rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-688(%rbp), %rax
	addq	$15, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$6, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-688(%rbp), %rax
	addq	$18, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$3, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-688(%rbp), %rax
	addq	$21, %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-688(%rbp), %rax
	addq	$23, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-688(%rbp), %rax
	addq	$26, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-688(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movq	%rax, -96(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-696(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-696(%rbp), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-696(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-696(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$4, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-696(%rbp), %rax
	addq	$13, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	%rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-696(%rbp), %rax
	addq	$15, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$6, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-696(%rbp), %rax
	addq	$18, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$3, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-696(%rbp), %rax
	addq	$21, %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-696(%rbp), %rax
	addq	$23, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-696(%rbp), %rax
	addq	$26, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-696(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movq	%rax, -192(%rbp)
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-704(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-704(%rbp), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-704(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-704(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$4, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movq	-704(%rbp), %rax
	addq	$13, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	%rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	-704(%rbp), %rax
	addq	$15, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$6, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-704(%rbp), %rax
	addq	$18, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$3, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-704(%rbp), %rax
	addq	$21, %rax
	movq	%rax, %rdi
	call	load_3
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-704(%rbp), %rax
	addq	$23, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$5, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-704(%rbp), %rax
	addq	$26, %rax
	movq	%rax, %rdi
	call	load_3
	shrq	$2, %rax
	movl	$2097151, %edx
	andq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movq	-704(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	load_4
	shrq	$7, %rax
	movq	%rax, -288(%rbp)
	movq	-8(%rbp), %rax
	imulq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -296(%rbp)
	movq	-8(%rbp), %rax
	imulq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movq	-8(%rbp), %rax
	imulq	-120(%rbp), %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movq	-8(%rbp), %rax
	imulq	-128(%rbp), %rax
	movq	%rax, %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -320(%rbp)
	movq	-8(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movq	-8(%rbp), %rax
	imulq	-144(%rbp), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movq	-8(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -344(%rbp)
	movq	-8(%rbp), %rax
	imulq	-160(%rbp), %rax
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movq	-8(%rbp), %rax
	imulq	-168(%rbp), %rax
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -360(%rbp)
	movq	-8(%rbp), %rax
	imulq	-176(%rbp), %rax
	movq	%rax, %rdx
	movq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -368(%rbp)
	movq	-8(%rbp), %rax
	imulq	-184(%rbp), %rax
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -376(%rbp)
	movq	-8(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-288(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -384(%rbp)
	movq	-16(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movq	-24(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -400(%rbp)
	movq	-32(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -408(%rbp)
	movq	-40(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -416(%rbp)
	movq	-48(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	-56(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -432(%rbp)
	movq	-64(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -440(%rbp)
	movq	-72(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movq	-80(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -456(%rbp)
	movq	-88(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	-184(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -464(%rbp)
	movq	-96(%rbp), %rax
	imulq	-192(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	$0, -480(%rbp)
	movq	-296(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	%rax, -304(%rbp)
	movq	-488(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -296(%rbp)
	movq	-312(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	addq	%rax, -320(%rbp)
	movq	-496(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -312(%rbp)
	movq	-328(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-504(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -328(%rbp)
	movq	-344(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	addq	%rax, -352(%rbp)
	movq	-512(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	%rax, -368(%rbp)
	movq	-520(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -360(%rbp)
	movq	-376(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-528(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -376(%rbp)
	movq	-392(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	addq	%rax, -400(%rbp)
	movq	-536(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -392(%rbp)
	movq	-408(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	addq	%rax, -416(%rbp)
	movq	-544(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -408(%rbp)
	movq	-424(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	addq	%rax, -432(%rbp)
	movq	-552(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -424(%rbp)
	movq	-440(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	addq	%rax, -448(%rbp)
	movq	-560(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -440(%rbp)
	movq	-456(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	addq	%rax, -464(%rbp)
	movq	-568(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -456(%rbp)
	movq	-472(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	addq	%rax, -480(%rbp)
	movq	-576(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -472(%rbp)
	movq	-304(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	%rax, -312(%rbp)
	movq	-584(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -304(%rbp)
	movq	-320(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	addq	%rax, -328(%rbp)
	movq	-592(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -320(%rbp)
	movq	-336(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	addq	%rax, -344(%rbp)
	movq	-600(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -336(%rbp)
	movq	-352(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	addq	%rax, -360(%rbp)
	movq	-608(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -352(%rbp)
	movq	-368(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	%rax, -376(%rbp)
	movq	-616(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -368(%rbp)
	movq	-384(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	addq	%rax, -392(%rbp)
	movq	-624(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -384(%rbp)
	movq	-400(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	addq	%rax, -408(%rbp)
	movq	-632(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -400(%rbp)
	movq	-416(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	addq	%rax, -424(%rbp)
	movq	-640(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -416(%rbp)
	movq	-432(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	addq	%rax, -440(%rbp)
	movq	-648(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -432(%rbp)
	movq	-448(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	addq	%rax, -456(%rbp)
	movq	-656(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -448(%rbp)
	movq	-464(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	addq	%rax, -472(%rbp)
	movq	-664(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -464(%rbp)
	movq	-480(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -384(%rbp)
	movq	-480(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -392(%rbp)
	movq	-480(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -400(%rbp)
	movq	-480(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -408(%rbp)
	movq	-480(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -416(%rbp)
	movq	-480(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -424(%rbp)
	movq	$0, -480(%rbp)
	movq	-472(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -376(%rbp)
	movq	-472(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -384(%rbp)
	movq	-472(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -392(%rbp)
	movq	-472(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -400(%rbp)
	movq	-472(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -408(%rbp)
	movq	-472(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -416(%rbp)
	movq	$0, -472(%rbp)
	movq	-464(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -368(%rbp)
	movq	-464(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -376(%rbp)
	movq	-464(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -384(%rbp)
	movq	-464(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -392(%rbp)
	movq	-464(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -400(%rbp)
	movq	-464(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -408(%rbp)
	movq	$0, -464(%rbp)
	movq	-456(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -360(%rbp)
	movq	-456(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -368(%rbp)
	movq	-456(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -376(%rbp)
	movq	-456(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -384(%rbp)
	movq	-456(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -392(%rbp)
	movq	-456(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -400(%rbp)
	movq	$0, -456(%rbp)
	movq	-448(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -352(%rbp)
	movq	-448(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -360(%rbp)
	movq	-448(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -368(%rbp)
	movq	-448(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -376(%rbp)
	movq	-448(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -384(%rbp)
	movq	-448(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -392(%rbp)
	movq	$0, -448(%rbp)
	movq	-440(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -344(%rbp)
	movq	-440(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -352(%rbp)
	movq	-440(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -360(%rbp)
	movq	-440(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -368(%rbp)
	movq	-440(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -376(%rbp)
	movq	-440(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -384(%rbp)
	movq	$0, -440(%rbp)
	movq	-344(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	addq	%rax, -352(%rbp)
	movq	-512(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	%rax, -368(%rbp)
	movq	-520(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -360(%rbp)
	movq	-376(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-528(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -376(%rbp)
	movq	-392(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	addq	%rax, -400(%rbp)
	movq	-536(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -392(%rbp)
	movq	-408(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	addq	%rax, -416(%rbp)
	movq	-544(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -408(%rbp)
	movq	-424(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	addq	%rax, -432(%rbp)
	movq	-552(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -424(%rbp)
	movq	-352(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	addq	%rax, -360(%rbp)
	movq	-608(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -352(%rbp)
	movq	-368(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	%rax, -376(%rbp)
	movq	-616(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -368(%rbp)
	movq	-384(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	addq	%rax, -392(%rbp)
	movq	-624(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -384(%rbp)
	movq	-400(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	addq	%rax, -408(%rbp)
	movq	-632(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -400(%rbp)
	movq	-416(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	addq	%rax, -424(%rbp)
	movq	-640(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -416(%rbp)
	movq	-432(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	-432(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -344(%rbp)
	movq	-432(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -352(%rbp)
	movq	-432(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -360(%rbp)
	movq	-432(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -368(%rbp)
	movq	-432(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -376(%rbp)
	movq	$0, -432(%rbp)
	movq	-424(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-424(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	-424(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -344(%rbp)
	movq	-424(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -352(%rbp)
	movq	-424(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -360(%rbp)
	movq	-424(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -368(%rbp)
	movq	$0, -424(%rbp)
	movq	-416(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -320(%rbp)
	movq	-416(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-416(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	-416(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -344(%rbp)
	movq	-416(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -352(%rbp)
	movq	-416(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -360(%rbp)
	movq	$0, -416(%rbp)
	movq	-408(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -312(%rbp)
	movq	-408(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -320(%rbp)
	movq	-408(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-408(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	-408(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -344(%rbp)
	movq	-408(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -352(%rbp)
	movq	$0, -408(%rbp)
	movq	-400(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -304(%rbp)
	movq	-400(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -312(%rbp)
	movq	-400(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -320(%rbp)
	movq	-400(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-400(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	-400(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -344(%rbp)
	movq	$0, -400(%rbp)
	movq	-392(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -296(%rbp)
	movq	-392(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -304(%rbp)
	movq	-392(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -312(%rbp)
	movq	-392(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -320(%rbp)
	movq	-392(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-392(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	$0, -392(%rbp)
	movq	-296(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	%rax, -304(%rbp)
	movq	-488(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -296(%rbp)
	movq	-312(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	addq	%rax, -320(%rbp)
	movq	-496(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -312(%rbp)
	movq	-328(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-504(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -328(%rbp)
	movq	-344(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	addq	%rax, -352(%rbp)
	movq	-512(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	%rax, -368(%rbp)
	movq	-520(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -360(%rbp)
	movq	-376(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-528(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -376(%rbp)
	movq	-304(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	%rax, -312(%rbp)
	movq	-584(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -304(%rbp)
	movq	-320(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	addq	%rax, -328(%rbp)
	movq	-592(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -320(%rbp)
	movq	-336(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	addq	%rax, -344(%rbp)
	movq	-600(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -336(%rbp)
	movq	-352(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	addq	%rax, -360(%rbp)
	movq	-608(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -352(%rbp)
	movq	-368(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	%rax, -376(%rbp)
	movq	-616(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -368(%rbp)
	movq	-384(%rbp), %rax
	addq	$1048576, %rax
	sarq	$21, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	addq	%rax, -392(%rbp)
	movq	-624(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -384(%rbp)
	movq	-392(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -296(%rbp)
	movq	-392(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -304(%rbp)
	movq	-392(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -312(%rbp)
	movq	-392(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -320(%rbp)
	movq	-392(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-392(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	$0, -392(%rbp)
	movq	-296(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	%rax, -304(%rbp)
	movq	-488(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -296(%rbp)
	movq	-304(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	%rax, -312(%rbp)
	movq	-584(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -304(%rbp)
	movq	-312(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	addq	%rax, -320(%rbp)
	movq	-496(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -312(%rbp)
	movq	-320(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	addq	%rax, -328(%rbp)
	movq	-592(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -320(%rbp)
	movq	-328(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-504(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -328(%rbp)
	movq	-336(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	addq	%rax, -344(%rbp)
	movq	-600(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -336(%rbp)
	movq	-344(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	addq	%rax, -352(%rbp)
	movq	-512(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -344(%rbp)
	movq	-352(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	addq	%rax, -360(%rbp)
	movq	-608(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -352(%rbp)
	movq	-360(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	%rax, -368(%rbp)
	movq	-520(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -360(%rbp)
	movq	-368(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	%rax, -376(%rbp)
	movq	-616(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -368(%rbp)
	movq	-376(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-528(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -376(%rbp)
	movq	-384(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	addq	%rax, -392(%rbp)
	movq	-624(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -384(%rbp)
	movq	-392(%rbp), %rax
	imulq	$666643, %rax, %rax
	addq	%rax, -296(%rbp)
	movq	-392(%rbp), %rax
	imulq	$470296, %rax, %rax
	addq	%rax, -304(%rbp)
	movq	-392(%rbp), %rax
	imulq	$654183, %rax, %rax
	addq	%rax, -312(%rbp)
	movq	-392(%rbp), %rax
	imulq	$-997805, %rax, %rax
	addq	%rax, -320(%rbp)
	movq	-392(%rbp), %rax
	imulq	$136657, %rax, %rax
	addq	%rax, -328(%rbp)
	movq	-392(%rbp), %rax
	imulq	$-683901, %rax, %rax
	addq	%rax, -336(%rbp)
	movq	$0, -392(%rbp)
	movq	-296(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	%rax, -304(%rbp)
	movq	-488(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -296(%rbp)
	movq	-304(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	%rax, -312(%rbp)
	movq	-584(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -304(%rbp)
	movq	-312(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	addq	%rax, -320(%rbp)
	movq	-496(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -312(%rbp)
	movq	-320(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	addq	%rax, -328(%rbp)
	movq	-592(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -320(%rbp)
	movq	-328(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-504(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -328(%rbp)
	movq	-336(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	addq	%rax, -344(%rbp)
	movq	-600(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -336(%rbp)
	movq	-344(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	addq	%rax, -352(%rbp)
	movq	-512(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -344(%rbp)
	movq	-352(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	addq	%rax, -360(%rbp)
	movq	-608(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -352(%rbp)
	movq	-360(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	%rax, -368(%rbp)
	movq	-520(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -360(%rbp)
	movq	-368(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	%rax, -376(%rbp)
	movq	-616(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -368(%rbp)
	movq	-376(%rbp), %rax
	sarq	$21, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-528(%rbp), %rax
	salq	$21, %rax
	subq	%rax, -376(%rbp)
	movq	-296(%rbp), %rax
	movl	%eax, %edx
	movq	-680(%rbp), %rax
	movb	%dl, (%rax)
	movq	-296(%rbp), %rax
	sarq	$8, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-296(%rbp), %rax
	sarq	$16, %rax
	movl	%eax, %edx
	movq	-304(%rbp), %rax
	sall	$5, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-304(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-304(%rbp), %rax
	sarq	$11, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-304(%rbp), %rax
	sarq	$19, %rax
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	sall	$2, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-312(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-312(%rbp), %rax
	sarq	$14, %rax
	movl	%eax, %edx
	movq	-320(%rbp), %rax
	sall	$7, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movq	-320(%rbp), %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$8, %rax
	movb	%dl, (%rax)
	movq	-320(%rbp), %rax
	sarq	$9, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$9, %rax
	movb	%dl, (%rax)
	movq	-320(%rbp), %rax
	sarq	$17, %rax
	movl	%eax, %edx
	movq	-328(%rbp), %rax
	sall	$4, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movq	-328(%rbp), %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-328(%rbp), %rax
	sarq	$12, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$12, %rax
	movb	%dl, (%rax)
	movq	-328(%rbp), %rax
	sarq	$20, %rax
	movl	%eax, %edx
	movq	-336(%rbp), %rax
	addl	%eax, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movq	-336(%rbp), %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movq	-336(%rbp), %rax
	sarq	$15, %rax
	movl	%eax, %edx
	movq	-344(%rbp), %rax
	sall	$6, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
	movq	-344(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$16, %rax
	movb	%dl, (%rax)
	movq	-344(%rbp), %rax
	sarq	$10, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$17, %rax
	movb	%dl, (%rax)
	movq	-344(%rbp), %rax
	sarq	$18, %rax
	movl	%eax, %edx
	movq	-352(%rbp), %rax
	sall	$3, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$18, %rax
	movb	%dl, (%rax)
	movq	-352(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$19, %rax
	movb	%dl, (%rax)
	movq	-352(%rbp), %rax
	sarq	$13, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$20, %rax
	movb	%dl, (%rax)
	movq	-680(%rbp), %rax
	addq	$21, %rax
	movq	-360(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-360(%rbp), %rax
	sarq	$8, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$22, %rax
	movb	%dl, (%rax)
	movq	-360(%rbp), %rax
	sarq	$16, %rax
	movl	%eax, %edx
	movq	-368(%rbp), %rax
	sall	$5, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$23, %rax
	movb	%dl, (%rax)
	movq	-368(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$24, %rax
	movb	%dl, (%rax)
	movq	-368(%rbp), %rax
	sarq	$11, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$25, %rax
	movb	%dl, (%rax)
	movq	-368(%rbp), %rax
	sarq	$19, %rax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	sall	$2, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$26, %rax
	movb	%dl, (%rax)
	movq	-376(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$27, %rax
	movb	%dl, (%rax)
	movq	-376(%rbp), %rax
	sarq	$14, %rax
	movl	%eax, %edx
	movq	-384(%rbp), %rax
	sall	$7, %eax
	orl	%eax, %edx
	movq	-680(%rbp), %rax
	addq	$28, %rax
	movb	%dl, (%rax)
	movq	-384(%rbp), %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$29, %rax
	movb	%dl, (%rax)
	movq	-384(%rbp), %rax
	sarq	$9, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$30, %rax
	movb	%dl, (%rax)
	movq	-384(%rbp), %rax
	sarq	$17, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	$31, %rax
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	sc_muladd, .-sc_muladd
	.type	hash_init_with_dom, @function
hash_init_with_dom:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%ecx, %eax
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movb	%dl, -84(%rbp)
	movb	%al, -88(%rbp)
	movabsq	$3834026064018368851, %rax
	movabsq	$7225216840146893105, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$8026294390915151154, %rax
	movabsq	$8317708060498422892, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -16(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L203
.L195:
	cmpb	$0, -84(%rbp)
	jne	.L197
	movl	$1, %eax
	jmp	.L203
.L197:
	cmpq	$255, -104(%rbp)
	jbe	.L198
	movl	$0, %eax
	jmp	.L203
.L198:
	cmpb	$0, -88(%rbp)
	je	.L199
	movl	$1, %eax
	jmp	.L200
.L199:
	movl	$0, %eax
.L200:
	movb	%al, -50(%rbp)
	movq	-104(%rbp), %rax
	movb	%al, -49(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L201
	leaq	-50(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L201
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L202
.L201:
	movl	$0, %eax
	jmp	.L203
.L202:
	movl	$1, %eax
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	hash_init_with_dom, .-hash_init_with_dom
	.section	.rodata
.LC0:
	.string	"SHA512"
	.text
	.globl	ossl_ed25519_sign
	.type	ossl_ed25519_sign, @function
ossl_ed25519_sign:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$464, %rsp
	movq	%rdi, -408(%rbp)
	movq	%rsi, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movq	%rcx, -432(%rbp)
	movq	%r8, -440(%rbp)
	movl	%r9d, %ecx
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	movb	%cl, -444(%rbp)
	movb	%dl, -448(%rbp)
	movb	%al, -452(%rbp)
	movq	56(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, 32(%rbp)
	jne	.L205
	movq	$0, 40(%rbp)
.L205:
	cmpb	$0, -452(%rbp)
	je	.L206
	cmpq	$0, 40(%rbp)
	je	.L218
.L206:
	cmpb	$0, -444(%rbp)
	jne	.L208
	cmpq	$0, 40(%rbp)
	jne	.L219
.L208:
	cmpq	$0, -16(%rbp)
	je	.L220
	cmpq	$0, -24(%rbp)
	je	.L220
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L221
	movq	-440(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L221
	leaq	-388(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L221
	movzbl	-96(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -96(%rbp)
	movzbl	-65(%rbp), %eax
	andl	$63, %eax
	movb	%al, -65(%rbp)
	movzbl	-65(%rbp), %eax
	orl	$64, %eax
	movb	%al, -65(%rbp)
	movzbl	-448(%rbp), %ecx
	movzbl	-444(%rbp), %edx
	movq	40(%rbp), %r8
	movq	32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hash_init_with_dom
	testl	%eax, %eax
	je	.L222
	leaq	-96(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L222
	movq	-424(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-388(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	x25519_sc_reduce
	leaq	-160(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_scalarmult_base
	leaq	-320(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p3_tobytes
	movzbl	-448(%rbp), %ecx
	movzbl	-444(%rbp), %edx
	movq	40(%rbp), %r8
	movq	32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hash_init_with_dom
	testl	%eax, %eax
	je	.L223
	movq	-408(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L223
	movq	-432(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L223
	movq	-424(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L223
	leaq	-388(%rbp), %rdx
	leaq	-384(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L223
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	x25519_sc_reduce
	movq	-408(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rax, %rsi
	call	sc_muladd
	movl	$1, -4(%rbp)
	jmp	.L207
.L218:
	nop
	jmp	.L207
.L219:
	nop
	jmp	.L207
.L220:
	nop
	jmp	.L207
.L221:
	nop
	jmp	.L207
.L222:
	nop
	jmp	.L207
.L223:
	nop
.L207:
	leaq	-160(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	ossl_ed25519_sign, .-ossl_ed25519_sign
	.section	.rodata
	.align 8
	.type	allzeroes, @object
	.size	allzeroes, 15
allzeroes:
	.zero	15
	.text
	.globl	ossl_ed25519_verify
	.type	ossl_ed25519_verify, @function
ossl_ed25519_verify:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$496, %rsp
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movq	%rdx, -472(%rbp)
	movq	%rcx, -480(%rbp)
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	16(%rbp), %eax
	movb	%dl, -484(%rbp)
	movl	%ecx, %edx
	movb	%dl, -488(%rbp)
	movb	%al, -492(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	movabsq	$6346243789798364141, %rax
	movabsq	$1503914060200516822, %rdx
	movq	%rax, -448(%rbp)
	movq	%rdx, -440(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L225
	movq	$0, 32(%rbp)
.L225:
	cmpb	$0, -492(%rbp)
	je	.L226
	cmpq	$0, 32(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L243
.L226:
	cmpb	$0, -484(%rbp)
	jne	.L228
	cmpq	$0, 32(%rbp)
	je	.L228
	movl	$0, %eax
	jmp	.L243
.L228:
	movq	-472(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-472(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %eax
	cmpb	$16, %al
	jbe	.L229
	movl	$0, %eax
	jmp	.L243
.L229:
	movq	-32(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %eax
	cmpb	$16, %al
	jne	.L230
	movq	-32(%rbp), %rax
	addq	$16, %rax
	leaq	allzeroes(%rip), %rcx
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L231
	movl	$0, %eax
	jmp	.L243
.L231:
	movl	$15, -4(%rbp)
	jmp	.L232
.L236:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-448(%rbp,%rax), %eax
	cmpb	%al, %dl
	jb	.L244
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-448(%rbp,%rax), %eax
	cmpb	%dl, %al
	jnb	.L235
	movl	$0, %eax
	jmp	.L243
.L235:
	subl	$1, -4(%rbp)
.L232:
	cmpl	$0, -4(%rbp)
	jns	.L236
	jmp	.L234
.L244:
	nop
.L234:
	cmpl	$0, -4(%rbp)
	jns	.L230
	movl	$0, %eax
	jmp	.L243
.L230:
	movq	-480(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_frombytes_vartime
	testl	%eax, %eax
	je	.L237
	movl	$0, %eax
	jmp	.L243
.L237:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_neg
	leaq	-208(%rbp), %rax
	leaq	120(%rax), %rdx
	leaq	-208(%rbp), %rax
	addq	$120, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_neg
	movq	48(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L238
	movl	$0, %eax
	jmp	.L243
.L238:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L245
	movzbl	-488(%rbp), %ecx
	movzbl	-484(%rbp), %edx
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hash_init_with_dom
	testl	%eax, %eax
	je	.L246
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L246
	movq	-480(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L246
	movq	-464(%rbp), %rdx
	movq	-456(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-212(%rbp), %rdx
	leaq	-432(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	x25519_sc_reduce
	movq	-32(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	leaq	-432(%rbp), %rsi
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	ge_double_scalarmult_vartime
	leaq	-336(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_tobytes
	movq	-24(%rbp), %rcx
	leaq	-368(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	jmp	.L240
.L245:
	nop
	jmp	.L240
.L246:
	nop
.L240:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-8(%rbp), %eax
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ossl_ed25519_verify, .-ossl_ed25519_verify
	.globl	ossl_ed25519_public_from_private
	.type	ossl_ed25519_public_from_private, @function
ossl_ed25519_public_from_private:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	$0, -8(%rbp)
	movq	-272(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L248
	movl	$0, %eax
	jmp	.L251
.L248:
	movq	-8(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-264(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L250
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L251
.L250:
	movzbl	-80(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -80(%rbp)
	movzbl	-49(%rbp), %eax
	andl	$63, %eax
	movb	%al, -49(%rbp)
	movzbl	-49(%rbp), %eax
	orl	$64, %eax
	movb	%al, -49(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_scalarmult_base
	leaq	-240(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_p3_tobytes
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ossl_ed25519_public_from_private, .-ossl_ed25519_public_from_private
	.globl	ossl_x25519
	.type	ossl_x25519, @function
ossl_x25519:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x25519_scalar_mult
	movq	-8(%rbp), %rax
	leaq	kZeros.0(%rip), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	ossl_x25519, .-ossl_x25519
	.globl	ossl_x25519_public_from_private
	.type	ossl_x25519_public_from_private, @function
ossl_x25519_public_from_private:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	-352(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -32(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$127, %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	orl	$64, %eax
	movb	%al, -1(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ge_scalarmult_base
	leaq	-192(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-192(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_add
	leaq	-192(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-192(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_sub
	leaq	-288(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_invert
	leaq	-336(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fe_mul
	leaq	-240(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fe_tobytes
	leaq	-32(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ossl_x25519_public_from_private, .-ossl_x25519_public_from_private
	.section	.rodata
	.align 32
	.type	zero.1, @object
	.size	zero.1, 32
zero.1:
	.zero	32
	.align 32
	.type	kZeros.0, @object
	.size	kZeros.0, 32
kZeros.0:
	.zero	32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"ecp_nistz256.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L8
.L8:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.section	.rodata
	.align 32
	.type	ONE, @object
	.size	ONE, 32
ONE:
	.quad	1
	.quad	-4294967296
	.quad	-1
	.quad	4294967294
	.text
	.type	_booth_recode_w5, @function
_booth_recode_w5:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$5, %eax
	negl	%eax
	movl	%eax, -4(%rbp)
	movl	$63, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	notl	%eax
	andl	-20(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	shrl	%eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-4(%rbp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	_booth_recode_w5, .-_booth_recode_w5
	.type	_booth_recode_w7, @function
_booth_recode_w7:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$7, %eax
	negl	%eax
	movl	%eax, -4(%rbp)
	movl	$255, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	notl	%eax
	andl	-20(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	shrl	%eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-4(%rbp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	_booth_recode_w7, .-_booth_recode_w7
	.type	copy_conditional, @function
copy_conditional:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	negq	%rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	xorq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	andq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	andq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	andq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	copy_conditional, .-copy_conditional
	.type	is_zero, @function
is_zero:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	negq	%rax
	orq	%rax, -8(%rbp)
	notq	-8(%rbp)
	shrq	$63, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	is_zero, .-is_zero
	.type	is_equal, @function
is_equal:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	is_equal, .-is_equal
	.type	is_one, @function
is_one:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	cmpl	$4, %eax
	jne	.L23
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movabsq	$-4294967296, %rdx
	xorq	%rdx, %rax
	orq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	$-1, %rdx
	xorq	%rdx, %rax
	orq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	$4294967294, %edx
	xorq	%rdx, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_zero
	movq	%rax, -8(%rbp)
.L23:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	is_one, .-is_one
	.type	ecp_nistz256_mod_inverse, @function
ecp_nistz256_mod_inverse:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-80(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-80(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-112(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L26
.L27:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L26:
	cmpl	$6, -4(%rbp)
	jle	.L27
	leaq	-112(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-144(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L28
.L29:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L28:
	cmpl	$14, -4(%rbp)
	jle	.L29
	leaq	-144(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-176(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L30
.L31:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L30:
	cmpl	$30, -4(%rbp)
	jle	.L31
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L32
.L33:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L32:
	cmpl	$127, -4(%rbp)
	jle	.L33
	leaq	-176(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L34
.L35:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L34:
	cmpl	$31, -4(%rbp)
	jle	.L35
	leaq	-176(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L36
.L37:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L36:
	cmpl	$15, -4(%rbp)
	jle	.L37
	leaq	-144(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L38
.L39:
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	addl	$1, -4(%rbp)
.L38:
	cmpl	$7, -4(%rbp)
	jle	.L39
	leaq	-112(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-80(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-208(%rbp), %rcx
	movq	-216(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ecp_nistz256_mod_inverse, .-ecp_nistz256_mod_inverse
	.type	ecp_nistz256_bignum_to_field_elem, @function
ecp_nistz256_bignum_to_field_elem:
.LFB418:
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
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_copy_words@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ecp_nistz256_bignum_to_field_elem, .-ecp_nistz256_bignum_to_field_elem
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecp_nistz256.c"
	.text
	.type	ecp_nistz256_windowed_mul, @function
ecp_nistz256_windowed_mul:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$5, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rax
	salq	$4, %rax
	addq	$6, %rax
	cmpq	$22369621, %rax
	ja	.L66
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$9, %rax
	addq	$544, %rax
	leaq	.LC0(%rip), %rcx
	movl	$627, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L66
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rdx, %rax
	leaq	.LC0(%rip), %rcx
	movl	$629, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L66
	movq	-152(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$630, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L66
	movq	-48(%rbp), %rax
	andq	$-64, %rax
	addq	$64, %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$9, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L46
.L58:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$9, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$256, %eax
	jg	.L47
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L48
.L47:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L67
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	-160(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$646, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L50:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L51
.L48:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
.L51:
	movl	$0, -12(%rbp)
	jmp	.L52
.L53:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movq	-104(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movq	-104(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$2, %eax
	cltq
	movb	%cl, (%rdx,%rax)
	shrq	$24, -104(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$3, %eax
	movq	-104(%rbp), %rcx
	cltq
	movb	%cl, (%rdx,%rax)
	shrq	$8, -104(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$4, %eax
	movq	-104(%rbp), %rcx
	cltq
	movb	%cl, (%rdx,%rax)
	movq	-104(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$5, %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movq	-104(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$6, %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movq	-104(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	addl	$7, %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$8, -12(%rbp)
.L52:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	sall	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L53
	jmp	.L54
.L55:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	$0, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L54:
	cmpl	$32, -12(%rbp)
	jle	.L55
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	je	.L56
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	je	.L56
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rdx
	addq	$64, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	jne	.L57
.L56:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$674, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L57:
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$192, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$192, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$288, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$384, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_point_add@PLT
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-72(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_scatter_w5@PLT
	addq	$1, -8(%rbp)
.L46:
	movq	-8(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L58
	movl	$255, -20(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	andl	$7, %eax
	movl	-76(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	_booth_recode_w5
	shrl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_gather_w5@PLT
	movq	-72(%rbp), %rcx
	movq	-128(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L59
.L62:
	cmpl	$255, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L60
.L61:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	shrl	$3, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-80(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	andl	$7, %eax
	movl	-76(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	_booth_recode_w5
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	shrl	%eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$9, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_gather_w5@PLT
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_neg@PLT
	movl	-76(%rbp), %eax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	leaq	32(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_conditional
	movq	-72(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_add@PLT
	addq	$1, -8(%rbp)
.L60:
	movq	-8(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L61
	movl	-52(%rbp), %eax
	subl	%eax, -20(%rbp)
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_double@PLT
.L59:
	cmpl	$4, -20(%rbp)
	ja	.L62
	movq	$0, -8(%rbp)
	jmp	.L63
.L64:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	addl	%eax, %eax
	andl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	_booth_recode_w5
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	shrl	%eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$9, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_gather_w5@PLT
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_neg@PLT
	movl	-76(%rbp), %eax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	$96, %rax
	leaq	32(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_conditional
	movq	-72(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_add@PLT
	addq	$1, -8(%rbp)
.L63:
	movq	-8(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L64
	movl	$1, -16(%rbp)
	jmp	.L45
.L66:
	nop
	jmp	.L45
.L67:
	nop
.L45:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$772, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$773, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$774, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ecp_nistz256_windowed_mul, .-ecp_nistz256_windowed_mul
	.section	.rodata
	.align 32
	.type	def_xG, @object
	.size	def_xG, 32
def_xG:
	.quad	8784043285714375740
	.quad	8483257759279461889
	.quad	8789745728267363600
	.quad	1770019616739251654
	.align 32
	.type	def_yG, @object
	.size	def_yG, 32
def_yG:
	.quad	-2453807210370345462
	.quad	-8409706061646666660
	.quad	-3249199208764148955
	.quad	-8830996915122840187
	.text
	.type	ecp_nistz256_is_affine_G, @function
ecp_nistz256_is_affine_G:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	cmpl	$4, %eax
	jne	.L69
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	cmpl	$4, %eax
	jne	.L69
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	%rax, %rdx
	leaq	def_xG(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	is_equal
	testq	%rax, %rax
	je	.L69
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	%rax, %rdx
	leaq	def_yG(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	is_equal
	testq	%rax, %rax
	je	.L69
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	is_one
	testq	%rax, %rax
	je	.L69
	movl	$1, %eax
	jmp	.L71
.L69:
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ecp_nistz256_is_affine_G, .-ecp_nistz256_is_affine_G
	.type	ecp_nistz256_mult_precompute, @function
ecp_nistz256_mult_precompute:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EC_pre_comp_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$825, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ecp_nistz256_is_affine_G
	testl	%eax, %eax
	je	.L75
	movl	$1, %eax
	jmp	.L74
.L75:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ecp_nistz256_pre_comp_new
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L74
.L76:
	cmpq	$0, -176(%rbp)
	jne	.L77
	movq	-168(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.L99
.L77:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L100
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L80
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$853, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L80:
	movq	$7, -88(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$860, %edx
	movq	%rax, %rsi
	movl	$151616, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L101
	movq	-56(%rbp), %rax
	andq	$-64, %rax
	addq	$64, %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -8(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L102
	cmpq	$0, -16(%rbp)
	je	.L102
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L103
	movl	$0, -44(%rbp)
	jmp	.L85
.L98:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L104
	movl	$0, -40(%rbp)
	jmp	.L87
.L96:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %r8
	movq	-176(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L105
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	je	.L91
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-160(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	jne	.L92
.L91:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$891, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L92:
	movl	-40(%rbp), %eax
	cltq
	salq	$12, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-44(%rbp), %edx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ecp_nistz256_scatter_w7@PLT
	movl	$0, -36(%rbp)
	jmp	.L93
.L95:
	movq	-176(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	je	.L106
	addl	$1, -36(%rbp)
.L93:
	cmpl	$6, -36(%rbp)
	jle	.L95
	addl	$1, -40(%rbp)
.L87:
	cmpl	$36, -40(%rbp)
	jle	.L96
	movq	-176(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	je	.L107
	addl	$1, -44(%rbp)
.L85:
	cmpl	$63, -44(%rbp)
	jle	.L98
	movq	-24(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	$0, -56(%rbp)
	movq	-168(%rbp), %rax
	movl	$5, 152(%rax)
	movq	-168(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	$0, -24(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L78
.L99:
	nop
	jmp	.L78
.L100:
	nop
	jmp	.L78
.L101:
	nop
	jmp	.L78
.L102:
	nop
	jmp	.L78
.L103:
	nop
	jmp	.L78
.L104:
	nop
	jmp	.L78
.L105:
	nop
	jmp	.L78
.L106:
	nop
	jmp	.L78
.L107:
	nop
.L78:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_nistz256_pre_comp_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$918, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-48(%rbp), %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ecp_nistz256_mult_precompute, .-ecp_nistz256_mult_precompute
	.type	ecp_nistz256_set_from_affine, @function
ecp_nistz256_set_from_affine:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L109
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	ONE(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
.L109:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ecp_nistz256_set_from_affine, .-ecp_nistz256_set_from_affine
	.type	ecp_nistz256_points_mul, @function
ecp_nistz256_points_mul:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$448, %rsp
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, 16(%rsp)
	movl	$0, 380(%rsp)
	movl	$0, 444(%rsp)
	movl	$0, 440(%rsp)
	movl	$0, 436(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 296(%rsp)
	movb	$0, 304(%rsp)
	movq	$0, 424(%rsp)
	movq	$0, 368(%rsp)
	movq	$0, 416(%rsp)
	movq	$0, 408(%rsp)
	movq	$0, 400(%rsp)
	movl	$0, 396(%rsp)
	movl	$7, 364(%rsp)
	movl	364(%rsp), %eax
	addl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 360(%rsp)
	cmpq	$-1, 32(%rsp)
	je	.L112
	movq	32(%rsp), %rax
	addq	$1, %rax
	cmpq	$268435455, %rax
	jbe	.L113
.L112:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$964, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L113:
	leaq	64(%rsp), %rax
	movl	$96, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, 40(%rsp)
	je	.L115
	movq	56(%rsp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, 416(%rsp)
	cmpq	$0, 416(%rsp)
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$974, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L117
.L116:
	movq	56(%rsp), %rax
	movq	160(%rax), %rax
	movq	%rax, 368(%rsp)
	cmpq	$0, 368(%rsp)
	je	.L118
	movq	56(%rsp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, 352(%rsp)
	cmpq	$0, 352(%rsp)
	je	.L144
	movq	368(%rsp), %rax
	movq	16(%rax), %rcx
	leaq	64(%rsp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_gather_w7@PLT
	movq	16(%rbp), %rcx
	leaq	64(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	352(%rsp), %rax
	movq	%rax, %rdi
	call	ecp_nistz256_set_from_affine
	testl	%eax, %eax
	jne	.L120
	movq	352(%rsp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	jmp	.L117
.L120:
	movq	16(%rbp), %rcx
	movq	352(%rsp), %rdx
	movq	416(%rsp), %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	testl	%eax, %eax
	jne	.L121
	movq	368(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 424(%rsp)
.L121:
	movq	352(%rsp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
.L118:
	cmpq	$0, 424(%rsp)
	jne	.L122
	movq	416(%rsp), %rax
	movq	%rax, %rdi
	call	ecp_nistz256_is_affine_G
	testl	%eax, %eax
	je	.L122
	movq	ecp_nistz256_precomputed@GOTPCREL(%rip), %rax
	movq	%rax, 424(%rsp)
.L122:
	cmpq	$0, 424(%rsp)
	je	.L123
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$256, %eax
	jg	.L124
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L125
.L124:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, 344(%rsp)
	cmpq	$0, 344(%rsp)
	je	.L145
	movq	56(%rsp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rcx
	movq	40(%rsp), %rsi
	movq	344(%rsp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1022, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L117
.L127:
	movq	344(%rsp), %rax
	movq	%rax, 40(%rsp)
.L125:
	movl	$0, 380(%rsp)
	jmp	.L128
.L129:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	%rax, %rdx
	movl	380(%rsp), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, 312(%rsp)
	movq	312(%rsp), %rax
	movl	%eax, %edx
	movl	380(%rsp), %eax
	cltq
	movb	%dl, 272(%rsp,%rax)
	movq	312(%rsp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movl	380(%rsp), %eax
	addl	$1, %eax
	cltq
	movb	%dl, 272(%rsp,%rax)
	movq	312(%rsp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movl	380(%rsp), %eax
	addl	$2, %eax
	cltq
	movb	%dl, 272(%rsp,%rax)
	shrq	$24, 312(%rsp)
	movl	380(%rsp), %eax
	addl	$3, %eax
	movq	312(%rsp), %rdx
	cltq
	movb	%dl, 272(%rsp,%rax)
	shrq	$8, 312(%rsp)
	movl	380(%rsp), %eax
	addl	$4, %eax
	movq	312(%rsp), %rdx
	cltq
	movb	%dl, 272(%rsp,%rax)
	movq	312(%rsp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movl	380(%rsp), %eax
	addl	$5, %eax
	cltq
	movb	%dl, 272(%rsp,%rax)
	movq	312(%rsp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movl	380(%rsp), %eax
	addl	$6, %eax
	cltq
	movb	%dl, 272(%rsp,%rax)
	movq	312(%rsp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movl	380(%rsp), %eax
	addl	$7, %eax
	cltq
	movb	%dl, 272(%rsp,%rax)
	addl	$8, 380(%rsp)
.L128:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	sall	$3, %eax
	cmpl	%eax, 380(%rsp)
	jl	.L129
	jmp	.L130
.L131:
	movl	380(%rsp), %eax
	cltq
	movb	$0, 272(%rsp,%rax)
	addl	$1, 380(%rsp)
.L130:
	cmpl	$32, 380(%rsp)
	jle	.L131
	movzbl	272(%rsp), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	andl	360(%rsp), %eax
	movl	%eax, 340(%rsp)
	movl	364(%rsp), %eax
	addl	%eax, 396(%rsp)
	movl	340(%rsp), %eax
	movl	%eax, %edi
	call	_booth_recode_w7
	movl	%eax, 340(%rsp)
	movl	340(%rsp), %eax
	shrl	%eax
	movl	%eax, %edx
	movq	424(%rsp), %rcx
	leaq	64(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_gather_w7@PLT
	leaq	64(%rsp), %rax
	leaq	32(%rax), %rdx
	leaq	64(%rsp), %rax
	addq	$64, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_neg@PLT
	movl	340(%rsp), %eax
	andl	$1, %eax
	movq	%rax, %rdx
	leaq	64(%rsp), %rax
	leaq	64(%rax), %rcx
	leaq	64(%rsp), %rax
	addq	$32, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_conditional
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rax
	orq	%rax, %rdx
	movq	80(%rsp), %rax
	orq	%rax, %rdx
	movq	88(%rsp), %rax
	orq	%rax, %rdx
	movq	96(%rsp), %rax
	orq	%rax, %rdx
	movq	104(%rsp), %rax
	orq	%rax, %rdx
	movq	112(%rsp), %rax
	orq	%rax, %rdx
	movq	120(%rsp), %rax
	orq	%rdx, %rax
	movq	%rax, 328(%rsp)
	movq	328(%rsp), %rax
	movq	%rax, %rdi
	call	is_zero
	negq	%rax
	movq	%rax, 328(%rsp)
	notq	328(%rsp)
	movl	$1, %eax
	andq	328(%rsp), %rax
	movq	%rax, 128(%rsp)
	movabsq	$-4294967296, %rax
	andq	328(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	$-1, %rax
	andq	328(%rsp), %rax
	movq	%rax, 144(%rsp)
	movl	$4294967294, %eax
	andq	328(%rsp), %rax
	movq	%rax, 152(%rsp)
	movl	$1, 380(%rsp)
	jmp	.L132
.L133:
	movl	396(%rsp), %eax
	subl	$1, %eax
	shrl	$3, %eax
	movl	%eax, 324(%rsp)
	movl	324(%rsp), %eax
	movzbl	272(%rsp,%rax), %eax
	movzbl	%al, %eax
	movl	324(%rsp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	movzbl	272(%rsp,%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, 340(%rsp)
	movl	396(%rsp), %eax
	subl	$1, %eax
	andl	$7, %eax
	movl	340(%rsp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	360(%rsp), %eax
	movl	%eax, 340(%rsp)
	movl	364(%rsp), %eax
	addl	%eax, 396(%rsp)
	movl	340(%rsp), %eax
	movl	%eax, %edi
	call	_booth_recode_w7
	movl	%eax, 340(%rsp)
	movl	340(%rsp), %eax
	shrl	%eax
	movl	%eax, %esi
	movl	380(%rsp), %eax
	cltq
	salq	$12, %rax
	movq	%rax, %rdx
	movq	424(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	160(%rsp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_gather_w7@PLT
	leaq	160(%rsp), %rax
	leaq	32(%rax), %rdx
	leaq	160(%rsp), %rax
	addq	$64, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_neg@PLT
	movl	340(%rsp), %eax
	andl	$1, %eax
	movq	%rax, %rdx
	leaq	160(%rsp), %rax
	leaq	64(%rax), %rcx
	leaq	160(%rsp), %rax
	addq	$32, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_conditional
	leaq	160(%rsp), %rdx
	leaq	64(%rsp), %rcx
	leaq	64(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_add_affine@PLT
	addl	$1, 380(%rsp)
.L132:
	cmpl	$36, 380(%rsp)
	jle	.L133
	jmp	.L134
.L123:
	movl	$1, 436(%rsp)
	movl	$1, 440(%rsp)
	jmp	.L134
.L115:
	movl	$1, 436(%rsp)
.L134:
	cmpl	$0, 440(%rsp)
	je	.L135
	movq	32(%rsp), %rax
	addq	$1, %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 408(%rsp)
	cmpq	$0, 408(%rsp)
	je	.L146
	movq	32(%rsp), %rax
	addq	$1, %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1116, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 400(%rsp)
	cmpq	$0, 400(%rsp)
	je	.L147
	movq	32(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rsp), %rcx
	movq	408(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	32(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	408(%rsp), %rax
	addq	%rax, %rdx
	movq	40(%rsp), %rax
	movq	%rax, (%rdx)
	movq	32(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	24(%rsp), %rcx
	movq	400(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	32(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	400(%rsp), %rax
	addq	%rax, %rdx
	movq	416(%rsp), %rax
	movq	%rax, (%rdx)
	movq	408(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 24(%rsp)
	addq	$1, 32(%rsp)
.L135:
	cmpq	$0, 32(%rsp)
	je	.L138
	leaq	160(%rsp), %rax
	movq	%rax, 384(%rsp)
	cmpl	$0, 436(%rsp)
	je	.L139
	leaq	64(%rsp), %rax
	movq	%rax, 384(%rsp)
.L139:
	movq	16(%rbp), %r8
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	384(%rsp), %rsi
	movq	56(%rsp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecp_nistz256_windowed_mul
	testl	%eax, %eax
	je	.L148
	cmpl	$0, 436(%rsp)
	jne	.L138
	movq	384(%rsp), %rdx
	leaq	64(%rsp), %rcx
	leaq	64(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_point_add@PLT
.L138:
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	leaq	64(%rsp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	testl	%eax, %eax
	je	.L149
	movq	48(%rsp), %rax
	movq	24(%rax), %rax
	leaq	64(%rsp), %rdx
	leaq	32(%rdx), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	testl	%eax, %eax
	je	.L149
	movq	48(%rsp), %rax
	movq	32(%rax), %rax
	leaq	64(%rsp), %rdx
	leaq	64(%rdx), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	testl	%eax, %eax
	je	.L149
	movq	48(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	is_one
	andl	$1, %eax
	movl	%eax, %edx
	movq	48(%rsp), %rax
	movl	%edx, 40(%rax)
	movl	$1, 444(%rsp)
	jmp	.L117
.L144:
	nop
	jmp	.L117
.L145:
	nop
	jmp	.L117
.L146:
	nop
	jmp	.L117
.L147:
	nop
	jmp	.L117
.L148:
	nop
	jmp	.L117
.L149:
	nop
.L117:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	leaq	.LC0(%rip), %rcx
	movq	400(%rsp), %rax
	movl	$1154, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	408(%rsp), %rax
	movl	$1155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	444(%rsp), %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	ecp_nistz256_points_mul, .-ecp_nistz256_points_mul
	.type	ecp_nistz256_get_affine, @function
ecp_nistz256_get_affine:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%r8, -328(%rbp)
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L151
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L151:
	movq	-304(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	je	.L153
	movq	-304(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	je	.L153
	movq	-304(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	jne	.L154
.L153:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L154:
	leaq	-224(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mod_inverse
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_sqr_mont@PLT
	leaq	-160(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	cmpq	$0, -312(%rbp)
	je	.L155
	leaq	-96(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_from_mont@PLT
	leaq	-256(%rbp), %rcx
	movq	-312(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	testl	%eax, %eax
	jne	.L155
	movl	$0, %eax
	jmp	.L157
.L155:
	cmpq	$0, -320(%rbp)
	je	.L156
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-192(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_mul_mont@PLT
	leaq	-128(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_from_mont@PLT
	leaq	-288(%rbp), %rcx
	movq	-320(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L157
.L156:
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ecp_nistz256_get_affine, .-ecp_nistz256_get_affine
	.type	ecp_nistz256_pre_comp_new, @function
ecp_nistz256_pre_comp_new:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L159
	movl	$0, %eax
	jmp	.L160
.L159:
	leaq	.LC0(%rip), %rax
	movl	$1210, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L161
	movq	-8(%rbp), %rax
	jmp	.L160
.L161:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$6, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L162
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L160
.L162:
	movq	-8(%rbp), %rax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ecp_nistz256_pre_comp_new, .-ecp_nistz256_pre_comp_new
	.globl	EC_nistz256_pre_comp_dup
	.type	EC_nistz256_pre_comp_dup, @function
EC_nistz256_pre_comp_dup:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L164
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
.L164:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	EC_nistz256_pre_comp_dup, .-EC_nistz256_pre_comp_dup
	.globl	EC_nistz256_pre_comp_free
	.type	EC_nistz256_pre_comp_free, @function
EC_nistz256_pre_comp_free:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L171
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L172
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1246, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1248, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L166
.L171:
	nop
	jmp	.L166
.L172:
	nop
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	EC_nistz256_pre_comp_free, .-EC_nistz256_pre_comp_free
	.type	ecp_nistz256_window_have_precompute_mult, @function
ecp_nistz256_window_have_precompute_mult:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecp_nistz256_is_affine_G
	testl	%eax, %eax
	je	.L174
	movl	$1, %eax
	jmp	.L175
.L174:
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$5, %eax
	jne	.L176
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L176
	movl	$1, %eax
	jmp	.L175
.L176:
	movl	$0, %eax
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ecp_nistz256_window_have_precompute_mult, .-ecp_nistz256_window_have_precompute_mult
	.type	ecp_nistz256_inv_mod_ord, @function
ecp_nistz256_inv_mod_ord:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movl	$0, -8(%rbp)
	movq	-576(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L179
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L179:
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$256, %eax
	jg	.L181
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L182
.L181:
	movq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L183
	movq	-568(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-592(%rbp), %rcx
	movq	-584(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L184
.L183:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L184:
	movq	-16(%rbp), %rax
	movq	%rax, -584(%rbp)
.L182:
	movq	-584(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_bignum_to_field_elem
	testl	%eax, %eax
	jne	.L185
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L185:
	leaq	RR.3(%rip), %rdx
	leaq	-560(%rbp), %rcx
	leaq	-496(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	-496(%rbp), %rdx
	leaq	32(%rdx), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	-496(%rbp), %rcx
	addq	$64, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$96, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	96(%rax), %rcx
	leaq	-496(%rbp), %rax
	subq	$-128, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	96(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$160, %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	96(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	160(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$192, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	160(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$224, %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	-496(%rbp), %rdx
	leaq	224(%rdx), %rsi
	leaq	-496(%rbp), %rdx
	leaq	224(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	224(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$256, %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	96(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	256(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$288, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	224(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	256(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$320, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	320(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$352, %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	352(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$352, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	352(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$384, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	352(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	384(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$384, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	384(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$416, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	384(%rax), %rdx
	leaq	-496(%rbp), %rax
	leaq	416(%rax), %rcx
	leaq	-496(%rbp), %rax
	addq	$416, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	416(%rax), %rcx
	leaq	-528(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	leaq	-496(%rbp), %rax
	leaq	416(%rax), %rdx
	leaq	-528(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	movl	$0, -4(%rbp)
	jmp	.L186
.L187:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	chain.2(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %edx
	leaq	-528(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_sqr_mont@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	1+chain.2(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %edx
	leaq	-496(%rbp), %rax
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	leaq	-528(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	addl	$1, -4(%rbp)
.L186:
	cmpl	$26, -4(%rbp)
	jle	.L187
	leaq	one.1(%rip), %rdx
	leaq	-528(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecp_nistz256_ord_mul_mont@PLT
	leaq	-528(%rbp), %rcx
	movq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_set_words@PLT
	testl	%eax, %eax
	je	.L190
	movl	$1, -8(%rbp)
	jmp	.L180
.L190:
	nop
.L180:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ecp_nistz256_inv_mod_ord, .-ecp_nistz256_inv_mod_ord
	.globl	EC_GFp_nistz256_method
	.type	EC_GFp_nistz256_method, @function
EC_GFp_nistz256_method:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ret.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	EC_GFp_nistz256_method, .-EC_GFp_nistz256_method
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 26
__func__.8:
	.string	"ecp_nistz256_windowed_mul"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 29
__func__.7:
	.string	"ecp_nistz256_mult_precompute"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"ecp_nistz256_points_mul"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 24
__func__.5:
	.string	"ecp_nistz256_get_affine"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 25
__func__.4:
	.string	"ecp_nistz256_inv_mod_ord"
	.align 32
	.type	RR.3, @object
	.size	RR.3, 32
RR.3:
	.quad	-8996981949549908318
	.quad	5087230966250696614
	.quad	2901921493521525849
	.quad	7413256579398063648
	.align 32
	.type	chain.2, @object
	.size	chain.2, 54
chain.2:
	.byte	32
	.byte	13
	.byte	6
	.byte	9
	.byte	5
	.byte	4
	.byte	4
	.byte	2
	.byte	5
	.byte	6
	.byte	5
	.byte	7
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	5
	.byte	4
	.byte	9
	.byte	9
	.byte	6
	.byte	6
	.byte	2
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	6
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	3
	.byte	3
	.byte	2
	.byte	10
	.byte	9
	.byte	2
	.byte	2
	.byte	5
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	7
	.byte	7
	.byte	6
	.byte	6
	.align 32
	.type	one.1, @object
	.size	one.1, 32
one.1:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ret.0, @object
	.size	ret.0, 440
ret.0:
	.long	1
	.long	406
	.quad	ossl_ec_GFp_mont_group_init
	.quad	ossl_ec_GFp_mont_group_finish
	.quad	ossl_ec_GFp_mont_group_clear_finish
	.quad	ossl_ec_GFp_mont_group_copy
	.quad	ossl_ec_GFp_mont_group_set_curve
	.quad	ossl_ec_GFp_simple_group_get_curve
	.quad	ossl_ec_GFp_simple_group_get_degree
	.quad	ossl_ec_group_simple_order_bits
	.quad	ossl_ec_GFp_simple_group_check_discriminant
	.quad	ossl_ec_GFp_simple_point_init
	.quad	ossl_ec_GFp_simple_point_finish
	.quad	ossl_ec_GFp_simple_point_clear_finish
	.quad	ossl_ec_GFp_simple_point_copy
	.quad	ossl_ec_GFp_simple_point_set_to_infinity
	.quad	ossl_ec_GFp_simple_point_set_affine_coordinates
	.quad	ecp_nistz256_get_affine
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_ec_GFp_simple_add
	.quad	ossl_ec_GFp_simple_dbl
	.quad	ossl_ec_GFp_simple_invert
	.quad	ossl_ec_GFp_simple_is_at_infinity
	.quad	ossl_ec_GFp_simple_is_on_curve
	.quad	ossl_ec_GFp_simple_cmp
	.quad	ossl_ec_GFp_simple_make_affine
	.quad	ossl_ec_GFp_simple_points_make_affine
	.quad	ecp_nistz256_points_mul
	.quad	ecp_nistz256_mult_precompute
	.quad	ecp_nistz256_window_have_precompute_mult
	.quad	ossl_ec_GFp_mont_field_mul
	.quad	ossl_ec_GFp_mont_field_sqr
	.quad	0
	.quad	ossl_ec_GFp_mont_field_inv
	.quad	ossl_ec_GFp_mont_field_encode
	.quad	ossl_ec_GFp_mont_field_decode
	.quad	ossl_ec_GFp_mont_field_set_to_one
	.quad	ossl_ec_key_simple_priv2oct
	.quad	ossl_ec_key_simple_oct2priv
	.quad	0
	.quad	ossl_ec_key_simple_generate_key
	.quad	ossl_ec_key_simple_check_key
	.quad	ossl_ec_key_simple_generate_public_key
	.quad	0
	.quad	0
	.quad	ossl_ecdh_simple_compute_key
	.quad	ossl_ecdsa_simple_sign_setup
	.quad	ossl_ecdsa_simple_sign_sig
	.quad	ossl_ecdsa_simple_verify_sig
	.quad	ecp_nistz256_inv_mod_ord
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

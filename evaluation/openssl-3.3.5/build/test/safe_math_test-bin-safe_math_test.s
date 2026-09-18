	.file	"safe_math_test.c"
	.text
	.type	safe_add_int, @function
safe_add_int:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	jno	.L2
	movl	$1, %ecx
.L2:
	movl	%eax, -4(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movl	-4(%rbp), %eax
	jmp	.L8
.L4:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	jns	.L6
	movl	$-2147483648, %eax
	jmp	.L8
.L6:
	movl	$2147483647, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	safe_add_int, .-safe_add_int
	.type	safe_sub_int, @function
safe_sub_int:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %edx
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	jno	.L10
	movl	$1, %edx
.L10:
	movl	%eax, -4(%rbp)
	movl	%edx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L12
	movl	-4(%rbp), %eax
	jmp	.L16
.L12:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	jns	.L14
	movl	$-2147483648, %eax
	jmp	.L16
.L14:
	movl	$2147483647, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	safe_sub_int, .-safe_sub_int
	.type	safe_mul_int, @function
safe_mul_int:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %edx
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	jno	.L18
	movl	$1, %edx
.L18:
	movl	%eax, -4(%rbp)
	movl	%edx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L20
	movl	-4(%rbp), %eax
	jmp	.L24
.L20:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	-20(%rbp), %eax
	xorl	-24(%rbp), %eax
	testl	%eax, %eax
	jns	.L22
	movl	$-2147483648, %eax
	jmp	.L24
.L22:
	movl	$2147483647, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	safe_mul_int, .-safe_mul_int
	.type	safe_div_int, @function
safe_div_int:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L26
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -4(%rbp)
	jns	.L27
	movl	$-2147483648, %eax
	jmp	.L29
.L27:
	movl	$2147483647, %eax
	jmp	.L29
.L26:
	cmpl	$-1, -8(%rbp)
	jne	.L30
	cmpl	$-2147483648, -4(%rbp)
	jne	.L30
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$2147483647, %eax
	jmp	.L29
.L30:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	safe_div_int, .-safe_div_int
	.type	safe_mod_int, @function
safe_mod_int:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L32
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L33
.L32:
	cmpl	$-1, -8(%rbp)
	jne	.L34
	cmpl	$-2147483648, -4(%rbp)
	jne	.L34
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$2147483647, %eax
	jmp	.L33
.L34:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	safe_mod_int, .-safe_mod_int
	.type	safe_div_round_up_int, @function
safe_div_round_up_int:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L36
	leaq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L37
.L36:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L37:
	cmpl	$0, -32(%rbp)
	jle	.L38
	cmpl	$0, -28(%rbp)
	jle	.L38
	movl	$2147483647, %eax
	subl	-32(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jge	.L39
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cltd
	idivl	-32(%rbp)
	jmp	.L45
.L39:
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	jmp	.L45
.L38:
	cmpl	$0, -32(%rbp)
	jne	.L41
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -28(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L45
.L42:
	movl	$2147483647, %eax
	jmp	.L45
.L41:
	cmpl	$0, -28(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-16(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_int
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %ebx
	movq	-16(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	safe_add_int
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	safe_div_round_up_int, .-safe_div_round_up_int
	.type	safe_muldiv_int, @function
safe_muldiv_int:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L47
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -36(%rbp)
	je	.L48
	cmpl	$0, -40(%rbp)
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L54
.L49:
	movl	$2147483647, %eax
	jmp	.L54
.L47:
	leaq	-20(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L52
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	jmp	.L54
.L52:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L53
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)
.L53:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_int
	movl	%eax, -12(%rbp)
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-16(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_add_int
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	safe_muldiv_int, .-safe_muldiv_int
	.type	safe_neg_int, @function
safe_neg_int:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$-2147483648, -4(%rbp)
	je	.L56
	movl	-4(%rbp), %eax
	negl	%eax
	jmp	.L57
.L56:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-2147483648, %eax
.L57:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	safe_neg_int, .-safe_neg_int
	.type	safe_abs_int, @function
safe_abs_int:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$-2147483648, -4(%rbp)
	je	.L59
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	jmp	.L60
.L59:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-2147483648, %eax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	safe_abs_int, .-safe_abs_int
	.type	safe_add_uint, @function
safe_add_uint:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %ecx
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %edx
	addl	%edx, %eax
	jnc	.L62
	movl	$1, %ecx
.L62:
	movl	%eax, -4(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L64
	movl	-4(%rbp), %eax
	jmp	.L66
.L64:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
.L66:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	safe_add_uint, .-safe_add_uint
	.type	safe_sub_uint, @function
safe_sub_uint:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L68
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L68:
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	safe_sub_uint, .-safe_sub_uint
	.type	safe_mul_uint, @function
safe_mul_uint:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %ecx
	movl	-20(%rbp), %eax
	mull	-24(%rbp)
	jno	.L71
	movl	$1, %ecx
.L71:
	movl	%eax, -4(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L73
	movl	-4(%rbp), %eax
	jmp	.L75
.L73:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
.L75:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	safe_mul_uint, .-safe_mul_uint
	.type	safe_div_uint, @function
safe_div_uint:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L77
	movl	-4(%rbp), %eax
	movl	$0, %edx
	divl	-8(%rbp)
	jmp	.L78
.L77:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-1, %eax
.L78:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	safe_div_uint, .-safe_div_uint
	.type	safe_mod_uint, @function
safe_mod_uint:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L80
	movl	-4(%rbp), %eax
	movl	$0, %edx
	divl	-8(%rbp)
	movl	%edx, %eax
	jmp	.L81
.L80:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	safe_mod_uint, .-safe_mod_uint
	.type	safe_div_round_up_uint, @function
safe_div_round_up_uint:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L83
	leaq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L84
.L83:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L84:
	cmpl	$0, -32(%rbp)
	je	.L85
	cmpl	$0, -28(%rbp)
	je	.L85
	movl	-32(%rbp), %eax
	notl	%eax
	cmpl	%eax, -28(%rbp)
	jnb	.L86
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	$0, %edx
	divl	-32(%rbp)
	jmp	.L92
.L86:
	movl	-28(%rbp), %eax
	movl	$0, %edx
	divl	-32(%rbp)
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	movl	$0, %edx
	divl	-32(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	jmp	.L92
.L85:
	cmpl	$0, -32(%rbp)
	jne	.L88
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -28(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L92
.L89:
	movl	$-1, %eax
	jmp	.L92
.L88:
	cmpl	$0, -28(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-16(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_uint
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %ebx
	movq	-16(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_uint
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	safe_add_uint
.L92:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	safe_div_round_up_uint, .-safe_div_round_up_uint
	.type	safe_muldiv_uint, @function
safe_muldiv_uint:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L94
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	je	.L95
	cmpl	$0, -24(%rbp)
	jne	.L96
.L95:
	movl	$0, %eax
	jmp	.L101
.L96:
	movl	$-1, %eax
	jmp	.L101
.L94:
	leaq	-12(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_uint
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L99
	movl	-4(%rbp), %eax
	movl	$0, %edx
	divl	-28(%rbp)
	jmp	.L101
.L99:
	movl	-24(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L100
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
.L100:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-28(%rbp)
	movl	%edx, %ecx
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	safe_mul_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-28(%rbp)
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	safe_mul_uint
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %edx
	divl	-28(%rbp)
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_add_uint
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	safe_muldiv_uint, .-safe_muldiv_uint
	.type	safe_neg_uint, @function
safe_neg_uint:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L103
	movl	-4(%rbp), %eax
	jmp	.L104
.L103:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	negl	%eax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	safe_neg_uint, .-safe_neg_uint
	.type	safe_abs_uint, @function
safe_abs_uint:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	safe_abs_uint, .-safe_abs_uint
	.type	safe_add_size_t, @function
safe_add_size_t:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L108
	movl	$1, %ecx
.L108:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L110
	movq	-8(%rbp), %rax
	jmp	.L112
.L110:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	safe_add_size_t, .-safe_add_size_t
	.type	safe_sub_size_t, @function
safe_sub_size_t:
.LFB487:
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
	cmpq	%rax, -8(%rbp)
	jnb	.L114
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L114:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	safe_sub_size_t, .-safe_sub_size_t
	.type	safe_mul_size_t, @function
safe_mul_size_t:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	mulq	-32(%rbp)
	jno	.L117
	movl	$1, %ecx
.L117:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L119
	movq	-8(%rbp), %rax
	jmp	.L121
.L119:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L121:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	safe_mul_size_t, .-safe_mul_size_t
	.type	safe_div_size_t, @function
safe_div_size_t:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	jmp	.L124
.L123:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	$-1, %rax
.L124:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	safe_div_size_t, .-safe_div_size_t
	.type	safe_mod_size_t, @function
safe_mod_size_t:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L126
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rdx, %rax
	jmp	.L127
.L126:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L127:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	safe_mod_size_t, .-safe_mod_size_t
	.type	safe_div_round_up_size_t, @function
safe_div_round_up_size_t:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L129
	leaq	-28(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L130
.L129:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.L130:
	cmpq	$0, -56(%rbp)
	je	.L131
	cmpq	$0, -48(%rbp)
	je	.L131
	movq	-56(%rbp), %rax
	notq	%rax
	cmpq	%rax, -48(%rbp)
	jnb	.L132
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L138
.L132:
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addq	%rcx, %rax
	jmp	.L138
.L131:
	cmpq	$0, -56(%rbp)
	jne	.L134
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -48(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L138
.L135:
	movq	$-1, %rax
	jmp	.L138
.L134:
	cmpq	$0, -48(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mod_size_t
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %ebx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_div_size_t
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	safe_add_size_t
.L138:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	safe_div_round_up_size_t, .-safe_div_round_up_size_t
	.type	safe_neg_size_t, @function
safe_neg_size_t:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	movq	-8(%rbp), %rax
	jmp	.L141
.L140:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	negq	%rax
.L141:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	safe_neg_size_t, .-safe_neg_size_t
	.type	safe_abs_size_t, @function
safe_abs_size_t:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	safe_abs_size_t, .-safe_abs_size_t
	.section	.rodata
	.align 32
	.type	test_ints, @object
	.size	test_ints, 960
test_ints:
	.long	1
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2147483647
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2147483647
	.long	2
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2147483647
	.long	4
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2147483644
	.long	4
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	-2147483648
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	-2147483648
	.long	2
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	2
	.long	-2147483648
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	-2147483648
	.long	-1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	0
	.long	2147483647
	.long	-2147483648
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	-2147483648
	.long	2147483647
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
.LC0:
	.string	"test_ints[n].sum_err"
.LC1:
	.string	"err"
.LC2:
	.string	"../test/safe_math_test.c"
.LC3:
	.string	"a + b"
.LC4:
	.string	"r"
.LC5:
	.string	"test_ints[n].sub_err"
.LC6:
	.string	"a - b"
.LC7:
	.string	"test_ints[n].mul_err"
.LC8:
	.string	"a * b"
.LC9:
	.string	"test_ints[n].div_err"
.LC10:
	.string	"a / b"
.LC11:
	.string	"test_ints[n].mod_err"
.LC12:
	.string	"a % b"
.LC13:
	.string	"test_ints[n].div_round_up_err"
.LC14:
	.string	"s"
.LC15:
	.string	"test_ints[n].neg_a_err"
.LC16:
	.string	"-a"
.LC17:
	.string	"test_ints[n].neg_b_err"
.LC18:
	.string	"-b"
.LC19:
	.string	"test_ints[n].abs_a_err"
.LC20:
	.string	"a < 0 ? -a : a"
.LC21:
	.string	"test_ints[n].abs_b_err"
.LC22:
	.string	"b < 0 ? -b : b"
	.align 8
.LC23:
	.string	"a = %d  b = %d  r = %d  err = %d"
	.text
	.type	test_int_ops, @function
test_int_ops:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	test_ints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+test_ints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_add_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$62, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L168
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L146
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movl	-20(%rbp), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L168
.L146:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_sub_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L169
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L149
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L169
.L149:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	16+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L170
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L151
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L170
.L151:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	20+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$80, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L171
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L153
	movl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L171
.L153:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	24+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L172
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L155
	movl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%edx, %edi
	movl	-20(%rbp), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L172
.L155:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_round_up_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	28+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L173
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_int
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %ebx
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, %ecx
	leaq	-36(%rbp), %rax
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	safe_add_int
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L157
	movl	-32(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L174
.L157:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_neg_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	32+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L175
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L159
	movl	-24(%rbp), %eax
	negl	%eax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L175
.L159:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_neg_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	36+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$107, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L176
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L161
	movl	-28(%rbp), %eax
	negl	%eax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$108, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L176
.L161:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_abs_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	40+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L177
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L163
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L177
.L163:
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_abs_int
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	44+test_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-36(%rbp), %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L178
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L165
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L178
.L165:
	movl	$1, %eax
	jmp	.L167
.L168:
	nop
	jmp	.L147
.L169:
	nop
	jmp	.L147
.L170:
	nop
	jmp	.L147
.L171:
	nop
	jmp	.L147
.L172:
	nop
	jmp	.L147
.L173:
	nop
	jmp	.L147
.L174:
	nop
	jmp	.L147
.L175:
	nop
	jmp	.L147
.L176:
	nop
	jmp	.L147
.L177:
	nop
	jmp	.L147
.L178:
	nop
.L147:
	movl	-36(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$124, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L167:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	test_int_ops, .-test_int_ops
	.section	.rodata
	.align 32
	.type	test_uints, @object
	.size	test_uints, 288
test_uints:
	.long	3
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	3
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	2
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	16
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	-14
	.long	16
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	-1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
.LC24:
	.string	"test_uints[n].sum_err"
.LC25:
	.string	"test_uints[n].sub_err"
.LC26:
	.string	"test_uints[n].mul_err"
.LC27:
	.string	"test_uints[n].div_err"
.LC28:
	.string	"test_uints[n].mod_err"
	.align 8
.LC29:
	.string	"test_uints[n].div_round_up_err"
.LC30:
	.string	"a / b + (a % b != 0)"
.LC31:
	.string	"a != 0"
.LC32:
	.string	"0"
.LC33:
	.string	"b != 0"
.LC34:
	.string	"a"
.LC35:
	.string	"b"
	.align 8
.LC36:
	.string	"a = %u  b = %u  r = %u  err = %d"
	.text
	.type	test_uint_ops, @function
test_uint_ops:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	test_uints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	4+test_uints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_add_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+test_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC24(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L203
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L181
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movl	-4(%rbp), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L203
.L181:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_sub_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+test_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L204
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L184
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$158, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L204
.L184:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+test_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L205
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L186
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L205
.L186:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	20+test_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L206
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L188
	movl	-8(%rbp), %eax
	movl	$0, %edx
	divl	-12(%rbp)
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L206
.L188:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+test_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$175, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L207
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L190
	movl	-8(%rbp), %eax
	movl	$0, %edx
	divl	-12(%rbp)
	movl	%edx, %edi
	movl	-4(%rbp), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L207
.L190:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_round_up_uint
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	28+test_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L208
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L192
	movl	-8(%rbp), %eax
	movl	$0, %edx
	divl	-12(%rbp)
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	movl	$0, %edx
	divl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%rcx,%rax), %edi
	movl	-4(%rbp), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$182, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L208
.L192:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_neg_uint
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %edi
	movl	-16(%rbp), %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L209
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L194
	movl	-4(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L209
.L194:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_neg_uint
	movl	%eax, -4(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edi
	movl	-16(%rbp), %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L210
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L196
	movl	-4(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L210
.L196:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_abs_uint
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$197, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L211
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$197, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L211
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	safe_abs_uint
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$202, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L212
	movl	-12(%rbp), %edi
	movl	-4(%rbp), %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$202, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L212
	movl	$1, %eax
	jmp	.L202
.L203:
	nop
	jmp	.L182
.L204:
	nop
	jmp	.L182
.L205:
	nop
	jmp	.L182
.L206:
	nop
	jmp	.L182
.L207:
	nop
	jmp	.L182
.L208:
	nop
	jmp	.L182
.L209:
	nop
	jmp	.L182
.L210:
	nop
	jmp	.L182
.L211:
	nop
	jmp	.L182
.L212:
	nop
.L182:
	movl	-16(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$206, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_uint_ops, .-test_uint_ops
	.section	.rodata
	.align 32
	.type	test_size_ts, @object
	.size	test_size_ts, 400
test_size_ts:
	.quad	3
	.quad	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	1
	.quad	3
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	36
	.quad	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	-1
	.quad	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	-1
	.quad	2
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.quad	-1
	.quad	8
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.quad	-4
	.quad	8
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.quad	1
	.quad	-1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	2
	.quad	-1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.quad	11
	.quad	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
.LC37:
	.string	"test_size_ts[n].sum_err"
.LC38:
	.string	"test_size_ts[n].sub_err"
.LC39:
	.string	"test_size_ts[n].mul_err"
.LC40:
	.string	"test_size_ts[n].div_err"
.LC41:
	.string	"test_size_ts[n].mod_err"
	.align 8
.LC42:
	.string	"test_size_ts[n].div_round_up_err"
	.align 8
.LC43:
	.string	"a = %zu  b = %zu  r = %zu  err = %d"
	.text
	.type	test_size_t_ops, @function
test_size_t_ops:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	test_size_ts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+test_size_ts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_size_t
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+test_size_ts(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$234, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L237
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L215
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$235, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L237
.L215:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_sub_size_t
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+test_size_ts(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC38(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L238
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L218
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$241, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L238
.L218:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_size_t
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+test_size_ts(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$246, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L239
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L220
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$247, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L239
.L220:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_div_size_t
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	28+test_size_ts(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$252, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L240
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L222
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$253, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L240
.L222:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mod_size_t
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+test_size_ts(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L241
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L224
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rdx, %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L241
.L224:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_div_round_up_size_t
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	36+test_size_ts(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L242
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L226
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	(%rcx,%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L242
.L226:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	safe_neg_size_t
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %edi
	movl	-28(%rbp), %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L243
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L228
	movq	-8(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L243
.L228:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	safe_neg_size_t
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %edi
	movl	-28(%rbp), %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$275, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L244
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L230
	movq	-8(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$275, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L244
.L230:
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	safe_abs_size_t
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$280, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L245
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$280, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L245
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	safe_abs_size_t
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$285, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L246
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$285, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L246
	movl	$1, %eax
	jmp	.L236
.L237:
	nop
	jmp	.L216
.L238:
	nop
	jmp	.L216
.L239:
	nop
	jmp	.L216
.L240:
	nop
	jmp	.L216
.L241:
	nop
	jmp	.L216
.L242:
	nop
	jmp	.L216
.L243:
	nop
	jmp	.L216
.L244:
	nop
	jmp	.L216
.L245:
	nop
	jmp	.L216
.L246:
	nop
.L216:
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %r8
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$289, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_size_t_ops, .-test_size_t_ops
	.section	.rodata
	.align 32
	.type	test_muldiv_ints, @object
	.size	test_muldiv_ints, 224
test_muldiv_ints:
	.long	3
	.long	1
	.long	2
	.long	0
	.long	1
	.long	3
	.long	2
	.long	0
	.long	-3
	.long	1
	.long	2
	.long	0
	.long	1
	.long	3
	.long	-2
	.long	0
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	0
	.long	-2147483648
	.long	-2147483648
	.long	2147483647
	.long	1
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	0
	.long	2147483647
	.long	2
	.long	4
	.long	0
	.long	8
	.long	2147483647
	.long	4
	.long	1
	.long	2147483647
	.long	8
	.long	4
	.long	1
	.long	-2147483648
	.long	2
	.long	4
	.long	1
	.long	8
	.long	-2147483648
	.long	4
	.long	1
	.long	-2147483648
	.long	8
	.long	4
	.long	1
	.long	3
	.long	4
	.long	0
	.long	1
.LC44:
	.string	"test_muldiv_ints[n].err"
.LC45:
	.string	"real"
	.align 8
.LC46:
	.string	"%d * %d / %d  r = %d  err = %d"
	.text
	.type	test_int_muldiv, @function
test_int_muldiv:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	test_muldiv_ints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+test_muldiv_ints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+test_muldiv_ints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	safe_muldiv_int
	movl	%eax, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L248
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdi
	cqto
	idivq	%rdi
	movl	%eax, -4(%rbp)
.L248:
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+test_muldiv_ints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-24(%rbp), %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$324, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L249
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L250
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$325, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L250
.L249:
	movl	-24(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rcx
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$326, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L252
.L250:
	movl	$1, %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_int_muldiv, .-test_int_muldiv
	.section	.rodata
	.align 32
	.type	test_muldiv_uints, @object
	.size	test_muldiv_uints, 112
test_muldiv_uints:
	.long	3
	.long	1
	.long	2
	.long	0
	.long	1
	.long	3
	.long	2
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.long	-1
	.long	2
	.long	4
	.long	0
	.long	8
	.long	-1
	.long	4
	.long	1
	.long	-1
	.long	8
	.long	4
	.long	1
	.long	3
	.long	4
	.long	0
	.long	1
.LC47:
	.string	"test_muldiv_uints[n].err"
	.align 8
.LC48:
	.string	"%u * %u / %u  r = %u  err = %d"
	.text
	.type	test_uint_muldiv, @function
test_uint_muldiv:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	test_muldiv_uints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+test_muldiv_uints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+test_muldiv_uints(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	safe_muldiv_uint
	movl	%eax, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L254
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	imulq	%rdx, %rax
	movl	-16(%rbp), %edi
	movl	$0, %edx
	divq	%rdi
	movl	%eax, -4(%rbp)
.L254:
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+test_muldiv_uints(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-24(%rbp), %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$356, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L255
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L256
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L256
.L255:
	movl	-24(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rcx
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$358, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L258
.L256:
	movl	$1, %eax
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_uint_muldiv, .-test_uint_muldiv
	.section	.rodata
.LC49:
	.string	"test_int_ops"
.LC50:
	.string	"test_uint_ops"
.LC51:
	.string	"test_size_t_ops"
.LC52:
	.string	"test_int_muldiv"
.LC53:
	.string	"test_uint_muldiv"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_int_ops(%rip), %rsi
	leaq	.LC49(%rip), %rax
	movl	$1, %ecx
	movl	$20, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_uint_ops(%rip), %rsi
	leaq	.LC50(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_size_t_ops(%rip), %rsi
	leaq	.LC51(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_int_muldiv(%rip), %rsi
	leaq	.LC52(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_uint_muldiv(%rip), %rsi
	leaq	.LC53(%rip), %rax
	movl	$1, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

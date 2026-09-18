	.file	"quic_fc.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB480:
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
	jnc	.L2
	movl	$1, %ecx
.L2:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB481:
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
	jnb	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	safe_sub_time, .-safe_sub_time
	.type	safe_mul_time, @function
safe_mul_time:
.LFB482:
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
	jno	.L11
	movl	$1, %ecx
.L11:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L13
	movq	-8(%rbp), %rax
	jmp	.L15
.L13:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	safe_mul_time, .-safe_mul_time
	.type	safe_muldiv_time, @function
safe_muldiv_time:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L17
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L18
	cmpq	$0, -48(%rbp)
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L24
.L19:
	movq	$-1, %rax
	jmp	.L24
.L17:
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_time
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L22
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L24
.L22:
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L23
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L23:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_time
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_time
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_time
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	safe_muldiv_time, .-safe_muldiv_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L34
	movl	$-1, %eax
	jmp	.L33
.L34:
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_sub_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L38
	call	ossl_time_zero
	jmp	.L40
.L38:
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	ossl_time_multiply, @function
ossl_time_multiply:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L42
	call	ossl_time_infinite
	jmp	.L44
.L42:
	movq	-8(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ossl_time_multiply, .-ossl_time_multiply
	.type	ossl_time_muldiv, @function
ossl_time_muldiv:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	safe_muldiv_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L46
	call	ossl_time_zero
	jmp	.L48
.L46:
	movq	-8(%rbp), %rax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	ossl_time_muldiv, .-ossl_time_muldiv
	.type	safe_add_uint64_t, @function
safe_add_uint64_t:
.LFB511:
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
	jnc	.L50
	movl	$1, %ecx
.L50:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L52
	movq	-8(%rbp), %rax
	jmp	.L54
.L52:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	safe_add_uint64_t, .-safe_add_uint64_t
	.type	safe_mul_uint64_t, @function
safe_mul_uint64_t:
.LFB513:
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
	jno	.L56
	movl	$1, %ecx
.L56:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L58
	movq	-8(%rbp), %rax
	jmp	.L60
.L58:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	safe_mul_uint64_t, .-safe_mul_uint64_t
	.type	safe_muldiv_uint64_t, @function
safe_muldiv_uint64_t:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L62
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L63
	cmpq	$0, -48(%rbp)
	jne	.L64
.L63:
	movl	$0, %eax
	jmp	.L69
.L64:
	movq	$-1, %rax
	jmp	.L69
.L62:
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_uint64_t
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L67
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L69
.L67:
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L68
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L68:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_uint64_t
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_uint64_t
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_uint64_t
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	safe_muldiv_uint64_t, .-safe_muldiv_uint64_t
	.globl	ossl_quic_txfc_init
	.type	ossl_quic_txfc_init, @function
ossl_quic_txfc_init:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L71
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	movl	$1, %eax
.L72:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ossl_quic_txfc_init, .-ossl_quic_txfc_init
	.globl	ossl_quic_txfc_get_parent
	.type	ossl_quic_txfc_get_parent, @function
ossl_quic_txfc_get_parent:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ossl_quic_txfc_get_parent, .-ossl_quic_txfc_get_parent
	.globl	ossl_quic_txfc_bump_cwm
	.type	ossl_quic_txfc_bump_cwm, @function
ossl_quic_txfc_bump_cwm:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L77:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ossl_quic_txfc_bump_cwm, .-ossl_quic_txfc_bump_cwm
	.globl	ossl_quic_txfc_get_credit_local
	.type	ossl_quic_txfc_get_credit_local, @function
ossl_quic_txfc_get_credit_local:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ossl_quic_txfc_get_credit_local, .-ossl_quic_txfc_get_credit_local
	.globl	ossl_quic_txfc_get_credit
	.type	ossl_quic_txfc_get_credit, @function
ossl_quic_txfc_get_credit:
.LFB524:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L81
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L81:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ossl_quic_txfc_get_credit, .-ossl_quic_txfc_get_credit
	.globl	ossl_quic_txfc_consume_credit_local
	.type	ossl_quic_txfc_consume_credit_local, @function
ossl_quic_txfc_consume_credit_local:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L84
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L84:
	cmpq	$0, -32(%rbp)
	je	.L85
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L85
	movq	-24(%rbp), %rax
	movb	$1, 24(%rax)
.L85:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	ossl_quic_txfc_consume_credit_local, .-ossl_quic_txfc_consume_credit_local
	.globl	ossl_quic_txfc_consume_credit
	.type	ossl_quic_txfc_consume_credit, @function
ossl_quic_txfc_consume_credit:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit_local@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit_local@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movl	-4(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ossl_quic_txfc_consume_credit, .-ossl_quic_txfc_consume_credit
	.globl	ossl_quic_txfc_has_become_blocked
	.type	ossl_quic_txfc_has_become_blocked, @function
ossl_quic_txfc_has_become_blocked:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L91
	movq	-24(%rbp), %rax
	movb	$0, 24(%rax)
.L91:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ossl_quic_txfc_has_become_blocked, .-ossl_quic_txfc_has_become_blocked
	.globl	ossl_quic_txfc_get_cwm
	.type	ossl_quic_txfc_get_cwm, @function
ossl_quic_txfc_get_cwm:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	ossl_quic_txfc_get_cwm, .-ossl_quic_txfc_get_cwm
	.globl	ossl_quic_txfc_get_swm
	.type	ossl_quic_txfc_get_swm, @function
ossl_quic_txfc_get_swm:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ossl_quic_txfc_get_swm, .-ossl_quic_txfc_get_swm
	.globl	ossl_quic_rxfc_init
	.type	ossl_quic_rxfc_init, @function
ossl_quic_rxfc_init:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L98
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 89(%rax)
	movq	-16(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 56(%rbx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 90(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 91(%rax)
	movl	$1, %eax
.L99:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ossl_quic_rxfc_init, .-ossl_quic_rxfc_init
	.globl	ossl_quic_rxfc_init_standalone
	.type	ossl_quic_rxfc_init_standalone, @function
ossl_quic_rxfc_init_standalone:
.LFB531:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movq	-8(%rbp), %rax
	movb	$1, 91(%rax)
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ossl_quic_rxfc_init_standalone, .-ossl_quic_rxfc_init_standalone
	.globl	ossl_quic_rxfc_get_parent
	.type	ossl_quic_rxfc_get_parent, @function
ossl_quic_rxfc_get_parent:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	ossl_quic_rxfc_get_parent, .-ossl_quic_rxfc_get_parent
	.globl	ossl_quic_rxfc_set_max_window_size
	.type	ossl_quic_rxfc_set_max_window_size, @function
ossl_quic_rxfc_set_max_window_size:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_quic_rxfc_set_max_window_size, .-ossl_quic_rxfc_set_max_window_size
	.type	rxfc_start_epoch, @function
rxfc_start_epoch:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, 56(%rbx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	rxfc_start_epoch, .-rxfc_start_epoch
	.type	on_rx_controlled_bytes, @function
on_rx_controlled_bytes:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L108
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movb	$3, 88(%rax)
.L108:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	on_rx_controlled_bytes, .-on_rx_controlled_bytes
	.globl	ossl_quic_rxfc_on_rx_stream_frame
	.type	ossl_quic_rxfc_on_rx_stream_frame, @function
ossl_quic_rxfc_on_rx_stream_frame:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movzbl	91(%rax), %eax
	testb	%al, %al
	jne	.L111
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-24(%rbp), %rax
	movzbl	90(%rax), %eax
	testb	%al, %al
	je	.L113
	cmpl	$0, -36(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L115
.L114:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L113
.L115:
	movq	-24(%rbp), %rax
	movb	$6, 88(%rax)
	movl	$1, %eax
	jmp	.L112
.L113:
	cmpl	$0, -36(%rbp)
	je	.L116
	movq	-24(%rbp), %rax
	movb	$1, 90(%rax)
.L116:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L117
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_rx_controlled_bytes
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_rx_controlled_bytes
	jmp	.L118
.L117:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L118
	cmpl	$0, -36(%rbp)
	je	.L118
	movq	-24(%rbp), %rax
	movb	$6, 88(%rax)
	movl	$1, %eax
	jmp	.L112
.L118:
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	ossl_quic_rxfc_on_rx_stream_frame, .-ossl_quic_rxfc_on_rx_stream_frame
	.type	rxfc_cwm_bump_desired, @function
rxfc_cwm_bump_desired:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	safe_muldiv_uint64_t
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L120
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
.L120:
	movq	-40(%rbp), %rax
	movzbl	90(%rax), %eax
	testb	%al, %al
	jne	.L121
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L121
	movl	$1, %eax
	jmp	.L123
.L121:
	movl	$0, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	rxfc_cwm_bump_desired, .-rxfc_cwm_bump_desired
	.type	rxfc_should_bump_window_size, @function
rxfc_should_bump_window_size:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L125
	movl	$0, %eax
	jmp	.L127
.L125:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_time_muldiv
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	shrl	$31, %eax
	movzbl	%al, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	rxfc_should_bump_window_size, .-rxfc_should_bump_window_size
	.type	rxfc_adjust_window_size, @function
rxfc_adjust_window_size:
.LFB539:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rxfc_should_bump_window_size
	testl	%eax, %eax
	je	.L129
	salq	-8(%rbp)
.L129:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L130
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L130:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L131
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.L131:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rxfc_start_epoch
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	rxfc_adjust_window_size, .-rxfc_adjust_window_size
	.type	rxfc_update_cwm, @function
rxfc_update_cwm:
.LFB540:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rxfc_cwm_bump_desired
	testl	%eax, %eax
	je	.L135
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rxfc_adjust_window_size
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L132
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movb	$1, 89(%rax)
	jmp	.L132
.L135:
	nop
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	rxfc_update_cwm, .-rxfc_update_cwm
	.type	rxfc_on_retire, @function
rxfc_on_retire:
.LFB541:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L137
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rxfc_start_epoch
.L137:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rxfc_update_cwm
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	rxfc_on_retire, .-rxfc_on_retire
	.globl	ossl_quic_rxfc_on_retire
	.type	ossl_quic_rxfc_on_retire, @function
ossl_quic_rxfc_on_retire:
.LFB542:
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
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movq	-8(%rbp), %rax
	movzbl	91(%rax), %eax
	testb	%al, %al
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	cmpq	$0, -16(%rbp)
	jne	.L142
	movl	$1, %eax
	jmp	.L141
.L142:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jnb	.L143
	movl	$0, %eax
	jmp	.L141
.L143:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	rxfc_on_retire
	movq	-8(%rbp), %rax
	movzbl	91(%rax), %eax
	testb	%al, %al
	jne	.L144
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	rxfc_on_retire
.L144:
	movl	$1, %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	ossl_quic_rxfc_on_retire, .-ossl_quic_rxfc_on_retire
	.globl	ossl_quic_rxfc_get_cwm
	.type	ossl_quic_rxfc_get_cwm, @function
ossl_quic_rxfc_get_cwm:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	ossl_quic_rxfc_get_cwm, .-ossl_quic_rxfc_get_cwm
	.globl	ossl_quic_rxfc_get_swm
	.type	ossl_quic_rxfc_get_swm, @function
ossl_quic_rxfc_get_swm:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	ossl_quic_rxfc_get_swm, .-ossl_quic_rxfc_get_swm
	.globl	ossl_quic_rxfc_get_rwm
	.type	ossl_quic_rxfc_get_rwm, @function
ossl_quic_rxfc_get_rwm:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	ossl_quic_rxfc_get_rwm, .-ossl_quic_rxfc_get_rwm
	.globl	ossl_quic_rxfc_get_credit
	.type	ossl_quic_rxfc_get_credit, @function
ossl_quic_rxfc_get_credit:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_swm@PLT
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	ossl_quic_rxfc_get_credit, .-ossl_quic_rxfc_get_credit
	.globl	ossl_quic_rxfc_has_cwm_changed
	.type	ossl_quic_rxfc_has_cwm_changed, @function
ossl_quic_rxfc_has_cwm_changed:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	89(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L154
	movq	-24(%rbp), %rax
	movb	$0, 89(%rax)
.L154:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	ossl_quic_rxfc_has_cwm_changed, .-ossl_quic_rxfc_has_cwm_changed
	.globl	ossl_quic_rxfc_get_error
	.type	ossl_quic_rxfc_get_error, @function
ossl_quic_rxfc_get_error:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	88(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L157
	movq	-24(%rbp), %rax
	movb	$0, 88(%rax)
.L157:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	ossl_quic_rxfc_get_error, .-ossl_quic_rxfc_get_error
	.globl	ossl_quic_rxfc_get_final_size
	.type	ossl_quic_rxfc_get_final_size, @function
ossl_quic_rxfc_get_final_size:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	90(%rax), %eax
	testb	%al, %al
	jne	.L160
	movl	$0, %eax
	jmp	.L161
.L160:
	cmpq	$0, -16(%rbp)
	je	.L162
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L162:
	movl	$1, %eax
.L161:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	ossl_quic_rxfc_get_final_size, .-ossl_quic_rxfc_get_final_size
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

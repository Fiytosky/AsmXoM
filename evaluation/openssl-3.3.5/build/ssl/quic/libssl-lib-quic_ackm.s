	.file	"quic_ackm.c"
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
	.type	safe_div_time, @function
safe_div_time:
.LFB483:
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
	je	.L17
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	jmp	.L18
.L17:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	$-1, %rax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	safe_div_time, .-safe_div_time
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
	jnb	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L28
	movl	$-1, %eax
	jmp	.L27
.L28:
	movl	$0, %eax
.L27:
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
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_infinite
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
.LFE499:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	ossl_time_add, @function
ossl_time_add:
.LFB500:
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
	call	safe_add_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L34
	call	ossl_time_infinite
	jmp	.L36
.L34:
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_time_add, .-ossl_time_add
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
	.type	ossl_time_divide, @function
ossl_time_divide:
.LFB504:
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
	call	safe_div_time
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
.LFE504:
	.size	ossl_time_divide, .-ossl_time_divide
	.type	ossl_time_max, @function
ossl_time_max:
.LFB506:
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
	jnb	.L50
	movq	-8(%rbp), %rax
	jmp	.L52
.L50:
	movq	-16(%rbp), %rax
.L52:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	ossl_time_max, .-ossl_time_max
	.type	ossl_time_min, @function
ossl_time_min:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L54
	movq	-8(%rbp), %rax
	jmp	.L56
.L54:
	movq	-16(%rbp), %rax
.L56:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_time_min, .-ossl_time_min
	.type	ossl_quic_pn_max, @function
ossl_quic_pn_max:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	ossl_quic_pn_max, .-ossl_quic_pn_max
	.type	ossl_list_uint_set_is_empty, @function
ossl_list_uint_set_is_empty:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_list_uint_set_is_empty, .-ossl_list_uint_set_is_empty
	.type	ossl_list_uint_set_num, @function
ossl_list_uint_set_num:
.LFB563:
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
.LFE563:
	.size	ossl_list_uint_set_num, .-ossl_list_uint_set_num
	.type	ossl_list_uint_set_head, @function
ossl_list_uint_set_head:
.LFB564:
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
.LFE564:
	.size	ossl_list_uint_set_head, .-ossl_list_uint_set_head
	.type	ossl_list_uint_set_tail, @function
ossl_list_uint_set_tail:
.LFB565:
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
.LFE565:
	.size	ossl_list_uint_set_tail, .-ossl_list_uint_set_tail
	.type	ossl_list_uint_set_prev, @function
ossl_list_uint_set_prev:
.LFB567:
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
.LFE567:
	.size	ossl_list_uint_set_prev, .-ossl_list_uint_set_prev
	.type	ossl_list_tx_history_init, @function
ossl_list_tx_history_init:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	ossl_list_tx_history_init, .-ossl_list_tx_history_init
	.type	ossl_list_tx_history_head, @function
ossl_list_tx_history_head:
.LFB580:
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
.LFE580:
	.size	ossl_list_tx_history_head, .-ossl_list_tx_history_head
	.type	ossl_list_tx_history_tail, @function
ossl_list_tx_history_tail:
.LFB581:
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
.LFE581:
	.size	ossl_list_tx_history_tail, .-ossl_list_tx_history_tail
	.type	ossl_list_tx_history_next, @function
ossl_list_tx_history_next:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	ossl_list_tx_history_next, .-ossl_list_tx_history_next
	.type	ossl_list_tx_history_prev, @function
ossl_list_tx_history_prev:
.LFB583:
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
.LFE583:
	.size	ossl_list_tx_history_prev, .-ossl_list_tx_history_prev
	.type	ossl_list_tx_history_remove, @function
ossl_list_tx_history_remove:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L79
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L79:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L80
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L80:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, 72(%rax)
.L81:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 80(%rax)
.L82:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	ossl_list_tx_history_remove, .-ossl_list_tx_history_remove
	.type	ossl_list_tx_history_insert_tail, @function
ossl_list_tx_history_insert_tail:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
.L84:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L85:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_list_tx_history_insert_tail, .-ossl_list_tx_history_insert_tail
	.type	lh_OSSL_ACKM_TX_PKT_hfn_thunk, @function
lh_OSSL_ACKM_TX_PKT_hfn_thunk:
.LFB589:
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
.LFE589:
	.size	lh_OSSL_ACKM_TX_PKT_hfn_thunk, .-lh_OSSL_ACKM_TX_PKT_hfn_thunk
	.type	lh_OSSL_ACKM_TX_PKT_cfn_thunk, @function
lh_OSSL_ACKM_TX_PKT_cfn_thunk:
.LFB590:
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
.LFE590:
	.size	lh_OSSL_ACKM_TX_PKT_cfn_thunk, .-lh_OSSL_ACKM_TX_PKT_cfn_thunk
	.type	lh_OSSL_ACKM_TX_PKT_free, @function
lh_OSSL_ACKM_TX_PKT_free:
.LFB591:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	lh_OSSL_ACKM_TX_PKT_free, .-lh_OSSL_ACKM_TX_PKT_free
	.type	lh_OSSL_ACKM_TX_PKT_insert, @function
lh_OSSL_ACKM_TX_PKT_insert:
.LFB593:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	lh_OSSL_ACKM_TX_PKT_insert, .-lh_OSSL_ACKM_TX_PKT_insert
	.type	lh_OSSL_ACKM_TX_PKT_delete, @function
lh_OSSL_ACKM_TX_PKT_delete:
.LFB594:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	lh_OSSL_ACKM_TX_PKT_delete, .-lh_OSSL_ACKM_TX_PKT_delete
	.type	lh_OSSL_ACKM_TX_PKT_retrieve, @function
lh_OSSL_ACKM_TX_PKT_retrieve:
.LFB595:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	lh_OSSL_ACKM_TX_PKT_retrieve, .-lh_OSSL_ACKM_TX_PKT_retrieve
	.type	lh_OSSL_ACKM_TX_PKT_doall_thunk, @function
lh_OSSL_ACKM_TX_PKT_doall_thunk:
.LFB600:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	lh_OSSL_ACKM_TX_PKT_doall_thunk, .-lh_OSSL_ACKM_TX_PKT_doall_thunk
	.type	lh_OSSL_ACKM_TX_PKT_doall_arg_thunk, @function
lh_OSSL_ACKM_TX_PKT_doall_arg_thunk:
.LFB601:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	lh_OSSL_ACKM_TX_PKT_doall_arg_thunk, .-lh_OSSL_ACKM_TX_PKT_doall_arg_thunk
	.type	lh_OSSL_ACKM_TX_PKT_new, @function
lh_OSSL_ACKM_TX_PKT_new:
.LFB603:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_OSSL_ACKM_TX_PKT_doall_arg_thunk(%rip), %rsi
	leaq	lh_OSSL_ACKM_TX_PKT_doall_thunk(%rip), %rcx
	leaq	lh_OSSL_ACKM_TX_PKT_cfn_thunk(%rip), %rdx
	leaq	lh_OSSL_ACKM_TX_PKT_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	lh_OSSL_ACKM_TX_PKT_new, .-lh_OSSL_ACKM_TX_PKT_new
	.type	tx_pkt_info_hash, @function
tx_pkt_info_hash:
.LFB605:
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
.LFE605:
	.size	tx_pkt_info_hash, .-tx_pkt_info_hash
	.type	tx_pkt_info_compare, @function
tx_pkt_info_compare:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L104
	movl	$-1, %eax
	jmp	.L105
.L104:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L106
	movl	$1, %eax
	jmp	.L105
.L106:
	movl	$0, %eax
.L105:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	tx_pkt_info_compare, .-tx_pkt_info_compare
	.type	tx_pkt_history_init, @function
tx_pkt_history_init:
.LFB607:
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
	call	ossl_list_tx_history_init
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	leaq	tx_pkt_info_compare(%rip), %rdx
	leaq	tx_pkt_info_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_ACKM_TX_PKT_new
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movl	$1, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	tx_pkt_history_init, .-tx_pkt_history_init
	.type	tx_pkt_history_destroy, @function
tx_pkt_history_destroy:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	lh_OSSL_ACKM_TX_PKT_free
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_init
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	tx_pkt_history_destroy, .-tx_pkt_history_destroy
	.type	tx_pkt_history_add_actual, @function
tx_pkt_history_add_actual:
.LFB609:
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
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_ACKM_TX_PKT_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_next
	testq	%rax, %rax
	jne	.L114
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_prev
	testq	%rax, %rax
	jne	.L114
	movl	$1, %eax
	jmp	.L115
.L114:
	movl	$0, %eax
.L115:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L116
	movl	$0, %eax
	jmp	.L113
.L116:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_ACKM_TX_PKT_insert
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_tx_history_insert_tail
	movl	$1, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	tx_pkt_history_add_actual, .-tx_pkt_history_add_actual
	.type	tx_pkt_history_add, @function
tx_pkt_history_add:
.LFB610:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_add_actual
	testl	%eax, %eax
	jg	.L120
	movl	$0, %eax
	jmp	.L119
.L120:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	tx_pkt_history_add, .-tx_pkt_history_add
	.type	tx_pkt_history_by_pkt_num, @function
tx_pkt_history_by_pkt_num:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_ACKM_TX_PKT_retrieve
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	tx_pkt_history_by_pkt_num, .-tx_pkt_history_by_pkt_num
	.type	tx_pkt_history_remove, @function
tx_pkt_history_remove:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_by_pkt_num
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L126
.L124:
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_tx_history_remove
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_ACKM_TX_PKT_delete
	movl	$1, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	tx_pkt_history_remove, .-tx_pkt_history_remove
	.type	rx_pkt_history_init, @function
rx_pkt_history_init:
.LFB613:
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
	call	ossl_uint_set_init@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	rx_pkt_history_init, .-rx_pkt_history_init
	.type	rx_pkt_history_destroy, @function
rx_pkt_history_destroy:
.LFB614:
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
	call	ossl_uint_set_destroy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	rx_pkt_history_destroy, .-rx_pkt_history_destroy
	.type	rx_pkt_history_trim_range_count, @function
rx_pkt_history_trim_range_count:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$-1, -8(%rbp)
	jmp	.L130
.L133:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	24(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L131
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L132
.L131:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_pn_max
	movq	%rax, -8(%rbp)
.L132:
	movq	-40(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_uint_set_remove@PLT
.L130:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_num
	cmpq	$32, %rax
	ja	.L133
	cmpq	$-1, -8(%rbp)
	je	.L135
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rx_pkt_history_bump_watermark
.L135:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	rx_pkt_history_trim_range_count, .-rx_pkt_history_trim_range_count
	.type	rx_pkt_history_add_pn, @function
rx_pkt_history_add_pn:
.LFB616:
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L137
	movl	$1, %eax
	jmp	.L140
.L137:
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_uint_set_insert@PLT
	cmpl	$1, %eax
	je	.L139
	movl	$0, %eax
	jmp	.L140
.L139:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rx_pkt_history_trim_range_count
	movl	$1, %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	rx_pkt_history_add_pn, .-rx_pkt_history_add_pn
	.type	rx_pkt_history_bump_watermark, @function
rx_pkt_history_bump_watermark:
.LFB617:
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
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L142
	movl	$1, %eax
	jmp	.L145
.L142:
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_uint_set_remove@PLT
	cmpl	$1, %eax
	je	.L144
	movl	$0, %eax
	jmp	.L145
.L144:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	rx_pkt_history_bump_watermark, .-rx_pkt_history_bump_watermark
	.type	min_u32, @function
min_u32:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	min_u32, .-min_u32
	.type	get_tx_history, @function
get_tx_history:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	get_tx_history, .-get_tx_history
	.type	get_rx_history, @function
get_rx_history:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	get_rx_history, .-get_rx_history
	.type	ack_includes_ack_eliciting, @function
ack_includes_ack_eliciting:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L153
.L156:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L154
	movl	$1, %eax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
.L153:
	cmpq	$0, -8(%rbp)
	jne	.L156
	movl	$0, %eax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	ack_includes_ack_eliciting, .-ack_includes_ack_eliciting
	.type	ackm_ack_eliciting_bytes_in_flight, @function
ackm_ack_eliciting_bytes_in_flight:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L158
.L159:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	8(%rax,%rdx,8), %rax
	addq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
.L158:
	cmpl	$2, -4(%rbp)
	jle	.L159
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ackm_ack_eliciting_bytes_in_flight, .-ackm_ack_eliciting_bytes_in_flight
	.type	range_contains, @function
range_contains:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L162
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L162
	movl	$1, %eax
	jmp	.L164
.L162:
	movl	$0, %eax
.L164:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	range_contains, .-range_contains
	.type	ackm_detect_and_remove_newly_acked_pkts, @function
ackm_detect_and_remove_newly_acked_pkts:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_by_pkt_num
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L167
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_tail
	movq	%rax, -16(%rbp)
	jmp	.L167
.L174:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_prev
	movq	%rax, -40(%rbp)
.L173:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L177
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	range_contains
	testl	%eax, %eax
	je	.L170
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_remove
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$88, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L171
.L170:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L178
	nop
	addq	$1, -24(%rbp)
	jmp	.L173
.L178:
	nop
.L171:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L167:
	cmpq	$0, -16(%rbp)
	jne	.L174
	jmp	.L169
.L177:
	nop
.L169:
	movq	-48(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ackm_detect_and_remove_newly_acked_pkts, .-ackm_detect_and_remove_newly_acked_pkts
	.type	ackm_detect_and_remove_lost_pkts, @function
ackm_detect_and_remove_lost_pkts:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	256(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	cltq
	leaq	42(%rax), %r12
	call	ossl_time_zero
	movq	%rax, (%rbx,%r12,8)
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_max
	movl	$9, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_time_divide
	movq	%rax, -64(%rbp)
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_max
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -72(%rbp)
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_head
	movq	%rax, -32(%rbp)
	jmp	.L180
.L186:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_next
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	-124(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$36, %rcx
	movq	(%rdx,%rcx,8), %rdx
	cmpq	%rax, %rdx
	jb	.L188
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jle	.L183
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	$36, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$3, %rax
	cmpq	%rax, %rdx
	jb	.L184
.L183:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_remove
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L182
.L184:
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	$42, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L185
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	cltq
	leaq	42(%rax), %r12
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, (%rbx,%r12,8)
	jmp	.L182
.L185:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, %rdx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	cltq
	leaq	42(%rax), %r12
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$42, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, (%rbx,%r12,8)
	jmp	.L182
.L188:
	nop
.L182:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.L180:
	cmpq	$0, -32(%rbp)
	jne	.L186
	movq	-56(%rbp), %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ackm_detect_and_remove_lost_pkts, .-ackm_detect_and_remove_lost_pkts
	.type	ackm_get_loss_time_and_space, @function
ackm_get_loss_time_and_space:
.LFB626:
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
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L190
.L193:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L191
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$42, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	cmpl	$-1, %eax
	jne	.L192
.L191:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$42, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L192:
	addl	$1, -4(%rbp)
.L190:
	cmpl	$2, -4(%rbp)
	jle	.L193
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ackm_get_loss_time_and_space, .-ackm_get_loss_time_and_space
	.type	ackm_get_pto_time_and_space, @function
ackm_get_pto_time_and_space:
.LFB627:
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
	movq	%rsi, -112(%rbp)
	call	ossl_time_infinite
	movq	%rax, -80(%rbp)
	movl	$0, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	256(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_max
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movl	280(%rax), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	min_u32
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_ack_eliciting_bytes_in_flight
	testq	%rax, %rax
	jne	.L196
	movq	-104(%rbp), %rax
	movzbl	459(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_add
	jmp	.L206
.L196:
	movl	$0, -24(%rbp)
	jmp	.L198
.L205:
	movq	-104(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L199
	movq	-104(%rbp), %rax
	movzbl	456(%rax), %eax
	cmpb	$1, %al
	je	.L207
	movq	-104(%rbp), %rax
	movzbl	457(%rax), %eax
	cmpb	$1, %al
	je	.L207
.L199:
	cmpl	$2, -24(%rbp)
	jne	.L202
	movq	-104(%rbp), %rax
	movzbl	456(%rax), %eax
	testb	%al, %al
	je	.L208
	movq	-104(%rbp), %rax
	movq	2352(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L202
	movq	-104(%rbp), %rax
	movl	280(%rax), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	min_u32
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	2352(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -72(%rbp)
.L202:
	movq	-104(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$38, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L201
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$38, %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jns	.L201
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L201
.L207:
	nop
.L201:
	addl	$1, -24(%rbp)
.L198:
	cmpl	$2, -24(%rbp)
	jle	.L205
	jmp	.L204
.L208:
	nop
.L204:
	movq	-112(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
.L206:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ackm_get_pto_time_and_space, .-ackm_get_pto_time_and_space
	.type	ackm_set_loss_detection_timer_actual, @function
ackm_set_loss_detection_timer_actual:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 360(%rax)
	movq	-8(%rbp), %rax
	movq	2368(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movq	2368(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	2376(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L211:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ackm_set_loss_detection_timer_actual, .-ackm_set_loss_detection_timer_actual
	.type	ackm_set_loss_detection_timer, @function
ackm_set_loss_detection_timer:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_get_loss_time_and_space
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L213
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer_actual
	movl	$1, %eax
	jmp	.L216
.L213:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_ack_eliciting_bytes_in_flight
	testq	%rax, %rax
	jne	.L215
	movq	-40(%rbp), %rax
	movzbl	458(%rax), %eax
	testb	%al, %al
	je	.L215
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer_actual
	movl	$1, %eax
	jmp	.L216
.L215:
	leaq	-4(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_get_pto_time_and_space
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer_actual
	movl	$1, %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	ackm_set_loss_detection_timer, .-ackm_set_loss_detection_timer
	.type	ackm_in_persistent_congestion, @function
ackm_in_persistent_congestion:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ackm_in_persistent_congestion, .-ackm_in_persistent_congestion
	.type	ackm_on_pkts_lost, @function
ackm_on_pkts_lost:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L220
.L224:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L221
	movq	-88(%rbp), %rax
	movq	400(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L222
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	8(%rax,%rdx,8), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movzbl	32(%rdx), %edx
	andl	$3, %edx
	movzbl	%dl, %edx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	%rcx, 8(%rax,%rdx,8)
.L222:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L223
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L223:
	cmpl	$0, -96(%rbp)
	jne	.L221
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	264(%rax), %rax
	movq	80(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	272(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L221:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L220:
	cmpq	$0, -8(%rbp)
	jne	.L224
	movq	-88(%rbp), %rax
	movq	256(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-88(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L225
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_in_persistent_congestion
	testl	%eax, %eax
	je	.L225
	orl	$1, -20(%rbp)
.L225:
	movq	-88(%rbp), %rax
	movq	264(%rax), %rax
	movq	88(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	272(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ackm_on_pkts_lost, .-ackm_on_pkts_lost
	.type	ackm_on_pkts_acked, @function
ackm_on_pkts_acked:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L227
.L232:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L228
	movq	-56(%rbp), %rax
	movq	400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L229
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	8(%rax,%rdx,8), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movzbl	32(%rdx), %edx
	andl	$3, %edx
	movzbl	%dl, %edx
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	%rcx, 8(%rax,%rdx,8)
.L229:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L230
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L230:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	je	.L228
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rbx
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_rx_history
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rx_pkt_history_bump_watermark
.L228:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L231
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	272(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L231:
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L227:
	cmpq	$0, -64(%rbp)
	jne	.L232
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ackm_on_pkts_acked, .-ackm_on_pkts_acked
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_ackm.c"
	.text
	.globl	ossl_ackm_new
	.type	ossl_ackm_new, @function
ossl_ackm_new:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$1047, %edx
	movq	%rax, %rsi
	movl	$2400, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L234
	movl	$0, %eax
	jmp	.L235
.L234:
	movl	$0, -20(%rbp)
	jmp	.L236
.L239:
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$36, %rdx
	movq	$-1, (%rax,%rdx,8)
	movq	-32(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	leaq	290(%rax), %r12
	call	ossl_time_infinite
	movq	%rax, 8(%rbx,%r12,8)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	tx_pkt_history_init
	testl	%eax, %eax
	jle	.L245
	addl	$1, -20(%rbp)
.L236:
	cmpl	$2, -20(%rbp)
	jle	.L239
	movl	$0, -20(%rbp)
	jmp	.L240
.L241:
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	rx_pkt_history_init
	addl	$1, -20(%rbp)
.L240:
	cmpl	$2, -20(%rbp)
	jle	.L241
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 240(%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 248(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 256(%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 264(%rax)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 272(%rax)
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 457(%rax)
	movq	-32(%rbp), %rbx
	movl	$25000000, %edi
	call	ossl_ticks2time
	movq	%rax, 2352(%rbx)
	movq	-32(%rbp), %rbx
	movl	$25000000, %edi
	call	ossl_ticks2time
	movq	%rax, 2360(%rbx)
	movq	-32(%rbp), %rax
	jmp	.L235
.L245:
	nop
.L238:
	jmp	.L242
.L243:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	tx_pkt_history_destroy
.L242:
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L243
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1077, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L235:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ossl_ackm_new, .-ossl_ackm_new
	.globl	ossl_ackm_free
	.type	ossl_ackm_free, @function
ossl_ackm_free:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L252
	movq	$0, -8(%rbp)
	jmp	.L249
.L251:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$459, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L250
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	tx_pkt_history_destroy
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	rx_pkt_history_destroy
.L250:
	addq	$1, -8(%rbp)
.L249:
	cmpq	$2, -8(%rbp)
	jbe	.L251
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1094, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L246
.L252:
	nop
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_ackm_free, .-ossl_ackm_free
	.globl	ossl_ackm_on_tx_packet
	.type	ossl_ackm_on_tx_packet, @function
ossl_ackm_on_tx_packet:
.LFB635:
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
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L254
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %ecx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	addq	$38, %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jle	.L255
.L254:
	movl	$0, %eax
	jmp	.L256
.L255:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	movl	$0, %eax
	jmp	.L256
.L257:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L258
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L258
	movl	$0, %eax
	jmp	.L256
.L258:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_add
	testl	%eax, %eax
	jne	.L259
	movl	$0, %eax
	jmp	.L256
.L259:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L260
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L261
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	leaq	38(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 8(%rax,%rcx,8)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	8(%rax,%rdx,8), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	addq	%rsi, %rcx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	%rcx, 8(%rax,%rdx,8)
.L261:
	movq	-24(%rbp), %rax
	movq	400(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L260:
	movl	$1, %eax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_ackm_on_tx_packet, .-ossl_ackm_on_tx_packet
	.globl	ossl_ackm_on_rx_datagram
	.type	ossl_ackm_on_rx_datagram, @function
ossl_ackm_on_rx_datagram:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ossl_ackm_on_rx_datagram, .-ossl_ackm_on_rx_datagram
	.type	ackm_process_ecn, @function
ackm_process_ecn:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$54, %rcx
	movq	(%rdx,%rcx,8), %rdx
	cmpq	%rax, %rdx
	jnb	.L264
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$54, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_by_pkt_num
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L268
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	104(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L264
.L268:
	nop
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ackm_process_ecn, .-ackm_process_ecn
	.globl	ossl_ackm_on_rx_ack_frame
	.type	ossl_ackm_on_rx_ack_frame, @function
ossl_ackm_on_rx_ack_frame:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	$36, %rdx
	movq	(%rax,%rdx,8), %rax
	cmpq	$-1, %rax
	jne	.L270
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$36, %rcx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.L271
.L270:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$36, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_pn_max
	movq	-56(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$36, %rcx
	movq	%rax, (%rdx,%rcx,8)
.L271:
	movq	-56(%rbp), %rax
	movzbl	458(%rax), %eax
	testb	%al, %al
	jne	.L272
	cmpl	$1, -68(%rbp)
	jne	.L272
	movq	-56(%rbp), %rax
	movb	$1, 458(%rax)
	movl	$1, -4(%rbp)
.L272:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ackm_detect_and_remove_newly_acked_pkts
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L273
	cmpl	$0, -4(%rbp)
	je	.L274
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
.L274:
	movl	$1, %eax
	jmp	.L275
.L273:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L276
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ack_includes_ack_eliciting
	testl	%eax, %eax
	je	.L276
	movq	-56(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L277
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 392(%rax)
.L277:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movzbl	456(%rax), %eax
	testb	%al, %al
	je	.L278
	movq	-56(%rbp), %rax
	movq	2352(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -40(%rbp)
.L278:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	256(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_update_rtt@PLT
.L276:
	movq	-64(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L279
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ackm_process_ecn
.L279:
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ackm_detect_and_remove_lost_pkts
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L280
	movq	-24(%rbp), %rdx
	movl	-68(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ackm_on_pkts_lost
.L280:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_on_pkts_acked
	movq	-56(%rbp), %rax
	movzbl	458(%rax), %eax
	testb	%al, %al
	je	.L281
	movq	-56(%rbp), %rax
	movl	$0, 280(%rax)
.L281:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
	movl	$1, %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ossl_ackm_on_rx_ack_frame, .-ossl_ackm_on_rx_ack_frame
	.globl	ossl_ackm_on_pkt_space_discarded
	.type	ossl_ackm_on_pkt_space_discarded, @function
ossl_ackm_on_pkt_space_discarded:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %eax
	cltq
	movzbl	459(%rdx,%rax), %eax
	testb	%al, %al
	je	.L283
	movl	$0, %eax
	jmp	.L284
.L283:
	cmpl	$1, -60(%rbp)
	jne	.L285
	movq	-56(%rbp), %rax
	movb	$1, 458(%rax)
.L285:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, %rdi
	call	ossl_list_tx_history_head
	movq	%rax, -24(%rbp)
	jmp	.L286
.L288:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_next
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L287
	movq	-56(%rbp), %rax
	movq	400(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, -32(%rbp)
.L287:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.L286:
	cmpq	$0, -24(%rbp)
	jne	.L288
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	tx_pkt_history_destroy
	movl	-60(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	rx_pkt_history_destroy
	cmpq	$0, -32(%rbp)
	je	.L289
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	96(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	272(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L289:
	movq	-56(%rbp), %rbx
	movl	-60(%rbp), %eax
	cltq
	leaq	38(%rax), %r12
	call	ossl_time_zero
	movq	%rax, 8(%rbx,%r12,8)
	movq	-56(%rbp), %rbx
	movl	-60(%rbp), %eax
	cltq
	leaq	42(%rax), %r12
	call	ossl_time_zero
	movq	%rax, (%rbx,%r12,8)
	movq	-56(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %eax
	cltq
	movb	$1, 459(%rdx,%rax)
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$50, %rdx
	movq	$0, 8(%rax,%rdx,8)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
	movl	$1, %eax
.L284:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_ackm_on_pkt_space_discarded, .-ossl_ackm_on_pkt_space_discarded
	.globl	ossl_ackm_on_handshake_confirmed
	.type	ossl_ackm_on_handshake_confirmed, @function
ossl_ackm_on_handshake_confirmed:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, 456(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 458(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_ackm_on_handshake_confirmed, .-ossl_ackm_on_handshake_confirmed
	.type	ackm_queue_probe_anti_deadlock_handshake, @function
ackm_queue_probe_anti_deadlock_handshake:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	472(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 472(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ackm_queue_probe_anti_deadlock_handshake, .-ackm_queue_probe_anti_deadlock_handshake
	.type	ackm_queue_probe_anti_deadlock_initial, @function
ackm_queue_probe_anti_deadlock_initial:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	468(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 468(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ackm_queue_probe_anti_deadlock_initial, .-ackm_queue_probe_anti_deadlock_initial
	.type	ackm_queue_probe, @function
ackm_queue_probe:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$116, %rdx
	movl	12(%rax,%rdx,4), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$116, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ackm_queue_probe, .-ackm_queue_probe
	.globl	ossl_ackm_on_timeout
	.type	ossl_ackm_on_timeout, @function
ossl_ackm_on_timeout:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-12(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_get_loss_time_and_space
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L296
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ackm_detect_and_remove_lost_pkts
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L297
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ackm_on_pkts_lost
.L297:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
	movl	$1, %eax
	jmp	.L302
.L296:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_ack_eliciting_bytes_in_flight
	testq	%rax, %rax
	jne	.L299
	movq	-40(%rbp), %rax
	movzbl	459(%rax), %eax
	testb	%al, %al
	je	.L300
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_queue_probe_anti_deadlock_handshake
	jmp	.L301
.L300:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_queue_probe_anti_deadlock_initial
	jmp	.L301
.L299:
	leaq	-12(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ackm_get_pto_time_and_space
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ackm_queue_probe
.L301:
	movq	-40(%rbp), %rax
	movl	280(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 280(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_set_loss_detection_timer
	movl	$1, %eax
.L302:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ossl_ackm_on_timeout, .-ossl_ackm_on_timeout
	.globl	ossl_ackm_get_loss_detection_deadline
	.type	ossl_ackm_get_loss_detection_deadline, @function
ossl_ackm_get_loss_detection_deadline:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_ackm_get_loss_detection_deadline, .-ossl_ackm_get_loss_detection_deadline
	.globl	ossl_ackm_get0_probe_request
	.type	ossl_ackm_get0_probe_request, @function
ossl_ackm_get0_probe_request:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$468, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	ossl_ackm_get0_probe_request, .-ossl_ackm_get0_probe_request
	.globl	ossl_ackm_get_largest_unacked
	.type	ossl_ackm_get_largest_unacked, @function
ossl_ackm_get_largest_unacked:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_tail
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L308
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L309
.L308:
	movl	$0, %eax
.L309:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_ackm_get_largest_unacked, .-ossl_ackm_get_largest_unacked
	.globl	ossl_ackm_is_ack_desired
	.type	ossl_ackm_is_ack_desired, @function
ossl_ackm_is_ack_desired:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	462(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L311
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$290, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L312
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$290, %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L312
.L311:
	movl	$1, %eax
	jmp	.L314
.L312:
	movl	$0, %eax
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	ossl_ackm_is_ack_desired, .-ossl_ackm_is_ack_desired
	.type	ack_contains, @function
ack_contains:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L316
.L319:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	range_contains
	testl	%eax, %eax
	je	.L317
	movl	$1, %eax
	jmp	.L318
.L317:
	addq	$1, -8(%rbp)
.L316:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L319
	movl	$0, %eax
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	ack_contains, .-ack_contains
	.type	ackm_is_missing, @function
ackm_is_missing:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	addq	$496, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L321
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	addq	$488, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jb	.L321
	movl	-12(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	480(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ack_contains
	testl	%eax, %eax
	jne	.L321
	movl	$1, %eax
	jmp	.L323
.L321:
	movl	$0, %eax
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	ackm_is_missing, .-ackm_is_missing
	.type	ackm_has_newly_missing, @function
ackm_has_newly_missing:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_rx_history
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_is_empty
	testl	%eax, %eax
	je	.L325
	movl	$0, %eax
	jmp	.L326
.L325:
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	addq	$496, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L327
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	16(%rax), %rbx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L327
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$56, %rdx, %rdx
	addq	%rcx, %rdx
	addq	$488, %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L327
	movl	$1, %eax
	jmp	.L326
.L327:
	movl	$0, %eax
.L326:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ackm_has_newly_missing, .-ackm_has_newly_missing
	.type	ackm_set_flush_deadline, @function
ackm_set_flush_deadline:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	290(%rdx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax,%rcx,8)
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	testq	%rax, %rax
	je	.L331
	movq	-24(%rbp), %rax
	movq	2384(%rax), %r12
	movq	-24(%rbp), %rax
	movq	2392(%rax), %rbx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rcx
	movl	-28(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	*%r12
.L331:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ackm_set_flush_deadline, .-ackm_set_flush_deadline
	.type	ackm_queue_ack, @function
ackm_queue_ack:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	$1, 462(%rdx,%rax)
	call	ossl_time_infinite
	movq	%rax, %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ackm_set_flush_deadline
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ackm_queue_ack, .-ackm_queue_ack
	.type	ackm_on_rx_ack_eliciting, @function
ackm_on_rx_ack_eliciting:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	cltq
	movzbl	462(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L343
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$576, %rdx
	movl	8(%rax,%rdx,4), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$576, %rdx
	movl	%ecx, 8(%rax,%rdx,4)
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	cltq
	movzbl	465(%rdx,%rax), %eax
	testb	%al, %al
	je	.L336
	cmpl	$0, -40(%rbp)
	jne	.L336
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$576, %rdx
	movl	8(%rax,%rdx,4), %eax
	cmpl	$1, %eax
	ja	.L336
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ackm_has_newly_missing
	testl	%eax, %eax
	je	.L337
.L336:
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ackm_queue_ack
	jmp	.L333
.L337:
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L338
	cmpl	$1, -36(%rbp)
	jne	.L339
.L338:
	call	ossl_time_zero
	movq	%rax, -8(%rbp)
.L339:
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$290, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	je	.L340
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ackm_set_flush_deadline
	jmp	.L333
.L340:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$290, %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ackm_set_flush_deadline
	jmp	.L333
.L343:
	nop
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	ackm_on_rx_ack_eliciting, .-ackm_on_rx_ack_eliciting
	.globl	ossl_ackm_on_rx_packet
	.type	ossl_ackm_on_rx_packet, @function
ossl_ackm_on_rx_packet:
.LFB655:
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
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_rx_history
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_is_rx_pn_processable@PLT
	cmpl	$1, %eax
	je	.L345
	movl	$1, %eax
	jmp	.L346
.L345:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movzbl	16(%rdx), %edx
	andl	$3, %edx
	movzbl	%dl, %ecx
	movq	-24(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	$274, %rcx
	movq	(%rdx,%rcx,8), %rdx
	cmpq	%rax, %rdx
	jnb	.L347
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %ecx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	addq	$274, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	leaq	276(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax,%rcx,8)
.L347:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ackm_is_missing
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rx_pkt_history_add_pn
	cmpl	$1, %eax
	je	.L348
	movl	$0, %eax
	jmp	.L346
.L348:
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L349
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ackm_on_rx_ack_eliciting
.L349:
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	shrb	$3, %al
	andl	$3, %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	je	.L350
	cmpl	$3, %eax
	jg	.L354
	cmpl	$1, %eax
	je	.L352
	cmpl	$2, %eax
	jne	.L354
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$280, %rcx
	movq	(%rdx,%rcx,8), %rdx
	leaq	1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	cltq
	addq	$280, %rax
	movq	%rcx, (%rdx,%rax,8)
	jmp	.L353
.L352:
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$282, %rcx
	movq	8(%rdx,%rcx,8), %rdx
	leaq	1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	cltq
	addq	$282, %rax
	movq	%rcx, 8(%rdx,%rax,8)
	jmp	.L353
.L350:
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$286, %rcx
	movq	(%rdx,%rcx,8), %rdx
	leaq	1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	cltq
	addq	$286, %rax
	movq	%rcx, (%rdx,%rax,8)
	jmp	.L353
.L354:
	nop
.L353:
	movl	$1, %eax
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ossl_ackm_on_rx_packet, .-ossl_ackm_on_rx_packet
	.type	ackm_fill_rx_ack_ranges, @function
ackm_fill_rx_ack_ranges:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_rx_history
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	%rax, -8(%rbp)
	jmp	.L356
.L358:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rsi
	salq	$5, %rsi
	movq	-16(%rbp), %rcx
	addq	%rsi, %rcx
	addq	$41, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rsi
	salq	$5, %rsi
	movq	-16(%rbp), %rcx
	addq	%rsi, %rcx
	addq	$41, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_prev
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L356:
	cmpq	$0, -8(%rbp)
	je	.L357
	cmpq	$2, -16(%rbp)
	jbe	.L358
.L357:
	movl	-44(%rbp), %eax
	cltq
	salq	$9, %rax
	leaq	656(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ackm_fill_rx_ack_ranges, .-ackm_fill_rx_ack_ranges
	.globl	ossl_ackm_get_ack_frame
	.type	ossl_ackm_get_ack_frame, @function
ossl_ackm_get_ack_frame:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	480(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ackm_fill_rx_ack_ranges
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$276, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L360
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$276, %rdx
	movq	8(%rax,%rdx,8), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jle	.L360
	cmpl	$2, -44(%rbp)
	jne	.L360
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$276, %rdx
	movq	8(%rax,%rdx,8), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, 16(%rbx)
	jmp	.L361
.L360:
	movq	-24(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 16(%rbx)
.L361:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$280, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$282, %rdx
	movq	8(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$286, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movzbl	48(%rax), %edx
	orl	$1, %edx
	movb	%dl, 48(%rax)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$576, %rdx
	movl	$0, 8(%rax,%rdx,4)
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %eax
	cltq
	movb	$1, 465(%rdx,%rax)
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %eax
	cltq
	movb	$0, 462(%rdx,%rax)
	call	ossl_time_infinite
	movq	%rax, %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ackm_set_flush_deadline
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	ossl_ackm_get_ack_frame, .-ossl_ackm_get_ack_frame
	.globl	ossl_ackm_get_ack_deadline
	.type	ossl_ackm_get_ack_deadline, @function
ossl_ackm_get_ack_deadline:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	462(%rdx,%rax), %eax
	testb	%al, %al
	je	.L364
	call	ossl_time_zero
	jmp	.L365
.L364:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$290, %rdx
	movq	8(%rax,%rdx,8), %rax
.L365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	ossl_ackm_get_ack_deadline, .-ossl_ackm_get_ack_deadline
	.globl	ossl_ackm_is_rx_pn_processable
	.type	ossl_ackm_is_rx_pn_processable, @function
ossl_ackm_is_rx_pn_processable:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_rx_history
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L367
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_uint_set_query@PLT
	testl	%eax, %eax
	jne	.L367
	movl	$1, %eax
	jmp	.L369
.L367:
	movl	$0, %eax
.L369:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	ossl_ackm_is_rx_pn_processable, .-ossl_ackm_is_rx_pn_processable
	.globl	ossl_ackm_set_loss_detection_deadline_callback
	.type	ossl_ackm_set_loss_detection_deadline_callback, @function
ossl_ackm_set_loss_detection_deadline_callback:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 2368(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 2376(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	ossl_ackm_set_loss_detection_deadline_callback, .-ossl_ackm_set_loss_detection_deadline_callback
	.globl	ossl_ackm_set_ack_deadline_callback
	.type	ossl_ackm_set_ack_deadline_callback, @function
ossl_ackm_set_ack_deadline_callback:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 2384(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 2392(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	ossl_ackm_set_ack_deadline_callback, .-ossl_ackm_set_ack_deadline_callback
	.globl	ossl_ackm_mark_packet_pseudo_lost
	.type	ossl_ackm_mark_packet_pseudo_lost, @function
ossl_ackm_mark_packet_pseudo_lost:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_tx_history
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_by_pkt_num
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L373
	movl	$0, %eax
	jmp	.L374
.L373:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tx_pkt_history_remove
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ackm_on_pkts_lost
	movl	$1, %eax
.L374:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	ossl_ackm_mark_packet_pseudo_lost, .-ossl_ackm_mark_packet_pseudo_lost
	.globl	ossl_ackm_get_pto_duration
	.type	ossl_ackm_get_pto_duration, @function
ossl_ackm_get_pto_duration:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	256(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_max
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	2352(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L376
	movq	-72(%rbp), %rax
	movq	2352(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -24(%rbp)
.L376:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	ossl_ackm_get_pto_duration, .-ossl_ackm_get_pto_duration
	.globl	ossl_ackm_get_largest_acked
	.type	ossl_ackm_get_largest_acked, @function
ossl_ackm_get_largest_acked:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$36, %rdx
	movq	(%rax,%rdx,8), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	ossl_ackm_get_largest_acked, .-ossl_ackm_get_largest_acked
	.globl	ossl_ackm_set_rx_max_ack_delay
	.type	ossl_ackm_set_rx_max_ack_delay, @function
ossl_ackm_set_rx_max_ack_delay:
.LFB665:
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
	movq	%rdx, 2352(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	ossl_ackm_set_rx_max_ack_delay, .-ossl_ackm_set_rx_max_ack_delay
	.globl	ossl_ackm_set_tx_max_ack_delay
	.type	ossl_ackm_set_tx_max_ack_delay, @function
ossl_ackm_set_tx_max_ack_delay:
.LFB666:
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
	movq	%rdx, 2360(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	ossl_ackm_set_tx_max_ack_delay, .-ossl_ackm_set_tx_max_ack_delay
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

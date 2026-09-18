	.file	"quictestlib.c"
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
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	ossl_time2ticks, .-ossl_time2ticks
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
	.type	ossl_time_from_timeval, @function
ossl_time_from_timeval:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L19
	call	ossl_time_zero
	jmp	.L21
.L19:
	movq	-32(%rbp), %rax
	imulq	$1000000000, %rax, %rdx
	movq	-24(%rbp), %rax
	imulq	$1000, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	ossl_time_from_timeval, .-ossl_time_from_timeval
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
	jnb	.L23
	movl	$1, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L25
	movl	$-1, %eax
	jmp	.L24
.L25:
	movl	$0, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_time_compare, .-ossl_time_compare
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
	je	.L29
	call	ossl_time_infinite
	jmp	.L31
.L29:
	movq	-8(%rbp), %rax
.L31:
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
	je	.L33
	call	ossl_time_zero
	jmp	.L35
.L33:
	movq	-8(%rbp), %rax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_time_subtract, .-ossl_time_subtract
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
	jnb	.L37
	movq	-8(%rbp), %rax
	jmp	.L39
.L37:
	movq	-16(%rbp), %rax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_time_min, .-ossl_time_min
	.type	packet_forward, @function
packet_forward:
.LFB513:
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
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB514:
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
.LFE514:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB516:
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
.LFE516:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB522:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$1, %rax
	ja	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB523:
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
	call	PACKET_peek_net_2
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_3, @function
PACKET_peek_net_3:
.LFB525:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$2, %rax
	ja	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PACKET_peek_net_3, .-PACKET_peek_net_3
	.type	PACKET_get_net_3, @function
PACKET_get_net_3:
.LFB526:
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
	call	PACKET_peek_net_3
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	PACKET_get_net_3, .-PACKET_get_net_3
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB533:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB534:
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
	call	PACKET_peek_1
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-24(%rbp), %rax
	jnb	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_peek_bytes
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB549:
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
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L73
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L74
.L73:
	movl	$0, %eax
	jmp	.L76
.L74:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_as_length_prefixed_2, @function
PACKET_as_length_prefixed_2:
.LFB550:
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
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L78
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L78
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L79
.L78:
	movl	$0, %eax
	jmp	.L81
.L79:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB627:
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
.LFE627:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB628:
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
.LFE628:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	thread_run, @function
thread_run:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	call	*%rax
	call	OPENSSL_thread_stop@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	thread_run, .-thread_run
	.type	run_thread, @function
run_thread:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	thread_run(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	run_thread, .-run_thread
	.type	wait_for_thread, @function
wait_for_thread:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	wait_for_thread, .-wait_for_thread
	.local	using_fake_time
	.comm	using_fake_time,4,4
	.local	fake_now
	.comm	fake_now,8,8
	.local	fake_now_lock
	.comm	fake_now_lock,8,8
	.local	start_time
	.comm	start_time,8,8
	.type	fake_now_cb, @function
fake_now_cb:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	qtest_get_time
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	fake_now_cb, .-fake_now_cb
	.type	noise_msg_callback, @function
noise_msg_callback:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$514, -60(%rbp)
	jne	.L95
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L101
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	je	.L102
	movq	-40(%rbp), %rax
	cmpq	$1, %rax
	jne	.L95
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L95:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L94
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	jne	.L94
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-88(%rbp), %r9
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %eax
	subq	$8, %rsp
	pushq	%rdi
	movl	%eax, %edi
	call	SSL_trace@PLT
	addq	$16, %rsp
	jmp	.L94
.L101:
	nop
	jmp	.L94
.L102:
	nop
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	noise_msg_callback, .-noise_msg_callback
	.section	.rodata
.LC0:
	.string	"../test/helpers/quictestlib.c"
.LC1:
	.string	"*cssl"
.LC2:
	.string	"tmpbio"
	.align 8
.LC3:
	.string	"SSL_set_alpn_protos(*cssl, alpn, sizeof(alpn))"
.LC4:
	.string	"peeraddr = BIO_ADDR_new()"
	.align 8
.LC5:
	.string	"create_test_sockets(&cfd, &sfd, SOCK_DGRAM, peeraddr)"
.LC6:
	.string	"cbio"
.LC7:
	.string	"sbio"
	.align 8
.LC8:
	.string	"BIO_new_bio_dgram_pair(&cbio, 0, &sbio, 0)"
	.align 8
.LC9:
	.string	"BIO_dgram_set_caps(cbio, BIO_DGRAM_CAP_HANDLES_DST_ADDR)"
	.align 8
.LC10:
	.string	"BIO_dgram_set_caps(sbio, BIO_DGRAM_CAP_HANDLES_DST_ADDR)"
	.align 8
.LC11:
	.string	"BIO_ADDR_rawmake(peeraddr, AF_INET, &ina, sizeof(ina), htons(0))"
.LC12:
	.string	"pktsplitbio"
.LC13:
	.string	"fault"
.LC14:
	.string	"noisebio"
.LC15:
	.string	"1"
	.align 8
.LC16:
	.string	"BIO_ctrl(cbio, BIO_CTRL_NOISE_SET_NOW_CB, 0, &now_cb)"
	.align 8
.LC17:
	.string	"BIO_ctrl(sbio, BIO_CTRL_NOISE_SET_NOW_CB, 0, &now_cb)"
	.align 8
.LC18:
	.string	"SSL_set_blocking_mode(*cssl, (flags & QTEST_FLAG_BLOCK) != 0 ? 1 : 0)"
	.align 8
.LC19:
	.string	"SSL_set1_initial_peer_addr(*cssl, peeraddr)"
.LC20:
	.string	"fisbio"
.LC21:
	.string	"BIO_push(fisbio, sbio)"
.LC22:
	.string	"SSL_CTX_up_ref(serverctx)"
	.align 8
.LC23:
	.string	"*qtserv = ossl_quic_tserver_new(&tserver_args, certfile, keyfile)"
	.text
	.globl	qtest_create_quic_objects
	.type	qtest_create_quic_objects, @function
qtest_create_quic_objects:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movl	%r9d, -220(%rbp)
	movabsq	$8315180296151723784, %rax
	movq	%rax, -49(%rbp)
	movb	$116, -41(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -148(%rbp)
	movq	$0, -24(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, 32(%rbp)
	je	.L104
	leaq	.LC0(%rip), %rax
	movl	$141, %edx
	movq	%rax, %rsi
	movl	$304, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L149
.L104:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$148, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L150
.L106:
	movl	-220(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L107
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L151
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	SSL_trace@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_msg_callback@PLT
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
.L107:
	cmpq	$0, 40(%rbp)
	je	.L109
	movq	40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L109:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-49(%rbp), %rcx
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_alpn_protos@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L152
	call	BIO_ADDR_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$169, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L153
	movl	-220(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rdx
	leaq	-156(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	create_test_sockets@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$180, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	movl	-152(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$183, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L115
	movl	-152(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	jmp	.L105
.L115:
	movl	-156(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$189, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L117
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	jmp	.L105
.L112:
	leaq	-144(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_bio_dgram_pair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$197, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$87, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$87, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	$0, %edi
	call	htons@PLT
	movzwl	%ax, %ecx
	leaq	-148(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movl	$4, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
.L117:
	movl	-220(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L121
	call	bio_f_pkt_split_dgram_filter@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$213, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-136(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -136(%rbp)
	call	bio_f_pkt_split_dgram_filter@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$218, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	movq	-144(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -144(%rbp)
.L121:
	movl	-220(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L124
	leaq	fake_now_cb(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$230, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L160
	call	bio_f_noisy_dgram_filter@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$235, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -136(%rbp)
	movl	-220(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L128
	movq	-136(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1005, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L162
.L128:
	call	bio_f_noisy_dgram_filter@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$246, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L163
	movq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -144(%rbp)
	movl	-220(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L130
	movq	-144(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1005, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$250, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
.L130:
	movq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, 272(%rax)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, 280(%rax)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 288(%rax)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movl	-220(%rbp), %edx
	movl	%edx, 296(%rax)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	leaq	noise_msg_callback(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_msg_callback@PLT
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	leaq	272(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
.L124:
	movq	-136(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movl	-220(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_blocking_mode@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L165
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set1_initial_peer_addr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$278, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L166
	call	qtest_get_bio_method@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$282, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	cmpq	$0, 32(%rbp)
	je	.L134
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L135
.L134:
	movl	$0, %eax
.L135:
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_set_data@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	je	.L168
	movq	-144(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$289, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L137
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L105
.L137:
	movq	-184(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L138
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L169
.L138:
	movq	-200(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	fake_now_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L139
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, fake_now_lock(%rip)
	movq	fake_now_lock(%rip), %rax
	testq	%rax, %rax
	je	.L170
.L139:
	movl	-220(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L140
	movl	$1, using_fake_time(%rip)
	call	qtest_reset_time
	leaq	fake_now_cb(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	leaq	fake_now_cb(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set_override_now_cb@PLT
	jmp	.L141
.L140:
	movl	$0, using_fake_time(%rip)
.L141:
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_new@PLT
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$315, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L171
	movq	$0, -144(%rbp)
	movq	$0, -8(%rbp)
	movl	-220(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L143
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	leaq	272(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	noise_msg_callback(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_msg_callback@PLT
.L143:
	cmpq	$0, 32(%rbp)
	je	.L144
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L144:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	$1, %eax
	jmp	.L148
.L149:
	nop
	jmp	.L105
.L150:
	nop
	jmp	.L105
.L151:
	nop
	jmp	.L105
.L152:
	nop
	jmp	.L105
.L153:
	nop
	jmp	.L105
.L154:
	nop
	jmp	.L105
.L155:
	nop
	jmp	.L105
.L156:
	nop
	jmp	.L105
.L157:
	nop
	jmp	.L105
.L158:
	nop
	jmp	.L105
.L159:
	nop
	jmp	.L105
.L160:
	nop
	jmp	.L105
.L161:
	nop
	jmp	.L105
.L162:
	nop
	jmp	.L105
.L163:
	nop
	jmp	.L105
.L164:
	nop
	jmp	.L105
.L165:
	nop
	jmp	.L105
.L166:
	nop
	jmp	.L105
.L167:
	nop
	jmp	.L105
.L168:
	nop
	jmp	.L105
.L169:
	nop
	jmp	.L105
.L170:
	nop
	jmp	.L105
.L171:
	nop
.L105:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	cmpq	$0, 32(%rbp)
	je	.L146
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L146:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpq	$0, 40(%rbp)
	je	.L147
	movq	40(%rbp), %rax
	movq	$0, (%rax)
.L147:
	movl	$0, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	qtest_create_quic_objects, .-qtest_create_quic_objects
	.globl	qtest_add_time
	.type	qtest_add_time, @function
qtest_add_time:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	fake_now_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L175
	movq	-8(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_now(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_now(%rip)
	movq	fake_now_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L172
.L175:
	nop
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	qtest_add_time, .-qtest_add_time
	.type	qtest_get_time, @function
qtest_get_time:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	fake_now_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L177
	call	ossl_time_zero
	jmp	.L179
.L177:
	movq	fake_now(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	fake_now_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	qtest_get_time, .-qtest_get_time
	.type	qtest_reset_time, @function
qtest_reset_time:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	fake_now_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L183
	call	ossl_time_zero
	movq	%rax, fake_now(%rip)
	movq	fake_now_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %edi
	call	qtest_add_time@PLT
	jmp	.L180
.L183:
	nop
.L180:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	qtest_reset_time, .-qtest_reset_time
	.globl	qtest_start_stopwatch
	.type	qtest_start_stopwatch, @function
qtest_start_stopwatch:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	qtest_get_time
	movq	%rax, start_time(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	qtest_start_stopwatch, .-qtest_start_stopwatch
	.globl	qtest_get_stopwatch_time
	.type	qtest_get_stopwatch_time, @function
qtest_get_stopwatch_time:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	qtest_get_time
	movq	%rax, %rdx
	movq	start_time(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	qtest_get_stopwatch_time, .-qtest_get_stopwatch_time
	.globl	qtest_create_injector
	.type	qtest_create_injector, @function
qtest_create_injector:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$394, %edx
	movq	%rax, %rsi
	movl	$304, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L188
	movl	$0, %eax
	jmp	.L189
.L188:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	qtest_create_injector, .-qtest_create_injector
	.globl	qtest_supports_blocking
	.type	qtest_supports_blocking, @function
qtest_supports_blocking:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	qtest_supports_blocking, .-qtest_supports_blocking
	.local	globserverret
	.comm	globserverret,4,4
	.local	abortserverthread
	.comm	abortserverthread,4,4
	.local	globtserv
	.comm	globtserv,8,8
	.section	.rodata
	.align 8
	.type	thread_zero, @object
	.size	thread_zero, 8
thread_zero:
	.zero	8
	.text
	.type	run_server_thread, @function
run_server_thread:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	globtserv(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	movl	%eax, globserverret(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	run_server_thread, .-run_server_thread
	.globl	qtest_wait_for_timeout
	.type	qtest_wait_for_timeout, @function
qtest_wait_for_timeout:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L194
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_blocking_mode@PLT
	testl	%eax, %eax
	je	.L195
.L194:
	movl	$1, %eax
	jmp	.L207
.L195:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L197
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get0_rbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L198
.L197:
	movl	$1, %eax
	jmp	.L207
.L198:
	leaq	-52(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get_event_timeout@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$0, %eax
	jmp	.L207
.L199:
	movl	using_fake_time(%rip), %eax
	testl	%eax, %eax
	je	.L200
	call	qtest_get_time
	movq	%rax, -48(%rbp)
	jmp	.L201
.L200:
	call	ossl_time_now@PLT
	movq	%rax, -48(%rbp)
.L201:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L202
	call	ossl_time_infinite
	movq	%rax, -24(%rbp)
	jmp	.L203
.L202:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ossl_time_from_timeval
	movq	%rax, -24(%rbp)
.L203:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_deadline@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	je	.L204
	movl	$0, %eax
	jmp	.L207
.L204:
	movl	using_fake_time(%rip), %eax
	testl	%eax, %eax
	je	.L205
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	movq	%rax, %rdi
	call	qtest_add_time@PLT
	jmp	.L206
.L205:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	movq	%rax, %rdi
	call	OSSL_sleep@PLT
.L206:
	movl	$1, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	qtest_wait_for_timeout, .-qtest_wait_for_timeout
	.section	.rodata
.LC24:
	.string	"qtserv"
	.align 8
.LC25:
	.string	"run_thread(&t, run_server_thread)"
.LC26:
	.string	"SSL_connect() failed %d, %d"
.LC27:
	.string	"No progress made"
.LC28:
	.string	"wait_for_thread(t)"
.LC29:
	.string	"globserverret"
	.text
	.globl	qtest_create_quic_connection_ex
	.type	qtest_create_quic_connection_ex, @function
qtest_create_quic_connection_ex:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	$-1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, %eax
	movq	%rax, -64(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L209
	movl	$0, -52(%rbp)
	movl	-52(%rbp), %eax
	xchgl	abortserverthread(%rip), %eax
.L209:
	movq	-88(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$491, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L233
	cmpq	$0, -96(%rbp)
	jne	.L212
	movl	$1, -4(%rbp)
	jmp	.L228
.L212:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_blocking_mode@PLT
	testl	%eax, %eax
	jle	.L228
	movq	-88(%rbp), %rax
	movq	%rax, globtserv(%rip)
	leaq	run_server_thread(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$502, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L234
	movq	$0, -88(%rbp)
	movl	$1, -8(%rbp)
.L228:
	cmpl	$0, -20(%rbp)
	jne	.L215
	cmpl	$0, -4(%rbp)
	jg	.L215
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L215
	movl	-4(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.L216
	movl	$1, -4(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L217
	cmpl	$0, -8(%rbp)
	jle	.L217
	leaq	abortserverthread(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L215
.L217:
	movl	$1, -8(%rbp)
	jmp	.L215
.L216:
	cmpl	$2, -28(%rbp)
	je	.L215
	cmpl	$3, -28(%rbp)
	je	.L215
	movl	-28(%rbp), %ecx
	movl	-4(%rbp), %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$532, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	test_openssl_errors@PLT
	movl	$1, -20(%rbp)
.L215:
	movl	$1, %edi
	call	qtest_add_time@PLT
	cmpq	$0, -96(%rbp)
	je	.L219
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
.L219:
	cmpq	$0, -88(%rbp)
	je	.L220
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
.L220:
	cmpl	$0, -24(%rbp)
	jne	.L221
	cmpl	$0, -8(%rbp)
	jg	.L221
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_term_any@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L221
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_handshake_confirmed@PLT
	movl	%eax, -8(%rbp)
.L221:
	cmpl	$0, -20(%rbp)
	je	.L222
	cmpl	$0, -24(%rbp)
	jne	.L235
.L222:
	cmpq	$0, -96(%rbp)
	je	.L223
	addl	$1, -12(%rbp)
	cmpl	$1000, -12(%rbp)
	jne	.L223
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L211
.L223:
	cmpl	$0, -4(%rbp)
	jg	.L224
	cmpl	$0, -20(%rbp)
	je	.L225
.L224:
	cmpl	$0, -8(%rbp)
	jg	.L226
	cmpl	$0, -24(%rbp)
	jne	.L226
.L225:
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_wait_for_timeout@PLT
	testl	%eax, %eax
	je	.L236
.L226:
	cmpl	$0, -4(%rbp)
	jg	.L227
	cmpl	$0, -20(%rbp)
	je	.L228
.L227:
	cmpl	$0, -8(%rbp)
	jg	.L229
	cmpl	$0, -24(%rbp)
	jne	.L229
	leaq	abortserverthread(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	je	.L228
.L229:
	cmpq	$0, -88(%rbp)
	jne	.L230
	cmpl	$0, -8(%rbp)
	jle	.L230
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$573, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L237
	movl	globserverret(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$573, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L237
.L230:
	cmpl	$0, -20(%rbp)
	jne	.L238
	cmpl	$0, -24(%rbp)
	jne	.L238
	movl	$1, -16(%rbp)
	jmp	.L211
.L233:
	nop
	jmp	.L211
.L234:
	nop
	jmp	.L211
.L235:
	nop
	jmp	.L211
.L236:
	nop
	jmp	.L211
.L237:
	nop
	jmp	.L211
.L238:
	nop
.L211:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	qtest_create_quic_connection_ex, .-qtest_create_quic_connection_ex
	.globl	qtest_create_quic_connection
	.type	qtest_create_quic_connection, @function
qtest_create_quic_connection:
.LFB684:
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
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	qtest_create_quic_connection, .-qtest_create_quic_connection
	.local	shutdowndone
	.comm	shutdowndone,4,4
	.type	run_server_shutdown_thread, @function
run_server_shutdown_thread:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.L242:
	movq	globtserv(%rip), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	leaq	shutdowndone(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L242
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	run_server_shutdown_thread, .-run_server_shutdown_thread
	.section	.rodata
	.align 8
.LC30:
	.string	"run_thread(&t, run_server_shutdown_thread)"
	.text
	.globl	qtest_shutdown
	.type	qtest_shutdown, @function
qtest_shutdown:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, %eax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_blocking_mode@PLT
	testl	%eax, %eax
	jle	.L251
	movq	-56(%rbp), %rax
	movq	%rax, globtserv(%rip)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	xchgl	shutdowndone(%rip), %eax
	leaq	run_server_shutdown_thread(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$628, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L245
	movl	$0, %eax
	jmp	.L253
.L245:
	movl	$0, -4(%rbp)
.L251:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L247
	movl	$1, -8(%rbp)
	jmp	.L248
.L247:
	cmpl	$0, -12(%rbp)
	js	.L254
	cmpl	$0, -4(%rbp)
	je	.L251
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	jmp	.L251
.L254:
	nop
.L248:
	leaq	shutdowndone(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -4(%rbp)
	jne	.L252
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$657, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L252
	movl	$0, -8(%rbp)
.L252:
	movl	-8(%rbp), %eax
.L253:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	qtest_shutdown, .-qtest_shutdown
	.section	.rodata
	.align 8
.LC31:
	.string	"ossl_quic_tserver_is_term_any(qtserv)"
.LC32:
	.string	"cause"
.LC33:
	.string	"cause->remote"
.LC34:
	.string	"cause->app"
.LC35:
	.string	"code"
.LC36:
	.string	"cause->error_code"
	.text
	.globl	qtest_check_server_transport_err
	.type	qtest_check_server_transport_err, @function
qtest_check_server_transport_err:
.LFB687:
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
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_term_any@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$674, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L256
	movl	$0, %eax
	jmp	.L257
.L256:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_terminate_cause@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$678, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L258
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$679, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L258
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L258
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$681, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L259
.L258:
	movl	$0, %eax
	jmp	.L257
.L259:
	movl	$1, %eax
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	qtest_check_server_transport_err, .-qtest_check_server_transport_err
	.globl	qtest_check_server_protocol_err
	.type	qtest_check_server_protocol_err, @function
qtest_check_server_protocol_err:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	qtest_check_server_transport_err@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	qtest_check_server_protocol_err, .-qtest_check_server_protocol_err
	.globl	qtest_check_server_frame_encoding_err
	.type	qtest_check_server_frame_encoding_err, @function
qtest_check_server_frame_encoding_err:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	qtest_check_server_transport_err@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	qtest_check_server_frame_encoding_err, .-qtest_check_server_frame_encoding_err
	.globl	qtest_fault_free
	.type	qtest_fault_free, @function
qtest_fault_free:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L267
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	packet_plain_finish
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	handshake_finish
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$705, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L264
.L267:
	nop
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	qtest_fault_free, .-qtest_fault_free
	.type	packet_plain_mutate, @function
packet_plain_mutate:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L269
.L270:
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	addq	%rax, -32(%rbp)
	addq	$1, -24(%rbp)
.L269:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L270
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	addq	$1024, -32(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$730, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 96(%rax)
	cmpq	$0, -40(%rbp)
	jne	.L271
	movq	-48(%rbp), %rax
	movq	$0, 104(%rax)
	movl	$0, %eax
	jmp	.L272
.L271:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	$0, -24(%rbp)
	jmp	.L273
.L274:
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	addq	%rax, -40(%rbp)
	addq	$1, -24(%rbp)
.L273:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L274
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 24(%rax)
	movq	%rbx, 32(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 40(%rax)
	movq	%rbx, 48(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 56(%rax)
	movq	%rbx, 64(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 72(%rax)
	movq	%rbx, 80(%rax)
	movq	80(%rdx), %rdx
	movq	%rdx, 88(%rax)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L275
	movq	-48(%rbp), %rax
	movq	120(%rax), %r9
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L275
	movl	$0, %eax
	jmp	.L272
.L275:
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	$1, (%rax)
	movl	$1, %eax
.L272:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	packet_plain_mutate, .-packet_plain_mutate
	.type	packet_plain_finish, @function
packet_plain_finish:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$765, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	packet_plain_finish, .-packet_plain_finish
	.globl	qtest_fault_set_packet_plain_listener
	.type	qtest_fault_set_packet_plain_listener, @function
qtest_fault_set_packet_plain_listener:
.LFB693:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	packet_plain_finish(%rip), %rdi
	leaq	packet_plain_mutate(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_plain_packet_mutator@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	qtest_fault_set_packet_plain_listener, .-qtest_fault_set_packet_plain_listener
	.globl	qtest_fault_resize_plain_packet
	.type	qtest_fault_resize_plain_packet, @function
qtest_fault_resize_plain_packet:
.LFB694:
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
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L280
	movl	$0, %eax
	jmp	.L281
.L280:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L282
	movl	$0, %eax
	jmp	.L281
.L282:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L283
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L283:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movl	$1, %eax
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	qtest_fault_resize_plain_packet, .-qtest_fault_resize_plain_packet
	.section	.rodata
	.align 8
.LC37:
	.string	"qtest_fault_resize_plain_packet(fault, old_len + frame_len)"
	.text
	.globl	qtest_fault_prepend_frame
	.type	qtest_fault_prepend_frame, @function
qtest_fault_prepend_frame:
.LFB695:
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
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L285
	movl	$0, %eax
	jmp	.L286
.L285:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_plain_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$838, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L287
	movl	$0, %eax
	jmp	.L286
.L287:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	qtest_fault_prepend_frame, .-qtest_fault_prepend_frame
	.type	handshake_mutate, @function
handshake_mutate:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	addq	$1024, %rax
	leaq	.LC0(%rip), %rcx
	movl	$858, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L289
	movl	$0, %eax
	jmp	.L298
.L289:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-80(%rbp), %rax
	leaq	1024(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L291
	leaq	-28(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L291
	leaq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L291
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L292
.L291:
	movl	$0, %eax
	jmp	.L298
.L292:
	movl	-28(%rbp), %eax
	cmpl	$8, %eax
	jne	.L299
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L300
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %r8
	movq	-8(%rbp), %rax
	movq	184(%rax), %rcx
	movq	-24(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L299
	movl	$0, %eax
	jmp	.L298
.L299:
	nop
	jmp	.L295
.L300:
	nop
.L295:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L297
	movq	-8(%rbp), %rax
	movq	160(%rax), %r8
	movq	-8(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L297
	movl	$0, %eax
	jmp	.L298
.L297:
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L298:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	handshake_mutate, .-handshake_mutate
	.type	handshake_finish, @function
handshake_finish:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$912, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	handshake_finish, .-handshake_finish
	.globl	qtest_fault_set_handshake_listener
	.type	qtest_fault_set_handshake_listener, @function
qtest_fault_set_handshake_listener:
.LFB698:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	handshake_finish(%rip), %rdi
	leaq	handshake_mutate(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_handshake_mutator@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	qtest_fault_set_handshake_listener, .-qtest_fault_set_handshake_listener
	.globl	qtest_fault_set_hand_enc_ext_listener
	.type	qtest_fault_set_hand_enc_ext_listener, @function
qtest_fault_set_hand_enc_ext_listener:
.LFB699:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	handshake_finish(%rip), %rdi
	leaq	handshake_mutate(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_handshake_mutator@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	qtest_fault_set_hand_enc_ext_listener, .-qtest_fault_set_hand_enc_ext_listener
	.globl	qtest_fault_resize_handshake
	.type	qtest_fault_resize_handshake, @function
qtest_fault_resize_handshake:
.LFB700:
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
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L307
	movl	$0, %eax
	jmp	.L308
.L307:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L309
	movl	$0, %eax
	jmp	.L308
.L309:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L310
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L310:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movl	$1, %eax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	qtest_fault_resize_handshake, .-qtest_fault_resize_handshake
	.globl	qtest_fault_resize_message
	.type	qtest_fault_resize_message, @function
qtest_fault_resize_message:
.LFB701:
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
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_handshake@PLT
	testl	%eax, %eax
	jne	.L312
	movl	$0, %eax
	jmp	.L313
.L312:
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	addq	$3, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	movl	$1, %eax
.L313:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	qtest_fault_resize_message, .-qtest_fault_resize_message
	.globl	qtest_fault_delete_extension
	.type	qtest_fault_delete_extension, @function
qtest_fault_delete_extension:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	-184(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rdx
	movq	-200(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L315
	movl	$0, %eax
	jmp	.L327
.L315:
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	jne	.L317
	movl	$0, %eax
	jmp	.L327
.L317:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -32(%rbp)
	leaq	-164(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L318
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L319
.L318:
	movl	$0, %eax
	jmp	.L327
.L319:
	movl	-164(%rbp), %eax
	cmpl	%eax, -188(%rbp)
	jne	.L317
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -216(%rbp)
	je	.L320
	movq	-216(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	jne	.L321
	movl	$0, %eax
	jmp	.L327
.L321:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	leaq	-160(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L322
	leaq	-176(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L323
.L322:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$0, %eax
	jmp	.L327
.L323:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	movq	-176(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, (%rax)
.L320:
	movq	-208(%rbp), %rax
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L324
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L324:
	movq	-208(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	subq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movb	%dl, (%rax)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L325
	movl	$0, %eax
	jmp	.L327
.L325:
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	subq	%rdx, %rax
	subq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_message@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$0, %eax
	jmp	.L327
.L326:
	movl	$1, %eax
.L327:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	qtest_fault_delete_extension, .-qtest_fault_delete_extension
	.local	pcipherbiometh
	.comm	pcipherbiometh,8,8
	.type	pcipher_sendmmsg, @function
pcipher_sendmmsg:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L329
	movl	$0, %eax
	jmp	.L344
.L329:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L331
	movq	-48(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L332
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L332
.L331:
	movq	-224(%rbp), %r8
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	jmp	.L344
.L332:
	cmpq	$0, -208(%rbp)
	jne	.L333
	movq	-224(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L344
.L333:
	movq	$0, -24(%rbp)
	jmp	.L334
.L343:
	movq	-24(%rbp), %rax
	imulq	-200(%rbp), %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 224(%rax)
	movq	%rbx, 232(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 240(%rax)
	movq	%rbx, 248(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 256(%rax)
	movq	-48(%rbp), %rax
	movq	232(%rax), %rax
	addq	$1024, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1101, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L335
	movl	$0, %eax
	jmp	.L344
.L335:
	movq	-48(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	224(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 224(%rax)
	movq	-48(%rbp), %rax
	movq	232(%rax), %rax
	leaq	1024(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-48(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L336
	movq	-48(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	224(%rax), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L337
	movl	$0, %eax
	jmp	.L344
.L337:
	leaq	-160(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	testl	%eax, %eax
	je	.L345
	movq	-48(%rbp), %rax
	movq	192(%rax), %r9
	movq	-48(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L346
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L337
.L336:
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L341
	movq	-48(%rbp), %rax
	movq	208(%rax), %r8
	movq	-48(%rbp), %rax
	movq	216(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	224(%rax), %rsi
	movq	-200(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L347
.L341:
	movq	-48(%rbp), %rax
	leaq	224(%rax), %rsi
	leaq	-64(%rbp), %rdi
	movq	-216(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	testl	%eax, %eax
	jne	.L342
	movq	-224(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L339
.L342:
	movq	-48(%rbp), %rax
	movq	224(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 264(%rax)
	addq	$1, -24(%rbp)
.L334:
	movq	-24(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jb	.L343
	movq	-224(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L339
.L345:
	nop
	jmp	.L339
.L346:
	nop
	jmp	.L339
.L347:
	nop
.L339:
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	224(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-40(%rbp), %rax
.L344:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	pcipher_sendmmsg, .-pcipher_sendmmsg
	.type	pcipher_ctrl, @function
pcipher_ctrl:
.LFB704:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L349
	movq	$-1, %rax
	jmp	.L350
.L349:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	pcipher_ctrl, .-pcipher_ctrl
	.section	.rodata
.LC38:
	.string	"Cipher Packet Filter"
.LC39:
	.string	"tmp"
	.align 8
.LC40:
	.string	"BIO_meth_set_sendmmsg(tmp, pcipher_sendmmsg)"
	.align 8
.LC41:
	.string	"BIO_meth_set_ctrl(tmp, pcipher_ctrl)"
	.text
	.globl	qtest_get_bio_method
	.type	qtest_get_bio_method, @function
qtest_get_bio_method:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	pcipherbiometh(%rip), %rax
	testq	%rax, %rax
	je	.L352
	movq	pcipherbiometh(%rip), %rax
	jmp	.L353
.L352:
	leaq	.LC38(%rip), %rax
	movq	%rax, %rsi
	movl	$640, %edi
	call	BIO_meth_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1184, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L354
	movl	$0, %eax
	jmp	.L353
.L354:
	leaq	pcipher_sendmmsg(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_sendmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L358
	leaq	pcipher_ctrl(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1188, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L358
	movq	-8(%rbp), %rax
	movq	%rax, pcipherbiometh(%rip)
	movq	$0, -8(%rbp)
	jmp	.L357
.L358:
	nop
.L357:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	movq	pcipherbiometh(%rip), %rax
.L353:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	qtest_get_bio_method, .-qtest_get_bio_method
	.globl	qtest_fault_set_packet_cipher_listener
	.type	qtest_fault_set_packet_cipher_listener, @function
qtest_fault_set_packet_cipher_listener:
.LFB706:
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
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 200(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	qtest_fault_set_packet_cipher_listener, .-qtest_fault_set_packet_cipher_listener
	.globl	qtest_fault_set_datagram_listener
	.type	qtest_fault_set_datagram_listener, @function
qtest_fault_set_datagram_listener:
.LFB707:
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
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 216(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	qtest_fault_set_datagram_listener, .-qtest_fault_set_datagram_listener
	.globl	qtest_fault_resize_datagram
	.type	qtest_fault_resize_datagram, @function
qtest_fault_resize_datagram:
.LFB708:
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
	movq	264(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L364
	movl	$0, %eax
	jmp	.L365
.L364:
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L366
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	224(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L366:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 232(%rax)
	movl	$1, %eax
.L365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	qtest_fault_resize_datagram, .-qtest_fault_resize_datagram
	.section	.rodata
	.align 8
.LC42:
	.string	"BIO_ctrl(sbio, BIO_CTRL_NOISE_RATE, noise_rate, NULL)"
	.align 8
.LC43:
	.string	"BIO_ctrl(cbio, BIO_CTRL_NOISE_RATE, noise_rate, NULL)"
	.align 8
.LC44:
	.string	"BIO_ctrl(cbio, BIO_CTRL_NOISE_SEND_BANDWIDTH, (long)ctos_bw, NULL)"
	.align 8
.LC45:
	.string	"BIO_ctrl(sbio, BIO_CTRL_NOISE_SEND_BANDWIDTH, (long)stoc_bw, NULL)"
	.text
	.globl	qtest_fault_set_bw_limit
	.type	qtest_fault_set_bw_limit, @function
qtest_fault_set_bw_limit:
.LFB709:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1240, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L368
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1240, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L369
.L368:
	movl	$0, %eax
	jmp	.L370
.L369:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1002, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1242, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L371
	movl	$0, %eax
	jmp	.L370
.L371:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1002, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1244, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L372
	movl	$0, %eax
	jmp	.L370
.L372:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1004, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1247, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L373
	movl	$0, %eax
	jmp	.L370
.L373:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1004, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1250, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L374
	movl	$0, %eax
	jmp	.L370
.L374:
	movl	$1, %eax
.L370:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	qtest_fault_set_bw_limit, .-qtest_fault_set_bw_limit
	.section	.rodata
	.align 8
.LC46:
	.string	"BIO_ADDR_copy(dst->local, src->local)"
	.align 8
.LC47:
	.string	"BIO_ADDR_copy(dst->peer, src->peer)"
	.text
	.globl	bio_msg_copy
	.type	bio_msg_copy, @function
bio_msg_copy:
.LFB710:
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
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L376
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L377
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1268, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L376
	movl	$0, %eax
	jmp	.L378
.L377:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L376:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L379
	movl	$0, %eax
	jmp	.L378
.L379:
	movl	$1, %eax
.L378:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	bio_msg_copy, .-bio_msg_copy
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

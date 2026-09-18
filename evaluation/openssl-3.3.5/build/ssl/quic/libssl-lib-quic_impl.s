	.file	"quic_impl.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB539:
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
.LFE539:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB540:
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
.LFE540:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB548:
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
.LFE548:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB550:
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
.LFE550:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB551:
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
.LFE551:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_timeval, @function
ossl_time_to_timeval:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movl	$999, %esi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L17
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
.L17:
	movq	-40(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	ossl_time_to_timeval, .-ossl_time_to_timeval
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB556:
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
	jnb	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L22
	movl	$-1, %eax
	jmp	.L21
.L22:
	movl	$0, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB558:
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
.LFE558:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB560:
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
	je	.L26
	call	ossl_time_zero
	jmp	.L28
.L26:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	ossl_time_subtract, .-ossl_time_subtract
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
	.type	ossl_quic_stream_is_server_init, @function
ossl_quic_stream_is_server_init:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ossl_quic_stream_is_server_init, .-ossl_quic_stream_is_server_init
	.type	ossl_quic_stream_is_bidi, @function
ossl_quic_stream_is_bidi:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ossl_quic_stream_is_bidi, .-ossl_quic_stream_is_bidi
	.type	ossl_quic_stream_is_local_init, @function
ossl_quic_stream_is_local_init:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	259(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_quic_stream_is_local_init, .-ossl_quic_stream_is_local_init
	.type	ossl_quic_stream_has_send, @function
ossl_quic_stream_has_send:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	ossl_quic_stream_has_send, .-ossl_quic_stream_has_send
	.type	ossl_quic_stream_has_recv, @function
ossl_quic_stream_has_recv:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_quic_stream_has_recv, .-ossl_quic_stream_has_recv
	.type	ossl_quic_stream_has_send_buffer, @function
ossl_quic_stream_has_send_buffer:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$2, %eax
	ja	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	ossl_quic_stream_has_send_buffer, .-ossl_quic_stream_has_send_buffer
	.type	ossl_quic_stream_send_is_reset, @function
ossl_quic_stream_send_is_reset:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$5, %al
	je	.L47
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$6, %al
	jne	.L48
.L47:
	movl	$1, %eax
	jmp	.L50
.L48:
	movl	$0, %eax
.L50:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	ossl_quic_stream_send_is_reset, .-ossl_quic_stream_send_is_reset
	.type	ossl_quic_stream_has_recv_buffer, @function
ossl_quic_stream_has_recv_buffer:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$2, %eax
	ja	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	ossl_quic_stream_has_recv_buffer, .-ossl_quic_stream_has_recv_buffer
	.type	ossl_quic_stream_recv_is_reset, @function
ossl_quic_stream_recv_is_reset:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$5, %al
	je	.L55
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$6, %al
	jne	.L56
.L55:
	movl	$1, %eax
	jmp	.L58
.L56:
	movl	$0, %eax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ossl_quic_stream_recv_is_reset, .-ossl_quic_stream_recv_is_reset
	.type	ossl_quic_stream_recv_pending, @function
ossl_quic_stream_recv_pending:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	je	.L60
	cmpl	$6, %eax
	jg	.L61
	cmpl	$5, %eax
	je	.L62
	cmpl	$5, %eax
	jg	.L61
	cmpl	$3, %eax
	jg	.L63
	testl	%eax, %eax
	jg	.L64
	jmp	.L61
.L63:
	cmpl	$4, %eax
	je	.L60
.L61:
	movl	$0, %eax
	jmp	.L68
.L64:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_available@PLT
	testl	%eax, %eax
	jne	.L66
	movq	$0, -8(%rbp)
.L66:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L67
	cmpl	$0, -28(%rbp)
	je	.L67
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L67
	movq	$1, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	jmp	.L68
.L62:
	movl	-28(%rbp), %eax
	jmp	.L68
.L60:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	ossl_quic_stream_recv_pending, .-ossl_quic_stream_recv_pending
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB682:
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
	jne	.L70
.L70:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_GET_REF, @function
CRYPTO_GET_REF:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	CRYPTO_GET_REF, .-CRYPTO_GET_REF
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB690:
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
.LFE690:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB691:
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
.LFE691:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB706:
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
.LFE706:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB707:
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
.LFE707:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	block_until_pred, @function
block_until_pred:
.LFB729:
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
	movq	72(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_engine_set_inhibit_tick@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_reactor_block_until_pred@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	block_until_pred, .-block_until_pred
	.type	get_time, @function
get_time:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L86
.L85:
	call	ossl_time_now@PLT
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	get_time, .-get_time
	.type	get_time_cb, @function
get_time_cb:
.LFB731:
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
	movq	%rax, %rdi
	call	get_time
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	get_time_cb, .-get_time_cb
	.type	quic_set_last_error, @function
quic_set_last_error:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L93
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 128(%rax)
	jmp	.L89
.L92:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L89
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 352(%rax)
	jmp	.L89
.L93:
	nop
.L89:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	quic_set_last_error, .-quic_set_last_error
	.type	quic_raise_normal_error, @function
quic_raise_normal_error:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	quic_set_last_error
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	quic_raise_normal_error, .-quic_raise_normal_error
	.type	quic_raise_non_normal_error, @function
quic_raise_non_normal_error:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -228(%rbp)
	movq	%rcx, -240(%rbp)
	movl	%r8d, -232(%rbp)
	movq	%r9, -248(%rbp)
	testb	%al, %al
	je	.L100
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L100:
	cmpq	$0, -216(%rbp)
	je	.L98
	movq	-216(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_set_last_error
	cmpl	$207, -232(%rbp)
	jne	.L98
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_restore_err_state@PLT
.L98:
	call	ERR_new@PLT
	movq	-240(%rbp), %rdx
	movl	-228(%rbp), %ecx
	movq	-224(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %esi
	movl	$20, %edi
	call	ERR_vset_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	quic_raise_non_normal_error, .-quic_raise_non_normal_error
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_impl.c"
	.text
	.type	expect_quic, @function
expect_quic:
.LFB735:
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
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	cmpq	$0, -24(%rbp)
	jne	.L102
	leaq	__func__.41(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786690, %r8d
	movq	%rdx, %rcx
	movl	$210, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L103
.L102:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L104
	cmpl	$2, %eax
	je	.L105
	jmp	.L107
.L104:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 20(%rax)
	movl	$1, %eax
	jmp	.L103
.L105:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 20(%rax)
	movl	$1, %eax
	jmp	.L103
.L107:
	leaq	__func__.41(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$230, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	expect_quic, .-expect_quic
	.type	expect_quic_with_stream_lock, @function
expect_quic_with_stream_lock:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	cmpl	$0, -16(%rbp)
	je	.L111
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock_for_io
	jmp	.L112
.L111:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_lock
.L112:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L113
	cmpl	$0, -12(%rbp)
	js	.L113
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L114
	leaq	__func__.40(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$258, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L115
.L114:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quic_do_handshake
	testl	%eax, %eax
	jle	.L120
	cmpl	$0, -12(%rbp)
	jne	.L117
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qc_try_create_default_xso_for_write
	testl	%eax, %eax
	jne	.L118
	jmp	.L115
.L117:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	qc_wait_for_default_xso_for_read
	testl	%eax, %eax
	je	.L121
.L118:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L113:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	leaq	__func__.40(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$355, %r8d
	movq	%rdx, %rcx
	movl	$279, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L115
.L119:
	movl	$1, %eax
	jmp	.L110
.L120:
	nop
	jmp	.L115
.L121:
	nop
.L115:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	expect_quic_with_stream_lock, .-expect_quic_with_stream_lock
	.type	expect_quic_conn_only, @function
expect_quic_conn_only:
.LFB737:
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
	call	expect_quic
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L125
	leaq	__func__.39(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$356, %r8d
	movq	%rdx, %rcx
	movl	$300, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L124
.L125:
	movl	$1, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	expect_quic_conn_only, .-expect_quic_conn_only
	.type	quic_lock, @function
quic_lock:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	quic_lock, .-quic_lock
	.type	quic_lock_for_io, @function
quic_lock_for_io:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_set_last_error
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	quic_lock_for_io, .-quic_lock_for_io
	.type	quic_unlock, @function
quic_unlock:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	quic_unlock, .-quic_unlock
	.type	quic_mutation_allowed, @function
quic_mutation_allowed:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L130
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	je	.L131
.L130:
	movl	$0, %eax
	jmp	.L132
.L131:
	cmpl	$0, -12(%rbp)
	je	.L133
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L132
.L133:
	movl	$1, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	quic_mutation_allowed, .-quic_mutation_allowed
	.globl	ossl_quic_new
	.type	ossl_quic_new, @function
ossl_quic_new:
.LFB742:
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
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$386, %edx
	movq	%rax, %rsi
	movl	$360, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L135
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$524303, %r8d
	movq	%rdx, %rcx
	movl	$388, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L136
.L135:
	call	ossl_crypto_mutex_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$524303, %r8d
	movq	%rdx, %rcx
	movl	$393, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L138
.L137:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ossl_ssl_init@PLT
	testl	%eax, %eax
	jne	.L139
	movq	$0, -24(%rbp)
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$402, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L138
.L139:
	call	TLS_method@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ssl_connection_new_int@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L141
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L142
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L143
.L142:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L144
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L143
.L144:
	movq	$0, -32(%rbp)
	jmp	.L143
.L141:
	movq	$0, -32(%rbp)
.L143:
	cmpq	$0, -32(%rbp)
	jne	.L145
.L140:
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$408, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L138
.L145:
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	orb	$32, %ah
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-32(%rbp), %rax
	movq	2360(%rax), %rax
	movabsq	$16633559941, %rdx
	andq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2360(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 2836(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	sete	%dl
	movq	-40(%rbp), %rax
	andl	$1, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	312(%rax), %edx
	andl	$-9, %edx
	orl	%ecx, %edx
	movb	%dl, 312(%rax)
	movq	-40(%rbp), %rax
	movzbl	312(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 312(%rax)
	movq	-40(%rbp), %rax
	movzbl	312(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movq	-40(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,4), %ecx
	movzbl	312(%rdx), %eax
	andl	$-5, %eax
	orl	%ecx, %eax
	movb	%al, 312(%rdx)
	movq	-40(%rbp), %rax
	movl	$1, 316(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	320(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 320(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	312(%rax), %rax
	movabsq	$16633559943, %rdx
	andq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 328(%rax)
	movq	-40(%rbp), %rax
	movzbl	312(%rax), %edx
	orl	$32, %edx
	movb	%dl, 312(%rax)
	movq	-40(%rbp), %rax
	movzbl	312(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 312(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 336(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 352(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	create_channel
	testl	%eax, %eax
	je	.L149
	movq	-56(%rbp), %rax
	movq	368(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_msg_callback@PLT
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_msg_callback_arg@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_reject_policy
	movq	-24(%rbp), %rax
	jmp	.L136
.L149:
	nop
.L138:
	cmpq	$0, -24(%rbp)
	jne	.L147
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$460, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L148
.L147:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
.L148:
	movl	$0, %eax
.L136:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ossl_quic_new, .-ossl_quic_new
	.globl	ossl_quic_free
	.type	ossl_quic_free, @function
ossl_quic_free:
.LFB743:
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
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	je	.L162
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L153
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 304(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	257(%rax), %eax
	cmpb	$1, %al
	je	.L154
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	257(%rax), %eax
	cmpb	$2, %al
	jne	.L155
.L154:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	jne	.L155
	movq	-56(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_reset_stream_send_part@PLT
.L155:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	258(%rax), %eax
	cmpb	$1, %al
	je	.L156
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	258(%rax), %eax
	cmpb	$2, %al
	jne	.L157
.L156:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_stop_sending_recv_part@PLT
.L157:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	260(%rax), %edx
	orl	$32, %edx
	movb	%dl, 260(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	cmpl	$0, -28(%rbp)
	jne	.L163
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	jmp	.L163
.L153:
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L159
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-64(%rbp), %rax
	movq	$0, 104(%rax)
.L159:
	movq	-64(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L160
	movq	-64(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L160
	movq	-64(%rbp), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	call	ossl_quic_thread_assist_wait_stopped@PLT
	movq	-64(%rbp), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	call	ossl_quic_thread_assist_cleanup@PLT
.L160:
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_free@PLT
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_free@PLT
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_free@PLT
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-64(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	jmp	.L150
.L162:
	nop
	jmp	.L150
.L163:
	nop
.L150:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ossl_quic_free, .-ossl_quic_free
	.globl	ossl_quic_init
	.type	ossl_quic_init, @function
ossl_quic_init:
.LFB744:
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
	call	ossl_quic_clear@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ossl_quic_init, .-ossl_quic_init
	.globl	ossl_quic_deinit
	.type	ossl_quic_deinit, @function
ossl_quic_deinit:
.LFB745:
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
.LFE745:
	.size	ossl_quic_deinit, .-ossl_quic_deinit
	.globl	ossl_quic_reset
	.type	ossl_quic_reset, @function
ossl_quic_reset:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L170
.L168:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$590, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_quic_reset, .-ossl_quic_reset
	.globl	ossl_quic_clear
	.type	ossl_quic_clear, @function
ossl_quic_clear:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L172
	movl	$0, %eax
	jmp	.L174
.L172:
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$602, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_quic_clear, .-ossl_quic_clear
	.globl	ossl_quic_conn_set_override_now_cb
	.type	ossl_quic_conn_set_override_now_cb, @function
ossl_quic_conn_set_override_now_cb:
.LFB748:
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
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L178
.L176:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 288(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 296(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_quic_conn_set_override_now_cb, .-ossl_quic_conn_set_override_now_cb
	.globl	ossl_quic_conn_force_assist_thread_wake
	.type	ossl_quic_conn_force_assist_thread_wake, @function
ossl_quic_conn_force_assist_thread_wake:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	je	.L183
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L179
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L179
	movq	-32(%rbp), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	call	ossl_quic_thread_assist_notify_deadline_changed@PLT
	jmp	.L179
.L183:
	nop
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_quic_conn_force_assist_thread_wake, .-ossl_quic_conn_force_assist_thread_wake
	.type	qc_touch_default_xso, @function
qc_touch_default_xso:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %edx
	orl	$64, %edx
	movb	%dl, 312(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_reject_policy
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	qc_touch_default_xso, .-qc_touch_default_xso
	.type	qc_set_default_xso_keep_ref, @function
qc_set_default_xso_keep_ref:
.LFB751:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L186
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	cmpq	$0, -32(%rbp)
	jne	.L187
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L186
	jmp	.L185
.L187:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
.L186:
	cmpl	$0, -36(%rbp)
	je	.L185
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qc_touch_default_xso
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	qc_set_default_xso_keep_ref, .-qc_set_default_xso_keep_ref
	.type	qc_set_default_xso, @function
qc_set_default_xso:
.LFB752:
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
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qc_set_default_xso_keep_ref
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L192
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
.L192:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	qc_set_default_xso, .-qc_set_default_xso
	.type	xso_update_options, @function
xso_update_options:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L194
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	120(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_set_cleanse@PLT
.L194:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_set_cleanse@PLT
.L196:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	xso_update_options, .-xso_update_options
	.type	quic_mask_or_options, @function
quic_mask_or_options:
.LFB754:
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
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L204
.L198:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	.L200
	movabsq	$16633559941, %rax
	andq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$16633559941, %rax
	andq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_clear_options@PLT
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-64(%rbp), %rax
	notq	%rax
	andq	%rdx, %rax
	orq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movabsq	$16633559943, %rcx
	andq	%rcx, %rdx
	movq	%rdx, 328(%rax)
.L200:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L201
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	notq	%rax
	andq	%rdx, %rax
	orq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	andl	$3725568391, %edx
	movq	%rdx, 120(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xso_update_options
.L201:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L202
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L203
.L202:
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -8(%rbp)
.L203:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-8(%rbp), %rax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	quic_mask_or_options, .-quic_mask_or_options
	.globl	ossl_quic_set_options
	.type	ossl_quic_set_options, @function
ossl_quic_set_options:
.LFB755:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mask_or_options
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_quic_set_options, .-ossl_quic_set_options
	.globl	ossl_quic_clear_options
	.type	ossl_quic_clear_options, @function
ossl_quic_clear_options:
.LFB756:
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
	call	quic_mask_or_options
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_quic_clear_options, .-ossl_quic_clear_options
	.globl	ossl_quic_get_options
	.type	ossl_quic_get_options, @function
ossl_quic_get_options:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mask_or_options
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	ossl_quic_get_options, .-ossl_quic_get_options
	.type	csm_analyse_init_peer_addr, @function
csm_analyse_init_peer_addr:
.LFB758:
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
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$93, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L212
	movl	$0, %eax
	jmp	.L213
.L212:
	movl	$1, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	csm_analyse_init_peer_addr, .-csm_analyse_init_peer_addr
	.type	qc_can_support_blocking_cached, @function
qc_can_support_blocking_cached:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_can_poll_r@PLT
	testl	%eax, %eax
	je	.L215
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_can_poll_w@PLT
	testl	%eax, %eax
	je	.L215
	movl	$1, %eax
	jmp	.L217
.L215:
	movl	$0, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	qc_can_support_blocking_cached, .-qc_can_support_blocking_cached
	.type	qc_update_can_support_blocking, @function
qc_update_can_support_blocking:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_update_poll_descriptors@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	qc_update_can_support_blocking, .-qc_update_can_support_blocking
	.type	qc_update_blocking_mode, @function
qc_update_blocking_mode:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L220
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_can_support_blocking_cached
	testl	%eax, %eax
	je	.L220
	movl	$1, %eax
	jmp	.L221
.L220:
	movl	$0, %eax
.L221:
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	312(%rdx), %eax
	andl	$-17, %eax
	orl	%ecx, %eax
	movb	%al, 312(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	qc_update_blocking_mode, .-qc_update_blocking_mode
	.globl	ossl_quic_conn_set0_net_rbio
	.type	ossl_quic_conn_set0_net_rbio, @function
ossl_quic_conn_set0_net_rbio:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	je	.L229
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L230
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_set_net_rbio@PLT
	testl	%eax, %eax
	je	.L231
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 112(%rax)
	cmpq	$0, -48(%rbp)
	je	.L227
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L227:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_can_support_blocking
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_blocking_mode
	jmp	.L222
.L229:
	nop
	jmp	.L222
.L230:
	nop
	jmp	.L222
.L231:
	nop
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_quic_conn_set0_net_rbio, .-ossl_quic_conn_set0_net_rbio
	.globl	ossl_quic_conn_set0_net_wbio
	.type	ossl_quic_conn_set0_net_wbio, @function
ossl_quic_conn_set0_net_wbio:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	je	.L239
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L240
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_set_net_wbio@PLT
	testl	%eax, %eax
	je	.L241
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 120(%rax)
	cmpq	$0, -48(%rbp)
	je	.L237
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L237:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_can_support_blocking
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_blocking_mode
	jmp	.L232
.L239:
	nop
	jmp	.L232
.L240:
	nop
	jmp	.L232
.L241:
	nop
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ossl_quic_conn_set0_net_wbio, .-ossl_quic_conn_set0_net_wbio
	.globl	ossl_quic_conn_get_net_rbio
	.type	ossl_quic_conn_get_net_rbio, @function
ossl_quic_conn_get_net_rbio:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L243
	movl	$0, %eax
	jmp	.L245
.L243:
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	ossl_quic_conn_get_net_rbio, .-ossl_quic_conn_get_net_rbio
	.globl	ossl_quic_conn_get_net_wbio
	.type	ossl_quic_conn_get_net_wbio, @function
ossl_quic_conn_get_net_wbio:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L247
	movl	$0, %eax
	jmp	.L249
.L247:
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ossl_quic_conn_get_net_wbio, .-ossl_quic_conn_get_net_wbio
	.globl	ossl_quic_conn_get_blocking_mode
	.type	ossl_quic_conn_get_blocking_mode, @function
ossl_quic_conn_get_blocking_mode:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L251
	movl	$0, %eax
	jmp	.L254
.L251:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L253
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xso_blocking_mode
	jmp	.L254
.L253:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	ossl_quic_conn_get_blocking_mode, .-ossl_quic_conn_get_blocking_mode
	.globl	ossl_quic_conn_set_blocking_mode
	.type	ossl_quic_conn_set_blocking_mode, @function
ossl_quic_conn_set_blocking_mode:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L256
	movl	$0, %eax
	jmp	.L263
.L256:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	cmpl	$0, -44(%rbp)
	je	.L258
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L259
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_can_support_blocking
.L259:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_can_support_blocking_cached
	testl	%eax, %eax
	jne	.L258
	leaq	__func__.35(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$524556, %r8d
	movq	%rdx, %rcx
	movl	$984, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -4(%rbp)
	jmp	.L260
.L258:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L261
	movq	-32(%rbp), %rax
	cmpl	$0, -44(%rbp)
	setne	%dl
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	312(%rax), %edx
	andl	$-33, %edx
	orl	%ecx, %edx
	movb	%dl, 312(%rax)
.L261:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L262
	movq	-24(%rbp), %rax
	cmpl	$0, -44(%rbp)
	setne	%dl
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	80(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 80(%rax)
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$2, %edx
	movb	%dl, 80(%rax)
.L262:
	movl	$1, -4(%rbp)
.L260:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_blocking_mode
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ossl_quic_conn_set_blocking_mode, .-ossl_quic_conn_set_blocking_mode
	.globl	ossl_quic_conn_set_initial_peer_addr
	.type	ossl_quic_conn_set_initial_peer_addr, @function
ossl_quic_conn_set_initial_peer_addr:
.LFB768:
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
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L265
	movl	$0, %eax
	jmp	.L269
.L265:
	movq	-48(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L267
	leaq	__func__.34(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	$786689, %r8d
	movq	%rdx, %rcx
	movl	$1021, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L269
.L267:
	cmpq	$0, -64(%rbp)
	jne	.L268
	movq	-48(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	movl	$1, %eax
	jmp	.L269
.L268:
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 208(%rax)
	movq	%rbx, 216(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 224(%rax)
	movq	%rbx, 232(%rax)
	movl	$1, %eax
.L269:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ossl_quic_conn_set_initial_peer_addr, .-ossl_quic_conn_set_initial_peer_addr
	.type	qc_blocking_mode, @function
qc_blocking_mode:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	qc_blocking_mode, .-qc_blocking_mode
	.type	xso_blocking_mode, @function
xso_blocking_mode:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L273
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L274
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	qc_can_support_blocking_cached
	testl	%eax, %eax
	je	.L274
	movl	$1, %eax
	jmp	.L276
.L274:
	movl	$0, %eax
	jmp	.L276
.L273:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	312(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	xso_blocking_mode, .-xso_blocking_mode
	.globl	ossl_quic_handle_events
	.type	ossl_quic_handle_events, @function
ossl_quic_handle_events:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L278
	movl	$0, %eax
	jmp	.L281
.L278:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L280
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
.L280:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ossl_quic_handle_events, .-ossl_quic_handle_events
	.globl	ossl_quic_get_event_timeout
	.type	ossl_quic_get_event_timeout, @function
ossl_quic_get_event_timeout:
.LFB772:
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
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L283
	movl	$0, %eax
	jmp	.L287
.L283:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L285
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, %rdi
	call	ossl_quic_reactor_get_tick_deadline@PLT
	movq	%rax, -40(%rbp)
.L285:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	je	.L286
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	movq	-64(%rbp), %rax
	movq	$1000000, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
	jmp	.L287
.L286:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	ossl_quic_get_event_timeout, .-ossl_quic_get_event_timeout
	.globl	ossl_quic_get_rpoll_descriptor
	.type	ossl_quic_get_rpoll_descriptor, @function
ossl_quic_get_rpoll_descriptor:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L289
	movl	$0, %eax
	jmp	.L293
.L289:
	cmpq	$0, -48(%rbp)
	je	.L291
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L292
.L291:
	leaq	__func__.33(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$1125, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L293
.L292:
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_get_rpoll_descriptor@PLT
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	ossl_quic_get_rpoll_descriptor, .-ossl_quic_get_rpoll_descriptor
	.globl	ossl_quic_get_wpoll_descriptor
	.type	ossl_quic_get_wpoll_descriptor, @function
ossl_quic_get_wpoll_descriptor:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L295
	movl	$0, %eax
	jmp	.L299
.L295:
	cmpq	$0, -48(%rbp)
	je	.L297
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L298
.L297:
	leaq	__func__.32(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$1140, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L299
.L298:
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_get_wpoll_descriptor@PLT
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_quic_get_wpoll_descriptor, .-ossl_quic_get_wpoll_descriptor
	.globl	ossl_quic_get_net_read_desired
	.type	ossl_quic_get_net_read_desired, @function
ossl_quic_get_net_read_desired:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L301
	movl	$0, %eax
	jmp	.L303
.L301:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, %rdi
	call	ossl_quic_reactor_net_read_desired@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_quic_get_net_read_desired, .-ossl_quic_get_net_read_desired
	.globl	ossl_quic_get_net_write_desired
	.type	ossl_quic_get_net_write_desired, @function
ossl_quic_get_net_write_desired:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L305
	movl	$0, %eax
	jmp	.L307
.L305:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, %rdi
	call	ossl_quic_reactor_net_write_desired@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ossl_quic_get_net_write_desired, .-ossl_quic_get_net_write_desired
	.type	qc_shutdown_flush_init, @function
qc_shutdown_flush_init:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L311
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_begin_shutdown_flush@PLT
	movq	-24(%rbp), %rax
	movzbl	312(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 312(%rax)
	jmp	.L308
.L311:
	nop
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	qc_shutdown_flush_init, .-qc_shutdown_flush_init
	.type	qc_shutdown_flush_finished, @function
qc_shutdown_flush_finished:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L313
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_is_shutdown_flush_finished@PLT
	testl	%eax, %eax
	je	.L313
	movl	$1, %eax
	jmp	.L315
.L313:
	movl	$0, %eax
.L315:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	qc_shutdown_flush_finished, .-qc_shutdown_flush_finished
	.type	quic_shutdown_wait, @function
quic_shutdown_wait:
.LFB779:
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
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	quic_shutdown_wait, .-quic_shutdown_wait
	.type	quic_shutdown_flush_wait, @function
quic_shutdown_flush_wait:
.LFB780:
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
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	jne	.L319
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_shutdown_flush_finished
	testl	%eax, %eax
	je	.L320
.L319:
	movl	$1, %eax
	jmp	.L322
.L320:
	movl	$0, %eax
.L322:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	quic_shutdown_flush_wait, .-quic_shutdown_flush_wait
	.type	quic_shutdown_peer_wait, @function
quic_shutdown_peer_wait:
.LFB781:
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
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	quic_shutdown_peer_wait, .-quic_shutdown_peer_wait
	.globl	ossl_quic_conn_shutdown
	.type	ossl_quic_conn_shutdown, @function
ossl_quic_conn_shutdown:
.LFB782:
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
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-64(%rbp), %rax
	andl	$4, %eax
	shrq	$2, %rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-64(%rbp), %rax
	andl	$8, %eax
	shrq	$3, %rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L326
	movl	$-1, %eax
	jmp	.L347
.L326:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L328
	leaq	__func__.31(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	$356, %r8d
	movq	%rdx, %rcx
	movl	$1254, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L347
.L328:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L329
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
	jmp	.L347
.L329:
	cmpl	$0, -16(%rbp)
	jne	.L330
	cmpl	$0, -8(%rbp)
	je	.L330
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qc_shutdown_flush_init
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qc_shutdown_flush_finished
	testl	%eax, %eax
	jne	.L331
	cmpl	$0, -12(%rbp)
	jne	.L332
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	je	.L332
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	quic_shutdown_flush_wait(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L331
	movl	$0, -4(%rbp)
	jmp	.L334
.L332:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
.L331:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qc_shutdown_flush_finished
	testl	%eax, %eax
	jne	.L330
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$0, %eax
	jmp	.L347
.L330:
	cmpl	$0, -16(%rbp)
	je	.L335
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	jne	.L335
	cmpl	$0, -12(%rbp)
	jne	.L336
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	je	.L336
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	quic_shutdown_peer_wait(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L338
	movl	$0, -4(%rbp)
	jmp	.L334
.L336:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
.L338:
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	jne	.L335
	movl	$0, -4(%rbp)
	jmp	.L334
.L335:
	movq	-48(%rbp), %rax
	movzbl	312(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 312(%rax)
	cmpq	$0, -72(%rbp)
	je	.L339
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L340
.L339:
	movl	$0, %edx
.L340:
	cmpq	$0, -72(%rbp)
	je	.L341
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L342
.L341:
	movl	$0, %eax
.L342:
	movq	-48(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_channel_local_close@PLT
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_shutdown@PLT
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L343
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
	jmp	.L347
.L343:
	cmpl	$0, -12(%rbp)
	jne	.L344
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	je	.L344
	movq	-64(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L344
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	quic_shutdown_wait(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L346
	movl	$0, -4(%rbp)
	jmp	.L334
.L344:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
.L346:
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	movl	%eax, -4(%rbp)
.L334:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L347:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	ossl_quic_conn_shutdown, .-ossl_quic_conn_shutdown
	.globl	ossl_quic_ctrl
	.type	ossl_quic_ctrl, @function
ossl_quic_ctrl:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L349
	movl	$0, %eax
	jmp	.L366
.L349:
	cmpl	$126, -60(%rbp)
	jg	.L351
	cmpl	$125, -60(%rbp)
	jge	.L352
	cmpl	$78, -60(%rbp)
	je	.L353
	cmpl	$78, -60(%rbp)
	jg	.L351
	cmpl	$74, -60(%rbp)
	je	.L354
	cmpl	$74, -60(%rbp)
	jg	.L351
	cmpl	$73, -60(%rbp)
	je	.L355
	cmpl	$73, -60(%rbp)
	jg	.L351
	cmpl	$52, -60(%rbp)
	je	.L352
	cmpl	$52, -60(%rbp)
	jg	.L351
	cmpl	$41, -60(%rbp)
	jg	.L351
	cmpl	$40, -60(%rbp)
	jge	.L352
	cmpl	$16, -60(%rbp)
	je	.L356
	cmpl	$33, -60(%rbp)
	jne	.L351
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L357
	movq	-32(%rbp), %rax
	movl	320(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	orl	%ecx, %edx
	movl	%edx, 320(%rax)
.L357:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L358
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L359
	movl	$4294967294, %eax
	andq	%rax, -72(%rbp)
.L359:
	movq	-24(%rbp), %rax
	movl	112(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	orl	%ecx, %edx
	movl	%edx, 112(%rax)
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, %eax
	jmp	.L366
.L358:
	movq	-32(%rbp), %rax
	movl	320(%rax), %eax
	movl	%eax, %eax
	jmp	.L366
.L353:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L360
	movq	-32(%rbp), %rax
	movl	320(%rax), %edx
	movq	-72(%rbp), %rax
	notl	%eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	andl	%ecx, %edx
	movl	%edx, 320(%rax)
.L360:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L361
	movq	-24(%rbp), %rax
	movl	112(%rax), %edx
	movq	-72(%rbp), %rax
	notl	%eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	andl	%ecx, %edx
	movl	%edx, 112(%rax)
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, %eax
	jmp	.L366
.L361:
	movq	-32(%rbp), %rax
	movl	320(%rax), %eax
	movl	%eax, %eax
	jmp	.L366
.L356:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_msg_callback_arg@PLT
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	jmp	.L366
.L355:
	leaq	-36(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_event_timeout@PLT
	testl	%eax, %eax
	jne	.L362
	movl	$0, %eax
	jmp	.L366
.L362:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L366
.L354:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_handle_events@PLT
	cmpl	$1, %eax
	jne	.L364
	movl	$1, %eax
	jmp	.L366
.L364:
	movq	$-1, %rax
	jmp	.L366
.L352:
	movl	$0, %eax
	jmp	.L366
.L351:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %esi
	call	ossl_ctrl_internal@PLT
.L366:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	ossl_quic_ctrl, .-ossl_quic_ctrl
	.globl	ossl_quic_set_connect_state
	.type	ossl_quic_set_connect_state, @function
ossl_quic_set_connect_state:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	je	.L373
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L374
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L374
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 312(%rax)
	jmp	.L367
.L373:
	nop
	jmp	.L367
.L374:
	nop
.L367:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	ossl_quic_set_connect_state, .-ossl_quic_set_connect_state
	.globl	ossl_quic_set_accept_state
	.type	ossl_quic_set_accept_state, @function
ossl_quic_set_accept_state:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	je	.L381
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L382
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L382
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %edx
	orl	$4, %edx
	movb	%dl, 312(%rax)
	jmp	.L375
.L381:
	nop
	jmp	.L375
.L382:
	nop
.L375:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	ossl_quic_set_accept_state, .-ossl_quic_set_accept_state
	.type	tls_wants_non_io_retry, @function
tls_wants_non_io_retry:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	movl	%eax, -4(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L384
	cmpl	$7, -4(%rbp)
	je	.L384
	cmpl	$8, -4(%rbp)
	jne	.L385
.L384:
	movl	$1, %eax
	jmp	.L386
.L385:
	movl	$0, %eax
.L386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	tls_wants_non_io_retry, .-tls_wants_non_io_retry
	.type	quic_handshake_wait, @function
quic_handshake_wait:
.LFB787:
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
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L388
	movl	$-1, %eax
	jmp	.L389
.L388:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_handshake_complete@PLT
	testl	%eax, %eax
	je	.L390
	movl	$1, %eax
	jmp	.L389
.L390:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	tls_wants_non_io_retry
	testl	%eax, %eax
	je	.L391
	movl	$1, %eax
	jmp	.L389
.L391:
	movl	$0, %eax
.L389:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	quic_handshake_wait, .-quic_handshake_wait
	.type	configure_channel, @function
configure_channel:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_set_net_rbio@PLT
	testl	%eax, %eax
	je	.L393
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_set_net_wbio@PLT
	testl	%eax, %eax
	je	.L393
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_peer_addr@PLT
	testl	%eax, %eax
	jne	.L394
.L393:
	movl	$0, %eax
	jmp	.L395
.L394:
	movl	$1, %eax
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	configure_channel, .-configure_channel
	.type	create_channel, @function
create_channel:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	get_time_cb(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_new@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L397
	leaq	__func__.30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1512, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L401
.L397:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_engine_create_port@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L399
	leaq	__func__.30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1519, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_free@PLT
	movl	$0, %eax
	jmp	.L401
.L399:
	movq	-88(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_create_outgoing@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L400
	leaq	__func__.30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1526, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_free@PLT
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_free@PLT
	movl	$0, %eax
	jmp	.L401
.L400:
	movl	$1, %eax
.L401:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	create_channel, .-create_channel
	.section	.rodata
.LC1:
	.string	"failed to configure channel"
.LC2:
	.string	"failed to start channel"
.LC3:
	.string	"failed to start assist thread"
	.text
	.type	ensure_channel_started, @function
ensure_channel_started:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L403
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	configure_channel
	testl	%eax, %eax
	jne	.L404
	leaq	.LC1(%rip), %rcx
	leaq	__func__.29(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1546, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L405
.L404:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_start@PLT
	testl	%eax, %eax
	jne	.L406
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_restore_err_state@PLT
	leaq	.LC2(%rip), %rcx
	leaq	__func__.29(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1553, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L405
.L406:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L403
	movq	-8(%rbp), %rax
	movq	296(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rsi
	leaq	240(%rsi), %rdi
	movq	%rax, %rsi
	call	ossl_quic_thread_assist_init_start@PLT
	testl	%eax, %eax
	jne	.L403
	leaq	.LC3(%rip), %rcx
	leaq	__func__.29(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1563, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L405
.L403:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %edx
	orl	$1, %edx
	movb	%dl, 312(%rax)
	movl	$1, %eax
.L405:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	ensure_channel_started, .-ensure_channel_started
	.type	quic_do_handshake, @function
quic_do_handshake:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_handshake_complete@PLT
	testl	%eax, %eax
	je	.L408
	movl	$1, %eax
	jmp	.L409
.L408:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L410
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$1585, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L409
.L410:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L411
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$1588, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L409
.L411:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L412
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L413
.L412:
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$128, %r8d
	movq	%rdx, %rcx
	movl	$1594, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L409
.L413:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L414
	movq	-8(%rbp), %rax
	movzbl	313(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L414
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	andl	$4, %eax
	shrq	$2, %rax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-8(%rbp), %rax
	andl	$1, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	313(%rax), %edx
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, 313(%rax)
	movq	-24(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-8(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	313(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 313(%rax)
	movq	-8(%rbp), %rax
	movzbl	313(%rax), %edx
	orl	$1, %edx
	movb	%dl, 313(%rax)
.L414:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L415
	movq	-8(%rbp), %rax
	movzbl	313(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L415
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	jne	.L415
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	csm_analyse_init_peer_addr
	testl	%eax, %eax
	jne	.L416
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	jmp	.L415
.L416:
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_peer_addr@PLT
.L415:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L417
	movq	-8(%rbp), %rax
	movzbl	313(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L417
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	jne	.L417
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$346, %r8d
	movq	%rdx, %rcx
	movl	$1668, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L409
.L417:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ensure_channel_started
	testl	%eax, %eax
	jne	.L418
	movl	$-1, %eax
	jmp	.L409
.L418:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_handshake_complete@PLT
	testl	%eax, %eax
	je	.L419
	movl	$1, %eax
	jmp	.L409
.L419:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	jne	.L420
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_handshake_complete@PLT
	testl	%eax, %eax
	je	.L421
	movl	$1, %eax
	jmp	.L409
.L421:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	je	.L422
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$1692, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L409
.L422:
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L420
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_can_support_blocking
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_blocking_mode
.L420:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	je	.L423
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	quic_handshake_wait(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L424
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$1719, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L409
.L424:
	cmpl	$0, -28(%rbp)
	jg	.L426
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1722, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L409
.L426:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_wants_non_io_retry
	testl	%eax, %eax
	je	.L427
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	movl	$-1, %eax
	jmp	.L409
.L427:
	movl	$1, %eax
	jmp	.L409
.L423:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_wants_non_io_retry
	testl	%eax, %eax
	je	.L428
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	movl	$-1, %eax
	jmp	.L409
.L428:
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	movl	$-1, %eax
.L409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	quic_do_handshake, .-quic_do_handshake
	.globl	ossl_quic_do_handshake
	.type	ossl_quic_do_handshake, @function
ossl_quic_do_handshake:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L430
	movl	$0, %eax
	jmp	.L432
.L430:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock_for_io
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_do_handshake
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L432:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	ossl_quic_do_handshake, .-ossl_quic_do_handshake
	.globl	ossl_quic_connect
	.type	ossl_quic_connect, @function
ossl_quic_connect:
.LFB793:
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
	call	ossl_quic_set_connect_state@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_do_handshake@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	ossl_quic_connect, .-ossl_quic_connect
	.globl	ossl_quic_accept
	.type	ossl_quic_accept, @function
ossl_quic_accept:
.LFB794:
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
	call	ossl_quic_set_accept_state@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_do_handshake@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	ossl_quic_accept, .-ossl_quic_accept
	.type	qc_try_create_default_xso_for_write, @function
qc_try_create_default_xso_for_write:
.LFB795:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L438
	movq	-16(%rbp), %rax
	movl	316(%rax), %eax
	testl	%eax, %eax
	jne	.L439
.L438:
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$355, %r8d
	movq	%rdx, %rcx
	movl	$1809, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L440
.L439:
	movq	-16(%rbp), %rax
	movl	316(%rax), %eax
	cmpl	$2, %eax
	jne	.L441
	orq	$1, -8(%rbp)
.L441:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	quic_conn_stream_new
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qc_set_default_xso
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L442
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1819, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L440
.L442:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	qc_touch_default_xso
	movl	$1, %eax
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	qc_try_create_default_xso_for_write, .-qc_try_create_default_xso_for_write
	.type	quic_wait_for_stream, @function
quic_wait_for_stream:
.LFB796:
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
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L444
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$1839, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L445
.L444:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L446
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	orq	$2, %rax
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L446:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L447
	movl	$1, %eax
	jmp	.L445
.L447:
	movl	$0, %eax
.L445:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	quic_wait_for_stream, .-quic_wait_for_stream
	.type	qc_wait_for_default_xso_for_read, @function
qc_wait_for_default_xso_for_read:
.LFB797:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L449
	movq	-32(%rbp), %rax
	movl	316(%rax), %eax
	testl	%eax, %eax
	jne	.L450
.L449:
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r9d
	movl	$355, %r8d
	movq	%rdx, %rcx
	movl	$1872, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L461
.L450:
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L452
	movq	-40(%rbp), %rax
	orq	$2, %rax
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -24(%rbp)
.L452:
	cmpq	$0, -24(%rbp)
	jne	.L453
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -24(%rbp)
.L453:
	cmpq	$0, -24(%rbp)
	jne	.L454
	cmpl	$0, -124(%rbp)
	je	.L455
	movl	$0, %eax
	jmp	.L461
.L455:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	jne	.L456
	movq	-120(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	jmp	.L461
.L456:
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	quic_wait_for_stream(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L457
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1913, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L461
.L457:
	cmpl	$0, -44(%rbp)
	js	.L458
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L459
.L458:
	movl	$0, %eax
	jmp	.L461
.L459:
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.L454:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_statm@PLT
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_remove_from_accept_queue@PLT
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_xso_from_stream
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qc_set_default_xso
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L460
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1934, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L461
.L460:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_touch_default_xso
	movl	$1, %eax
.L461:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	qc_wait_for_default_xso_for_read, .-qc_wait_for_default_xso_for_read
	.type	create_xso_from_stream, @function
create_xso_from_stream:
.LFB798:
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
	leaq	.LC0(%rip), %rax
	movl	$1945, %edx
	movq	%rax, %rsi
	movl	$136, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L463
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$524303, %r8d
	movq	%rdx, %rcx
	movl	$1946, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L464
.L463:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ossl_ssl_init@PLT
	testl	%eax, %eax
	jne	.L465
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$1951, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L464
.L465:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_up_ref@PLT
	testl	%eax, %eax
	jne	.L466
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$524308, %r8d
	movq	%rdx, %rcx
	movl	$1957, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L464
.L466:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	320(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	andl	$3725568391, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xso_update_options
	movq	-8(%rbp), %rax
	jmp	.L467
.L464:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1974, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L467:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	create_xso_from_stream, .-create_xso_from_stream
	.type	quic_new_stream_wait, @function
quic_new_stream_wait:
.LFB799:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L469
	movl	$-1, %eax
	jmp	.L470
.L469:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_is_new_local_stream_admissible@PLT
	testl	%eax, %eax
	je	.L471
	movl	$1, %eax
	jmp	.L470
.L471:
	movl	$0, %eax
.L470:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	quic_new_stream_wait, .-quic_new_stream_wait
	.type	quic_conn_stream_new, @function
quic_conn_stream_new:
.LFB800:
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
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	andl	$4, %eax
	shrq	$2, %rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L473
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
.L473:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L474
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2012, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L475
.L474:
	cmpl	$0, -36(%rbp)
	jne	.L476
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_is_new_local_stream_admissible@PLT
	testl	%eax, %eax
	jne	.L476
	cmpl	$0, -32(%rbp)
	jne	.L477
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	jne	.L478
.L477:
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$411, %r8d
	movq	%rdx, %rcx
	movl	$2025, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L475
.L478:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	leaq	quic_new_stream_wait(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L480
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2035, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L475
.L480:
	cmpl	$0, -40(%rbp)
	jg	.L476
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2038, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L475
.L476:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_new_stream_local@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L482
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2045, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L475
.L482:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_xso_from_stream
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L487
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qc_touch_default_xso
	cmpl	$0, -84(%rbp)
	je	.L484
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
.L484:
	movq	-8(%rbp), %rax
	jmp	.L485
.L487:
	nop
.L475:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2060, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_release@PLT
	cmpl	$0, -84(%rbp)
	je	.L486
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
.L486:
	movl	$0, %eax
.L485:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	quic_conn_stream_new, .-quic_conn_stream_new
	.globl	ossl_quic_conn_stream_new
	.type	ossl_quic_conn_stream_new, @function
ossl_quic_conn_stream_new:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L489
	movl	$0, %eax
	jmp	.L491
.L489:
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	quic_conn_stream_new
.L491:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	ossl_quic_conn_stream_new, .-ossl_quic_conn_stream_new
	.globl	ossl_quic_get_error
	.type	ossl_quic_get_error, @function
ossl_quic_get_error:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L493
	movl	$0, %eax
	jmp	.L498
.L493:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_net_error@PLT
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L495
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L496
.L495:
	movq	-32(%rbp), %rax
	movl	352(%rax), %eax
	movl	%eax, -4(%rbp)
.L496:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	cmpl	$0, -8(%rbp)
	je	.L497
	movl	$5, %eax
	jmp	.L498
.L497:
	movl	-4(%rbp), %eax
.L498:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	ossl_quic_get_error, .-ossl_quic_get_error
	.type	error_to_want, @function
error_to_want:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$12, -4(%rbp)
	je	.L500
	cmpl	$12, -4(%rbp)
	jg	.L501
	cmpl	$11, -4(%rbp)
	je	.L502
	cmpl	$11, -4(%rbp)
	jg	.L501
	cmpl	$4, -4(%rbp)
	je	.L503
	cmpl	$4, -4(%rbp)
	jg	.L501
	cmpl	$2, -4(%rbp)
	je	.L504
	cmpl	$3, -4(%rbp)
	je	.L505
.L501:
	movl	$1, %eax
	jmp	.L506
.L504:
	movl	$3, %eax
	jmp	.L506
.L505:
	movl	$2, %eax
	jmp	.L506
.L500:
	movl	$8, %eax
	jmp	.L506
.L502:
	movl	$7, %eax
	jmp	.L506
.L503:
	movl	$4, %eax
.L506:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	error_to_want, .-error_to_want
	.globl	ossl_quic_want
	.type	ossl_quic_want, @function
ossl_quic_want:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L508
	movl	$1, %eax
	jmp	.L512
.L508:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L510
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	jmp	.L511
.L510:
	movq	-32(%rbp), %rax
	movl	352(%rax), %eax
.L511:
	movl	%eax, %edi
	call	error_to_want
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L512:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	ossl_quic_want, .-ossl_quic_want
	.type	quic_post_write, @function
quic_post_write:
.LFB805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L514
	movq	-24(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
.L514:
	cmpl	$0, -32(%rbp)
	je	.L515
	movq	-40(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L515
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_fin@PLT
.L515:
	cmpl	$0, -44(%rbp)
	je	.L517
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
.L517:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	quic_post_write, .-quic_post_write
	.type	sstream_ensure_spare, @function
sstream_ensure_spare:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_size@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_avail@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L519
	cmpq	$6291456, -16(%rbp)
	jne	.L520
.L519:
	movl	$1, %eax
	jmp	.L521
.L520:
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$6291456, %rax
	jbe	.L522
	movq	$6291456, -8(%rbp)
	jmp	.L523
.L522:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L523:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_set_buffer_size@PLT
.L521:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	sstream_ensure_spare, .-sstream_ensure_spare
	.type	xso_sstream_append, @function
xso_sstream_append:
.LFB807:
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
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_cur_size@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_cwm@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L525
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L526
.L525:
	movq	$0, -8(%rbp)
.L526:
	movq	-56(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L527
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
.L527:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstream_ensure_spare
	testl	%eax, %eax
	jne	.L528
	movl	$0, %eax
	jmp	.L529
.L528:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
.L529:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	xso_sstream_append, .-xso_sstream_append
	.type	quic_write_again, @function
quic_write_again:
.LFB808:
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
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L531
	movl	$-2, %eax
	jmp	.L536
.L531:
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	quic_validate_for_write
	testl	%eax, %eax
	jne	.L533
	movl	$-2, %eax
	jmp	.L536
.L533:
	movq	-8(%rbp), %rax
	movl	$786691, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rcx
	movq	%rax, %rdi
	call	xso_sstream_append
	testl	%eax, %eax
	jne	.L534
	movl	$-2, %eax
	jmp	.L536
.L534:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	quic_post_write
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L535
	movl	$1, %eax
	jmp	.L536
.L535:
	movl	$0, %eax
.L536:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	quic_write_again, .-quic_write_again
	.type	quic_write_blocking, @function
quic_write_blocking:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -72(%rbp)
	leaq	-72(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xso_sstream_append
	testl	%eax, %eax
	jne	.L538
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2315, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L543
.L538:
	movq	-72(%rbp), %rax
	cmpq	%rax, -104(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %esi
	movq	-112(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	quic_post_write
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	cmpq	%rax, -104(%rbp)
	jne	.L540
	movl	$1, %eax
	jmp	.L543
.L540:
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$786691, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-64(%rbp), %rdx
	leaq	quic_write_again(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L541
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L542
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2345, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L543
.L542:
	movl	-32(%rbp), %ecx
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$2347, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L543
.L541:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L543:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	quic_write_blocking, .-quic_write_blocking
	.type	aon_write_begin, @function
aon_write_begin:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$16, %edx
	movb	%dl, 80(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	aon_write_begin, .-aon_write_begin
	.type	aon_write_finish, @function
aon_write_finish:
.LFB811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	aon_write_finish, .-aon_write_finish
	.type	quic_write_nonblocking_aon, @function
quic_write_nonblocking_aon:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L547
	cmpl	$0, -28(%rbp)
	jne	.L548
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jne	.L549
.L548:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -72(%rbp)
	je	.L550
.L549:
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$127, %r8d
	movq	%rdx, %rcx
	movl	$2407, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L559
.L550:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	jmp	.L552
.L547:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L552:
	leaq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xso_sstream_append
	testl	%eax, %eax
	jne	.L553
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2421, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L559
.L553:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_should_autotick
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %esi
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	quic_post_write
	movq	-40(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L554
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L555
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	aon_write_finish
	jmp	.L556
.L555:
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L556:
	movl	$1, %eax
	jmp	.L559
.L554:
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L557
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-56(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	jmp	.L559
.L557:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L558
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	aon_write_begin
.L558:
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
.L559:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	quic_write_nonblocking_aon, .-quic_write_nonblocking_aon
	.type	quic_write_nonblocking_epw, @function
quic_write_nonblocking_epw:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xso_sstream_append
	testl	%eax, %eax
	jne	.L561
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2483, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L562
.L561:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_should_autotick
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %esi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	quic_post_write
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L563
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	jmp	.L562
.L563:
	movl	$1, %eax
.L562:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	quic_write_nonblocking_epw, .-quic_write_nonblocking_epw
	.type	quic_validate_for_write, @function
quic_validate_for_write:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L565
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L566
.L565:
	movq	-32(%rbp), %rax
	movl	$786691, (%rax)
	movl	$0, %eax
	jmp	.L567
.L566:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	jg	.L568
	cmpl	$5, %eax
	jge	.L569
	cmpl	$4, %eax
	je	.L570
	cmpl	$4, %eax
	jg	.L568
	cmpl	$1, %eax
	je	.L571
	testl	%eax, %eax
	jle	.L568
	subl	$2, %eax
	cmpl	$1, %eax
	jbe	.L572
.L568:
	movq	-32(%rbp), %rax
	movl	$366, (%rax)
	movl	$0, %eax
	jmp	.L567
.L571:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_ensure_send_part_id@PLT
	testl	%eax, %eax
	jne	.L572
	movq	-32(%rbp), %rax
	movl	$786691, (%rax)
	movl	$0, %eax
	jmp	.L567
.L572:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	je	.L573
	movq	-32(%rbp), %rax
	movl	$365, (%rax)
	movl	$0, %eax
	jmp	.L567
.L573:
	movl	$1, %eax
	jmp	.L567
.L570:
	movq	-32(%rbp), %rax
	movl	$365, (%rax)
	movl	$0, %eax
	jmp	.L567
.L569:
	movq	-32(%rbp), %rax
	movl	$375, (%rax)
	movl	$0, %eax
.L567:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	quic_validate_for_write, .-quic_validate_for_write
	.globl	ossl_quic_write_flags
	.type	ossl_quic_write_flags, @function
ossl_quic_write_flags:
.LFB815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -72(%rbp)
	jne	.L575
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L576
	movl	$0, %eax
	jmp	.L590
.L576:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock_for_io
	jmp	.L578
.L575:
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L578
	movl	$0, %eax
	jmp	.L590
.L578:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L579
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L579
	movl	$1, %eax
	jmp	.L580
.L579:
	movl	$0, %eax
.L580:
	movl	%eax, -8(%rbp)
	movq	-80(%rbp), %rax
	andl	$4294967294, %eax
	testq	%rax, %rax
	je	.L581
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$412, %r8d
	movq	%rdx, %rcx
	movl	$2565, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -4(%rbp)
	jmp	.L582
.L581:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L583
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2570, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -4(%rbp)
	jmp	.L582
.L583:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_do_handshake
	testl	%eax, %eax
	jg	.L584
	movl	$0, -4(%rbp)
	jmp	.L582
.L584:
	cmpq	$0, -72(%rbp)
	je	.L585
	movq	-24(%rbp), %rax
	leaq	-36(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	quic_validate_for_write
	testl	%eax, %eax
	jne	.L585
	movl	-36(%rbp), %ecx
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$2585, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -4(%rbp)
	jmp	.L582
.L585:
	cmpq	$0, -72(%rbp)
	jne	.L586
	movq	-80(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L587
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_should_autotick
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_post_write
.L587:
	movl	$1, -4(%rbp)
	jmp	.L582
.L586:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xso_blocking_mode
	testl	%eax, %eax
	je	.L588
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	quic_write_blocking
	movl	%eax, -4(%rbp)
	jmp	.L582
.L588:
	cmpl	$0, -8(%rbp)
	je	.L589
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	quic_write_nonblocking_epw
	movl	%eax, -4(%rbp)
	jmp	.L582
.L589:
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	quic_write_nonblocking_aon
	movl	%eax, -4(%rbp)
.L582:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L590:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	ossl_quic_write_flags, .-ossl_quic_write_flags
	.globl	ossl_quic_write
	.type	ossl_quic_write, @function
ossl_quic_write:
.LFB816:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_write_flags@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	ossl_quic_write, .-ossl_quic_write
	.type	quic_validate_for_read, @function
quic_validate_for_read:
.LFB817:
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
	movl	$0, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L594
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L595
.L594:
	movq	-32(%rbp), %rax
	movl	$786691, (%rax)
	movl	$0, %eax
	jmp	.L596
.L595:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	je	.L597
	cmpl	$6, %eax
	jg	.L598
	cmpl	$5, %eax
	je	.L599
	cmpl	$5, %eax
	jg	.L598
	cmpl	$3, %eax
	jg	.L600
	testl	%eax, %eax
	jg	.L601
	jmp	.L598
.L600:
	cmpl	$4, %eax
	je	.L602
.L598:
	movq	-32(%rbp), %rax
	movl	$379, (%rax)
	movl	$0, %eax
	jmp	.L596
.L601:
	movl	$1, %eax
	jmp	.L596
.L602:
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L596
.L599:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_notify_app_read_reset_recv_part@PLT
.L597:
	movq	-32(%rbp), %rax
	movl	$375, (%rax)
	movl	$0, %eax
.L596:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	quic_validate_for_read, .-quic_validate_for_read
	.type	quic_read_actual, @function
quic_read_actual:
.LFB818:
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
	movl	%r9d, -108(%rbp)
	movl	$0, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	quic_validate_for_read
	testl	%eax, %eax
	jne	.L604
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L605
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	80(%rax), %edx
	orl	$4, %edx
	movb	%dl, 80(%rax)
	movq	-72(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	jmp	.L615
.L605:
	movl	-24(%rbp), %ecx
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$2682, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L615
.L604:
	cmpl	$0, -108(%rbp)
	je	.L607
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-20(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_peek@PLT
	testl	%eax, %eax
	jne	.L608
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2689, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L615
.L607:
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-20(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_read@PLT
	testl	%eax, %eax
	jne	.L608
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2694, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L615
.L608:
	cmpl	$0, -108(%rbp)
	jne	.L609
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L610
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_statm@PLT
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	160(%rdx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	testl	%eax, %eax
	jne	.L610
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2711, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L615
.L610:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L613
	cmpl	$0, -108(%rbp)
	jne	.L613
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_notify_totally_read@PLT
.L613:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L609
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
.L609:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L614
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L614
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	80(%rax), %edx
	orl	$4, %edx
	movb	%dl, 80(%rax)
	movq	-72(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	jmp	.L615
.L614:
	movl	$1, %eax
.L615:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	quic_read_actual, .-quic_read_actual
	.type	quic_read_again, @function
quic_read_again:
.LFB819:
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
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L617
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2740, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L618
.L617:
	movq	-8(%rbp), %rax
	movl	40(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	quic_read_actual
	testl	%eax, %eax
	jne	.L619
	movl	$-1, %eax
	jmp	.L618
.L619:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L620
	movl	$1, %eax
	jmp	.L618
.L620:
	movl	$0, %eax
.L618:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	quic_read_again, .-quic_read_again
	.type	quic_read, @function
quic_read:
.LFB820:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -116(%rbp)
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	leaq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L622
	movl	$0, %eax
	jmp	.L636
.L622:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock_for_io
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L624
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2771, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -4(%rbp)
	jmp	.L625
.L624:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_do_handshake
	testl	%eax, %eax
	jg	.L626
	movl	$0, -4(%rbp)
	jmp	.L625
.L626:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L627
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	qc_wait_for_default_xso_for_read
	testl	%eax, %eax
	jne	.L628
	movl	$0, -4(%rbp)
	jmp	.L625
.L628:
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -24(%rbp)
.L627:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	movl	-116(%rbp), %r8d
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	quic_read_actual
	testl	%eax, %eax
	jne	.L629
	movl	$0, -4(%rbp)
	jmp	.L625
.L629:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L630
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
	movl	$1, -4(%rbp)
	jmp	.L625
.L630:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xso_blocking_mode
	testl	%eax, %eax
	je	.L631
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	quic_read_again(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L632
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2823, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -4(%rbp)
	jmp	.L625
.L632:
	cmpl	$0, -8(%rbp)
	jns	.L633
	movl	$0, -4(%rbp)
	jmp	.L625
.L633:
	movl	$1, -4(%rbp)
	jmp	.L625
.L631:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_maybe_autotick
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	movl	-116(%rbp), %r8d
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	quic_read_actual
	testl	%eax, %eax
	jne	.L634
	movl	$0, -4(%rbp)
	jmp	.L625
.L634:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L635
	movl	$1, -4(%rbp)
	jmp	.L625
.L635:
	leaq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	quic_raise_normal_error
	movl	%eax, -4(%rbp)
.L625:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L636:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	quic_read, .-quic_read
	.globl	ossl_quic_read
	.type	ossl_quic_read, @function
ossl_quic_read:
.LFB821:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	quic_read
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	ossl_quic_read, .-ossl_quic_read
	.globl	ossl_quic_peek
	.type	ossl_quic_peek, @function
ossl_quic_peek:
.LFB822:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	quic_read
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	ossl_quic_peek, .-ossl_quic_peek
	.type	ossl_quic_pending_int, @function
ossl_quic_pending_int:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -8(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L642
	movl	$0, %eax
	jmp	.L653
.L642:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L654
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L646
	leaq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	qc_wait_for_default_xso_for_read
	testl	%eax, %eax
	je	.L647
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L646
.L647:
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$355, %r8d
	movq	%rdx, %rcx
	movl	$2889, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L645
.L646:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L648
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$2895, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L645
.L648:
	cmpl	$0, -44(%rbp)
	je	.L649
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_pending
	testl	%eax, %eax
	jne	.L650
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_has_pending@PLT
	testl	%eax, %eax
	jne	.L650
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	je	.L651
.L650:
	movl	$1, %eax
	jmp	.L652
.L651:
	movl	$0, %eax
.L652:
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L645
.L649:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_pending
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L645
.L654:
	nop
.L645:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-8(%rbp), %rax
.L653:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	ossl_quic_pending_int, .-ossl_quic_pending_int
	.globl	ossl_quic_pending
	.type	ossl_quic_pending, @function
ossl_quic_pending:
.LFB824:
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
	call	ossl_quic_pending_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	ossl_quic_pending, .-ossl_quic_pending
	.globl	ossl_quic_has_pending
	.type	ossl_quic_has_pending, @function
ossl_quic_has_pending:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_pending_int
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	ossl_quic_has_pending, .-ossl_quic_has_pending
	.globl	ossl_quic_conn_stream_conclude
	.type	ossl_quic_conn_stream_conclude, @function
ossl_quic_conn_stream_conclude:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L660
	movl	$0, %eax
	jmp	.L665
.L660:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L662
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$2942, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-12(%rbp), %eax
	jmp	.L665
.L662:
	movq	-40(%rbp), %rax
	leaq	-52(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	quic_validate_for_write
	testl	%eax, %eax
	jne	.L663
	movl	-52(%rbp), %ecx
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$2948, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-12(%rbp), %eax
	jmp	.L665
.L663:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	je	.L664
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
	jmp	.L665
.L664:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_fin@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qctx_should_autotick
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_post_write
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
.L665:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	ossl_quic_conn_stream_conclude, .-ossl_quic_conn_stream_conclude
	.globl	SSL_inject_net_dgram
	.type	SSL_inject_net_dgram, @function
SSL_inject_net_dgram:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L667
	movl	$0, %eax
	jmp	.L669
.L667:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get0_demux@PLT
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_demux_inject@PLT
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-12(%rbp), %eax
.L669:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	SSL_inject_net_dgram, .-SSL_inject_net_dgram
	.globl	ossl_quic_get0_connection
	.type	ossl_quic_get0_connection, @function
ossl_quic_get0_connection:
.LFB828:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L671
	movl	$0, %eax
	jmp	.L673
.L671:
	movq	-32(%rbp), %rax
.L673:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	ossl_quic_get0_connection, .-ossl_quic_get0_connection
	.globl	ossl_quic_get_stream_type
	.type	ossl_quic_get_stream_type, @function
ossl_quic_get_stream_type:
.LFB829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L675
	movl	$3, %eax
	jmp	.L682
.L675:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L677
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L678
	movq	-32(%rbp), %rax
	movl	316(%rax), %eax
	testl	%eax, %eax
	jne	.L679
.L678:
	movl	$0, %eax
	jmp	.L682
.L679:
	movl	$3, %eax
	jmp	.L682
.L677:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L680
	movl	$3, %eax
	jmp	.L682
.L680:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L681
	movl	$1, %eax
	jmp	.L682
.L681:
	movl	$2, %eax
.L682:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	ossl_quic_get_stream_type, .-ossl_quic_get_stream_type
	.globl	ossl_quic_get_stream_id
	.type	ossl_quic_get_stream_id, @function
ossl_quic_get_stream_id:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L684
	movq	$-1, %rax
	jmp	.L686
.L684:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-8(%rbp), %rax
.L686:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	ossl_quic_get_stream_id, .-ossl_quic_get_stream_id
	.globl	ossl_quic_is_stream_local
	.type	ossl_quic_is_stream_local, @function
ossl_quic_is_stream_local:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L688
	movl	$-1, %eax
	jmp	.L690
.L688:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_local_init
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L690:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	ossl_quic_is_stream_local, .-ossl_quic_is_stream_local
	.section	.rodata
	.align 8
.LC4:
	.string	"too late to change default stream mode"
.LC5:
	.string	"bad default stream type"
	.text
	.globl	ossl_quic_set_default_stream_mode
	.type	ossl_quic_set_default_stream_mode, @function
ossl_quic_set_default_stream_mode:
.LFB832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L692
	movl	$0, %eax
	jmp	.L697
.L692:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L694
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	leaq	.LC4(%rip), %rcx
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$786689, %r8d
	movq	%rdx, %rcx
	movl	$3093, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L697
.L694:
	cmpl	$2, -44(%rbp)
	ja	.L695
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 316(%rax)
	nop
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
	jmp	.L697
.L695:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	leaq	.LC5(%rip), %rcx
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3105, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
.L697:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	ossl_quic_set_default_stream_mode, .-ossl_quic_set_default_stream_mode
	.globl	ossl_quic_detach_stream
	.type	ossl_quic_detach_stream, @function
ossl_quic_detach_stream:
.LFB833:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L699
	movl	$0, %eax
	jmp	.L703
.L699:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	qc_set_default_xso_keep_ref
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L701
	movq	-40(%rbp), %rax
	jmp	.L703
.L701:
	movl	$0, %eax
.L703:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	ossl_quic_detach_stream, .-ossl_quic_detach_stream
	.section	.rodata
	.align 8
.LC6:
	.string	"stream to attach must be a valid QUIC stream"
	.align 8
.LC7:
	.string	"connection already has a default stream"
.LC8:
	.string	"ref"
	.align 8
.LC9:
	.string	"stream being attached must have only 1 reference"
	.text
	.globl	ossl_quic_attach_stream
	.type	ossl_quic_attach_stream, @function
ossl_quic_attach_stream:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L705
	movl	$0, %eax
	jmp	.L712
.L705:
	cmpq	$0, -64(%rbp)
	je	.L707
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L708
.L707:
	leaq	.LC6(%rip), %rcx
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$786690, %r8d
	movq	%rdx, %rcx
	movl	$3152, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L712
.L708:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L709
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	leaq	.LC7(%rip), %rcx
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$786689, %r8d
	movq	%rdx, %rcx
	movl	$3161, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L712
.L709:
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_GET_REF
	testl	%eax, %eax
	jne	.L710
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	leaq	.LC8(%rip), %rcx
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$3171, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L712
.L710:
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	je	.L711
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	leaq	.LC9(%rip), %rcx
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3177, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L712
.L711:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qc_set_default_xso
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
.L712:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	ossl_quic_attach_stream, .-ossl_quic_attach_stream
	.type	qc_get_effective_incoming_stream_policy, @function
qc_get_effective_incoming_stream_policy:
.LFB835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	336(%rax), %eax
	testl	%eax, %eax
	jne	.L714
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L715
	movq	-8(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L716
.L715:
	movq	-8(%rbp), %rax
	movl	316(%rax), %eax
	testl	%eax, %eax
	jne	.L717
.L716:
	movl	$1, %eax
	jmp	.L718
.L717:
	movl	$2, %eax
	jmp	.L718
.L714:
	movq	-8(%rbp), %rax
	movl	336(%rax), %eax
.L718:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE835:
	.size	qc_get_effective_incoming_stream_policy, .-qc_get_effective_incoming_stream_policy
	.type	qc_update_reject_policy, @function
qc_update_reject_policy:
.LFB836:
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
	call	qc_get_effective_incoming_stream_policy
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	344(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_incoming_stream_auto_reject@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	qc_update_reject_policy, .-qc_update_reject_policy
	.globl	ossl_quic_set_incoming_stream_policy
	.type	ossl_quic_set_incoming_stream_policy, @function
ossl_quic_set_incoming_stream_policy:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$1, -4(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L721
	movl	$0, %eax
	jmp	.L725
.L721:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movl	-44(%rbp), %eax
	cmpl	$2, %eax
	ja	.L723
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 336(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 344(%rax)
	jmp	.L724
.L723:
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3242, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, -4(%rbp)
	nop
.L724:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_update_reject_policy
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L725:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	ossl_quic_set_incoming_stream_policy, .-ossl_quic_set_incoming_stream_policy
	.type	qc_getset_idle_timeout, @function
qc_getset_idle_timeout:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_lock
	cmpl	$1, -44(%rbp)
	je	.L727
	cmpl	$0, -44(%rbp)
	je	.L728
	movl	-44(%rbp), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L728
	jmp	.L741
.L727:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_max_idle_timeout_request@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L742
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movabsq	$4611686018427387903, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L731
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3272, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L732
.L731:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_have_generated_transport_params@PLT
	testl	%eax, %eax
	je	.L733
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$413, %r8d
	movq	%rdx, %rcx
	movl	$3278, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L732
.L733:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_max_idle_timeout_request@PLT
	jmp	.L742
.L741:
	cmpq	$0, -64(%rbp)
	je	.L735
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$416, %r8d
	movq	%rdx, %rcx
	movl	$3290, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L732
.L735:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_handshake_complete@PLT
	testl	%eax, %eax
	jne	.L736
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$417, %r8d
	movq	%rdx, %rcx
	movl	$3296, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L732
.L736:
	cmpl	$3, -44(%rbp)
	jne	.L737
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_max_idle_timeout_actual@PLT
	movq	%rax, -16(%rbp)
	jmp	.L734
.L737:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_max_idle_timeout_peer_request@PLT
	movq	%rax, -16(%rbp)
	jmp	.L734
.L728:
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$415, %r8d
	movq	%rdx, %rcx
	movl	$3307, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L732
.L742:
	nop
.L734:
	movl	$1, -4(%rbp)
.L732:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_unlock
	cmpl	$0, -4(%rbp)
	je	.L739
	cmpq	$0, -56(%rbp)
	je	.L739
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L739:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	qc_getset_idle_timeout, .-qc_getset_idle_timeout
	.type	qc_get_stream_avail, @function
qc_get_stream_avail:
.LFB839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L744
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$415, %r8d
	movq	%rdx, %rcx
	movl	$3329, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L745
.L744:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_lock
	cmpl	$0, -36(%rbp)
	je	.L746
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_get_remote_stream_count_avail@PLT
	jmp	.L747
.L746:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_get_local_stream_count_avail@PLT
.L747:
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L745:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	qc_get_stream_avail, .-qc_get_stream_avail
	.type	qctx_should_autotick, @function
qctx_should_autotick:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L749
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	80(%rax), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L749
	cmpl	$2, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	jmp	.L750
.L749:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	313(%rax), %eax
	shrb	$3, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
.L750:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	qctx_should_autotick, .-qctx_should_autotick
	.type	qctx_maybe_autotick, @function
qctx_maybe_autotick:
.LFB841:
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
	call	qctx_should_autotick
	testl	%eax, %eax
	je	.L754
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
	jmp	.L751
.L754:
	nop
.L751:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	qctx_maybe_autotick, .-qctx_maybe_autotick
	.type	qc_getset_event_handling, @function
qc_getset_event_handling:
.LFB842:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_lock
	cmpl	$0, -28(%rbp)
	je	.L756
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$415, %r8d
	movq	%rdx, %rcx
	movl	$3380, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L757
.L756:
	cmpq	$0, -48(%rbp)
	je	.L758
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$2, %rax
	jbe	.L767
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3392, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L757
.L767:
	nop
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L761
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	andl	$3, %eax
	andl	$3, %eax
	sall	$5, %eax
	movl	%eax, %ecx
	movzbl	80(%rdx), %eax
	andl	$-97, %eax
	orl	%ecx, %eax
	movb	%al, 80(%rdx)
	jmp	.L762
.L761:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	andl	$3, %eax
	andl	$3, %eax
	leal	0(,%rax,8), %ecx
	movzbl	313(%rdx), %eax
	andl	$-25, %eax
	orl	%ecx, %eax
	movb	%al, 313(%rdx)
	jmp	.L762
.L758:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L763
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	80(%rax), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	jmp	.L762
.L763:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	313(%rax), %eax
	shrb	$3, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
.L762:
	movl	$1, -4(%rbp)
.L757:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_unlock
	cmpl	$0, -4(%rbp)
	je	.L764
	cmpq	$0, -40(%rbp)
	je	.L764
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L764:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	qc_getset_event_handling, .-qc_getset_event_handling
	.type	qc_get_stream_write_buf_stat, @function
qc_get_stream_write_buf_stat:
.LFB843:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_lock
	cmpl	$0, -28(%rbp)
	je	.L769
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$415, %r8d
	movq	%rdx, %rcx
	movl	$3428, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L770
.L769:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L771
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$355, %r8d
	movq	%rdx, %rcx
	movl	$3434, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L770
.L771:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send
	testl	%eax, %eax
	jne	.L772
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$366, %r8d
	movq	%rdx, %rcx
	movl	$3439, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L770
.L772:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	je	.L773
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
.L773:
	movl	$1, -4(%rbp)
.L770:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	qc_get_stream_write_buf_stat, .-qc_get_stream_write_buf_stat
	.type	expect_quic_for_value, @function
expect_quic_for_value:
.LFB844:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	subl	$6, %eax
	cmpl	$3, %eax
	ja	.L776
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	jmp	.L777
.L776:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
.L777:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	expect_quic_for_value, .-expect_quic_for_value
	.globl	ossl_quic_get_value_uint
	.type	ossl_quic_get_value_uint, @function
ossl_quic_get_value_uint:
.LFB845:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	-48(%rbp), %edx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	expect_quic_for_value
	testl	%eax, %eax
	jne	.L779
	movl	$0, %eax
	jmp	.L792
.L779:
	cmpq	$0, -56(%rbp)
	jne	.L781
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3477, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L792
.L781:
	cmpl	$9, -48(%rbp)
	je	.L782
	cmpl	$9, -48(%rbp)
	ja	.L783
	cmpl	$8, -48(%rbp)
	je	.L784
	cmpl	$8, -48(%rbp)
	ja	.L783
	cmpl	$7, -48(%rbp)
	je	.L785
	cmpl	$7, -48(%rbp)
	ja	.L783
	cmpl	$6, -48(%rbp)
	je	.L786
	cmpl	$6, -48(%rbp)
	ja	.L783
	cmpl	$5, -48(%rbp)
	je	.L787
	cmpl	$5, -48(%rbp)
	ja	.L783
	cmpl	$4, -48(%rbp)
	je	.L788
	cmpl	$4, -48(%rbp)
	ja	.L783
	cmpl	$3, -48(%rbp)
	je	.L789
	cmpl	$3, -48(%rbp)
	ja	.L783
	cmpl	$1, -48(%rbp)
	je	.L790
	cmpl	$2, -48(%rbp)
	je	.L791
	jmp	.L783
.L787:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	qc_getset_idle_timeout
	jmp	.L792
.L790:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qc_get_stream_avail
	jmp	.L792
.L791:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qc_get_stream_avail
	jmp	.L792
.L789:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	qc_get_stream_avail
	jmp	.L792
.L788:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	qc_get_stream_avail
	jmp	.L792
.L786:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	qc_getset_event_handling
	jmp	.L792
.L785:
	movq	ossl_quic_sstream_get_buffer_size@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_get_stream_write_buf_stat
	jmp	.L792
.L784:
	movq	ossl_quic_sstream_get_buffer_used@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_get_stream_write_buf_stat
	jmp	.L792
.L782:
	movq	ossl_quic_sstream_get_buffer_avail@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qc_get_stream_write_buf_stat
	jmp	.L792
.L783:
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$414, %r8d
	movq	%rdx, %rcx
	movl	$3507, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
.L792:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	ossl_quic_get_value_uint, .-ossl_quic_get_value_uint
	.globl	ossl_quic_set_value_uint
	.type	ossl_quic_set_value_uint, @function
ossl_quic_set_value_uint:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	-48(%rbp), %edx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	expect_quic_for_value
	testl	%eax, %eax
	jne	.L794
	movl	$0, %eax
	jmp	.L799
.L794:
	cmpl	$5, -48(%rbp)
	je	.L796
	cmpl	$6, -48(%rbp)
	je	.L797
	jmp	.L800
.L796:
	leaq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qc_getset_idle_timeout
	jmp	.L799
.L797:
	leaq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qc_getset_event_handling
	jmp	.L799
.L800:
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$414, %r8d
	movq	%rdx, %rcx
	movl	$3531, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
.L799:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	ossl_quic_set_value_uint, .-ossl_quic_set_value_uint
	.type	wait_for_incoming_stream, @function
wait_for_incoming_stream:
.LFB847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	jne	.L802
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %r9d
	movl	$207, %r8d
	movq	%rdx, %rcx
	movl	$3556, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$-1, %eax
	jmp	.L803
.L802:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_peek_accept_queue@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L804
	movl	$1, %eax
	jmp	.L803
.L804:
	movl	$0, %eax
.L803:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	wait_for_incoming_stream, .-wait_for_incoming_stream
	.globl	ossl_quic_accept_stream
	.type	ossl_quic_accept_stream, @function
ossl_quic_accept_stream:
.LFB848:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	$0, -8(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L806
	movl	$0, %eax
	jmp	.L817
.L806:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	qc_get_effective_incoming_stream_policy
	cmpl	$2, %eax
	jne	.L808
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	$786689, %r8d
	movq	%rdx, %rcx
	movl	$3585, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L809
.L808:
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_peek_accept_queue@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L810
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	qc_blocking_mode
	testl	%eax, %eax
	je	.L818
	movq	-128(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L818
	leaq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-64(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	wait_for_incoming_stream(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	block_until_pred
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L812
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$3602, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L809
.L812:
	cmpl	$0, -28(%rbp)
	js	.L819
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L819
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
.L810:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_xso_from_stream
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L820
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_statm@PLT
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-96(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_remove_from_accept_queue@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	qc_touch_default_xso
	jmp	.L809
.L818:
	nop
	jmp	.L809
.L819:
	nop
	jmp	.L809
.L820:
	nop
.L809:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-8(%rbp), %rax
.L817:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.size	ossl_quic_accept_stream, .-ossl_quic_accept_stream
	.globl	ossl_quic_get_accept_stream_queue_len
	.type	ossl_quic_get_accept_stream_queue_len, @function
ossl_quic_get_accept_stream_queue_len:
.LFB849:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L822
	movl	$0, %eax
	jmp	.L824
.L822:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_total_accept_queue_len@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-8(%rbp), %rax
.L824:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.size	ossl_quic_get_accept_stream_queue_len, .-ossl_quic_get_accept_stream_queue_len
	.globl	ossl_quic_stream_reset
	.type	ossl_quic_stream_reset, @function
ossl_quic_stream_reset:
.LFB850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L826
	movl	$0, %eax
	jmp	.L832
.L826:
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L828
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L829
.L828:
	movq	$0, -8(%rbp)
.L829:
	movq	-56(%rbp), %rax
	leaq	-68(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	quic_validate_for_write
	testl	%eax, %eax
	jne	.L830
	movl	-68(%rbp), %ecx
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$3674, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	%eax, -12(%rbp)
	jmp	.L831
.L830:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_reset_stream_send_part@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L833
	movq	-56(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$8, %edx
	movb	%dl, 80(%rax)
	jmp	.L831
.L833:
	nop
.L831:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-12(%rbp), %eax
.L832:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	ossl_quic_stream_reset, .-ossl_quic_stream_reset
	.type	quic_classify_stream, @function
quic_classify_stream:
.LFB851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	312(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L835
	movq	-56(%rbp), %rax
	movq	$-1, (%rax)
	jmp	.L836
.L835:
	leaq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.L836:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	jne	.L837
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L837
	movq	-48(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L838
.L837:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	je	.L839
	movq	-48(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L852
.L839:
	cmpl	$0, -36(%rbp)
	jne	.L840
	movq	-32(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$4, %al
	jne	.L840
	movq	-48(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L838
.L840:
	cmpl	$0, -36(%rbp)
	jne	.L841
	movq	-32(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L842
.L841:
	cmpl	$0, -36(%rbp)
	je	.L843
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_send_is_reset
	testl	%eax, %eax
	je	.L843
.L842:
	movq	-48(%rbp), %rax
	movl	$4, (%rax)
	cmpl	$0, -36(%rbp)
	jne	.L844
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	jmp	.L845
.L844:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
.L845:
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L838
.L843:
	cmpl	$0, -36(%rbp)
	jne	.L846
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_is_reset
	testl	%eax, %eax
	jne	.L847
.L846:
	cmpl	$0, -36(%rbp)
	je	.L848
	movq	-32(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L848
.L847:
	movq	-48(%rbp), %rax
	movl	$5, (%rax)
	cmpl	$0, -36(%rbp)
	jne	.L849
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	jmp	.L850
.L849:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
.L850:
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L838
.L848:
	cmpl	$0, -36(%rbp)
	je	.L851
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	je	.L851
	movq	-48(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L838
.L851:
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L852
.L838:
.L852:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	quic_classify_stream, .-quic_classify_stream
	.type	quic_get_stream_state, @function
quic_get_stream_state:
.LFB852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L854
	movl	$0, %eax
	jmp	.L856
.L854:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-32(%rbp), %rax
	leaq	-36(%rbp), %rcx
	movl	-60(%rbp), %edx
	movl	$0, %r8d
	movq	%rax, %rdi
	call	quic_classify_stream
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-36(%rbp), %eax
.L856:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	quic_get_stream_state, .-quic_get_stream_state
	.globl	ossl_quic_get_stream_read_state
	.type	ossl_quic_get_stream_read_state, @function
ossl_quic_get_stream_read_state:
.LFB853:
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
	call	quic_get_stream_state
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	ossl_quic_get_stream_read_state, .-ossl_quic_get_stream_read_state
	.globl	ossl_quic_get_stream_write_state
	.type	ossl_quic_get_stream_write_state, @function
ossl_quic_get_stream_write_state:
.LFB854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_get_stream_state
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	ossl_quic_get_stream_write_state, .-ossl_quic_get_stream_write_state
	.type	quic_get_stream_error_code, @function
quic_get_stream_error_code:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L862
	movl	$-1, %eax
	jmp	.L867
.L862:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	quic_classify_stream
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-36(%rbp), %eax
	cmpl	$3, %eax
	je	.L864
	cmpl	$3, %eax
	jl	.L865
	subl	$4, %eax
	cmpl	$1, %eax
	ja	.L865
	jmp	.L868
.L864:
	movl	$0, %eax
	jmp	.L867
.L868:
	movl	$1, %eax
	jmp	.L867
.L865:
	movl	$-1, %eax
.L867:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	quic_get_stream_error_code, .-quic_get_stream_error_code
	.globl	ossl_quic_get_stream_read_error_code
	.type	ossl_quic_get_stream_read_error_code, @function
ossl_quic_get_stream_read_error_code:
.LFB856:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	quic_get_stream_error_code
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	ossl_quic_get_stream_read_error_code, .-ossl_quic_get_stream_read_error_code
	.globl	ossl_quic_get_stream_write_error_code
	.type	ossl_quic_get_stream_write_error_code, @function
ossl_quic_get_stream_write_error_code:
.LFB857:
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
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_get_stream_error_code
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	ossl_quic_get_stream_write_error_code, .-ossl_quic_get_stream_write_error_code
	.globl	ossl_quic_set_write_buffer_size
	.type	ossl_quic_set_write_buffer_size, @function
ossl_quic_set_write_buffer_size:
.LFB858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	expect_quic_with_stream_lock
	testl	%eax, %eax
	jne	.L874
	movl	$0, %eax
	jmp	.L880
.L874:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send
	testl	%eax, %eax
	jne	.L876
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$786689, %r8d
	movq	%rdx, %rcx
	movl	$3834, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L877
.L876:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	jne	.L878
	movl	$1, -4(%rbp)
	jmp	.L877
.L878:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_set_buffer_size@PLT
	testl	%eax, %eax
	jne	.L879
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$786691, %r8d
	movq	%rdx, %rcx
	movl	$3848, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	jmp	.L877
.L879:
	movl	$1, -4(%rbp)
.L877:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	-4(%rbp), %eax
.L880:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	ossl_quic_set_write_buffer_size, .-ossl_quic_set_write_buffer_size
	.globl	ossl_quic_get_conn_close_info
	.type	ossl_quic_get_conn_close_info, @function
ossl_quic_get_conn_close_info:
.LFB859:
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
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L882
	movl	$-1, %eax
	jmp	.L887
.L882:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_terminate_cause@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L884
	movl	$0, %eax
	jmp	.L887
.L884:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L885
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 32(%rax)
.L885:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L886
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 32(%rax)
.L886:
	movl	$1, %eax
.L887:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	ossl_quic_get_conn_close_info, .-ossl_quic_get_conn_close_info
	.globl	ossl_quic_key_update
	.type	ossl_quic_key_update, @function
ossl_quic_key_update:
.LFB860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L889
	movl	$0, %eax
	jmp	.L894
.L889:
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L896
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$524550, %r8d
	movq	%rdx, %rcx
	movl	$3910, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movl	$0, %eax
	jmp	.L894
.L896:
	nop
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_trigger_txku@PLT
	testl	%eax, %eax
	jne	.L893
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$132, %r8d
	movq	%rdx, %rcx
	movl	$3918, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	quic_raise_non_normal_error
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$0, %eax
	jmp	.L894
.L893:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movl	$1, %eax
.L894:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	ossl_quic_key_update, .-ossl_quic_key_update
	.globl	ossl_quic_get_key_update_type
	.type	ossl_quic_get_key_update_type, @function
ossl_quic_get_key_update_type:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	ossl_quic_get_key_update_type, .-ossl_quic_get_key_update_type
	.globl	ossl_quic_ctx_ctrl
	.type	ossl_quic_ctx_ctrl, @function
ossl_quic_ctx_ctrl:
.LFB862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	ossl_quic_ctx_ctrl, .-ossl_quic_ctx_ctrl
	.globl	ossl_quic_callback_ctrl
	.type	ossl_quic_callback_ctrl, @function
ossl_quic_callback_ctrl:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L902
	movl	$0, %eax
	jmp	.L905
.L902:
	cmpl	$15, -44(%rbp)
	jne	.L904
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_msg_callback@PLT
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl3_callback_ctrl@PLT
	jmp	.L905
.L904:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl3_callback_ctrl@PLT
.L905:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	ossl_quic_callback_ctrl, .-ossl_quic_callback_ctrl
	.globl	ossl_quic_ctx_callback_ctrl
	.type	ossl_quic_ctx_callback_ctrl, @function
ossl_quic_ctx_callback_ctrl:
.LFB864:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_callback_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	ossl_quic_ctx_callback_ctrl, .-ossl_quic_ctx_callback_ctrl
	.globl	ossl_quic_renegotiate_check
	.type	ossl_quic_renegotiate_check, @function
ossl_quic_renegotiate_check:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	ossl_quic_renegotiate_check, .-ossl_quic_renegotiate_check
	.globl	ossl_quic_get_cipher_by_char
	.type	ossl_quic_get_cipher_by_char, @function
ossl_quic_get_cipher_by_char:
.LFB866:
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
	call	ssl3_get_cipher_by_char@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	jne	.L911
	movl	$0, %eax
	jmp	.L912
.L911:
	movq	-8(%rbp), %rax
.L912:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	ossl_quic_get_cipher_by_char, .-ossl_quic_get_cipher_by_char
	.globl	ossl_quic_num_ciphers
	.type	ossl_quic_num_ciphers, @function
ossl_quic_num_ciphers:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	ossl_quic_num_ciphers, .-ossl_quic_num_ciphers
	.globl	ossl_quic_get_cipher
	.type	ossl_quic_get_cipher, @function
ossl_quic_get_cipher:
.LFB868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	ossl_quic_get_cipher, .-ossl_quic_get_cipher
	.globl	ossl_quic_get_shutdown
	.type	ossl_quic_get_shutdown, @function
ossl_quic_get_shutdown:
.LFB869:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L918
	movl	$0, %eax
	jmp	.L921
.L918:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	je	.L920
	orl	$1, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_closing@PLT
	testl	%eax, %eax
	jne	.L920
	orl	$2, -4(%rbp)
.L920:
	movl	-4(%rbp), %eax
.L921:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	ossl_quic_get_shutdown, .-ossl_quic_get_shutdown
	.type	test_poll_event_r, @function
test_poll_event_r:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv_buffer
	testl	%eax, %eax
	je	.L923
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	120(%rax), %rax
	leaq	-4(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_available@PLT
	testl	%eax, %eax
	je	.L923
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L924
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L923
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L923
.L924:
	movl	$1, %eax
	jmp	.L926
.L923:
	movl	$0, %eax
.L926:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	test_poll_event_r, .-test_poll_event_r
	.type	test_poll_event_er, @function
test_poll_event_er:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv
	testl	%eax, %eax
	je	.L928
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_is_reset
	testl	%eax, %eax
	je	.L928
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L928
	movl	$1, %eax
	jmp	.L930
.L928:
	movl	$0, %eax
.L930:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	test_poll_event_er, .-test_poll_event_er
	.type	test_poll_event_w, @function
test_poll_event_w:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	312(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L932
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	je	.L932
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_avail@PLT
	testq	%rax, %rax
	je	.L932
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	jne	.L932
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	je	.L932
	movl	$1, %eax
	jmp	.L934
.L932:
	movl	$0, %eax
.L934:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	test_poll_event_w, .-test_poll_event_w
	.type	test_poll_event_ew, @function
test_poll_event_ew:
.LFB873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send
	testl	%eax, %eax
	je	.L936
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	259(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L936
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L936
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	312(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L936
	movl	$1, %eax
	jmp	.L938
.L936:
	movl	$0, %eax
.L938:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	test_poll_event_ew, .-test_poll_event_ew
	.type	test_poll_event_ec, @function
test_poll_event_ec:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	test_poll_event_ec, .-test_poll_event_ec
	.type	test_poll_event_ecd, @function
test_poll_event_ecd:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	test_poll_event_ecd, .-test_poll_event_ecd
	.type	test_poll_event_is, @function
test_poll_event_is:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_accept_queue_len@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	test_poll_event_is, .-test_poll_event_is
	.type	test_poll_event_os, @function
test_poll_event_os:
.LFB877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	quic_mutation_allowed
	testl	%eax, %eax
	je	.L946
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_get_local_stream_count_avail@PLT
	testq	%rax, %rax
	je	.L946
	movl	$1, %eax
	jmp	.L948
.L946:
	movl	$0, %eax
.L948:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	test_poll_event_os, .-test_poll_event_os
	.globl	ossl_quic_conn_poll_events
	.type	ossl_quic_conn_poll_events, @function
ossl_quic_conn_poll_events:
.LFB878:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic
	testl	%eax, %eax
	jne	.L950
	movl	$0, %eax
	jmp	.L965
.L950:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_lock
	movq	-32(%rbp), %rax
	movzbl	312(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L952
	movq	-48(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L966
	orq	$128, -8(%rbp)
	jmp	.L966
.L952:
	cmpl	$0, -52(%rbp)
	je	.L955
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
.L955:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L956
	movq	-48(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L957
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_poll_event_r
	testl	%eax, %eax
	je	.L957
	orq	$64, -8(%rbp)
.L957:
	movq	-48(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L958
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_poll_event_er
	testl	%eax, %eax
	je	.L958
	orq	$16, -8(%rbp)
.L958:
	movq	-48(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L959
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_poll_event_w
	testl	%eax, %eax
	je	.L959
	orq	$128, -8(%rbp)
.L959:
	movq	-48(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L956
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_poll_event_ew
	testl	%eax, %eax
	je	.L956
	orq	$32, -8(%rbp)
.L956:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L967
	movq	-48(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L960
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_poll_event_ec
	testl	%eax, %eax
	je	.L960
	orq	$4, -8(%rbp)
.L960:
	movq	-48(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L961
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_poll_event_ecd
	testl	%eax, %eax
	je	.L961
	orq	$8, -8(%rbp)
.L961:
	movq	-48(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L962
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_poll_event_is
	testl	%eax, %eax
	je	.L962
	orq	$512, -8(%rbp)
.L962:
	movq	-48(%rbp), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	je	.L963
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_poll_event_is
	testl	%eax, %eax
	je	.L963
	orq	$1024, -8(%rbp)
.L963:
	movq	-48(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L964
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_poll_event_os
	testl	%eax, %eax
	je	.L964
	orq	$2048, -8(%rbp)
.L964:
	movq	-48(%rbp), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L967
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_poll_event_os
	testl	%eax, %eax
	je	.L967
	orq	$4096, -8(%rbp)
	jmp	.L954
.L966:
	nop
	jmp	.L954
.L967:
	nop
.L954:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quic_unlock
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L965:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	ossl_quic_conn_poll_events, .-ossl_quic_conn_poll_events
	.globl	ossl_quic_conn_get_channel
	.type	ossl_quic_conn_get_channel, @function
ossl_quic_conn_get_channel:
.LFB879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	expect_quic_conn_only
	testl	%eax, %eax
	jne	.L969
	movl	$0, %eax
	jmp	.L971
.L969:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
.L971:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	ossl_quic_conn_get_channel, .-ossl_quic_conn_get_channel
	.globl	ossl_quic_set_diag_title
	.type	ossl_quic_set_diag_title, @function
ossl_quic_set_diag_title:
.LFB880:
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
	movq	1696(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$4200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 1696(%rax)
	cmpq	$0, -16(%rbp)
	jne	.L973
	movl	$1, %eax
	jmp	.L974
.L973:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 1696(%rdx)
	movq	-8(%rbp), %rax
	movq	1696(%rax), %rax
	testq	%rax, %rax
	jne	.L975
	movl	$0, %eax
	jmp	.L974
.L975:
	movl	$1, %eax
.L974:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	ossl_quic_set_diag_title, .-ossl_quic_set_diag_title
	.section	.rodata
	.align 8
	.type	__func__.41, @object
	.size	__func__.41, 12
__func__.41:
	.string	"expect_quic"
	.align 16
	.type	__func__.40, @object
	.size	__func__.40, 29
__func__.40:
	.string	"expect_quic_with_stream_lock"
	.align 16
	.type	__func__.39, @object
	.size	__func__.39, 22
__func__.39:
	.string	"expect_quic_conn_only"
	.align 8
	.type	__func__.38, @object
	.size	__func__.38, 14
__func__.38:
	.string	"ossl_quic_new"
	.align 16
	.type	__func__.37, @object
	.size	__func__.37, 16
__func__.37:
	.string	"ossl_quic_reset"
	.align 16
	.type	__func__.36, @object
	.size	__func__.36, 16
__func__.36:
	.string	"ossl_quic_clear"
	.align 32
	.type	__func__.35, @object
	.size	__func__.35, 33
__func__.35:
	.string	"ossl_quic_conn_set_blocking_mode"
	.align 32
	.type	__func__.34, @object
	.size	__func__.34, 37
__func__.34:
	.string	"ossl_quic_conn_set_initial_peer_addr"
	.align 16
	.type	__func__.33, @object
	.size	__func__.33, 31
__func__.33:
	.string	"ossl_quic_get_rpoll_descriptor"
	.align 16
	.type	__func__.32, @object
	.size	__func__.32, 31
__func__.32:
	.string	"ossl_quic_get_wpoll_descriptor"
	.align 16
	.type	__func__.31, @object
	.size	__func__.31, 24
__func__.31:
	.string	"ossl_quic_conn_shutdown"
	.align 8
	.type	__func__.30, @object
	.size	__func__.30, 15
__func__.30:
	.string	"create_channel"
	.align 16
	.type	__func__.29, @object
	.size	__func__.29, 23
__func__.29:
	.string	"ensure_channel_started"
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 18
__func__.28:
	.string	"quic_do_handshake"
	.align 32
	.type	__func__.27, @object
	.size	__func__.27, 36
__func__.27:
	.string	"qc_try_create_default_xso_for_write"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 21
__func__.26:
	.string	"quic_wait_for_stream"
	.align 32
	.type	__func__.25, @object
	.size	__func__.25, 33
__func__.25:
	.string	"qc_wait_for_default_xso_for_read"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 23
__func__.24:
	.string	"create_xso_from_stream"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 21
__func__.23:
	.string	"quic_conn_stream_new"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 20
__func__.22:
	.string	"quic_write_blocking"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 27
__func__.21:
	.string	"quic_write_nonblocking_aon"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 27
__func__.20:
	.string	"quic_write_nonblocking_epw"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 22
__func__.19:
	.string	"ossl_quic_write_flags"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 17
__func__.18:
	.string	"quic_read_actual"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 16
__func__.17:
	.string	"quic_read_again"
	.align 8
	.type	__func__.16, @object
	.size	__func__.16, 10
__func__.16:
	.string	"quic_read"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 22
__func__.15:
	.string	"ossl_quic_pending_int"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 31
__func__.14:
	.string	"ossl_quic_conn_stream_conclude"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 34
__func__.13:
	.string	"ossl_quic_set_default_stream_mode"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 24
__func__.12:
	.string	"ossl_quic_attach_stream"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 37
__func__.11:
	.string	"ossl_quic_set_incoming_stream_policy"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 23
__func__.10:
	.string	"qc_getset_idle_timeout"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 20
__func__.9:
	.string	"qc_get_stream_avail"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 25
__func__.8:
	.string	"qc_getset_event_handling"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 29
__func__.7:
	.string	"qc_get_stream_write_buf_stat"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 25
__func__.6:
	.string	"ossl_quic_get_value_uint"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"ossl_quic_set_value_uint"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 25
__func__.4:
	.string	"wait_for_incoming_stream"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"ossl_quic_accept_stream"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"ossl_quic_stream_reset"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_quic_set_write_buffer_size"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ossl_quic_key_update"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

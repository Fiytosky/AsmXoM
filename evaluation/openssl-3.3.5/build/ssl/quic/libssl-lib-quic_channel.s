	.file	"quic_channel.c"
	.text
	.type	ossl_quic_enc_level_to_pn_space, @function
ossl_quic_enc_level_to_pn_space:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	ja	.L2
	cmpl	$2, -4(%rbp)
	jnb	.L3
	cmpl	$0, -4(%rbp)
	je	.L4
	cmpl	$1, -4(%rbp)
	je	.L5
	jmp	.L2
.L4:
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
	jmp	.L6
.L3:
	movl	$2, %eax
	jmp	.L6
.L2:
	movl	$2, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	ossl_quic_enc_level_to_pn_space, .-ossl_quic_enc_level_to_pn_space
	.type	ossl_quic_pn_valid, @function
ossl_quic_pn_valid:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$4611686018427387903, %rax
	cmpq	-8(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	ossl_quic_pn_valid, .-ossl_quic_pn_valid
	.type	ossl_quic_conn_id_eq, @function
ossl_quic_conn_id_eq:
.LFB500:
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
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L11
.L10:
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_quic_conn_id_eq, .-ossl_quic_conn_id_eq
	.type	packet_forward, @function
packet_forward:
.LFB501:
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
.LFE501:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB502:
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
.LFE502:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB505:
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
	jns	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_4, @function
PACKET_peek_net_4:
.LFB516:
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
	cmpq	$3, %rax
	ja	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
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
	salq	$16, %rax
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
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PACKET_peek_net_4, .-PACKET_peek_net_4
	.type	PACKET_get_net_4, @function
PACKET_get_net_4:
.LFB518:
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
	call	PACKET_peek_net_4
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PACKET_get_net_4, .-PACKET_get_net_4
	.type	ossl_quic_pkt_type_to_enc_level, @function
ossl_quic_pkt_type_to_enc_level:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	.L26
	cmpl	$5, -4(%rbp)
	ja	.L27
	cmpl	$3, -4(%rbp)
	je	.L28
	cmpl	$3, -4(%rbp)
	ja	.L27
	cmpl	$1, -4(%rbp)
	je	.L29
	cmpl	$2, -4(%rbp)
	je	.L30
	jmp	.L27
.L29:
	movl	$0, %eax
	jmp	.L31
.L28:
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$2, %eax
	jmp	.L31
.L26:
	movl	$3, %eax
	jmp	.L31
.L27:
	movl	$4, %eax
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	ossl_quic_pkt_type_to_enc_level, .-ossl_quic_pkt_type_to_enc_level
	.type	ossl_quic_pkt_type_is_encrypted, @function
ossl_quic_pkt_type_is_encrypted:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L33
	cmpl	$6, -4(%rbp)
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$1, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	ossl_quic_pkt_type_is_encrypted, .-ossl_quic_pkt_type_is_encrypted
	.type	ossl_quic_pkt_type_has_version, @function
ossl_quic_pkt_type_has_version:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	.L37
	cmpl	$6, -4(%rbp)
	je	.L37
	movl	$1, %eax
	jmp	.L39
.L37:
	movl	$0, %eax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	ossl_quic_pkt_type_has_version, .-ossl_quic_pkt_type_has_version
	.type	ossl_quic_pkt_type_has_scid, @function
ossl_quic_pkt_type_has_scid:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	ossl_quic_pkt_type_has_scid, .-ossl_quic_pkt_type_has_scid
	.type	safe_add_time, @function
safe_add_time:
.LFB555:
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
	jnc	.L43
	movl	$1, %ecx
.L43:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L45
	movq	-8(%rbp), %rax
	jmp	.L47
.L45:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	safe_add_time, .-safe_add_time
	.type	safe_mul_time, @function
safe_mul_time:
.LFB557:
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
	jno	.L49
	movl	$1, %ecx
.L49:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L51
	movq	-8(%rbp), %rax
	jmp	.L53
.L51:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	safe_mul_time, .-safe_mul_time
	.type	safe_div_time, @function
safe_div_time:
.LFB558:
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
	je	.L55
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	jmp	.L56
.L55:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	$-1, %rax
.L56:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	safe_div_time, .-safe_div_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB564:
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
.LFE564:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB566:
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
.LFE566:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB567:
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
.LFE567:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB572:
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
	jnb	.L64
	movl	$1, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L66
	movl	$-1, %eax
	jmp	.L65
.L66:
	movl	$0, %eax
.L65:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB573:
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
.LFE573:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB574:
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
.LFE574:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	ossl_time_add, @function
ossl_time_add:
.LFB575:
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
	je	.L72
	call	ossl_time_infinite
	jmp	.L74
.L72:
	movq	-8(%rbp), %rax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	ossl_time_add, .-ossl_time_add
	.type	ossl_time_multiply, @function
ossl_time_multiply:
.LFB578:
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
	je	.L76
	call	ossl_time_infinite
	jmp	.L78
.L76:
	movq	-8(%rbp), %rax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	ossl_time_multiply, .-ossl_time_multiply
	.type	ossl_time_divide, @function
ossl_time_divide:
.LFB579:
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
	je	.L80
	call	ossl_time_zero
	jmp	.L82
.L80:
	movq	-8(%rbp), %rax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	ossl_time_divide, .-ossl_time_divide
	.type	ossl_time_max, @function
ossl_time_max:
.LFB581:
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
	jnb	.L84
	movq	-8(%rbp), %rax
	jmp	.L86
.L84:
	movq	-16(%rbp), %rax
.L86:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	ossl_time_max, .-ossl_time_max
	.type	ossl_time_min, @function
ossl_time_min:
.LFB582:
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
	jnb	.L88
	movq	-8(%rbp), %rax
	jmp	.L90
.L88:
	movq	-16(%rbp), %rax
.L90:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	ossl_time_min, .-ossl_time_min
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB612:
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
.LFE612:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB613:
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
.LFE613:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB662:
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
.LFE662:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB663:
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
.LFE663:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB678:
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
.LFE678:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB679:
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
.LFE679:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	ossl_quic_stream_is_server_init, @function
ossl_quic_stream_is_server_init:
.LFB709:
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
.LFE709:
	.size	ossl_quic_stream_is_server_init, .-ossl_quic_stream_is_server_init
	.type	ossl_quic_stream_is_bidi, @function
ossl_quic_stream_is_bidi:
.LFB710:
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
.LFE710:
	.size	ossl_quic_stream_is_bidi, .-ossl_quic_stream_is_bidi
	.type	ossl_list_ch_remove, @function
ossl_list_ch_remove:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L108
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L108:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L109
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L109:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L110:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
.L111:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_list_ch_remove, .-ossl_list_ch_remove
	.type	ossl_list_ch_insert_tail, @function
ossl_list_ch_insert_tail:
.LFB739:
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
	je	.L113
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L113:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L114:
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
.LFE739:
	.size	ossl_list_ch_insert_tail, .-ossl_list_ch_insert_tail
	.type	lh_QUIC_SRT_ELEM_hfn_thunk, @function
lh_QUIC_SRT_ELEM_hfn_thunk:
.LFB742:
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
.LFE742:
	.size	lh_QUIC_SRT_ELEM_hfn_thunk, .-lh_QUIC_SRT_ELEM_hfn_thunk
	.type	lh_QUIC_SRT_ELEM_cfn_thunk, @function
lh_QUIC_SRT_ELEM_cfn_thunk:
.LFB743:
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
.LFE743:
	.size	lh_QUIC_SRT_ELEM_cfn_thunk, .-lh_QUIC_SRT_ELEM_cfn_thunk
	.type	ch_get_qlog, @function
ch_get_qlog:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L125
.L120:
	movq	-104(%rbp), %rax
	movzbl	1525(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L122
	movl	$0, %eax
	jmp	.L125
.L122:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L123
	movq	-104(%rbp), %rax
	movzbl	1112(%rax), %eax
	testb	%al, %al
	jne	.L123
	movl	$0, %eax
	jmp	.L125
.L123:
	movq	-104(%rbp), %rcx
	movq	1112(%rcx), %rax
	movq	1120(%rcx), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	1125(%rcx), %rax
	movq	%rax, -83(%rbp)
	movq	-104(%rbp), %rax
	movq	1552(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	leaq	get_time(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_new_from_env@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movq	-104(%rbp), %rax
	movzbl	1525(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 1525(%rax)
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	ch_get_qlog, .-ch_get_qlog
	.type	ch_get_qlog_cb, @function
ch_get_qlog_cb:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ch_get_qlog_cb, .-ch_get_qlog_cb
	.type	ch_init, @function
ch_init:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$616, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -616(%rbp)
	leaq	-352(%rbp), %rdx
	movl	$0, %eax
	movl	$38, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -400(%rbp)
	movaps	%xmm0, -384(%rbp)
	movaps	%xmm0, -368(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -480(%rbp)
	movaps	%xmm0, -464(%rbp)
	movaps	%xmm0, -448(%rbp)
	movaps	%xmm0, -432(%rbp)
	movq	%xmm0, -416(%rbp)
	leaq	-608(%rbp), %rdx
	movl	$0, %eax
	movl	$16, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-616(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-616(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_get_rx_short_dcid_len@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_get_tx_init_dcid_len@PLT
	cltq
	movq	%rax, -40(%rbp)
	movq	-616(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L132
	movq	-616(%rbp), %rax
	leaq	1112(%rax), %rdx
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_gen_rand_conn_id@PLT
	testl	%eax, %eax
	je	.L162
.L132:
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	leaq	ch_get_qlog_cb(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	$1200, -376(%rbp)
	movq	-376(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, 1360(%rax)
	movq	-616(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 1480(%rbx)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 1024(%rdx)
	movq	-616(%rbp), %rax
	movq	1024(%rax), %rax
	testq	%rax, %rax
	je	.L163
	call	ossl_quic_txpim_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-616(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L164
	call	ossl_quic_cfq_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-616(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-616(%rbp), %rax
	addq	$208, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_init@PLT
	testl	%eax, %eax
	je	.L166
	movq	-616(%rbp), %rax
	movq	$524288, 1240(%rax)
	movq	-616(%rbp), %rax
	movq	$524288, 1248(%rax)
	movq	-616(%rbp), %rax
	movq	$524288, 1256(%rax)
	movq	-616(%rbp), %rax
	addq	$240, %rax
	movq	-616(%rbp), %rdx
	leaq	get_time(%rip), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$15728640, %ecx
	movl	$786432, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	je	.L167
	movl	$0, -20(%rbp)
	jmp	.L138
.L140:
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	336(%rax), %rdx
	movq	-616(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-616(%rbp), %rax
	leaq	get_time(%rip), %rdx
	movq	%rax, %rcx
	movl	$16384, %esi
	call	ossl_quic_rxfc_init_standalone@PLT
	testl	%eax, %eax
	je	.L168
	addl	$1, -20(%rbp)
.L138:
	cmpl	$2, -20(%rbp)
	jbe	.L140
	movq	-616(%rbp), %rax
	leaq	624(%rax), %rdi
	movq	-616(%rbp), %rax
	leaq	get_time(%rip), %rdx
	movq	%rax, %rcx
	movl	$100, %esi
	call	ossl_quic_rxfc_init_standalone@PLT
	testl	%eax, %eax
	je	.L169
	movq	-616(%rbp), %rax
	leaq	720(%rax), %rdi
	movq	-616(%rbp), %rax
	leaq	get_time(%rip), %rdx
	movq	%rax, %rcx
	movl	$100, %esi
	call	ossl_quic_rxfc_init_standalone@PLT
	testl	%eax, %eax
	je	.L170
	movq	-616(%rbp), %rax
	addq	$960, %rax
	movq	%rax, %rdi
	call	ossl_statm_init@PLT
	testl	%eax, %eax
	je	.L171
	movq	-616(%rbp), %rax
	movzbl	1521(%rax), %edx
	orl	$16, %edx
	movb	%dl, 1521(%rax)
	movq	-616(%rbp), %rax
	movq	ossl_cc_newreno_method@GOTPCREL(%rip), %rdx
	movq	%rdx, 1008(%rax)
	movq	-616(%rbp), %rax
	movq	1008(%rax), %rax
	movq	(%rax), %rdx
	movq	-616(%rbp), %rax
	leaq	get_time(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	movq	-616(%rbp), %rdx
	movq	%rax, 1000(%rdx)
	movq	-616(%rbp), %rax
	movq	1000(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-616(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-616(%rbp), %rax
	movq	1000(%rax), %rcx
	movq	-616(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-616(%rbp), %rax
	leaq	960(%rax), %rsi
	movq	-616(%rbp), %rax
	leaq	get_time(%rip), %rdi
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	ossl_ackm_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 1016(%rdx)
	movq	-616(%rbp), %rax
	movq	1016(%rax), %rax
	testq	%rax, %rax
	je	.L173
	movq	-616(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-616(%rbp), %rax
	leaq	720(%rax), %r8
	movq	-616(%rbp), %rax
	leaq	624(%rax), %rdx
	movq	-616(%rbp), %rax
	leaq	816(%rax), %rdi
	movq	-616(%rbp), %rax
	leaq	get_stream_limit(%rip), %rsi
	movl	%ecx, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ossl_quic_stream_map_init@PLT
	testl	%eax, %eax
	je	.L174
	movq	-616(%rbp), %rax
	movzbl	1521(%rax), %edx
	orl	$32, %edx
	movb	%dl, 1521(%rax)
	movq	-616(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L147
	movq	-616(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-352(%rbp), %rdx
	movq	-616(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate_initial@PLT
	testl	%eax, %eax
	je	.L175
.L147:
	movq	-616(%rbp), %rcx
	movq	1112(%rcx), %rax
	movq	1120(%rcx), %rdx
	movq	%rax, -331(%rbp)
	movq	%rdx, -323(%rbp)
	movq	1125(%rcx), %rax
	movq	%rax, -318(%rbp)
	movl	$3, -196(%rbp)
	movq	-616(%rbp), %rax
	movq	1024(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-616(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-616(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-616(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-616(%rbp), %rax
	addq	$816, %rax
	movq	%rax, -160(%rbp)
	movq	-616(%rbp), %rax
	addq	$208, %rax
	movq	%rax, -152(%rbp)
	movq	-616(%rbp), %rax
	addq	$240, %rax
	movq	%rax, -144(%rbp)
	movq	-616(%rbp), %rax
	addq	$624, %rax
	movq	%rax, -136(%rbp)
	movq	-616(%rbp), %rax
	addq	$720, %rax
	movq	%rax, -128(%rbp)
	movq	-616(%rbp), %rax
	movq	1008(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-616(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -112(%rbp)
	leaq	get_time(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	ch_get_qlog_cb(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L148
.L150:
	movl	$16384, %edi
	call	ossl_quic_sstream_new@PLT
	movq	-616(%rbp), %rdx
	movl	-20(%rbp), %ecx
	addq	$132, %rcx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-616(%rbp), %rax
	movl	-20(%rbp), %edx
	addq	$132, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L176
	movq	-616(%rbp), %rax
	movl	-20(%rbp), %edx
	addq	$132, %rdx
	movq	8(%rax,%rdx,8), %rax
	movl	-20(%rbp), %edx
	addq	$34, %rdx
	movq	%rax, -344(%rbp,%rdx,8)
	addl	$1, -20(%rbp)
.L148:
	cmpl	$2, -20(%rbp)
	jbe	.L150
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-616(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-616(%rbp), %rax
	movq	184(%rax), %rax
	movq	-616(%rbp), %rdx
	leaq	ch_on_txp_ack_tx(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_ack_tx_cb@PLT
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	$32, -448(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 1032(%rdx)
	movq	-616(%rbp), %rax
	movq	1032(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-616(%rbp), %rax
	movq	1032(%rax), %rax
	movq	-616(%rbp), %rdx
	leaq	rx_late_validate(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_set_late_validation_cb@PLT
	testl	%eax, %eax
	je	.L179
	movq	-616(%rbp), %rax
	movq	1032(%rax), %rax
	movq	-616(%rbp), %rdx
	leaq	rxku_detected(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_set_key_update_cb@PLT
	testl	%eax, %eax
	je	.L180
	movl	$0, -20(%rbp)
	jmp	.L155
.L157:
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_rstream_new@PLT
	movq	-616(%rbp), %rdx
	movl	-20(%rbp), %ecx
	addq	$136, %rcx
	movq	%rax, (%rdx,%rcx,8)
	movq	-616(%rbp), %rax
	movl	-20(%rbp), %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L181
	addl	$1, -20(%rbp)
.L155:
	cmpl	$2, -20(%rbp)
	jbe	.L157
	movq	-616(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -608(%rbp)
	leaq	ch_on_crypto_send(%rip), %rax
	movq	%rax, -600(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -592(%rbp)
	leaq	ch_on_crypto_recv_record(%rip), %rax
	movq	%rax, -584(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -576(%rbp)
	leaq	ch_on_crypto_release_record(%rip), %rax
	movq	%rax, -568(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	ch_on_handshake_yield_secret(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -544(%rbp)
	leaq	ch_on_transport_params(%rip), %rax
	movq	%rax, -536(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -528(%rbp)
	leaq	ch_on_handshake_complete(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	ch_on_handshake_alert(%rip), %rax
	movq	%rax, -504(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-616(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -488(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tls_new@PLT
	movq	-616(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-616(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L182
	movq	-616(%rbp), %rax
	movq	$25, 1264(%rax)
	movq	-616(%rbp), %rax
	movq	$25, 1296(%rax)
	movq	-616(%rbp), %rax
	movb	$3, 1304(%rax)
	movq	-616(%rbp), %rax
	movq	$2, 1368(%rax)
	movq	-616(%rbp), %rax
	movl	1520(%rax), %edx
	andl	$-114689, %edx
	movl	%edx, 1520(%rax)
	movq	-616(%rbp), %rax
	movzbl	1522(%rax), %edx
	andl	$-15, %edx
	movb	%dl, 1522(%rax)
	movq	-616(%rbp), %rax
	movq	$-1, 1416(%rax)
	movq	-616(%rbp), %rax
	movq	$30000, 1336(%rax)
	movq	-616(%rbp), %rax
	movq	$0, 1344(%rax)
	movq	-616(%rbp), %rax
	movq	1336(%rax), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, 1352(%rax)
	movq	-616(%rbp), %rax
	movq	1264(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_set_tx_max_ack_delay@PLT
	movq	-616(%rbp), %rax
	movq	1296(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_set_rx_max_ack_delay@PLT
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_idle
	movq	-616(%rbp), %rax
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-616(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_ch_insert_tail
	movq	-616(%rbp), %rax
	movzbl	1525(%rax), %edx
	orl	$1, %edx
	movb	%dl, 1525(%rax)
	movl	$1, %eax
	jmp	.L160
.L161:
	nop
	jmp	.L131
.L162:
	nop
	jmp	.L131
.L163:
	nop
	jmp	.L131
.L164:
	nop
	jmp	.L131
.L165:
	nop
	jmp	.L131
.L166:
	nop
	jmp	.L131
.L167:
	nop
	jmp	.L131
.L168:
	nop
	jmp	.L131
.L169:
	nop
	jmp	.L131
.L170:
	nop
	jmp	.L131
.L171:
	nop
	jmp	.L131
.L172:
	nop
	jmp	.L131
.L173:
	nop
	jmp	.L131
.L174:
	nop
	jmp	.L131
.L175:
	nop
	jmp	.L131
.L176:
	nop
	jmp	.L131
.L177:
	nop
	jmp	.L131
.L178:
	nop
	jmp	.L131
.L179:
	nop
	jmp	.L131
.L180:
	nop
	jmp	.L131
.L181:
	nop
	jmp	.L131
.L182:
	nop
.L131:
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	ch_cleanup
	movl	$0, %eax
.L160:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ch_init, .-ch_init
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_channel.c"
	.text
	.type	ch_cleanup, @function
ch_cleanup:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movl	$0, -4(%rbp)
	jmp	.L185
.L186:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_on_pkt_space_discarded@PLT
	addl	$1, -4(%rbp)
.L185:
	cmpl	$2, -4(%rbp)
	jbe	.L186
.L184:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_cull@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_cull@PLT
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_free@PLT
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_free@PLT
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_free@PLT
	movq	-24(%rbp), %rax
	movq	1024(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_free@PLT
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rax
	testq	%rax, %rax
	je	.L187
	movq	-24(%rbp), %rax
	movq	1008(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L187:
	movq	-24(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L188
	movq	-24(%rbp), %rax
	addq	$960, %rax
	movq	%rax, %rdi
	call	ossl_statm_destroy@PLT
.L188:
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_free@PLT
	movq	-24(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L189
	movq	-24(%rbp), %rax
	addq	$816, %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_cleanup@PLT
.L189:
	movl	$0, -4(%rbp)
	jmp	.L190
.L191:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$132, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	addl	$1, -4(%rbp)
.L190:
	cmpl	$2, -4(%rbp)
	jbe	.L191
	movq	-24(%rbp), %rax
	movq	1312(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	movq	-24(%rbp), %rax
	movq	$0, 1312(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tls_free@PLT
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_free@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$401, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	1440(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$402, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	1528(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_free@PLT
	movq	-24(%rbp), %rax
	movq	1536(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$404, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movzbl	1525(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L192
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_ch_remove
	movq	-24(%rbp), %rax
	movzbl	1525(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1525(%rax)
.L192:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L193
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qlog_flush@PLT
.L193:
	movq	-24(%rbp), %rax
	movq	1552(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$415, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qlog_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ch_cleanup, .-ch_cleanup
	.globl	ossl_quic_channel_new
	.type	ossl_quic_channel_new, @function
ossl_quic_channel_new:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$424, %edx
	movq	%rax, %rsi
	movl	$1560, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L195
	movl	$0, %eax
	jmp	.L196
.L195:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	1523(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 1523(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	1525(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 1525(%rdx)
	movq	-8(%rbp), %rax
	movzbl	1525(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L197
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$436, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 1552(%rdx)
	movq	-8(%rbp), %rax
	movq	1552(%rax), %rax
	testq	%rax, %rax
	jne	.L197
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$437, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L196
.L197:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ch_init
	testl	%eax, %eax
	jne	.L198
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$444, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L196
.L198:
	movq	-8(%rbp), %rax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_quic_channel_new, .-ossl_quic_channel_new
	.globl	ossl_quic_channel_free
	.type	ossl_quic_channel_free, @function
ossl_quic_channel_free:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L202
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ch_cleanup
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$457, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L199
.L202:
	nop
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ossl_quic_channel_free, .-ossl_quic_channel_free
	.globl	ossl_quic_channel_set_mutator
	.type	ossl_quic_channel_set_mutator, @function
ossl_quic_channel_set_mutator:
.LFB764:
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
	movq	1024(%rax), %rax
	testq	%rax, %rax
	jne	.L204
	movl	$0, %eax
	jmp	.L205
.L204:
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_qtx_set_mutator@PLT
	movl	$1, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	ossl_quic_channel_set_mutator, .-ossl_quic_channel_set_mutator
	.globl	ossl_quic_channel_get_peer_addr
	.type	ossl_quic_channel_get_peer_addr, @function
ossl_quic_channel_get_peer_addr:
.LFB765:
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
	movzbl	1524(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_copy@PLT
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ossl_quic_channel_get_peer_addr, .-ossl_quic_channel_get_peer_addr
	.globl	ossl_quic_channel_set_peer_addr
	.type	ossl_quic_channel_set_peer_addr, @function
ossl_quic_channel_set_peer_addr:
.LFB766:
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
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	testb	%al, %al
	je	.L210
	movl	$0, %eax
	jmp	.L211
.L210:
	cmpq	$0, -16(%rbp)
	je	.L212
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	jne	.L213
.L212:
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$127, %edx
	movb	%dl, 1524(%rax)
	movl	$1, %eax
	jmp	.L211
.L213:
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	jne	.L214
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$127, %edx
	movb	%dl, 1524(%rax)
	movl	$0, %eax
	jmp	.L211
.L214:
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1524(%rax)
	movl	$1, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	ossl_quic_channel_set_peer_addr, .-ossl_quic_channel_set_peer_addr
	.globl	ossl_quic_channel_get_reactor
	.type	ossl_quic_channel_get_reactor, @function
ossl_quic_channel_get_reactor:
.LFB767:
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
	call	ossl_quic_port_get0_reactor@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ossl_quic_channel_get_reactor, .-ossl_quic_channel_get_reactor
	.globl	ossl_quic_channel_get_qsm
	.type	ossl_quic_channel_get_qsm, @function
ossl_quic_channel_get_qsm:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$816, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ossl_quic_channel_get_qsm, .-ossl_quic_channel_get_qsm
	.globl	ossl_quic_channel_get_statm
	.type	ossl_quic_channel_get_statm, @function
ossl_quic_channel_get_statm:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$960, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	ossl_quic_channel_get_statm, .-ossl_quic_channel_get_statm
	.globl	ossl_quic_channel_get_stream_by_id
	.type	ossl_quic_channel_get_stream_by_id, @function
ossl_quic_channel_get_stream_by_id:
.LFB770:
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
	leaq	816(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ossl_quic_channel_get_stream_by_id, .-ossl_quic_channel_get_stream_by_id
	.globl	ossl_quic_channel_is_active
	.type	ossl_quic_channel_is_active, @function
ossl_quic_channel_is_active:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L224
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	cmpb	$1, %al
	jne	.L224
	movl	$1, %eax
	jmp	.L226
.L224:
	movl	$0, %eax
.L226:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ossl_quic_channel_is_active, .-ossl_quic_channel_is_active
	.globl	ossl_quic_channel_is_closing
	.type	ossl_quic_channel_is_closing, @function
ossl_quic_channel_is_closing:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	cmpb	$2, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	ossl_quic_channel_is_closing, .-ossl_quic_channel_is_closing
	.type	ossl_quic_channel_is_draining, @function
ossl_quic_channel_is_draining:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	cmpb	$3, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	ossl_quic_channel_is_draining, .-ossl_quic_channel_is_draining
	.type	ossl_quic_channel_is_terminating, @function
ossl_quic_channel_is_terminating:
.LFB774:
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
	call	ossl_quic_channel_is_closing@PLT
	testl	%eax, %eax
	jne	.L232
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_draining
	testl	%eax, %eax
	je	.L233
.L232:
	movl	$1, %eax
	jmp	.L235
.L233:
	movl	$0, %eax
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_quic_channel_is_terminating, .-ossl_quic_channel_is_terminating
	.globl	ossl_quic_channel_is_terminated
	.type	ossl_quic_channel_is_terminated, @function
ossl_quic_channel_is_terminated:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	cmpb	$4, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_quic_channel_is_terminated, .-ossl_quic_channel_is_terminated
	.globl	ossl_quic_channel_is_term_any
	.type	ossl_quic_channel_is_term_any, @function
ossl_quic_channel_is_term_any:
.LFB776:
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
	call	ossl_quic_channel_is_terminating
	testl	%eax, %eax
	jne	.L239
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L240
.L239:
	movl	$1, %eax
	jmp	.L242
.L240:
	movl	$0, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ossl_quic_channel_is_term_any, .-ossl_quic_channel_is_term_any
	.globl	ossl_quic_channel_get_terminate_cause
	.type	ossl_quic_channel_get_terminate_cause, @function
ossl_quic_channel_get_terminate_cause:
.LFB777:
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
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	je	.L244
	movq	-8(%rbp), %rax
	addq	$1424, %rax
	jmp	.L246
.L244:
	movl	$0, %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	ossl_quic_channel_get_terminate_cause, .-ossl_quic_channel_get_terminate_cause
	.globl	ossl_quic_channel_is_handshake_complete
	.type	ossl_quic_channel_is_handshake_complete, @function
ossl_quic_channel_is_handshake_complete:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ossl_quic_channel_is_handshake_complete, .-ossl_quic_channel_is_handshake_complete
	.globl	ossl_quic_channel_is_handshake_confirmed
	.type	ossl_quic_channel_is_handshake_confirmed, @function
ossl_quic_channel_is_handshake_confirmed:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	ossl_quic_channel_is_handshake_confirmed, .-ossl_quic_channel_is_handshake_confirmed
	.globl	ossl_quic_channel_get0_demux
	.type	ossl_quic_channel_get0_demux, @function
ossl_quic_channel_get0_demux:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ossl_quic_channel_get0_demux, .-ossl_quic_channel_get0_demux
	.globl	ossl_quic_channel_get0_port
	.type	ossl_quic_channel_get0_port, @function
ossl_quic_channel_get0_port:
.LFB781:
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
.LFE781:
	.size	ossl_quic_channel_get0_port, .-ossl_quic_channel_get0_port
	.globl	ossl_quic_channel_get0_engine
	.type	ossl_quic_channel_get0_engine, @function
ossl_quic_channel_get0_engine:
.LFB782:
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
	call	ossl_quic_port_get0_engine@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	ossl_quic_channel_get0_engine, .-ossl_quic_channel_get0_engine
	.globl	ossl_quic_channel_get_mutex
	.type	ossl_quic_channel_get_mutex, @function
ossl_quic_channel_get_mutex:
.LFB783:
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
	call	ossl_quic_port_get0_mutex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	ossl_quic_channel_get_mutex, .-ossl_quic_channel_get_mutex
	.globl	ossl_quic_channel_has_pending
	.type	ossl_quic_channel_has_pending, @function
ossl_quic_channel_has_pending:
.LFB784:
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
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_has_pending@PLT
	testl	%eax, %eax
	jne	.L260
	movq	-8(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L261
.L260:
	movl	$1, %eax
	jmp	.L263
.L261:
	movl	$0, %eax
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	ossl_quic_channel_has_pending, .-ossl_quic_channel_has_pending
	.type	get_time, @function
get_time:
.LFB785:
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
	movq	%rax, %rdi
	call	ossl_quic_port_get_time@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	get_time, .-get_time
	.type	get_stream_limit, @function
get_stream_limit:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L267
	movq	-8(%rbp), %rax
	movq	1328(%rax), %rax
	jmp	.L269
.L267:
	movq	-8(%rbp), %rax
	movq	1320(%rax), %rax
.L269:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	get_stream_limit, .-get_stream_limit
	.type	rx_late_validate, @function
rx_late_validate:
.LFB787:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1016(%rax), %rax
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_is_rx_pn_processable@PLT
	testl	%eax, %eax
	jne	.L271
	movl	$0, %eax
	jmp	.L272
.L271:
	movl	$1, %eax
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	rx_late_validate, .-rx_late_validate
	.section	.rodata
.LC1:
	.string	"key update"
	.text
	.type	ch_trigger_txku, @function
ch_trigger_txku:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_get_next_pn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_pn_valid
	testl	%eax, %eax
	je	.L274
	movq	-24(%rbp), %rax
	movq	1024(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_trigger_key_update@PLT
	testl	%eax, %eax
	jne	.L275
.L274:
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.16(%rip), %rcx
	pushq	%rcx
	pushq	$644
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L273
.L275:
	movq	-24(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$1, %edx
	movb	%dl, 1524(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 1504(%rax)
	movq	-24(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	1524(%rax), %edx
	andl	$-17, %edx
	orl	%ecx, %edx
	movb	%dl, 1524(%rax)
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	ch_trigger_txku, .-ch_trigger_txku
	.type	txku_in_progress, @function
txku_in_progress:
.LFB789:
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
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L278
	movq	-40(%rbp), %rax
	movq	1016(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_largest_acked@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	1504(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L278
	movq	-40(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_pto_duration@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1524(%rax)
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	-40(%rbp), %rbx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 1488(%rbx)
.L278:
	movq	-40(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	txku_in_progress, .-txku_in_progress
	.type	txku_allowed, @function
txku_allowed:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	1520(%rax), %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	jne	.L281
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L281
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	txku_in_progress
	testl	%eax, %eax
	jne	.L281
	movl	$1, %eax
	jmp	.L283
.L281:
	movl	$0, %eax
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	txku_allowed, .-txku_allowed
	.type	txku_recommendable, @function
txku_recommendable:
.LFB791:
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
	call	txku_allowed
	testl	%eax, %eax
	jne	.L285
	movl	$0, %eax
	jmp	.L286
.L285:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	1488(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L287
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L287
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L287
	movl	$1, %eax
	jmp	.L286
.L287:
	movl	$0, %eax
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	txku_recommendable, .-txku_recommendable
	.type	txku_desirable, @function
txku_desirable:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$3, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	1024(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_get_cur_epoch_pkt_count@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	1024(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_get_max_epoch_pkt_count@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	1416(%rax), %rax
	cmpq	$-1, %rax
	je	.L290
	movq	-40(%rbp), %rax
	movq	1416(%rax), %rax
	movq	%rax, -8(%rbp)
.L290:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	txku_desirable, .-txku_desirable
	.type	ch_maybe_trigger_spontaneous_txku, @function
ch_maybe_trigger_spontaneous_txku:
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
	call	txku_recommendable
	testl	%eax, %eax
	je	.L296
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	txku_desirable
	testl	%eax, %eax
	je	.L296
	movq	-8(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1523(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ch_trigger_txku
	jmp	.L292
.L296:
	nop
.L292:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	ch_maybe_trigger_spontaneous_txku, .-ch_maybe_trigger_spontaneous_txku
	.type	rxku_allowed, @function
rxku_allowed:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L298
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L298
	movl	$1, %eax
	jmp	.L300
.L298:
	movl	$0, %eax
.L300:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	rxku_allowed, .-rxku_allowed
	.section	.rodata
.LC2:
	.string	"RX key update again too soon"
	.text
	.type	rxku_detected, @function
rxku_detected:
.LFB795:
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
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rxku_allowed
	testl	%eax, %eax
	jne	.L302
	movl	$1, -20(%rbp)
	jmp	.L303
.L302:
	movq	-32(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L304
	movl	$0, -20(%rbp)
	jmp	.L303
.L304:
	movl	$2, -20(%rbp)
.L303:
	cmpl	$1, -20(%rbp)
	jne	.L305
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.15(%rip), %rcx
	pushq	%rcx
	pushq	$792
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L301
.L305:
	movq	-32(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_pto_duration@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movzbl	1523(%rax), %edx
	andl	$127, %edx
	movb	%dl, 1523(%rax)
	movq	-32(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$2, %edx
	movb	%dl, 1524(%rax)
	movq	-32(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$4, %edx
	movb	%dl, 1524(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 1512(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, %rdx
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_add
	movq	%rax, 1496(%rbx)
	movq	-32(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 1524(%rax)
	cmpl	$2, -20(%rbp)
	jne	.L307
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ch_trigger_txku
.L307:
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_ack@PLT
.L301:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	rxku_detected, .-rxku_detected
	.section	.rodata
.LC3:
	.string	"RXKU cooldown internal error"
	.text
	.type	ch_rxku_tick, @function
ch_rxku_tick:
.LFB796:
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
	movzbl	1524(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L312
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	1496(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L312
	movq	-24(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 1496(%rbx)
	movq	-24(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 1524(%rax)
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_qrx_key_update_timeout@PLT
	testl	%eax, %eax
	jne	.L308
	leaq	.LC0(%rip), %rsi
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.14(%rip), %rcx
	pushq	%rcx
	pushq	$840
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L308
.L312:
	nop
.L308:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	ch_rxku_tick, .-ch_rxku_tick
	.type	ch_on_txp_ack_tx, @function
ch_on_txp_ack_tx:
.LFB797:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$2, -28(%rbp)
	jne	.L317
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L317
	movq	-8(%rbp), %rax
	movq	1512(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_frame_ack_contains_pn@PLT
	testl	%eax, %eax
	je	.L317
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$8, %edx
	movb	%dl, 1524(%rax)
	jmp	.L313
.L317:
	nop
.L313:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	ch_on_txp_ack_tx, .-ch_on_txp_ack_tx
	.type	ch_on_crypto_send, @function
ch_on_crypto_send:
.LFB798:
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
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	1520(%rax), %eax
	shrl	$14, %eax
	andl	$7, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	addq	$132, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L319
	movl	$0, %eax
	jmp	.L320
.L319:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	ch_on_crypto_send, .-ch_on_crypto_send
	.type	crypto_ensure_empty, @function
crypto_ensure_empty:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L322
	movl	$1, %eax
	jmp	.L325
.L322:
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_available@PLT
	testl	%eax, %eax
	jne	.L324
	movl	$0, %eax
	jmp	.L325
.L324:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	crypto_ensure_empty, .-crypto_ensure_empty
	.section	.rodata
	.align 8
.LC4:
	.string	"crypto stream data in wrong EL"
	.text
	.type	ch_on_crypto_recv_record, @function
ch_on_crypto_recv_record:
.LFB800:
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
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L327
.L330:
	cmpl	$2, -4(%rbp)
	je	.L328
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	crypto_ensure_empty
	testl	%eax, %eax
	jne	.L328
	leaq	.LC0(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	__func__.13(%rip), %rcx
	pushq	%rcx
	pushq	$920
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L332
.L328:
	addl	$1, -4(%rbp)
.L327:
	movq	-16(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jb	.L330
	movq	-16(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	leaq	-28(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_get_record@PLT
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	ch_on_crypto_recv_record, .-ch_on_crypto_recv_record
	.type	ch_on_crypto_release_record, @function
ch_on_crypto_release_record:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L334
	movl	$0, %eax
	jmp	.L337
.L334:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_statm@PLT
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	336(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	testl	%eax, %eax
	jne	.L336
	movl	$0, %eax
	jmp	.L337
.L336:
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_release_record@PLT
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	ch_on_crypto_release_record, .-ch_on_crypto_release_record
	.type	ch_on_handshake_yield_secret, @function
ch_on_handshake_yield_secret:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L339
	cmpl	$3, -20(%rbp)
	jbe	.L340
.L339:
	movl	$0, %eax
	jmp	.L341
.L340:
	cmpl	$0, -24(%rbp)
	je	.L342
	movq	-16(%rbp), %rax
	movl	1520(%rax), %eax
	shrl	$14, %eax
	andl	$7, %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jb	.L343
	movl	$0, %eax
	jmp	.L341
.L343:
	movq	-16(%rbp), %rax
	movq	1024(%rax), %rax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qtx_provide_secret@PLT
	testl	%eax, %eax
	jne	.L344
	movl	$0, %eax
	jmp	.L341
.L344:
	movl	-20(%rbp), %eax
	andl	$7, %eax
	movq	-16(%rbp), %rdx
	movzbl	%al, %eax
	andl	$7, %eax
	sall	$14, %eax
	movl	%eax, %ecx
	movl	1520(%rdx), %eax
	andl	$-114689, %eax
	orl	%ecx, %eax
	movl	%eax, 1520(%rdx)
	jmp	.L345
.L342:
	movq	-16(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jb	.L346
	movl	$0, %eax
	jmp	.L341
.L346:
	movl	$0, -4(%rbp)
	jmp	.L347
.L349:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	crypto_ensure_empty
	testl	%eax, %eax
	jne	.L348
	leaq	.LC0(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	__func__.12(%rip), %rcx
	pushq	%rcx
	pushq	$998
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L341
.L348:
	addl	$1, -4(%rbp)
.L347:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L349
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qrx_provide_secret@PLT
	testl	%eax, %eax
	jne	.L350
	movl	$0, %eax
	jmp	.L341
.L350:
	movq	-16(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$4, %edx
	movb	%dl, 1523(%rax)
	movl	-20(%rbp), %eax
	andl	$7, %eax
	movq	-16(%rbp), %rdx
	andl	$7, %eax
	leal	(%rax,%rax), %ecx
	movzbl	1522(%rdx), %eax
	andl	$-15, %eax
	orl	%ecx, %eax
	movb	%al, 1522(%rdx)
.L345:
	movl	$1, %eax
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	ch_on_handshake_yield_secret, .-ch_on_handshake_yield_secret
	.section	.rodata
	.align 8
.LC5:
	.string	"no transport parameters received"
	.text
	.type	ch_on_handshake_complete, @function
ch_on_handshake_complete:
.LFB803:
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
	movzbl	1521(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L352
	movl	$0, %eax
	jmp	.L353
.L352:
	movq	-8(%rbp), %rax
	movl	1520(%rax), %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L354
	movl	$0, %eax
	jmp	.L353
.L354:
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L355
	leaq	.LC0(%rip), %rsi
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	__func__.11(%rip), %rcx
	pushq	%rcx
	pushq	$1031
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$365, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L353
.L355:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1038, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_allow_1rtt_processing@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_notify_handshake_complete@PLT
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %edx
	orl	$2, %edx
	movb	%dl, 1521(%rax)
	movq	-8(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L356
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_on_handshake_confirmed@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_handshake_done@PLT
.L356:
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	movl	$1, %eax
.L353:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	ch_on_handshake_complete, .-ch_on_handshake_complete
	.section	.rodata
	.align 8
.LC6:
	.string	"Post-handshake TLS CertificateRequest received"
.LC7:
	.string	"Bad max_early_data received"
.LC8:
	.string	"handshake alert"
	.text
	.type	ch_on_handshake_alert, @function
ch_on_handshake_alert:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpb	$10, -28(%rbp)
	jne	.L358
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L358
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tls_is_cert_request@PLT
	testl	%eax, %eax
	je	.L358
	leaq	.LC0(%rip), %rsi
	leaq	.LC6(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	__func__.10(%rip), %rcx
	pushq	%rcx
	pushq	$1074
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L359
.L358:
	cmpb	$47, -28(%rbp)
	jne	.L360
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L360
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tls_has_bad_max_early_data@PLT
	testl	%eax, %eax
	je	.L360
	leaq	.LC0(%rip), %rsi
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	__func__.10(%rip), %rcx
	pushq	%rcx
	pushq	$1089
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L359
.L360:
	movzbl	-28(%rbp), %eax
	addl	$256, %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdi
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	__func__.10(%rip), %rcx
	pushq	%rcx
	pushq	$1094
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
.L359:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	ch_on_handshake_alert, .-ch_on_handshake_alert
	.type	txfc_bump_cwm_bidi, @function
txfc_bump_cwm_bidi:
.LFB805:
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
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L366
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	testl	%eax, %eax
	jne	.L366
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	$-128, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	jmp	.L362
.L366:
	nop
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	txfc_bump_cwm_bidi, .-txfc_bump_cwm_bidi
	.type	txfc_bump_cwm_uni, @function
txfc_bump_cwm_uni:
.LFB806:
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
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	jne	.L371
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	testl	%eax, %eax
	jne	.L371
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	$-128, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	jmp	.L367
.L371:
	nop
.L367:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	txfc_bump_cwm_uni, .-txfc_bump_cwm_uni
	.type	do_update, @function
do_update:
.LFB807:
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
	movq	-8(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	do_update, .-do_update
	.type	min_u64_ignore_0, @function
min_u64_ignore_0:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L374
	movq	-16(%rbp), %rax
	jmp	.L375
.L374:
	cmpq	$0, -16(%rbp)
	jne	.L376
	movq	-8(%rbp), %rax
	jmp	.L375
.L376:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
.L375:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	min_u64_ignore_0, .-min_u64_ignore_0
	.section	.rodata
.LC9:
	.string	"bad transport parameter"
	.align 8
.LC10:
	.string	"multiple transport parameter extensions"
	.align 8
.LC11:
	.string	"internal error (packet buf init)"
	.align 8
.LC12:
	.string	"ORIG_DCID appears multiple times"
	.align 8
.LC13:
	.string	"ORIG_DCID may not be sent by a client"
.LC14:
	.string	"ORIG_DCID is malformed"
	.align 8
.LC15:
	.string	"ORIG_DCID does not match expected value"
	.align 8
.LC16:
	.string	"RETRY_SCID may not be sent by a client"
	.align 8
.LC17:
	.string	"RETRY_SCID appears multiple times"
	.align 8
.LC18:
	.string	"RETRY_SCID sent when not performing a retry"
.LC19:
	.string	"RETRY_SCID is malformed"
	.align 8
.LC20:
	.string	"RETRY_SCID does not match expected value"
	.align 8
.LC21:
	.string	"INITIAL_SCID appears multiple times"
.LC22:
	.string	"INITIAL_SCID is malformed"
	.align 8
.LC23:
	.string	"INITIAL_SCID does not match expected value"
	.align 8
.LC24:
	.string	"INITIAL_MAX_DATA appears multiple times"
.LC25:
	.string	"INITIAL_MAX_DATA is malformed"
	.align 8
.LC26:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_LOCAL appears multiple times"
	.align 8
.LC27:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_LOCAL is malformed"
	.align 8
.LC28:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_REMOTE appears multiple times"
	.align 8
.LC29:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_REMOTE is malformed"
	.align 8
.LC30:
	.string	"INITIAL_MAX_STREAM_DATA_UNI appears multiple times"
	.align 8
.LC31:
	.string	"INITIAL_MAX_STREAM_DATA_UNI is malformed"
	.align 8
.LC32:
	.string	"ACK_DELAY_EXP appears multiple times"
.LC33:
	.string	"ACK_DELAY_EXP is malformed"
	.align 8
.LC34:
	.string	"MAX_ACK_DELAY appears multiple times"
.LC35:
	.string	"MAX_ACK_DELAY is malformed"
	.align 8
.LC36:
	.string	"INITIAL_MAX_STREAMS_BIDI appears multiple times"
	.align 8
.LC37:
	.string	"INITIAL_MAX_STREAMS_BIDI is malformed"
	.align 8
.LC38:
	.string	"INITIAL_MAX_STREAMS_UNI appears multiple times"
	.align 8
.LC39:
	.string	"INITIAL_MAX_STREAMS_UNI is malformed"
	.align 8
.LC40:
	.string	"MAX_IDLE_TIMEOUT appears multiple times"
.LC41:
	.string	"MAX_IDLE_TIMEOUT is malformed"
	.align 8
.LC42:
	.string	"MAX_UDP_PAYLOAD_SIZE appears multiple times"
	.align 8
.LC43:
	.string	"MAX_UDP_PAYLOAD_SIZE is malformed"
	.align 8
.LC44:
	.string	"ACTIVE_CONN_ID_LIMIT appears multiple times"
	.align 8
.LC45:
	.string	"ACTIVE_CONN_ID_LIMIT is malformed"
	.align 8
.LC46:
	.string	"STATELESS_RESET_TOKEN appears multiple times"
	.align 8
.LC47:
	.string	"STATELESS_RESET_TOKEN may not be sent by a client"
	.align 8
.LC48:
	.string	"STATELESS_RESET_TOKEN is malformed"
	.align 8
.LC49:
	.string	"STATELESS_RESET_TOKEN encountered internal error"
	.align 8
.LC50:
	.string	"PREFERRED_ADDR appears multiple times"
	.align 8
.LC51:
	.string	"PREFERRED_ADDR may not be sent by a client"
	.align 8
.LC52:
	.string	"PREFERRED_ADDR provided for zero-length CID"
.LC53:
	.string	"PREFERRED_ADDR is malformed"
	.align 8
.LC54:
	.string	"zero-length CID in PREFERRED_ADDR"
	.align 8
.LC55:
	.string	"DISABLE_ACTIVE_MIGRATION appears multiple times"
	.align 8
.LC56:
	.string	"DISABLE_ACTIVE_MIGRATION is malformed"
	.align 8
.LC57:
	.string	"INITIAL_SCID was not sent but is required"
	.align 8
.LC58:
	.string	"ORIG_DCID was not sent but is required"
	.align 8
.LC59:
	.string	"RETRY_SCID was not sent but is required"
.LC60:
	.string	"transport:parameters_set"
.LC61:
	.string	"parameters_set"
.LC62:
	.string	"transport"
.LC63:
	.string	"remote"
.LC64:
	.string	"owner"
	.align 8
.LC65:
	.string	"original_destination_connection_id"
.LC66:
	.string	"original_source_connection_id"
.LC67:
	.string	"retry_source_connection_id"
.LC68:
	.string	"initial_max_data"
	.align 8
.LC69:
	.string	"initial_max_stream_data_bidi_local"
	.align 8
.LC70:
	.string	"initial_max_stream_data_bidi_remote"
.LC71:
	.string	"initial_max_stream_data_uni"
.LC72:
	.string	"initial_max_streams_bidi"
.LC73:
	.string	"initial_max_streams_uni"
.LC74:
	.string	"ack_delay_exponent"
.LC75:
	.string	"max_ack_delay"
.LC76:
	.string	"max_udp_payload_size"
.LC77:
	.string	"max_idle_timeout"
.LC78:
	.string	"active_connection_id_limit"
.LC79:
	.string	"stateless_reset_token"
.LC80:
	.string	"preferred_addr"
.LC81:
	.string	"port_v4"
.LC82:
	.string	"port_v6"
.LC83:
	.string	"ip_v4"
.LC84:
	.string	"ip_v6"
.LC85:
	.string	"connection_id"
.LC86:
	.string	"disable_active_migration"
.LC87:
	.string	"internal error"
	.text
	.type	ch_on_transport_params, @function
ch_on_transport_params:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-104(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L378
	leaq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L378:
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L382
	leaq	.LC0(%rip), %rsi
	leaq	.LC11(%rip), %rdx
	movq	-104(%rbp), %rax
	leaq	__func__.9(%rip), %rcx
	pushq	%rcx
	pushq	$1200
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L480
.L456:
	leaq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_transport_param@PLT
	testl	%eax, %eax
	je	.L481
	movq	-152(%rbp), %rax
	cmpq	$16, %rax
	je	.L384
	cmpq	$16, %rax
	ja	.L385
	cmpq	$15, %rax
	je	.L386
	cmpq	$15, %rax
	ja	.L385
	cmpq	$14, %rax
	je	.L387
	cmpq	$14, %rax
	ja	.L385
	cmpq	$13, %rax
	je	.L388
	cmpq	$13, %rax
	ja	.L385
	cmpq	$12, %rax
	je	.L389
	cmpq	$12, %rax
	ja	.L385
	cmpq	$11, %rax
	je	.L390
	cmpq	$11, %rax
	ja	.L385
	cmpq	$10, %rax
	je	.L391
	cmpq	$10, %rax
	ja	.L385
	cmpq	$9, %rax
	je	.L392
	cmpq	$9, %rax
	ja	.L385
	cmpq	$8, %rax
	je	.L393
	cmpq	$8, %rax
	ja	.L385
	cmpq	$7, %rax
	je	.L394
	cmpq	$7, %rax
	ja	.L385
	cmpq	$6, %rax
	je	.L395
	cmpq	$6, %rax
	ja	.L385
	cmpq	$5, %rax
	je	.L396
	cmpq	$5, %rax
	ja	.L385
	cmpq	$4, %rax
	je	.L397
	cmpq	$4, %rax
	ja	.L385
	cmpq	$3, %rax
	je	.L398
	cmpq	$3, %rax
	ja	.L385
	cmpq	$2, %rax
	je	.L399
	cmpq	$2, %rax
	ja	.L385
	testq	%rax, %rax
	je	.L400
	cmpq	$1, %rax
	je	.L401
	jmp	.L385
.L400:
	cmpl	$0, -4(%rbp)
	je	.L402
	leaq	.LC12(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L402:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L403
	leaq	.LC13(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L403:
	leaq	-192(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_cid@PLT
	testl	%eax, %eax
	jne	.L404
	leaq	.LC14(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L404:
	movq	-104(%rbp), %rax
	leaq	1112(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	jne	.L405
	leaq	.LC15(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L405:
	movl	$1, -4(%rbp)
	jmp	.L382
.L384:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L406
	leaq	.LC16(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L406:
	cmpl	$0, -12(%rbp)
	je	.L407
	leaq	.LC17(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L407:
	movq	-104(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L408
	leaq	.LC18(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L408:
	leaq	-192(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_cid@PLT
	testl	%eax, %eax
	jne	.L409
	leaq	.LC19(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L409:
	movq	-104(%rbp), %rax
	leaq	1154(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	jne	.L410
	leaq	.LC20(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L410:
	movl	$1, -12(%rbp)
	jmp	.L382
.L386:
	cmpl	$0, -8(%rbp)
	je	.L411
	leaq	.LC21(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L411:
	leaq	-192(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_cid@PLT
	testl	%eax, %eax
	jne	.L412
	leaq	.LC22(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L412:
	movq	-104(%rbp), %rax
	leaq	1133(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	jne	.L413
	leaq	.LC23(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L413:
	movl	$1, -8(%rbp)
	jmp	.L382
.L397:
	cmpl	$0, -16(%rbp)
	je	.L414
	leaq	.LC24(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L414:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	jne	.L415
	leaq	.LC25(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L415:
	movq	-160(%rbp), %rax
	movq	-104(%rbp), %rdx
	addq	$208, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	movl	$1, -16(%rbp)
	jmp	.L382
.L396:
	cmpl	$0, -20(%rbp)
	je	.L416
	leaq	.LC26(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L416:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	jne	.L417
	leaq	.LC27(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L417:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1280(%rax)
	movl	$1, -20(%rbp)
	jmp	.L382
.L395:
	cmpl	$0, -24(%rbp)
	je	.L418
	leaq	.LC28(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L418:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	jne	.L419
	leaq	.LC29(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L419:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1272(%rax)
	movq	-104(%rbp), %rax
	leaq	816(%rax), %rcx
	leaq	-160(%rbp), %rax
	leaq	txfc_bump_cwm_bidi(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_visit@PLT
	movl	$1, -24(%rbp)
	jmp	.L382
.L394:
	cmpl	$0, -28(%rbp)
	je	.L420
	leaq	.LC30(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L420:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	jne	.L421
	leaq	.LC31(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L421:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1288(%rax)
	movq	-104(%rbp), %rax
	leaq	816(%rax), %rcx
	leaq	-160(%rbp), %rax
	leaq	txfc_bump_cwm_uni(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_visit@PLT
	movl	$1, -28(%rbp)
	jmp	.L382
.L391:
	cmpl	$0, -48(%rbp)
	je	.L422
	leaq	.LC32(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L422:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L423
	movq	-160(%rbp), %rax
	cmpq	$20, %rax
	jbe	.L424
.L423:
	leaq	.LC33(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L424:
	movq	-160(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movb	%dl, 1304(%rax)
	movl	$1, -48(%rbp)
	jmp	.L382
.L390:
	cmpl	$0, -52(%rbp)
	je	.L425
	leaq	.LC34(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L425:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L426
	movq	-160(%rbp), %rax
	cmpq	$16383, %rax
	jbe	.L427
.L426:
	leaq	.LC35(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L427:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1296(%rax)
	movq	-104(%rbp), %rax
	movq	1296(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_set_rx_max_ack_delay@PLT
	movl	$1, -52(%rbp)
	jmp	.L382
.L393:
	cmpl	$0, -32(%rbp)
	je	.L428
	leaq	.LC36(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L428:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L429
	movq	-160(%rbp), %rax
	movabsq	$1152921504606846976, %rdx
	cmpq	%rax, %rdx
	jnb	.L430
.L429:
	leaq	.LC37(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L430:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1320(%rax)
	movl	$1, -32(%rbp)
	jmp	.L382
.L392:
	cmpl	$0, -36(%rbp)
	je	.L431
	leaq	.LC38(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L431:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L432
	movq	-160(%rbp), %rax
	movabsq	$1152921504606846976, %rdx
	cmpq	%rax, %rdx
	jnb	.L433
.L432:
	leaq	.LC39(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L433:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1328(%rax)
	movl	$1, -36(%rbp)
	jmp	.L382
.L401:
	cmpl	$0, -60(%rbp)
	je	.L434
	leaq	.LC40(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L434:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	jne	.L435
	leaq	.LC41(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L435:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1344(%rax)
	movq	-104(%rbp), %rax
	movq	1344(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	1336(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	min_u64_ignore_0
	movq	-104(%rbp), %rdx
	movq	%rax, 1352(%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_idle
	movl	$1, -60(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L382
.L398:
	cmpl	$0, -56(%rbp)
	je	.L436
	leaq	.LC42(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L436:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L437
	movq	-160(%rbp), %rax
	cmpq	$1199, %rax
	ja	.L438
.L437:
	leaq	.LC43(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L438:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1360(%rax)
	movl	$1, -56(%rbp)
	jmp	.L382
.L387:
	cmpl	$0, -64(%rbp)
	je	.L439
	leaq	.LC44(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L439:
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L440
	movq	-160(%rbp), %rax
	cmpq	$1, %rax
	ja	.L441
.L440:
	leaq	.LC45(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L441:
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 1368(%rax)
	movl	$1, -64(%rbp)
	jmp	.L382
.L399:
	cmpl	$0, -40(%rbp)
	je	.L442
	leaq	.LC46(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L442:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L443
	leaq	.LC47(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L443:
	leaq	-168(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L444
	movq	-168(%rbp), %rax
	cmpq	$16, %rax
	je	.L445
.L444:
	leaq	.LC48(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L445:
	movq	-104(%rbp), %rax
	movq	1224(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	-128(%rbp), %rcx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	jne	.L446
	leaq	.LC49(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L446:
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -40(%rbp)
	jmp	.L382
.L388:
	cmpl	$0, -44(%rbp)
	je	.L447
	leaq	.LC50(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L447:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L448
	leaq	.LC51(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L448:
	movq	-104(%rbp), %rax
	movzbl	1196(%rax), %eax
	testb	%al, %al
	jne	.L449
	leaq	.LC52(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L449:
	leaq	-256(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_preferred_addr@PLT
	testl	%eax, %eax
	jne	.L450
	leaq	.LC53(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L450:
	movzbl	-216(%rbp), %eax
	testb	%al, %al
	jne	.L451
	leaq	.LC54(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L451:
	movl	$1, -44(%rbp)
	jmp	.L382
.L389:
	cmpl	$0, -68(%rbp)
	je	.L452
	leaq	.LC55(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L452:
	leaq	-168(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L453
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L454
.L453:
	leaq	.LC56(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L454:
	movl	$1, -68(%rbp)
	jmp	.L382
.L385:
	leaq	-168(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L482
	nop
.L382:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L456
	cmpl	$0, -8(%rbp)
	jne	.L457
	leaq	.LC57(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L457:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L458
	cmpl	$0, -4(%rbp)
	jne	.L459
	leaq	.LC58(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L459:
	movq	-104(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L458
	cmpl	$0, -12(%rbp)
	jne	.L458
	leaq	.LC59(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L379
.L458:
	movq	-104(%rbp), %rax
	movzbl	1520(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1520(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	movq	%rax, -112(%rbp)
	movl	$4, -116(%rbp)
	leaq	.LC60(%rip), %rdi
	leaq	.LC61(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	movl	-116(%rbp), %esi
	movq	-112(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L460
	leaq	.LC63(%rip), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	cmpl	$0, -4(%rbp)
	je	.L461
	movq	-104(%rbp), %rax
	movzbl	1112(%rax), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	leaq	1113(%rax), %rdi
	leaq	.LC65(%rip), %rsi
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
.L461:
	cmpl	$0, -8(%rbp)
	je	.L462
	movq	-104(%rbp), %rax
	movzbl	1112(%rax), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	leaq	1113(%rax), %rdi
	leaq	.LC66(%rip), %rsi
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
.L462:
	cmpl	$0, -12(%rbp)
	je	.L463
	movq	-104(%rbp), %rax
	movzbl	1154(%rax), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	leaq	1155(%rax), %rdi
	leaq	.LC67(%rip), %rsi
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
.L463:
	cmpl	$0, -16(%rbp)
	je	.L464
	movq	-104(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	.LC68(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L464:
	cmpl	$0, -20(%rbp)
	je	.L465
	movq	-104(%rbp), %rax
	movq	1272(%rax), %rdx
	leaq	.LC69(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L465:
	cmpl	$0, -24(%rbp)
	je	.L466
	movq	-104(%rbp), %rax
	movq	1280(%rax), %rdx
	leaq	.LC70(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L466:
	cmpl	$0, -28(%rbp)
	je	.L467
	movq	-104(%rbp), %rax
	movq	1288(%rax), %rdx
	leaq	.LC71(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L467:
	cmpl	$0, -32(%rbp)
	je	.L468
	movq	-104(%rbp), %rax
	movq	1320(%rax), %rdx
	leaq	.LC72(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L468:
	cmpl	$0, -36(%rbp)
	je	.L469
	movq	-104(%rbp), %rax
	movq	1328(%rax), %rdx
	leaq	.LC73(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L469:
	cmpl	$0, -48(%rbp)
	je	.L470
	movq	-104(%rbp), %rax
	movzbl	1304(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC74(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L470:
	cmpl	$0, -52(%rbp)
	je	.L471
	movq	-104(%rbp), %rax
	movq	1296(%rax), %rdx
	leaq	.LC75(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L471:
	cmpl	$0, -56(%rbp)
	je	.L472
	movq	-104(%rbp), %rax
	movq	1360(%rax), %rdx
	leaq	.LC76(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L472:
	cmpl	$0, -60(%rbp)
	je	.L473
	movq	-88(%rbp), %rdx
	leaq	.LC77(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L473:
	cmpl	$0, -64(%rbp)
	je	.L474
	movq	-104(%rbp), %rax
	movq	1368(%rax), %rdx
	leaq	.LC78(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L474:
	cmpl	$0, -40(%rbp)
	je	.L475
	movq	-96(%rbp), %rdx
	leaq	.LC79(%rip), %rsi
	movq	-112(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
.L475:
	cmpl	$0, -44(%rbp)
	je	.L476
	leaq	.LC80(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	movzwl	-256(%rbp), %eax
	movzwl	%ax, %edx
	leaq	.LC81(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movzwl	-254(%rbp), %eax
	movzwl	%ax, %edx
	leaq	.LC82(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	leaq	-256(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	.LC83(%rip), %rsi
	movq	-112(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	leaq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	.LC84(%rip), %rsi
	movq	-112(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	leaq	-256(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	.LC79(%rip), %rsi
	movq	-112(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movzbl	-216(%rbp), %eax
	movzbl	%al, %edx
	leaq	-256(%rbp), %rax
	leaq	41(%rax), %rdi
	leaq	.LC85(%rip), %rsi
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
.L476:
	movl	-68(%rbp), %edx
	leaq	.LC86(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_bool@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L460:
	cmpl	$0, -16(%rbp)
	jne	.L477
	cmpl	$0, -24(%rbp)
	jne	.L477
	cmpl	$0, -32(%rbp)
	jne	.L477
	cmpl	$0, -36(%rbp)
	je	.L478
.L477:
	movq	-104(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-104(%rbp), %rax
	leaq	do_update(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_visit@PLT
.L478:
	movq	-104(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L479
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ch_generate_transport_params
	testl	%eax, %eax
	jne	.L479
	leaq	.LC0(%rip), %rsi
	leaq	.LC87(%rip), %rdx
	movq	-104(%rbp), %rax
	leaq	__func__.9(%rip), %rcx
	pushq	%rcx
	pushq	$1690
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L480
.L479:
	movl	$1, %eax
	jmp	.L480
.L481:
	nop
	jmp	.L379
.L482:
	nop
.L379:
	leaq	.LC0(%rip), %rsi
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	__func__.9(%rip), %rcx
	pushq	%rcx
	pushq	$1698
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L480:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	ch_on_transport_params, .-ch_on_transport_params
	.section	.rodata
.LC88:
	.string	"local"
.LC89:
	.string	"initial_source_connection_id"
.LC90:
	.string	""
	.text
	.type	ch_generate_transport_params, @function
ch_generate_transport_params:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L511
	movq	-120(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L511
	call	BUF_MEM_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L512
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	je	.L513
	movl	$1, -20(%rbp)
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$12, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	testq	%rax, %rax
	je	.L514
	movq	-120(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L490
	movq	-120(%rbp), %rax
	leaq	1112(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_cid@PLT
	testl	%eax, %eax
	je	.L515
	movq	-120(%rbp), %rax
	leaq	1175(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_cid@PLT
	testl	%eax, %eax
	jne	.L492
	jmp	.L486
.L490:
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$15, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	testq	%rax, %rax
	je	.L516
.L492:
	movq	-120(%rbp), %rax
	movq	1336(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L517
	leaq	-96(%rbp), %rax
	movl	$1200, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L518
	leaq	-96(%rbp), %rax
	movl	$2, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L519
	movq	-120(%rbp), %rax
	movq	1264(%rax), %rax
	cmpq	$25, %rax
	je	.L496
	movq	-120(%rbp), %rax
	movq	1264(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L520
.L496:
	movq	-120(%rbp), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L521
	movq	-120(%rbp), %rax
	movq	1240(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L522
	movq	-120(%rbp), %rax
	movq	1248(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L523
	movq	-120(%rbp), %rax
	movq	1256(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L524
	movq	-120(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L525
	movq	-120(%rbp), %rax
	addq	$720, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	testl	%eax, %eax
	je	.L526
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L527
	movl	$0, -20(%rbp)
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L528
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tls_set_transport_params@PLT
	testl	%eax, %eax
	je	.L529
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	movq	%rax, -32(%rbp)
	movl	$4, -36(%rbp)
	leaq	.LC60(%rip), %rdi
	leaq	.LC61(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L506
	leaq	.LC88(%rip), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	leaq	.LC86(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_bool@PLT
	movq	-120(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L507
	movq	-120(%rbp), %rax
	movzbl	1112(%rax), %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	leaq	1113(%rax), %rdi
	leaq	.LC65(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-120(%rbp), %rax
	movzbl	1175(%rax), %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	leaq	1176(%rax), %rdi
	leaq	.LC89(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	jmp	.L508
.L507:
	leaq	.LC90(%rip), %rdx
	leaq	.LC89(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
.L508:
	movq	-120(%rbp), %rax
	movq	1352(%rax), %rdx
	leaq	.LC77(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	leaq	.LC76(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	leaq	.LC78(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	movq	1264(%rax), %rdx
	leaq	.LC75(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	.LC68(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	movq	1240(%rax), %rdx
	leaq	.LC69(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	movq	1248(%rax), %rdx
	leaq	.LC70(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	movq	1256(%rax), %rdx
	leaq	.LC71(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	.LC72(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-120(%rbp), %rax
	addq	$720, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rdx
	leaq	.LC73(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L506:
	movq	-120(%rbp), %rax
	movzbl	1521(%rax), %edx
	orl	$1, %edx
	movb	%dl, 1521(%rax)
	movl	$1, -4(%rbp)
	jmp	.L486
.L511:
	nop
	jmp	.L486
.L512:
	nop
	jmp	.L486
.L513:
	nop
	jmp	.L486
.L514:
	nop
	jmp	.L486
.L515:
	nop
	jmp	.L486
.L516:
	nop
	jmp	.L486
.L517:
	nop
	jmp	.L486
.L518:
	nop
	jmp	.L486
.L519:
	nop
	jmp	.L486
.L520:
	nop
	jmp	.L486
.L521:
	nop
	jmp	.L486
.L522:
	nop
	jmp	.L486
.L523:
	nop
	jmp	.L486
.L524:
	nop
	jmp	.L486
.L525:
	nop
	jmp	.L486
.L526:
	nop
	jmp	.L486
.L527:
	nop
	jmp	.L486
.L528:
	nop
	jmp	.L486
.L529:
	nop
.L486:
	cmpl	$0, -20(%rbp)
	je	.L509
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L509:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	ch_generate_transport_params, .-ch_generate_transport_params
	.globl	ossl_quic_channel_subtick
	.type	ossl_quic_channel_subtick, @function
ossl_quic_channel_subtick:
.LFB811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L531
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-64(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 8(%rbx)
	jmp	.L530
.L531:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminating
	testl	%eax, %eax
	je	.L533
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	1464(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L533
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ch_on_terminating_timeout
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-64(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 8(%rbx)
	jmp	.L530
.L533:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	128(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L534
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ch_rxku_tick
.L536:
	movq	-56(%rbp), %rax
	movzbl	1523(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 1523(%rax)
	movq	-56(%rbp), %rax
	movzbl	1523(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 1523(%rax)
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_rx
	movq	-56(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L535
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_tick_tls
.L535:
	movq	-56(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L536
.L534:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	1472(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L537
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	128(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L538
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ch_on_idle_timeout
.L538:
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-64(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 8(%rbx)
	jmp	.L530
.L537:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	128(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L539
	movq	-56(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_loss_detection_deadline@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L540
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L540
	movq	-56(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_on_timeout@PLT
.L540:
	movq	-56(%rbp), %rax
	movq	1480(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L541
	movq	-56(%rbp), %rax
	movl	1520(%rax), %eax
	shrl	$14, %eax
	andl	$7, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	184(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_ack_eliciting@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_ping_deadline
.L541:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ch_tx
	movq	-56(%rbp), %rax
	addq	$816, %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_gc@PLT
.L539:
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ch_determine_next_tick_deadline
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	sete	%al
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	jne	.L542
	movq	-56(%rbp), %rax
	movq	1024(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_get_queue_len_datagrams@PLT
	testq	%rax, %rax
	je	.L542
	movl	$1, %eax
	jmp	.L543
.L542:
	movl	$0, %eax
.L543:
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, 1(%rax)
.L530:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	ossl_quic_channel_subtick, .-ossl_quic_channel_subtick
	.type	ch_tick_tls, @function
ch_tick_tls:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L546
	movl	$1, %eax
	jmp	.L549
.L546:
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$8, %edx
	movb	%dl, 1523(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tls_tick@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_quic_tls_get_error@PLT
	testl	%eax, %eax
	je	.L548
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	.LC0(%rip), %r8
	movq	-40(%rbp), %rax
	leaq	__func__.8(%rip), %rcx
	pushq	%rcx
	pushq	$2001
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L549
.L548:
	movl	$1, %eax
.L549:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	ch_tick_tls, .-ch_tick_tls
	.section	.rodata
.LC91:
	.string	"forgery limit"
	.text
	.type	ch_rx_check_forged_pkt_limit, @function
ch_rx_check_forged_pkt_limit:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$-1, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L551
.L556:
	movq	-40(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L559
	movq	-40(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jb	.L560
	movq	-40(%rbp), %rax
	movq	1032(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrx_get_max_forged_pkt_count@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L553
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L553
.L559:
	nop
.L553:
	addl	$1, -4(%rbp)
.L551:
	cmpl	$3, -4(%rbp)
	jbe	.L556
	jmp	.L555
.L560:
	nop
.L555:
	movq	-40(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_get_cur_forged_pkt_count@PLT
	cmpq	-16(%rbp), %rax
	jb	.L561
	leaq	.LC0(%rip), %rsi
	leaq	.LC91(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	__func__.7(%rip), %rcx
	pushq	%rcx
	pushq	$2037
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$15, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L550
.L561:
	nop
.L550:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	ch_rx_check_forged_pkt_limit, .-ch_rx_check_forged_pkt_limit
	.type	ch_rx, @function
ch_rx:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_closing@PLT
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L569
	movq	-24(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L569
	movl	$1, %eax
	jmp	.L564
.L569:
	movq	-24(%rbp), %rax
	leaq	1312(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_read_pkt@PLT
	testl	%eax, %eax
	je	.L572
	cmpl	$0, -8(%rbp)
	je	.L567
	movq	-24(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_record_received_closing_bytes@PLT
.L567:
	cmpl	$0, -4(%rbp)
	jne	.L568
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_idle
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_ping_deadline
.L568:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_rx_handle_packet
	movq	-24(%rbp), %rax
	movq	1312(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	movq	-24(%rbp), %rax
	movq	$0, 1312(%rax)
	movq	-24(%rbp), %rax
	movzbl	1523(%rax), %edx
	andl	$-33, %edx
	movb	%dl, 1523(%rax)
	movl	$1, -4(%rbp)
	jmp	.L569
.L572:
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ch_rx_check_forged_pkt_limit
	cmpl	$0, -4(%rbp)
	je	.L570
	cmpl	$0, -8(%rbp)
	je	.L570
	movq	-24(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$1, %edx
	movb	%dl, 1523(%rax)
.L570:
	movl	$1, %eax
.L564:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	ch_rx, .-ch_rx
	.type	bio_addr_eq, @function
bio_addr_eq:
.LFB815:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	%eax, %ebx
	je	.L574
	movl	$0, %eax
	jmp	.L575
.L574:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$2, %eax
	je	.L576
	cmpl	$10, %eax
	je	.L577
	jmp	.L583
.L576:
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L579
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %edx
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %eax
	cmpw	%ax, %dx
	jne	.L579
	movl	$1, %eax
	jmp	.L575
.L579:
	movl	$0, %eax
	jmp	.L575
.L577:
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L581
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %edx
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %eax
	cmpw	%ax, %dx
	jne	.L581
	movl	$1, %eax
	jmp	.L575
.L581:
	movl	$0, %eax
	jmp	.L575
.L583:
	movl	$0, %eax
.L575:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	bio_addr_eq, .-bio_addr_eq
	.section	.rodata
.LC92:
	.string	"packet header reserved bits"
.LC93:
	.string	"handling retry packet"
.LC94:
	.string	"new packet with old keys"
.LC95:
	.string	"client received initial token"
	.text
	.type	ch_rx_handle_packet, @function
ch_rx_handle_packet:
.LFB816:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	je	.L613
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	testl	%eax, %eax
	je	.L587
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L588
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	29(%rsi), %rax
	movq	37(%rsi), %rdx
	movq	%rax, 1133(%rcx)
	movq	%rdx, 1141(%rcx)
	movq	42(%rsi), %rax
	movq	%rax, 1146(%rcx)
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	1133(%rsi), %rax
	movq	1141(%rsi), %rdx
	movq	%rax, 1196(%rcx)
	movq	%rdx, 1204(%rcx)
	movq	1146(%rsi), %rax
	movq	%rax, 1209(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %edx
	orl	$8, %edx
	movb	%dl, 1520(%rax)
	movq	-72(%rbp), %rax
	leaq	1133(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_cur_dcid@PLT
.L588:
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_to_enc_level
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L614
.L587:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L589
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L589
	movq	-72(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$2, %eax
	je	.L590
	movq	-72(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$10, %eax
	jne	.L589
.L590:
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_addr_eq
	testl	%eax, %eax
	je	.L615
.L589:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L591
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L591
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_scid
	testl	%eax, %eax
	je	.L591
	movq	-72(%rbp), %rax
	leaq	1133(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	addq	$29, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	je	.L616
.L591:
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_version
	testl	%eax, %eax
	je	.L592
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L617
.L592:
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %edx
	orl	$16, %edx
	movb	%dl, 1520(%rax)
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	testl	%eax, %eax
	je	.L593
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	2(%rax), %eax
	andl	$48, %eax
	testb	%al, %al
	je	.L593
	leaq	.LC0(%rip), %rsi
	leaq	.LC92(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.6(%rip), %rcx
	pushq	%rcx
	pushq	$2208
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L584
.L593:
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	64(%rax), %r13
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	32(%rax), %r12
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	movq	%rax, %rdi
	leaq	-64(%rbp), %rax
	movq	%r13, %r9
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	ossl_qlog_event_transport_packet_received@PLT
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	je	.L594
	cmpl	$6, %eax
	jg	.L618
	cmpl	$5, %eax
	je	.L596
	cmpl	$5, %eax
	jg	.L618
	cmpl	$4, %eax
	je	.L597
	cmpl	$4, %eax
	jg	.L618
	cmpl	$3, %eax
	je	.L596
	cmpl	$3, %eax
	jg	.L618
	cmpl	$1, %eax
	je	.L596
	cmpl	$2, %eax
	je	.L598
	jmp	.L618
.L597:
	movq	-72(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L619
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L619
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L620
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	cmpq	$16, %rax
	jbe	.L621
	movq	-72(%rbp), %rax
	leaq	1112(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_validate_retry_integrity_tag@PLT
	testl	%eax, %eax
	je	.L622
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	leaq	29(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	leaq	-16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_retry
	testl	%eax, %eax
	jne	.L623
	leaq	.LC0(%rip), %rsi
	leaq	.LC93(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.6(%rip), %rcx
	pushq	%rcx
	pushq	$2260
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L623
.L598:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jmp	.L584
.L596:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L607
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L607
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ch_discard_el
.L607:
	movq	-72(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L608
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L608
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	1512(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L608
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	56(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_get_key_epoch@PLT
	cmpq	%rax, %rbx
	jnb	.L608
	leaq	.LC0(%rip), %rsi
	leaq	.LC94(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.6(%rip), %rcx
	pushq	%rcx
	pushq	$2298
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L584
.L608:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L609
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L609
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L609
	leaq	.LC0(%rip), %rsi
	leaq	.LC95(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.6(%rip), %rcx
	pushq	%rcx
	pushq	$2323
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L584
.L609:
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_handle_frames@PLT
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L624
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_tick_tls
	jmp	.L624
.L594:
	cmpl	$0, -36(%rbp)
	jne	.L625
	movq	-72(%rbp), %rax
	movq	1312(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ch_rx_handle_version_neg
	jmp	.L625
.L613:
	nop
	jmp	.L584
.L614:
	nop
	jmp	.L584
.L615:
	nop
	jmp	.L584
.L616:
	nop
	jmp	.L584
.L617:
	nop
	jmp	.L584
.L618:
	nop
	jmp	.L584
.L619:
	nop
	jmp	.L584
.L620:
	nop
	jmp	.L584
.L621:
	nop
	jmp	.L584
.L622:
	nop
	jmp	.L584
.L623:
	nop
	jmp	.L584
.L624:
	nop
	jmp	.L584
.L625:
	nop
.L584:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	ch_rx_handle_packet, .-ch_rx_handle_packet
	.type	ch_rx_handle_version_neg, @function
ch_rx_handle_version_neg:
.LFB817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L634
	jmp	.L629
.L632:
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	je	.L635
	movq	-24(%rbp), %rax
	cmpl	$1, %eax
	je	.L636
.L629:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L632
	jmp	.L631
.L635:
	nop
.L631:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ch_raise_version_neg_failure
	jmp	.L626
.L634:
	nop
	jmp	.L626
.L636:
	nop
.L626:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	ch_rx_handle_version_neg, .-ch_rx_handle_version_neg
	.section	.rodata
.LC96:
	.string	"version negotiation failure"
	.text
	.type	ch_raise_version_neg_failure, @function
ch_raise_version_neg_failure:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	$2, -48(%rbp)
	leaq	.LC96(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ch_start_terminating
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	ch_raise_version_neg_failure, .-ch_raise_version_neg_failure
	.section	.rodata
.LC97:
	.string	"internal error (txp generate)"
	.text
	.type	ch_tx, @function
ch_tx:
.LFB819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_draining
	testl	%eax, %eax
	je	.L639
	movl	$0, %eax
	jmp	.L653
.L639:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_closing@PLT
	testl	%eax, %eax
	je	.L641
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L642
	movl	$0, %eax
	jmp	.L653
.L642:
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1523(%rax)
.L641:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ch_maybe_trigger_spontaneous_txku
	movq	-40(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 1524(%rax)
.L649:
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_generate@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L643
	movq	-40(%rbp), %rax
	movzbl	1520(%rax), %edx
	orl	$32, %edx
	movb	%dl, 1520(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	114(%rax), %edx
	orl	$4, %edx
	movb	%dl, 114(%rax)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L644
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L644
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_idle
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$32, %edx
	movb	%dl, 1523(%rax)
.L644:
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L645
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L645
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ch_discard_el
.L645:
	movq	-40(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L646
	movq	-40(%rbp), %rax
	movzbl	1524(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 1524(%rax)
.L646:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ch_update_ping_deadline
.L643:
	cmpl	$0, -4(%rbp)
	jne	.L647
	leaq	.LC0(%rip), %rsi
	leaq	.LC97(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	__func__.5(%rip), %rcx
	pushq	%rcx
	pushq	$2482
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L648
.L647:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L649
.L648:
	movq	-40(%rbp), %rax
	movq	1024(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_flush_net@PLT
	cmpl	$-1, %eax
	je	.L654
	cmpl	$1, %eax
	je	.L654
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_raise_net_error@PLT
	jmp	.L652
.L654:
	nop
.L652:
	movl	$1, %eax
.L653:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	ch_tx, .-ch_tx
	.type	ch_determine_next_tick_deadline, @function
ch_determine_next_tick_deadline:
.LFB820:
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
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L656
	call	ossl_time_infinite
	jmp	.L666
.L656:
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_loss_detection_deadline@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L658
	call	ossl_time_infinite
	movq	%rax, -16(%rbp)
.L658:
	movl	$0, -4(%rbp)
	jmp	.L659
.L661:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	1024(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_is_enc_level_provisioned@PLT
	testl	%eax, %eax
	je	.L660
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
.L660:
	addl	$1, -4(%rbp)
.L659:
	cmpl	$3, -4(%rbp)
	jle	.L661
	movq	-24(%rbp), %rax
	movq	1480(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L662
	movq	-24(%rbp), %rax
	movq	1480(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
.L662:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_get_deadline@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminating
	testl	%eax, %eax
	je	.L663
	movq	-24(%rbp), %rax
	movq	1464(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
	jmp	.L664
.L663:
	movq	-24(%rbp), %rax
	movq	1472(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L664
	movq	-24(%rbp), %rax
	movq	1472(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
.L664:
	movq	-24(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L665
	movq	-24(%rbp), %rax
	movq	1496(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
.L665:
	movq	-16(%rbp), %rax
.L666:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	ch_determine_next_tick_deadline, .-ch_determine_next_tick_deadline
	.type	ch_record_state_transition, @function
ch_record_state_transition:
.LFB821:
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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	andl	$7, %eax
	movq	-40(%rbp), %rdx
	andl	$7, %eax
	movl	%eax, %ecx
	movzbl	1520(%rdx), %eax
	andl	$-8, %eax
	orl	%ecx, %eax
	movb	%al, 1520(%rdx)
	movq	-40(%rbp), %rax
	movzbl	1521(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %r12d
	movq	-40(%rbp), %rax
	movzbl	1521(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	movq	%rax, %rdi
	movl	-44(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	movl	%eax, %esi
	call	ossl_qlog_event_connectivity_connection_state_updated@PLT
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	ch_record_state_transition, .-ch_record_state_transition
	.globl	ossl_quic_channel_start
	.type	ossl_quic_channel_start, @function
ossl_quic_channel_start:
.LFB822:
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
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L669
	movl	$0, %eax
	jmp	.L670
.L669:
	movq	-24(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	testb	%al, %al
	je	.L671
	movl	$1, %eax
	jmp	.L670
.L671:
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_peer@PLT
	testl	%eax, %eax
	jne	.L672
	movl	$0, %eax
	jmp	.L670
.L672:
	movq	-24(%rbp), %rax
	movq	1024(%rax), %r8
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rcx
	movq	-24(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	1112(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_provide_initial_secret@PLT
	testl	%eax, %eax
	jne	.L673
	movl	$0, %eax
	jmp	.L670
.L673:
	movq	-24(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L674
	movq	-24(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L674
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ch_generate_transport_params
	testl	%eax, %eax
	jne	.L674
	movl	$0, %eax
	jmp	.L670
.L674:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	movq	-24(%rbp), %rax
	movzbl	1520(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 1520(%rax)
	movq	-24(%rbp), %rax
	leaq	1112(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_event_connectivity_connection_started@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ch_tick_tls
	testl	%eax, %eax
	jne	.L675
	movl	$0, %eax
	jmp	.L670
.L675:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_get0_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
	movl	$1, %eax
.L670:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	ossl_quic_channel_start, .-ossl_quic_channel_start
	.globl	ossl_quic_channel_local_close
	.type	ossl_quic_channel_local_close, @function
ossl_quic_channel_local_close:
.LFB823:
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
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_term_any@PLT
	testl	%eax, %eax
	jne	.L681
	movzbl	-16(%rbp), %eax
	orl	$1, %eax
	movb	%al, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L679
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L680
.L679:
	movl	$0, %eax
.L680:
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ch_start_terminating
	jmp	.L676
.L681:
	nop
.L676:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	ossl_quic_channel_local_close, .-ossl_quic_channel_local_close
	.type	free_token, @function
free_token:
.LFB824:
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
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2646, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	free_token, .-free_token
	.section	.rodata
.LC98:
	.string	"received oversize token"
	.text
	.type	ch_retry, @function
ch_retry:
.LFB825:
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
	movq	-24(%rbp), %rax
	leaq	1112(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	je	.L684
	movl	$1, %eax
	jmp	.L685
.L684:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_cur_dcid@PLT
	testl	%eax, %eax
	jne	.L686
	movl	$0, %eax
	jmp	.L685
.L686:
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$2672, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L687
	movl	$0, %eax
	jmp	.L685
.L687:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	leaq	free_token(%rip), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_initial_token@PLT
	testl	%eax, %eax
	jne	.L688
	leaq	.LC0(%rip), %rsi
	leaq	.LC98(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.4(%rip), %rcx
	pushq	%rcx
	pushq	$2682
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2684, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L685
.L688:
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 1154(%rcx)
	movq	%rdx, 1162(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 1167(%rcx)
	movq	-24(%rbp), %rax
	movzbl	1521(%rax), %edx
	orl	$8, %edx
	movb	%dl, 1521(%rax)
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ackm_mark_packet_pseudo_lost@PLT
	testl	%eax, %eax
	jne	.L689
	movl	$0, %eax
	jmp	.L685
.L689:
	movq	-24(%rbp), %rax
	movq	1024(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	1154(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_provide_initial_secret@PLT
	testl	%eax, %eax
	jne	.L690
	movl	$0, %eax
	jmp	.L685
.L690:
	movl	$1, %eax
.L685:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	ch_retry, .-ch_retry
	.type	ch_discard_el, @function
ch_discard_el:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$2, -28(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L692
	movl	$0, %eax
	jmp	.L693
.L692:
	movq	-24(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L694
	movl	$1, %eax
	jmp	.L693
.L694:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_discard_enc_level@PLT
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrx_discard_enc_level@PLT
	movq	-24(%rbp), %rax
	movq	1024(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_discard_enc_level@PLT
	cmpl	$2, -28(%rbp)
	je	.L695
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	1016(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_on_pkt_space_discarded@PLT
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$132, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L696
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L697
.L696:
	movl	$0, %eax
	jmp	.L693
.L697:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$132, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$132, %rdx
	movq	$0, 8(%rax,%rdx,8)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$136, %rdx
	movq	$0, (%rax,%rdx,8)
.L695:
	movq	-24(%rbp), %rax
	movzbl	1522(%rax), %eax
	shrb	$4, %al
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	1522(%rax), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, 1522(%rax)
	movl	$1, %eax
.L693:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	ch_discard_el, .-ch_discard_el
	.section	.rodata
	.align 8
.LC99:
	.string	"handshake cannot be confirmed before it is completed"
	.text
	.globl	ossl_quic_channel_on_handshake_confirmed
	.type	ossl_quic_channel_on_handshake_confirmed, @function
ossl_quic_channel_on_handshake_confirmed:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L699
	movl	$1, %eax
	jmp	.L700
.L699:
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L701
	leaq	.LC0(%rip), %rsi
	leaq	.LC99(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	__func__.3(%rip), %rcx
	pushq	%rcx
	pushq	$2768
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$30, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L700
.L701:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ch_discard_el
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %edx
	orl	$4, %edx
	movb	%dl, 1521(%rax)
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	movq	-8(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_on_handshake_confirmed@PLT
	movl	$1, %eax
.L700:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	ossl_quic_channel_on_handshake_confirmed, .-ossl_quic_channel_on_handshake_confirmed
	.type	copy_tcause, @function
copy_tcause:
.LFB828:
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
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	32(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 32(%rax)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movq	-24(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	32(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L702
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L702
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L704
	subq	$1, -8(%rbp)
.L704:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$2849, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -16(%rbp)
	je	.L706
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L702
.L706:
	nop
.L702:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	copy_tcause, .-copy_tcause
	.type	ch_start_terminating, @function
ch_start_terminating:
.LFB829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L708
	movl	$1, -84(%rbp)
.L708:
	movq	-72(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	movzbl	%al, %eax
	cmpl	$4, %eax
	je	.L722
	cmpl	$4, %eax
	jg	.L710
	cmpl	$3, %eax
	je	.L711
	cmpl	$3, %eax
	jg	.L710
	cmpl	$1, %eax
	je	.L712
	cmpl	$2, %eax
	je	.L713
.L710:
	movq	-72(%rbp), %rax
	leaq	1424(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	copy_tcause
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_on_terminating_timeout
	jmp	.L714
.L712:
	movq	-72(%rbp), %rax
	leaq	1424(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	copy_tcause
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_qlog
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_qlog_event_connectivity_connection_closed@PLT
	cmpl	$0, -84(%rbp)
	jne	.L715
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L716
	movl	$3, %edx
	jmp	.L717
.L716:
	movl	$2, %edx
.L717:
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	movq	-72(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_pto_duration@PLT
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	-72(%rbp), %rbx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 1464(%rbx)
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L723
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	1424(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	1432(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movzbl	1456(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-64(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	1440(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	1448(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_conn_close@PLT
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$1, %edx
	movb	%dl, 1523(%rax)
	jmp	.L723
.L715:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_on_terminating_timeout
	jmp	.L723
.L713:
	cmpl	$0, -84(%rbp)
	je	.L719
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_on_terminating_timeout
	jmp	.L724
.L719:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L724
	movq	-72(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	jmp	.L724
.L711:
	cmpl	$0, -84(%rbp)
	je	.L725
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ch_on_terminating_timeout
	jmp	.L725
.L722:
	nop
	jmp	.L726
.L723:
	nop
	jmp	.L726
.L724:
	nop
	jmp	.L726
.L725:
	nop
.L714:
.L726:
	nop
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	ch_start_terminating, .-ch_start_terminating
	.globl	ossl_quic_channel_on_remote_conn_close
	.type	ossl_quic_channel_on_remote_conn_close, @function
ossl_quic_channel_on_remote_conn_close:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	je	.L730
	movzbl	-16(%rbp), %eax
	orl	$2, %eax
	movb	%al, -16(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ch_start_terminating
	jmp	.L727
.L730:
	nop
.L727:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	ossl_quic_channel_on_remote_conn_close, .-ossl_quic_channel_on_remote_conn_close
	.type	free_frame_data, @function
free_frame_data:
.LFB831:
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
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2966, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	free_frame_data, .-free_frame_data
	.section	.rodata
	.align 8
.LC100:
	.string	"internal error enqueueing retire conn id"
	.text
	.type	ch_enqueue_retire_conn_id, @function
ch_enqueue_retire_conn_id:
.LFB832:
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
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_remove@PLT
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L741
	movq	-8(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	je	.L742
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_retire_conn_id@PLT
	testl	%eax, %eax
	jne	.L736
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	jmp	.L734
.L736:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L743
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	200(%rax), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	free_frame_data(%rip), %rcx
	pushq	%rcx
	pushq	%rdx
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$25, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_add_frame@PLT
	addq	$32, %rsp
	testq	%rax, %rax
	je	.L744
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$1, %eax
	jmp	.L740
.L741:
	nop
	jmp	.L734
.L742:
	nop
	jmp	.L734
.L743:
	nop
	jmp	.L734
.L744:
	nop
.L734:
	leaq	.LC0(%rip), %rsi
	leaq	.LC100(%rip), %rdx
	movq	-88(%rbp), %rax
	leaq	__func__.2(%rip), %rcx
	pushq	%rcx
	pushq	$3003
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$0, %eax
.L740:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	ch_enqueue_retire_conn_id, .-ch_enqueue_retire_conn_id
	.section	.rodata
	.align 8
.LC101:
	.string	"zero length connection id in use"
	.align 8
.LC102:
	.string	"active_connection_id limit violated"
	.align 8
.LC103:
	.string	"retiring connection id limit violated"
	.align 8
.LC104:
	.string	"unable to store stateless reset token"
	.text
	.globl	ossl_quic_channel_on_new_conn_id
	.type	ossl_quic_channel_on_new_conn_id, @function
ossl_quic_channel_on_new_conn_id:
.LFB833:
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
	movq	1224(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	je	.L758
	movq	-24(%rbp), %rax
	movzbl	1196(%rax), %eax
	testb	%al, %al
	jne	.L748
	leaq	.LC0(%rip), %rsi
	leaq	.LC101(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.1(%rip), %rcx
	pushq	%rcx
	pushq	$3023
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L745
.L748:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L749
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L749:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L750
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L750:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L751
	leaq	.LC0(%rip), %rsi
	leaq	.LC102(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.1(%rip), %rcx
	pushq	%rcx
	pushq	$3047
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L745
.L751:
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	cmpq	$10, %rdx
	jbe	.L752
	leaq	.LC0(%rip), %rsi
	leaq	.LC103(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.1(%rip), %rcx
	pushq	%rcx
	pushq	$3070
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L745
.L752:
	movq	-24(%rbp), %rax
	movq	1224(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L755
	movq	-32(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	jne	.L754
	leaq	.LC0(%rip), %rsi
	leaq	.LC104(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	__func__.1(%rip), %rcx
	pushq	%rcx
	pushq	$3082
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	jmp	.L745
.L754:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 1224(%rax)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 1196(%rcx)
	movq	%rdx, 1204(%rcx)
	movq	29(%rsi), %rax
	movq	%rax, 1209(%rcx)
	movq	-24(%rbp), %rax
	leaq	1196(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_cur_dcid@PLT
	jmp	.L755
.L757:
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ch_enqueue_retire_conn_id
	testl	%eax, %eax
	je	.L759
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1232(%rax)
.L755:
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L757
	jmp	.L745
.L758:
	nop
	jmp	.L745
.L759:
	nop
.L745:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	ossl_quic_channel_on_new_conn_id, .-ossl_quic_channel_on_new_conn_id
	.type	ch_save_err_state, @function
ch_save_err_state:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	testq	%rax, %rax
	jne	.L761
	call	OSSL_ERR_STATE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 1528(%rdx)
.L761:
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	testq	%rax, %rax
	je	.L764
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_save@PLT
	jmp	.L760
.L764:
	nop
.L760:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	ch_save_err_state, .-ch_save_err_state
	.globl	ossl_quic_channel_inject
	.type	ossl_quic_channel_inject, @function
ossl_quic_channel_inject:
.LFB835:
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
	movq	1032(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_inject_urxe@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE835:
	.size	ossl_quic_channel_inject, .-ossl_quic_channel_inject
	.globl	ossl_quic_channel_on_stateless_reset
	.type	ossl_quic_channel_on_stateless_reset, @function
ossl_quic_channel_on_stateless_reset:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	$0, -48(%rbp)
	movzbl	-16(%rbp), %eax
	orl	$2, %eax
	movb	%al, -16(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ch_start_terminating
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	ossl_quic_channel_on_stateless_reset, .-ossl_quic_channel_on_stateless_reset
	.section	.rodata
.LC105:
	.string	"network BIO I/O error"
	.text
	.globl	ossl_quic_channel_raise_net_error
	.type	ossl_quic_channel_raise_net_error, @function
ossl_quic_channel_raise_net_error:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L770
	movq	-56(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$32, %edx
	movb	%dl, 1524(%rax)
	movq	$1, -48(%rbp)
	leaq	.LC105(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ch_start_terminating
	jmp	.L767
.L770:
	nop
.L767:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	ossl_quic_channel_raise_net_error, .-ossl_quic_channel_raise_net_error
	.globl	ossl_quic_channel_net_error
	.type	ossl_quic_channel_net_error, @function
ossl_quic_channel_net_error:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1524(%rax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	ossl_quic_channel_net_error, .-ossl_quic_channel_net_error
	.globl	ossl_quic_channel_restore_err_state
	.type	ossl_quic_channel_restore_err_state, @function
ossl_quic_channel_restore_err_state:
.LFB839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L777
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_is_running@PLT
	testl	%eax, %eax
	jne	.L776
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_restore_err_state@PLT
	jmp	.L773
.L776:
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_restore@PLT
	jmp	.L773
.L777:
	nop
.L773:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	ossl_quic_channel_restore_err_state, .-ossl_quic_channel_restore_err_state
	.section	.rodata
.LC106:
	.string	" ("
.LC107:
	.string	")"
	.align 8
.LC108:
	.string	"QUIC error code: 0x%llx%s%s%s (triggered by frame type: 0x%llx%s%s%s), reason: \"%s\""
	.align 8
.LC109:
	.string	"QUIC error code: 0x%llx%s%s%s, reason: \"%s\""
	.text
	.globl	ossl_quic_channel_raise_protocol_error_loc
	.type	ossl_quic_channel_raise_protocol_error_loc, @function
ossl_quic_channel_raise_protocol_error_loc:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	cmpq	$1, -112(%rbp)
	jne	.L779
	movl	$786691, -4(%rbp)
	jmp	.L780
.L779:
	movl	$382, -4(%rbp)
.L780:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_err_to_string@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC106(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC107(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	.LC106(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC107(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L789
	cmpq	$0, -16(%rbp)
	jne	.L783
	leaq	.LC90(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC90(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC90(%rip), %rax
	movq	%rax, -32(%rbp)
.L783:
	cmpq	$0, -136(%rbp)
	je	.L784
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_restore@PLT
.L784:
	cmpq	$0, -120(%rbp)
	je	.L785
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_frame_type_to_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L786
	leaq	.LC90(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC90(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC90(%rip), %rax
	movq	%rax, -56(%rbp)
.L786:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-112(%rbp), %rdx
	leaq	.LC108(%rip), %rsi
	movl	-4(%rbp), %eax
	pushq	-128(%rbp)
	pushq	-56(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-120(%rbp)
	pushq	-32(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	addq	$48, %rsp
	jmp	.L787
.L785:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-112(%rbp), %rdx
	leaq	.LC109(%rip), %rsi
	movl	-4(%rbp), %eax
	pushq	-128(%rbp)
	pushq	-32(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	addq	$16, %rsp
.L787:
	cmpq	$0, -144(%rbp)
	je	.L788
	movq	24(%rbp), %rdx
	movl	16(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
.L788:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ch_save_err_state
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movzbl	1524(%rax), %edx
	orl	$64, %edx
	movb	%dl, 1524(%rax)
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ch_start_terminating
	jmp	.L778
.L789:
	nop
.L778:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	ossl_quic_channel_raise_protocol_error_loc, .-ossl_quic_channel_raise_protocol_error_loc
	.type	ch_on_terminating_timeout, @function
ch_on_terminating_timeout:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	ch_on_terminating_timeout, .-ch_on_terminating_timeout
	.type	ch_get_effective_idle_timeout_duration, @function
ch_get_effective_idle_timeout_duration:
.LFB842:
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
	movq	1352(%rax), %rax
	testq	%rax, %rax
	jne	.L792
	call	ossl_time_infinite
	jmp	.L794
.L792:
	movq	-40(%rbp), %rax
	movq	1016(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_pto_duration@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	1352(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_max
.L794:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	ch_get_effective_idle_timeout_duration, .-ch_get_effective_idle_timeout_duration
	.type	ch_update_idle, @function
ch_update_idle:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ch_get_effective_idle_timeout_duration
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	-24(%rbp), %rbx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 1472(%rbx)
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	ch_update_idle, .-ch_update_idle
	.type	ch_update_ping_deadline, @function
ch_update_ping_deadline:
.LFB844:
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
	movq	%rax, %rdi
	call	ch_get_effective_idle_timeout_duration
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	je	.L797
	movq	-40(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 1480(%rbx)
	jmp	.L796
.L797:
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_time_divide
	movq	%rax, -24(%rbp)
	movabsq	$25000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_time
	movq	%rax, %rdx
	movq	-40(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_add
	movq	%rax, 1480(%rbx)
.L796:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	ch_update_ping_deadline, .-ch_update_ping_deadline
	.type	ch_on_idle_timeout, @function
ch_on_idle_timeout:
.LFB845:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1456(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1456(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 1424(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 1432(%rax)
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	ch_on_idle_timeout, .-ch_on_idle_timeout
	.globl	ossl_quic_channel_on_new_conn
	.type	ossl_quic_channel_on_new_conn, @function
ossl_quic_channel_on_new_conn:
.LFB846:
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
	movzbl	1520(%rax), %eax
	andl	$7, %eax
	testb	%al, %al
	jne	.L801
	movq	-8(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L801
	movl	$1, %eax
	jmp	.L802
.L801:
	movl	$0, %eax
.L802:
	cltq
	testq	%rax, %rax
	jne	.L803
	movl	$0, %eax
	jmp	.L804
.L803:
	movq	-8(%rbp), %rax
	leaq	1175(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate_initial@PLT
	testl	%eax, %eax
	jne	.L805
	movl	$0, %eax
	jmp	.L804
.L805:
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	jne	.L806
	movl	$0, %eax
	jmp	.L804
.L806:
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 1112(%rcx)
	movq	%rdx, 1120(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 1125(%rcx)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 1196(%rcx)
	movq	%rdx, 1204(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 1209(%rcx)
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_peer@PLT
	testl	%eax, %eax
	jne	.L807
	movl	$0, %eax
	jmp	.L804
.L807:
	movq	-8(%rbp), %rax
	leaq	1196(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_cur_dcid@PLT
	testl	%eax, %eax
	jne	.L808
	movl	$0, %eax
	jmp	.L804
.L808:
	movq	-8(%rbp), %rax
	leaq	1175(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_cur_scid@PLT
	testl	%eax, %eax
	jne	.L809
	movl	$0, %eax
	jmp	.L804
.L809:
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	ch_get_qlog_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_set_qlog_cb@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	ch_get_qlog_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_qlog_cb@PLT
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1032(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ossl_quic_provide_initial_secret@PLT
	testl	%eax, %eax
	jne	.L810
	movl	$0, %eax
	jmp	.L804
.L810:
	movq	-8(%rbp), %rax
	leaq	1112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	jne	.L811
	movl	$0, %eax
	jmp	.L804
.L811:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ch_record_state_transition
	movq	-8(%rbp), %rax
	movzbl	1520(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 1520(%rax)
	movl	$1, %eax
.L804:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	ossl_quic_channel_on_new_conn, .-ossl_quic_channel_on_new_conn
	.globl	ossl_quic_channel_get0_ssl
	.type	ossl_quic_channel_get0_ssl, @function
ossl_quic_channel_get0_ssl:
.LFB847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	ossl_quic_channel_get0_ssl, .-ossl_quic_channel_get0_ssl
	.type	ch_init_new_stream, @function
ch_init_new_stream:
.LFB848:
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
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L815
	movl	$8192, %edi
	call	ossl_quic_sstream_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L829
.L815:
	cmpl	$0, -56(%rbp)
	je	.L817
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_rstream_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L830
.L817:
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-48(%rbp), %rax
	subq	$-128, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_init@PLT
	testl	%eax, %eax
	je	.L831
	movq	-40(%rbp), %rax
	movzbl	1520(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L819
	cmpl	$0, -52(%rbp)
	je	.L819
	cmpl	$0, -28(%rbp)
	je	.L820
	movq	-40(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L821
.L820:
	cmpl	$0, -24(%rbp)
	je	.L822
	movq	-40(%rbp), %rax
	movq	1272(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L821
.L822:
	movq	-40(%rbp), %rax
	movq	1280(%rax), %rax
	movq	%rax, -16(%rbp)
.L821:
	movq	-48(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
.L819:
	cmpl	$0, -56(%rbp)
	jne	.L823
	movq	$0, -8(%rbp)
	jmp	.L824
.L823:
	cmpl	$0, -28(%rbp)
	je	.L825
	movq	-40(%rbp), %rax
	movq	1256(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L824
.L825:
	cmpl	$0, -24(%rbp)
	je	.L826
	movq	-40(%rbp), %rax
	movq	1240(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L824
.L826:
	movq	-40(%rbp), %rax
	movq	1248(%rax), %rax
	movq	%rax, -8(%rbp)
.L824:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %r10
	movq	-40(%rbp), %rax
	leaq	240(%rax), %rsi
	movq	-48(%rbp), %rax
	leaq	160(%rax), %rdi
	movq	-40(%rbp), %rdx
	leaq	get_time(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%r10, %rcx
	movq	%rax, %rdx
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	je	.L832
	movl	$1, %eax
	jmp	.L828
.L829:
	nop
	jmp	.L816
.L830:
	nop
	jmp	.L816
.L831:
	nop
	jmp	.L816
.L832:
	nop
.L816:
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 120(%rax)
	movl	$0, %eax
.L828:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.size	ch_init_new_stream, .-ch_init_new_stream
	.type	ch_get_local_stream_next_ordinal_ptr, @function
ch_get_local_stream_next_ordinal_ptr:
.LFB849:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L834
	movq	-8(%rbp), %rax
	addq	$1384, %rax
	jmp	.L836
.L834:
	movq	-8(%rbp), %rax
	addq	$1376, %rax
.L836:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.size	ch_get_local_stream_next_ordinal_ptr, .-ch_get_local_stream_next_ordinal_ptr
	.type	ch_get_local_stream_max_ptr, @function
ch_get_local_stream_max_ptr:
.LFB850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L838
	movq	-8(%rbp), %rax
	addq	$1328, %rax
	jmp	.L840
.L838:
	movq	-8(%rbp), %rax
	addq	$1320, %rax
.L840:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	ch_get_local_stream_max_ptr, .-ch_get_local_stream_max_ptr
	.type	ch_get_remote_stream_count_rxfc, @function
ch_get_remote_stream_count_rxfc:
.LFB851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L842
	movq	-8(%rbp), %rax
	addq	$720, %rax
	jmp	.L844
.L842:
	movq	-8(%rbp), %rax
	addq	$624, %rax
.L844:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	ch_get_remote_stream_count_rxfc, .-ch_get_remote_stream_count_rxfc
	.globl	ossl_quic_channel_is_new_local_stream_admissible
	.type	ossl_quic_channel_is_new_local_stream_admissible, @function
ossl_quic_channel_is_new_local_stream_admissible:
.LFB852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_get_local_stream_next_ordinal_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	816(%rdx), %rcx
	movl	-28(%rbp), %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_is_local_allowed_by_stream_limit@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	ossl_quic_channel_is_new_local_stream_admissible, .-ossl_quic_channel_is_new_local_stream_admissible
	.globl	ossl_quic_channel_get_local_stream_count_avail
	.type	ossl_quic_channel_get_local_stream_count_avail, @function
ossl_quic_channel_get_local_stream_count_avail:
.LFB853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_get_local_stream_next_ordinal_ptr
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_get_local_stream_max_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	ossl_quic_channel_get_local_stream_count_avail, .-ossl_quic_channel_get_local_stream_count_avail
	.globl	ossl_quic_channel_get_remote_stream_count_avail
	.type	ossl_quic_channel_get_remote_stream_count_avail, @function
ossl_quic_channel_get_remote_stream_count_avail:
.LFB854:
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
	call	ch_get_remote_stream_count_rxfc
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_credit@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	ossl_quic_channel_get_remote_stream_count_avail, .-ossl_quic_channel_get_remote_stream_count_avail
	.globl	ossl_quic_channel_new_stream_local
	.type	ossl_quic_channel_new_stream_local, @function
ossl_quic_channel_new_stream_local:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %eax
	shrb	%al
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ch_get_local_stream_next_ordinal_ptr
	movq	%rax, -16(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L853
	orl	$2, -4(%rbp)
.L853:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$4611686018427387903, %rdx
	cmpq	%rax, %rdx
	jnb	.L854
	movl	$0, %eax
	jmp	.L855
.L854:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movl	-4(%rbp), %eax
	cltq
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	816(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_alloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L856
	movl	$0, %eax
	jmp	.L855
.L856:
	cmpl	$0, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ch_init_new_stream
	testl	%eax, %eax
	je	.L860
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L855
.L860:
	nop
.L858:
	movq	-40(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_release@PLT
	movl	$0, %eax
.L855:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	ossl_quic_channel_new_stream_local, .-ossl_quic_channel_new_stream_local
	.globl	ossl_quic_channel_new_stream_remote
	.type	ossl_quic_channel_new_stream_remote, @function
ossl_quic_channel_new_stream_remote:
.LFB856:
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
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	andl	$1, %eax
	cmpq	%rax, -8(%rbp)
	je	.L862
	movl	$0, %eax
	jmp	.L863
.L862:
	movq	-48(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	andl	$3, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_alloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L864
	movl	$0, %eax
	jmp	.L863
.L864:
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ch_init_new_stream
	testl	%eax, %eax
	je	.L870
	movq	-40(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L867
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_reject_stream@PLT
	jmp	.L868
.L867:
	movq	-40(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_push_accept_queue@PLT
.L868:
	movq	-24(%rbp), %rax
	jmp	.L863
.L870:
	nop
.L866:
	movq	-40(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_release@PLT
	movl	$0, %eax
.L863:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	ossl_quic_channel_new_stream_remote, .-ossl_quic_channel_new_stream_remote
	.globl	ossl_quic_channel_set_incoming_stream_auto_reject
	.type	ossl_quic_channel_set_incoming_stream_auto_reject, @function
ossl_quic_channel_set_incoming_stream_auto_reject:
.LFB857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%dl
	movq	-8(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	1523(%rax), %edx
	andl	$-65, %edx
	orl	%ecx, %edx
	movb	%dl, 1523(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1408(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	ossl_quic_channel_set_incoming_stream_auto_reject, .-ossl_quic_channel_set_incoming_stream_auto_reject
	.globl	ossl_quic_channel_reject_stream
	.type	ossl_quic_channel_reject_stream, @function
ossl_quic_channel_reject_stream:
.LFB858:
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
	movq	1408(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_stop_sending_recv_part@PLT
	movq	-8(%rbp), %rax
	movq	1408(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_reset_stream_send_part@PLT
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$32, %edx
	movb	%dl, 260(%rax)
	movq	-8(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	ossl_quic_channel_reject_stream, .-ossl_quic_channel_reject_stream
	.globl	ossl_quic_channel_replace_local_cid
	.type	ossl_quic_channel_replace_local_cid, @function
ossl_quic_channel_replace_local_cid:
.LFB859:
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
	leaq	1175(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_debug_remove@PLT
	testl	%eax, %eax
	jne	.L874
	movl	$0, %eax
	jmp	.L875
.L874:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 1175(%rcx)
	movq	%rdx, 1183(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 1188(%rcx)
	movq	-8(%rbp), %rax
	leaq	1175(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_cur_scid@PLT
	testl	%eax, %eax
	jne	.L876
	movl	$0, %eax
	jmp	.L875
.L876:
	movq	-8(%rbp), %rax
	leaq	1175(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$100, %ecx
	movq	%rax, %rdi
	call	ossl_quic_lcidm_debug_add@PLT
	testl	%eax, %eax
	jne	.L877
	movl	$0, %eax
	jmp	.L875
.L877:
	movl	$1, %eax
.L875:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	ossl_quic_channel_replace_local_cid, .-ossl_quic_channel_replace_local_cid
	.globl	ossl_quic_channel_set_msg_callback
	.type	ossl_quic_channel_set_msg_callback, @function
ossl_quic_channel_set_msg_callback:
.LFB860:
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
	movq	%rdx, 1040(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1056(%rax)
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_set_msg_callback@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_msg_callback@PLT
	movq	-8(%rbp), %rax
	movq	1032(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_set_msg_callback@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	ossl_quic_channel_set_msg_callback, .-ossl_quic_channel_set_msg_callback
	.globl	ossl_quic_channel_set_msg_callback_arg
	.type	ossl_quic_channel_set_msg_callback_arg, @function
ossl_quic_channel_set_msg_callback_arg:
.LFB861:
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
	movq	%rdx, 1048(%rax)
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_set_msg_callback_arg@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_msg_callback_arg@PLT
	movq	-8(%rbp), %rax
	movq	1032(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_set_msg_callback_arg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	ossl_quic_channel_set_msg_callback_arg, .-ossl_quic_channel_set_msg_callback_arg
	.globl	ossl_quic_channel_set_txku_threshold_override
	.type	ossl_quic_channel_set_txku_threshold_override, @function
ossl_quic_channel_set_txku_threshold_override:
.LFB862:
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
	movq	%rdx, 1416(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	ossl_quic_channel_set_txku_threshold_override, .-ossl_quic_channel_set_txku_threshold_override
	.globl	ossl_quic_channel_get_tx_key_epoch
	.type	ossl_quic_channel_get_tx_key_epoch, @function
ossl_quic_channel_get_tx_key_epoch:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_get_key_epoch@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	ossl_quic_channel_get_tx_key_epoch, .-ossl_quic_channel_get_tx_key_epoch
	.globl	ossl_quic_channel_get_rx_key_epoch
	.type	ossl_quic_channel_get_rx_key_epoch, @function
ossl_quic_channel_get_rx_key_epoch:
.LFB864:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_get_key_epoch@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	ossl_quic_channel_get_rx_key_epoch, .-ossl_quic_channel_get_rx_key_epoch
	.globl	ossl_quic_channel_trigger_txku
	.type	ossl_quic_channel_trigger_txku, @function
ossl_quic_channel_trigger_txku:
.LFB865:
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
	call	txku_allowed
	testl	%eax, %eax
	jne	.L886
	movl	$0, %eax
	jmp	.L887
.L886:
	movq	-8(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1523(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ch_trigger_txku
	movl	$1, %eax
.L887:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	ossl_quic_channel_trigger_txku, .-ossl_quic_channel_trigger_txku
	.globl	ossl_quic_channel_ping
	.type	ossl_quic_channel_ping, @function
ossl_quic_channel_ping:
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
	movl	1520(%rax), %eax
	shrl	$14, %eax
	andl	$7, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_ack_eliciting@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	ossl_quic_channel_ping, .-ossl_quic_channel_ping
	.globl	ossl_quic_channel_get_diag_num_rx_ack
	.type	ossl_quic_channel_get_diag_num_rx_ack, @function
ossl_quic_channel_get_diag_num_rx_ack:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	1306(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	ossl_quic_channel_get_diag_num_rx_ack, .-ossl_quic_channel_get_diag_num_rx_ack
	.globl	ossl_quic_channel_get_diag_local_cid
	.type	ossl_quic_channel_get_diag_local_cid, @function
ossl_quic_channel_get_diag_local_cid:
.LFB868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	1175(%rsi), %rax
	movq	1183(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	1188(%rsi), %rax
	movq	%rax, 13(%rcx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	ossl_quic_channel_get_diag_local_cid, .-ossl_quic_channel_get_diag_local_cid
	.globl	ossl_quic_channel_have_generated_transport_params
	.type	ossl_quic_channel_have_generated_transport_params, @function
ossl_quic_channel_have_generated_transport_params:
.LFB869:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1521(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	ossl_quic_channel_have_generated_transport_params, .-ossl_quic_channel_have_generated_transport_params
	.globl	ossl_quic_channel_set_max_idle_timeout_request
	.type	ossl_quic_channel_set_max_idle_timeout_request, @function
ossl_quic_channel_set_max_idle_timeout_request:
.LFB870:
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
	movq	%rdx, 1336(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	ossl_quic_channel_set_max_idle_timeout_request, .-ossl_quic_channel_set_max_idle_timeout_request
	.globl	ossl_quic_channel_get_max_idle_timeout_request
	.type	ossl_quic_channel_get_max_idle_timeout_request, @function
ossl_quic_channel_get_max_idle_timeout_request:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1336(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	ossl_quic_channel_get_max_idle_timeout_request, .-ossl_quic_channel_get_max_idle_timeout_request
	.globl	ossl_quic_channel_get_max_idle_timeout_peer_request
	.type	ossl_quic_channel_get_max_idle_timeout_peer_request, @function
ossl_quic_channel_get_max_idle_timeout_peer_request:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1344(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	ossl_quic_channel_get_max_idle_timeout_peer_request, .-ossl_quic_channel_get_max_idle_timeout_peer_request
	.globl	ossl_quic_channel_get_max_idle_timeout_actual
	.type	ossl_quic_channel_get_max_idle_timeout_actual, @function
ossl_quic_channel_get_max_idle_timeout_actual:
.LFB873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1352(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	ossl_quic_channel_get_max_idle_timeout_actual, .-ossl_quic_channel_get_max_idle_timeout_actual
	.section	.rodata
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 16
__func__.16:
	.string	"ch_trigger_txku"
	.align 8
	.type	__func__.15, @object
	.size	__func__.15, 14
__func__.15:
	.string	"rxku_detected"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 13
__func__.14:
	.string	"ch_rxku_tick"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 25
__func__.13:
	.string	"ch_on_crypto_recv_record"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 29
__func__.12:
	.string	"ch_on_handshake_yield_secret"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 25
__func__.11:
	.string	"ch_on_handshake_complete"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 22
__func__.10:
	.string	"ch_on_handshake_alert"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 23
__func__.9:
	.string	"ch_on_transport_params"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 12
__func__.8:
	.string	"ch_tick_tls"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 29
__func__.7:
	.string	"ch_rx_check_forged_pkt_limit"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"ch_rx_handle_packet"
	.type	__func__.5, @object
	.size	__func__.5, 6
__func__.5:
	.string	"ch_tx"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 9
__func__.4:
	.string	"ch_retry"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 41
__func__.3:
	.string	"ossl_quic_channel_on_handshake_confirmed"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"ch_enqueue_retire_conn_id"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 33
__func__.1:
	.string	"ossl_quic_channel_on_new_conn_id"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 43
__func__.0:
	.string	"ossl_quic_channel_raise_protocol_error_loc"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"quic_txp.c"
	.text
	.type	ossl_quic_enc_level_to_pn_space, @function
ossl_quic_enc_level_to_pn_space:
.LFB480:
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
.LFE480:
	.size	ossl_quic_enc_level_to_pn_space, .-ossl_quic_enc_level_to_pn_space
	.type	ossl_quic_pn_valid, @function
ossl_quic_pn_valid:
.LFB483:
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
.LFE483:
	.size	ossl_quic_pn_valid, .-ossl_quic_pn_valid
	.type	PACKET_buf_init, @function
PACKET_buf_init:
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
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	ossl_quic_enc_level_to_pkt_type, @function
ossl_quic_enc_level_to_pkt_type:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	je	.L13
	cmpl	$3, -4(%rbp)
	ja	.L14
	cmpl	$2, -4(%rbp)
	je	.L15
	cmpl	$2, -4(%rbp)
	ja	.L14
	cmpl	$0, -4(%rbp)
	je	.L16
	cmpl	$1, -4(%rbp)
	je	.L17
	jmp	.L14
.L16:
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$3, %eax
	jmp	.L18
.L15:
	movl	$2, %eax
	jmp	.L18
.L13:
	movl	$5, %eax
	jmp	.L18
.L14:
	movl	$-1, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	ossl_quic_enc_level_to_pkt_type, .-ossl_quic_enc_level_to_pkt_type
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
	.type	ossl_time_min, @function
ossl_time_min:
.LFB566:
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
	jnb	.L26
	movq	-8(%rbp), %rax
	jmp	.L28
.L26:
	movq	-16(%rbp), %rax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	ossl_time_min, .-ossl_time_min
	.type	ossl_quic_frame_type_is_ack_eliciting, @function
ossl_quic_frame_type_is_ack_eliciting:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$29, -8(%rbp)
	ja	.L30
	cmpq	$28, -8(%rbp)
	jnb	.L31
	cmpq	$0, -8(%rbp)
	je	.L31
	movq	-8(%rbp), %rax
	subq	$2, %rax
	cmpq	$1, %rax
	ja	.L30
.L31:
	movl	$0, %eax
	jmp	.L32
.L30:
	movl	$1, %eax
.L32:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	ossl_quic_frame_type_is_ack_eliciting, .-ossl_quic_frame_type_is_ack_eliciting
	.type	ossl_quic_stream_has_send_buffer, @function
ossl_quic_stream_has_send_buffer:
.LFB591:
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
	ja	.L34
	movl	$1, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ossl_quic_stream_has_send_buffer, .-ossl_quic_stream_has_send_buffer
	.type	ossl_quic_stream_send_is_reset, @function
ossl_quic_stream_send_is_reset:
.LFB592:
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
	je	.L37
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$6, %al
	jne	.L38
.L37:
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ossl_quic_stream_send_is_reset, .-ossl_quic_stream_send_is_reset
	.type	ossl_quic_stream_send_get_final_size, @function
ossl_quic_stream_send_get_final_size:
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
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L42
	cmpl	$2, %eax
	jl	.L43
	subl	$3, %eax
	cmpl	$3, %eax
	jbe	.L44
.L43:
	movl	$0, %eax
	jmp	.L45
.L42:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	jmp	.L45
.L44:
	cmpq	$0, -16(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L46:
	movl	$1, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ossl_quic_stream_send_get_final_size, .-ossl_quic_stream_send_get_final_size
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_txp.c"
	.text
	.type	tx_helper_init, @function
tx_helper_init:
.LFB614:
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
	movq	-56(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 52(%rax)
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 52(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movzbl	120(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 120(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	addq	$544, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L50
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	addq	$536, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rsi
	movl	$208, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L49
.L51:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	leaq	536(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	leaq	544(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
.L50:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	tx_helper_init, .-tx_helper_init
	.type	tx_helper_cleanup, @function
tx_helper_cleanup:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	120(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L53:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	tx_helper_cleanup, .-tx_helper_cleanup
	.type	tx_helper_unrestrict, @function
tx_helper_unrestrict:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	52(%rax), %edx
	orl	$1, %edx
	movb	%dl, 52(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	tx_helper_unrestrict, .-tx_helper_unrestrict
	.type	tx_helper_append_iovec, @function
tx_helper_append_iovec:
.LFB617:
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
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %eax
	salq	$5, %rax
	addq	$528, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L57
.L58:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_el_ensure_iovec
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L57
.L59:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	tx_helper_append_iovec, .-tx_helper_append_iovec
	.type	tx_helper_get_space_left, @function
tx_helper_get_space_left:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	52(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L61
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	tx_helper_get_space_left, .-tx_helper_get_space_left
	.type	tx_helper_begin, @function
tx_helper_begin:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %eax
	salq	$5, %rax
	addq	$528, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movzbl	120(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-40(%rbp), %rax
	movzbl	52(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L67
	movl	$0, %eax
	jmp	.L66
.L67:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L66
.L68:
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L66
.L69:
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	jne	.L70
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$0, %eax
	jmp	.L66
.L70:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-40(%rbp), %rax
	movzbl	120(%rax), %edx
	orl	$1, %edx
	movb	%dl, 120(%rax)
	movq	-40(%rbp), %rax
	addq	$64, %rax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	tx_helper_begin, .-tx_helper_begin
	.type	tx_helper_end, @function
tx_helper_end:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L72
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L73:
	movq	-8(%rbp), %rax
	movzbl	120(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	tx_helper_end, .-tx_helper_end
	.type	tx_helper_rollback, @function
tx_helper_rollback:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	120(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L77
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tx_helper_end
	jmp	.L74
.L77:
	nop
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	tx_helper_rollback, .-tx_helper_rollback
	.type	tx_helper_commit, @function
tx_helper_commit:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movzbl	120(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L79
	movl	$0, %eax
	jmp	.L89
.L79:
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tx_helper_end
	movl	$0, %eax
	jmp	.L89
.L81:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tx_helper_append_iovec
	testl	%eax, %eax
	jne	.L82
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tx_helper_end
	movl	$0, %eax
	jmp	.L89
.L82:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	664(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L83
	movl	$514, -4(%rbp)
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L84
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	jne	.L85
.L84:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tx_helper_end
	movl	$0, %eax
	jmp	.L89
.L85:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L86
	movl	$516, -4(%rbp)
	jmp	.L87
.L86:
	movq	-24(%rbp), %rax
	andq	$-8, %rax
	cmpq	$8, %rax
	je	.L88
	movq	-24(%rbp), %rax
	cmpq	$6, %rax
	jne	.L87
.L88:
	movl	$515, -4(%rbp)
.L87:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	664(%rax), %r10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	672(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	680(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L83:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tx_helper_end
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	tx_helper_commit, .-tx_helper_commit
	.globl	ossl_quic_tx_packetiser_new
	.type	ossl_quic_tx_packetiser_new, @function
ossl_quic_tx_packetiser_new:
.LFB623:
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
	cmpq	$0, -40(%rbp)
	je	.L91
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	jne	.L92
.L91:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L92:
	leaq	.LC0(%rip), %rax
	movl	$472, %edx
	movq	%rax, %rsi
	movl	$704, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L93
.L94:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$38, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-24(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 464(%rbx)
	movq	-40(%rbp), %rax
	movq	272(%rax), %r8
	movq	-40(%rbp), %rax
	movq	264(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-24(%rbp), %rdi
	addq	$336, %rdi
	movq	-24(%rbp), %r9
	leaq	get_sstream_by_id(%rip), %r10
	pushq	%r8
	pushq	%rsi
	pushq	-24(%rbp)
	leaq	on_sstream_updated(%rip), %rsi
	pushq	%rsi
	pushq	-24(%rbp)
	leaq	on_confirm_notify(%rip), %rsi
	pushq	%rsi
	pushq	-24(%rbp)
	leaq	on_regen_notify(%rip), %rsi
	pushq	%rsi
	movq	%r10, %r8
	movq	%rax, %rsi
	call	ossl_quic_fifd_init@PLT
	addq	$64, %rsp
	testl	%eax, %eax
	jne	.L95
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$487, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L93
.L95:
	movq	-24(%rbp), %rax
.L93:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ossl_quic_tx_packetiser_new, .-ossl_quic_tx_packetiser_new
	.globl	ossl_quic_tx_packetiser_free
	.type	ossl_quic_tx_packetiser_free, @function
ossl_quic_tx_packetiser_free:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L101
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_initial_token@PLT
	movq	-24(%rbp), %rax
	addq	$336, %rax
	movq	%rax, %rdi
	call	ossl_quic_fifd_cleanup@PLT
	movq	-24(%rbp), %rax
	movq	504(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$503, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L99
.L100:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$17, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$508, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	addq	$536, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$509, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L99:
	cmpl	$3, -4(%rbp)
	jbe	.L100
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L96
.L101:
	nop
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ossl_quic_tx_packetiser_free, .-ossl_quic_tx_packetiser_free
	.type	txp_check_token_len, @function
txp_check_token_len:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L105
	movl	$0, %eax
	jmp	.L104
.L105:
	cmpq	$160, -16(%rbp)
	ja	.L106
	movl	$0, %eax
	jmp	.L104
.L106:
	movq	-16(%rbp), %rax
	subq	$160, %rax
	cmpq	-8(%rbp), %rax
	jnb	.L107
	movl	$0, %eax
	jmp	.L104
.L107:
	movl	$1, %eax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	txp_check_token_len, .-txp_check_token_len
	.globl	ossl_quic_tx_packetiser_set_initial_token
	.type	ossl_quic_tx_packetiser_set_initial_token, @function
ossl_quic_tx_packetiser_set_initial_token:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	txp_get_mdpl
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_check_token_len
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-8(%rbp), %rax
	movq	320(%rax), %r8
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	312(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L111:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 304(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 312(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 320(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 328(%rax)
	movl	$1, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ossl_quic_tx_packetiser_set_initial_token, .-ossl_quic_tx_packetiser_set_initial_token
	.globl	ossl_quic_tx_packetiser_set_cur_dcid
	.type	ossl_quic_tx_packetiser_set_cur_dcid, @function
ossl_quic_tx_packetiser_set_cur_dcid:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L113
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$587, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L114
.L113:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 21(%rcx)
	movq	%rdx, 29(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 34(%rcx)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ossl_quic_tx_packetiser_set_cur_dcid, .-ossl_quic_tx_packetiser_set_cur_dcid
	.globl	ossl_quic_tx_packetiser_set_cur_scid
	.type	ossl_quic_tx_packetiser_set_cur_scid, @function
ossl_quic_tx_packetiser_set_cur_scid:
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
	cmpq	$0, -16(%rbp)
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$599, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 13(%rcx)
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ossl_quic_tx_packetiser_set_cur_scid, .-ossl_quic_tx_packetiser_set_cur_scid
	.globl	ossl_quic_tx_packetiser_set_peer
	.type	ossl_quic_tx_packetiser_set_peer, @function
ossl_quic_tx_packetiser_set_peer:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L119
	movq	-8(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	movl	$1, %eax
	jmp	.L120
.L119:
	movq	-8(%rbp), %rax
	leaq	44(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_ADDR_copy@PLT
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	ossl_quic_tx_packetiser_set_peer, .-ossl_quic_tx_packetiser_set_peer
	.globl	ossl_quic_tx_packetiser_set_ack_tx_cb
	.type	ossl_quic_tx_packetiser_set_ack_tx_cb, @function
ossl_quic_tx_packetiser_set_ack_tx_cb:
.LFB630:
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
	movq	%rdx, 688(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 696(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ossl_quic_tx_packetiser_set_ack_tx_cb, .-ossl_quic_tx_packetiser_set_ack_tx_cb
	.globl	ossl_quic_tx_packetiser_set_qlog_cb
	.type	ossl_quic_tx_packetiser_set_qlog_cb, @function
ossl_quic_tx_packetiser_set_qlog_cb:
.LFB631:
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
	leaq	336(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_fifd_set_qlog_cb@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_quic_tx_packetiser_set_qlog_cb, .-ossl_quic_tx_packetiser_set_qlog_cb
	.globl	ossl_quic_tx_packetiser_discard_enc_level
	.type	ossl_quic_tx_packetiser_discard_enc_level, @function
ossl_quic_tx_packetiser_discard_enc_level:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$3, -12(%rbp)
	jbe	.L124
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$641, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L124:
	cmpl	$2, -12(%rbp)
	je	.L126
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	addq	$34, %rdx
	movq	$0, 8(%rax,%rdx,8)
.L126:
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_quic_tx_packetiser_discard_enc_level, .-ossl_quic_tx_packetiser_discard_enc_level
	.globl	ossl_quic_tx_packetiser_notify_handshake_complete
	.type	ossl_quic_tx_packetiser_notify_handshake_complete, @function
ossl_quic_tx_packetiser_notify_handshake_complete:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	473(%rax), %edx
	orl	$8, %edx
	movb	%dl, 473(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ossl_quic_tx_packetiser_notify_handshake_complete, .-ossl_quic_tx_packetiser_notify_handshake_complete
	.globl	ossl_quic_tx_packetiser_schedule_handshake_done
	.type	ossl_quic_tx_packetiser_schedule_handshake_done, @function
ossl_quic_tx_packetiser_schedule_handshake_done:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %edx
	orl	$1, %edx
	movb	%dl, 472(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_quic_tx_packetiser_schedule_handshake_done, .-ossl_quic_tx_packetiser_schedule_handshake_done
	.globl	ossl_quic_tx_packetiser_schedule_ack_eliciting
	.type	ossl_quic_tx_packetiser_schedule_ack_eliciting, @function
ossl_quic_tx_packetiser_schedule_ack_eliciting:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	472(%rax), %eax
	shrw	$7, %ax
	andl	$7, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orl	%esi, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	%dl, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$7, %ecx
	movzwl	472(%rax), %edx
	andw	$-897, %dx
	orl	%ecx, %edx
	movw	%dx, 472(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_quic_tx_packetiser_schedule_ack_eliciting, .-ossl_quic_tx_packetiser_schedule_ack_eliciting
	.globl	ossl_quic_tx_packetiser_schedule_ack
	.type	ossl_quic_tx_packetiser_schedule_ack, @function
ossl_quic_tx_packetiser_schedule_ack:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %eax
	shrb	$4, %al
	andl	$7, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orl	%esi, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	472(%rax), %edx
	andl	$-113, %edx
	orl	%ecx, %edx
	movb	%dl, 472(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ossl_quic_tx_packetiser_schedule_ack, .-ossl_quic_tx_packetiser_schedule_ack
	.globl	ossl_quic_tx_packetiser_generate
	.type	ossl_quic_tx_packetiser_generate, @function
ossl_quic_tx_packetiser_generate:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1280, %rsp
	movq	%rdi, -1272(%rbp)
	movq	%rsi, -1280(%rbp)
	movl	$0, -4(%rbp)
	movl	$4, -84(%rbp)
	movq	$0, -16(%rbp)
	movq	-1272(%rbp), %rax
	movq	232(%rax), %rax
	movq	48(%rax), %rdx
	movq	-1272(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L132
.L133:
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1120, %rax
	movl	$0, (%rax)
	addl	$1, -8(%rbp)
.L132:
	cmpl	$3, -8(%rbp)
	jbe	.L133
	movq	-1280(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-1272(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
	movq	-56(%rbp), %rdx
	movq	-1272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_determine_archetype
	movl	%eax, -60(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L134
.L144:
	cmpl	$0, -8(%rbp)
	je	.L135
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$992, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L136
.L135:
	movq	$0, -32(%rbp)
.L136:
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	leaq	-84(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %edx
	movl	-8(%rbp), %esi
	movq	-1272(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	txp_should_try_staging
	testl	%eax, %eax
	je	.L169
	leaq	-1248(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-60(%rbp), %ecx
	movl	-8(%rbp), %edx
	movq	-1272(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	txp_pkt_init
	testl	%eax, %eax
	je	.L170
	movl	-84(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	sete	%al
	movzbl	%al, %ecx
	leaq	-1248(%rbp), %rsi
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rsi
	movq	-1272(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rdi
	call	txp_generate_for_el
	movl	%eax, -64(%rbp)
	cmpl	$1, -64(%rbp)
	jne	.L171
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$968, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movl	$1, -20(%rbp)
.L143:
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1232, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$984, %rax
	movq	(%rax), %rax
	addq	%rax, %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$992, %rax
	movq	%rcx, (%rax)
	jmp	.L138
.L169:
	nop
.L138:
	addl	$1, -8(%rbp)
.L134:
	cmpl	$3, -8(%rbp)
	jbe	.L144
	jmp	.L140
.L170:
	nop
.L140:
	movl	-1120(%rbp), %eax
	testl	%eax, %eax
	je	.L145
	movq	-1232(%rbp), %rax
	testq	%rax, %rax
	je	.L145
	movl	$1, -20(%rbp)
.L145:
	cmpl	$0, -20(%rbp)
	je	.L146
	movq	$0, -40(%rbp)
	movq	$1200, -72(%rbp)
	movl	$4, -44(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L147
.L150:
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1120, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L148
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1232, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L148
	cmpl	$4, -44(%rbp)
	jne	.L149
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$976, %rax
	movzbl	5(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L149
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1200, %rax
	movzbl	4(%rax), %eax
	shrb	%al
	andl	$1, %eax
	testb	%al, %al
	jne	.L149
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
.L149:
	leaq	-1248(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-1272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	txp_pkt_postgen_update_pkt_overhead
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$984, %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1232, %rax
	movq	(%rax), %rax
	addq	%rcx, %rax
	addq	%rax, -40(%rbp)
.L148:
	addl	$1, -8(%rbp)
.L147:
	cmpl	$3, -8(%rbp)
	jbe	.L150
	cmpl	$4, -44(%rbp)
	je	.L151
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L151
	movq	-72(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-1248(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-1272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	txp_pkt_append_padding
	testl	%eax, %eax
	je	.L172
	movq	-80(%rbp), %rax
	addq	%rax, -40(%rbp)
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1112, %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
.L151:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L146
	movl	$1, -4(%rbp)
	jmp	.L142
.L146:
	movl	$0, -8(%rbp)
	jmp	.L153
.L165:
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1120, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L173
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1232, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L174
	leaq	-1248(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-1252(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	txp_pkt_commit
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.L157
	movq	-1280(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L158
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1112, %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L159
.L158:
	movl	$1, %edx
	jmp	.L160
.L159:
	movl	$0, %edx
.L160:
	movq	-1280(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$1, -8(%rbp)
	jne	.L157
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1120, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L161
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1232, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movl	$1, %edx
	jmp	.L162
.L161:
	movl	$0, %edx
.L162:
	movq	-1280(%rbp), %rax
	movl	%edx, 4(%rax)
.L157:
	movl	-1252(%rbp), %eax
	testl	%eax, %eax
	je	.L163
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$1112, %rax
	movq	$0, (%rax)
.L163:
	cmpl	$0, -64(%rbp)
	je	.L175
	addq	$1, -16(%rbp)
	jmp	.L155
.L173:
	nop
	jmp	.L155
.L174:
	nop
.L155:
	addl	$1, -8(%rbp)
.L153:
	cmpl	$3, -8(%rbp)
	jbe	.L165
	movl	$1, -4(%rbp)
	jmp	.L142
.L171:
	nop
	jmp	.L142
.L172:
	nop
	jmp	.L142
.L175:
	nop
.L142:
	movq	-1272(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
	movl	$0, -8(%rbp)
	jmp	.L166
.L167:
	leaq	-1248(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-1272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	txp_pkt_cleanup
	addl	$1, -8(%rbp)
.L166:
	cmpl	$3, -8(%rbp)
	jbe	.L167
	movq	-1280(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ossl_quic_tx_packetiser_generate, .-ossl_quic_tx_packetiser_generate
	.section	.rodata
	.align 32
	.type	archetypes, @object
	.size	archetypes, 48
archetypes:
	.byte	7
	.byte	100
	.byte	0
	.zero	1
	.byte	7
	.byte	228
	.byte	1
	.zero	1
	.byte	1
	.byte	32
	.byte	1
	.zero	1
	.byte	7
	.byte	100
	.byte	0
	.zero	1
	.byte	7
	.byte	228
	.byte	1
	.zero	1
	.byte	1
	.byte	32
	.byte	1
	.zero	1
	.byte	194
	.byte	71
	.byte	0
	.zero	1
	.byte	194
	.byte	199
	.byte	1
	.zero	1
	.byte	0
	.byte	0
	.byte	1
	.zero	1
	.byte	239
	.byte	127
	.byte	0
	.zero	1
	.byte	239
	.byte	255
	.byte	1
	.zero	1
	.byte	1
	.byte	32
	.byte	1
	.zero	1
	.text
	.type	txp_get_archetype_data, @function
txp_get_archetype_data:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$3, -4(%rbp)
	ja	.L177
	cmpl	$2, -8(%rbp)
	jbe	.L178
.L177:
	movl	$0, %eax
	jmp	.L179
.L178:
	movq	-16(%rbp), %rcx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	archetypes(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, (%rcx)
	movl	$1, %eax
.L179:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	txp_get_archetype_data, .-txp_get_archetype_data
	.type	txp_determine_geometry, @function
txp_determine_geometry:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	36(%rax), %rdx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	txp_get_archetype_data
	testl	%eax, %eax
	jne	.L181
	movl	$0, %eax
	jmp	.L182
.L181:
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pkt_type
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	txp_determine_pn_len
	andl	$15, %eax
	movq	-64(%rbp), %rdx
	andl	$15, %eax
	leal	0(,%rax,4), %ecx
	movzbl	1(%rdx), %eax
	andl	$-61, %eax
	orl	%ecx, %eax
	movb	%al, 1(%rdx)
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 1(%rax)
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1(%rax)
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$-49, %edx
	movb	%dl, 2(%rax)
	movq	-64(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	21(%rsi), %rax
	movq	29(%rsi), %rdx
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	movq	34(%rsi), %rax
	movq	%rax, 21(%rcx)
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 29(%rcx)
	movq	%rdx, 37(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 42(%rcx)
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	movl	$16383, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 72(%rax)
	cmpl	$0, -48(%rbp)
	jne	.L183
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-40(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L184
.L183:
	movq	-64(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 64(%rax)
.L184:
	movq	-64(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_get_encoded_pkt_hdr_len@PLT
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L182
.L185:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	txp_get_mdpl
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L186
	movq	$0, -8(%rbp)
	jmp	.L187
.L186:
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L187:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	txp_determine_ppl_from_pl
	testl	%eax, %eax
	jne	.L188
	movl	$0, %eax
	jmp	.L182
.L188:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	txp_determine_geometry, .-txp_determine_geometry
	.type	txp_determine_archetype, @function
txp_determine_archetype:
.LFB640:
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
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L190
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L191
.L190:
	movl	$1, %eax
	jmp	.L192
.L191:
	movl	$0, -4(%rbp)
	jmp	.L193
.L195:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	8(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L194
	movl	$1, %eax
	jmp	.L192
.L194:
	addl	$1, -4(%rbp)
.L193:
	cmpl	$2, -4(%rbp)
	jbe	.L195
	cmpq	$0, -32(%rbp)
	jne	.L196
	movl	$2, %eax
	jmp	.L192
.L196:
	movl	$0, %eax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	txp_determine_archetype, .-txp_determine_archetype
	.type	txp_should_try_staging, @function
txp_should_try_staging:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	movq	160(%rax), %rax
	movl	-76(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_is_enc_level_provisioned@PLT
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L232
.L198:
	leaq	-36(%rbp), %rdx
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	txp_get_archetype_data
	testl	%eax, %eax
	jne	.L200
	movl	$0, %eax
	jmp	.L232
.L200:
	movzbl	-34(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L201
	cmpq	$0, -88(%rbp)
	jne	.L201
	movl	$0, %eax
	jmp	.L232
.L201:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jnb	.L202
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L202
	movq	-96(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, (%rax)
.L202:
	movzbl	-35(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L203
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L204
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L205
.L204:
	cmpl	$1, -76(%rbp)
	jne	.L206
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L205
.L206:
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	8(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L203
.L205:
	movl	$1, %eax
	jmp	.L232
.L203:
	movzbl	-36(%rbp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L207
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$34, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	sstream_is_pending
	testl	%eax, %eax
	je	.L207
	movl	$1, %eax
	jmp	.L232
.L207:
	movzbl	-36(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L208
	movl	-12(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_is_ack_desired@PLT
	testl	%eax, %eax
	jne	.L209
	movq	-72(%rbp), %rax
	movzbl	472(%rax), %eax
	shrb	$4, %al
	andl	$7, %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L208
.L209:
	movl	$1, %eax
	jmp	.L232
.L208:
	movzbl	-35(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L210
	movq	-72(%rbp), %rax
	movzwl	472(%rax), %eax
	shrw	$7, %ax
	andl	$7, %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L210
	movl	$1, %eax
	jmp	.L232
.L210:
	movzbl	-35(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L211
	movq	-72(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L212
	movq	-72(%rbp), %rax
	movq	208(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	je	.L211
.L212:
	movl	$1, %eax
	jmp	.L232
.L211:
	movzbl	-35(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L213
	movq	-72(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L214
	movq	-72(%rbp), %rax
	movq	216(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	jne	.L214
	movq	-72(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L214
	movq	-72(%rbp), %rax
	movq	224(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	je	.L213
.L214:
	movl	$1, %eax
	jmp	.L232
.L213:
	movzbl	-36(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L215
	movq	-72(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L215
	movl	$1, %eax
	jmp	.L232
.L215:
	movzbl	-35(%rbp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L216
	movq	-72(%rbp), %rax
	movzbl	473(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L216
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jne	.L216
	movl	$1, %eax
	jmp	.L232
.L216:
	cmpl	$2, -76(%rbp)
	je	.L217
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, -8(%rbp)
	jmp	.L218
.L229:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_frame_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$27, -32(%rbp)
	je	.L219
	cmpq	$27, -32(%rbp)
	ja	.L220
	cmpq	$25, -32(%rbp)
	je	.L221
	cmpq	$25, -32(%rbp)
	ja	.L220
	cmpq	$7, -32(%rbp)
	je	.L222
	cmpq	$24, -32(%rbp)
	jne	.L220
	movzbl	-36(%rbp), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L233
	movl	$1, %eax
	jmp	.L232
.L221:
	movzbl	-36(%rbp), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L234
	movl	$1, %eax
	jmp	.L232
.L222:
	movzbl	-35(%rbp), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L235
	movl	$1, %eax
	jmp	.L232
.L219:
	movzbl	-36(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L236
	movl	$1, %eax
	jmp	.L232
.L220:
	movzbl	-35(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L237
	movl	$1, %eax
	jmp	.L232
.L233:
	nop
	jmp	.L224
.L234:
	nop
	jmp	.L224
.L235:
	nop
	jmp	.L224
.L236:
	nop
	jmp	.L224
.L237:
	nop
.L224:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_priority_next@PLT
	movq	%rax, -8(%rbp)
.L218:
	cmpq	$0, -8(%rbp)
	jne	.L229
.L217:
	movzbl	-35(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L230
	movq	-72(%rbp), %rax
	movzbl	473(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L230
	movq	-72(%rbp), %rax
	movq	192(%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_iter_init@PLT
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L230
	movl	$1, %eax
	jmp	.L232
.L230:
	movl	$0, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	txp_should_try_staging, .-txp_should_try_staging
	.type	sstream_is_pending, @function
sstream_is_pending:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$2, -88(%rbp)
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	sstream_is_pending, .-sstream_is_pending
	.type	txp_determine_pn_len, @function
txp_determine_pn_len:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$4, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	txp_determine_pn_len, .-txp_determine_pn_len
	.type	txp_determine_ppl_from_pl, @function
txp_determine_ppl_from_pl:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L243
	movl	$0, %eax
	jmp	.L244
.L243:
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	leaq	-16(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	call	ossl_qtx_calculate_plaintext_payload_len@PLT
	testl	%eax, %eax
	jne	.L245
	movl	$0, %eax
	jmp	.L244
.L245:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	txp_determine_ppl_from_pl, .-txp_determine_ppl_from_pl
	.type	txp_get_mdpl, @function
txp_get_mdpl:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_get_mdpl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	txp_get_mdpl, .-txp_get_mdpl
	.type	get_sstream_by_id, @function
get_sstream_by_id:
.LFB646:
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
	cmpq	$-1, -24(%rbp)
	jne	.L249
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	addq	$34, %rdx
	movq	8(%rax,%rdx,8), %rax
	jmp	.L250
.L249:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L251
	movl	$0, %eax
	jmp	.L250
.L251:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	get_sstream_by_id, .-get_sstream_by_id
	.type	on_regen_notify, @function
on_regen_notify:
.LFB647:
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
	cmpq	$30, -40(%rbp)
	je	.L253
	cmpq	$30, -40(%rbp)
	ja	.L266
	cmpq	$19, -40(%rbp)
	je	.L255
	cmpq	$19, -40(%rbp)
	ja	.L266
	cmpq	$18, -40(%rbp)
	je	.L256
	cmpq	$18, -40(%rbp)
	ja	.L266
	cmpq	$17, -40(%rbp)
	je	.L257
	cmpq	$17, -40(%rbp)
	ja	.L266
	cmpq	$16, -40(%rbp)
	je	.L258
	cmpq	$16, -40(%rbp)
	ja	.L266
	cmpq	$5, -40(%rbp)
	je	.L259
	cmpq	$5, -40(%rbp)
	ja	.L266
	cmpq	$3, -40(%rbp)
	je	.L260
	cmpq	$4, -40(%rbp)
	je	.L261
	jmp	.L266
.L253:
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %edx
	orl	$1, %edx
	movb	%dl, 472(%rax)
	jmp	.L252
.L258:
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %edx
	orl	$2, %edx
	movb	%dl, 472(%rax)
	jmp	.L252
.L256:
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %edx
	orl	$4, %edx
	movb	%dl, 472(%rax)
	jmp	.L252
.L255:
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %edx
	orl	$8, %edx
	movb	%dl, 472(%rax)
	jmp	.L252
.L260:
	movq	-8(%rbp), %rax
	movzbl	472(%rax), %eax
	shrb	$4, %al
	andl	$7, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orl	%esi, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	472(%rax), %edx
	andl	$-113, %edx
	orl	%ecx, %edx
	movb	%dl, 472(%rax)
	jmp	.L252
.L257:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L267
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$2, %edx
	movb	%dl, 260(%rax)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L252
.L259:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L268
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_schedule_stop_sending@PLT
	jmp	.L252
.L261:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L269
	movq	-32(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$8, %edx
	movb	%dl, 260(%rax)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L252
.L266:
	nop
	jmp	.L252
.L267:
	nop
	jmp	.L252
.L268:
	nop
	jmp	.L252
.L269:
	nop
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	on_regen_notify, .-on_regen_notify
	.type	txp_need_ping, @function
txp_need_ping:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L271
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L272
	movq	-8(%rbp), %rax
	movzwl	472(%rax), %eax
	shrw	$7, %ax
	andl	$7, %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L271
.L272:
	movl	$1, %eax
	jmp	.L274
.L271:
	movl	$0, %eax
.L274:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	txp_need_ping, .-txp_need_ping
	.type	txp_pkt_init, @function
txp_pkt_init:
.LFB649:
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
	movq	%r8, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	240(%rax), %r8
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	txp_determine_geometry
	testl	%eax, %eax
	jne	.L276
	movl	$0, %eax
	jmp	.L277
.L276:
	movq	-24(%rbp), %rax
	leaq	276(%rax), %rdx
	movl	-4(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	txp_need_ping
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movq	248(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tx_helper_init
	testl	%eax, %eax
	jne	.L278
	movl	$0, %eax
	jmp	.L277
.L278:
	movq	-24(%rbp), %rax
	movl	$1, 128(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 280(%rax)
	movl	$1, %eax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	txp_pkt_init, .-txp_pkt_init
	.type	txp_pkt_cleanup, @function
txp_pkt_cleanup:
.LFB650:
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
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L282
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_cleanup
	movq	-8(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L279
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_release@PLT
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	jmp	.L279
.L282:
	nop
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	txp_pkt_cleanup, .-txp_pkt_cleanup
	.type	txp_pkt_postgen_update_pkt_overhead, @function
txp_pkt_postgen_update_pkt_overhead:
.LFB651:
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
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L284
	movl	$1, %eax
	jmp	.L287
.L284:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	leaq	-16(%rbp), %rcx
	movq	%rax, %rdi
	call	ossl_qtx_calculate_ciphertext_payload_len@PLT
	testl	%eax, %eax
	jne	.L286
	movl	$0, %eax
	jmp	.L287
.L286:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	160(%rax), %eax
	movzbl	%al, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_get_encoded_pkt_hdr_len@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 264(%rax)
	movl	$1, %eax
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	txp_pkt_postgen_update_pkt_overhead, .-txp_pkt_postgen_update_pkt_overhead
	.type	on_confirm_notify, @function
on_confirm_notify:
.LFB652:
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
	cmpq	$4, -40(%rbp)
	je	.L289
	cmpq	$5, -40(%rbp)
	jne	.L294
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L295
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$16, %edx
	movb	%dl, 260(%rax)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L288
.L289:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L296
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_notify_reset_stream_acked@PLT
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L288
.L294:
	nop
	jmp	.L288
.L295:
	nop
	jmp	.L288
.L296:
	nop
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	on_confirm_notify, .-on_confirm_notify
	.type	txp_pkt_append_padding, @function
txp_pkt_append_padding:
.LFB653:
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
	cmpq	$0, -40(%rbp)
	jne	.L298
	movl	$1, %eax
	jmp	.L299
.L298:
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L300
	movl	$0, %eax
	jmp	.L299
.L300:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L301
	movl	$0, %eax
	jmp	.L299
.L301:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L302
	movl	$0, %eax
	jmp	.L299
.L302:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_padding@PLT
	testl	%eax, %eax
	jne	.L303
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
	movl	$0, %eax
	jmp	.L299
.L303:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L304
	movl	$0, %eax
	jmp	.L299
.L304:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movl	$1, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	txp_pkt_append_padding, .-txp_pkt_append_padding
	.type	on_sstream_updated, @function
on_sstream_updated:
.LFB654:
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
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L308
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L305
.L308:
	nop
.L305:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	on_sstream_updated, .-on_sstream_updated
	.type	try_commit_conn_close, @function
try_commit_conn_close:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	520(%rax), %rax
	testq	%rax, %rax
	jne	.L310
	movl	$1, %eax
	jmp	.L311
.L310:
	movq	-24(%rbp), %rax
	movq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	cmpq	%rcx, %rax
	setnb	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L312
	movq	-24(%rbp), %rax
	movq	520(%rax), %rax
	testq	%rax, %rax
	je	.L312
	movq	-24(%rbp), %rax
	movq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 528(%rax)
.L312:
	movl	-4(%rbp), %eax
.L311:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	try_commit_conn_close, .-try_commit_conn_close
	.globl	ossl_quic_tx_packetiser_record_received_closing_bytes
	.type	ossl_quic_tx_packetiser_record_received_closing_bytes, @function
ossl_quic_tx_packetiser_record_received_closing_bytes:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 520(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_quic_tx_packetiser_record_received_closing_bytes, .-ossl_quic_tx_packetiser_record_received_closing_bytes
	.type	txp_generate_pre_token, @function
txp_generate_pre_token:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	%edx, -212(%rbp)
	movq	%rcx, -224(%rbp)
	movq	-208(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -32(%rbp)
	movq	-208(%rbp), %rax
	addq	$276, %rax
	movq	%rax, -40(%rbp)
	movq	-208(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L315
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	cmpq	$4, %rax
	jbe	.L315
	movq	-200(%rbp), %rax
	movzbl	472(%rax), %eax
	shrb	$4, %al
	andl	$7, %eax
	movzbl	%al, %edx
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L316
	movl	-32(%rbp), %edx
	movq	-200(%rbp), %rax
	movq	184(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_is_ack_desired@PLT
	testl	%eax, %eax
	je	.L315
.L316:
	movl	-32(%rbp), %edx
	movq	-200(%rbp), %rax
	movq	184(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_frame@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L315
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L317
	movl	$0, %eax
	jmp	.L329
.L317:
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -96(%rbp)
	movzbl	-96(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -96(%rbp)
	movq	-200(%rbp), %rax
	movl	156(%rax), %ecx
	leaq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_ack@PLT
	testl	%eax, %eax
	je	.L319
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L320
	movl	$0, %eax
	jmp	.L329
.L320:
	movq	-48(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$16, %edx
	movb	%dl, 121(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L321
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
.L321:
	movq	-200(%rbp), %rax
	movq	688(%rax), %rax
	testq	%rax, %rax
	je	.L315
	movq	-200(%rbp), %rax
	movq	688(%rax), %r8
	movq	-200(%rbp), %rax
	movq	696(%rax), %rdx
	movl	-32(%rbp), %ecx
	leaq	-144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L315
.L319:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L315:
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L322
	movq	-200(%rbp), %rax
	movzbl	473(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L322
	cmpl	$0, -212(%rbp)
	je	.L322
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -80(%rbp)
	movq	-200(%rbp), %rax
	addq	$480, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L323
	movl	$0, %eax
	jmp	.L329
.L323:
	cmpl	$2, -32(%rbp)
	je	.L325
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L325
	leaq	-192(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-2, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$12, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.L325:
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_conn_close@PLT
	testl	%eax, %eax
	je	.L326
	leaq	-152(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L326
	movq	-152(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	try_commit_conn_close
	testl	%eax, %eax
	je	.L326
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L327
	movl	$0, %eax
	jmp	.L329
.L327:
	movq	-48(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$32, %edx
	movb	%dl, 121(%rax)
	movq	-224(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L322
.L326:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L322:
	movl	$1, %eax
.L329:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	txp_generate_pre_token, .-txp_generate_pre_token
	.type	try_len, @function
try_len:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	jne	.L331
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L331
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L332
.L331:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L333
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L333:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L334
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L335
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.L334
.L335:
	movq	$0, -8(%rbp)
.L334:
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
.L332:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	try_len, .-try_len
	.type	determine_len, @function
determine_len:
.LFB659:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	leaq	-96(%rbp), %rdi
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$63, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	try_len
	addq	$8, %rsp
	movl	%eax, -112(%rbp)
	leaq	-96(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	leaq	-64(%rbp), %rcx
	addq	$8, %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$16383, %r8d
	movl	$2, %ecx
	movq	%rax, %rdi
	call	try_len
	addq	$8, %rsp
	movl	%eax, -108(%rbp)
	leaq	-96(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	leaq	-64(%rbp), %rcx
	addq	$16, %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$1073741823, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	try_len
	addq	$8, %rsp
	movl	%eax, -104(%rbp)
	leaq	-96(%rbp), %rax
	leaq	24(%rax), %r8
	movabsq	$4611686018427387903, %rdi
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	leaq	-64(%rbp), %rcx
	addq	$24, %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	try_len
	addq	$8, %rsp
	movl	%eax, -100(%rbp)
	movl	$3, -28(%rbp)
	jmp	.L337
.L339:
	movl	-28(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L338
	movl	-28(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	cmpq	-16(%rbp), %rax
	jb	.L338
	movl	-28(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
.L338:
	subl	$1, -28(%rbp)
.L337:
	cmpl	$0, -28(%rbp)
	jns	.L339
	movq	-144(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	determine_len, .-determine_len
	.type	determine_crypto_len, @function
determine_crypto_len:
.LFB660:
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
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_get_encoded_frame_len_crypto_hdr@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -16(%rbp)
	jne	.L342
	movl	$0, %eax
	jmp	.L343
.L342:
	subq	$1, -16(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	determine_len
.L343:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	determine_crypto_len, .-determine_crypto_len
	.type	determine_stream_len, @function
determine_stream_len:
.LFB661:
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
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_get_encoded_frame_len_stream_hdr@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -8(%rbp)
	jne	.L345
	movl	$0, %eax
	jmp	.L346
.L345:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L347
	subq	$1, -8(%rbp)
.L347:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	determine_len
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	determine_stream_len, .-determine_stream_len
	.type	txp_generate_crypto_frames, @function
txp_generate_crypto_frames:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-224(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -16(%rbp)
	movq	-224(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movq	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movq	$0, -8(%rbp)
.L361:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	movq	%rax, -40(%rbp)
	cmpq	$3, -40(%rbp)
	ja	.L349
	movl	$1, %eax
	jmp	.L362
.L349:
	movq	$2, -56(%rbp)
	movq	-216(%rbp), %rax
	movl	-16(%rbp), %edx
	addq	$34, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	-56(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	jne	.L351
	movl	$1, %eax
	jmp	.L362
.L351:
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jne	.L352
	movl	$1, %eax
	jmp	.L362
.L352:
	leaq	-128(%rbp), %rax
	leaq	8(%rax), %rdi
	leaq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	determine_crypto_len
	testl	%eax, %eax
	jne	.L353
	movl	$1, %eax
	jmp	.L362
.L353:
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_adjust_iov@PLT
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	leaq	3(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$5, %rax
	leaq	528(%rax), %rcx
	movq	-216(%rbp), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_el_ensure_iovec
	testl	%eax, %eax
	jne	.L354
	movl	$0, %eax
	jmp	.L362
.L354:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L355
	movl	$0, %eax
	jmp	.L362
.L355:
	leaq	-128(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_crypto_hdr@PLT
	testl	%eax, %eax
	jne	.L356
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
	movl	$1, %eax
	jmp	.L362
.L356:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L357
	movl	$0, %eax
	jmp	.L362
.L357:
	movq	$0, -8(%rbp)
	jmp	.L358
.L359:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$152, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$160, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tx_helper_append_iovec
	addq	$1, -8(%rbp)
.L358:
	movq	-56(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L359
	movq	-232(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	movq	$-1, -208(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -192(%rbp)
	movzbl	-184(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -184(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_append_chunk@PLT
	testl	%eax, %eax
	jne	.L360
	movl	$0, %eax
	jmp	.L362
.L360:
	addq	$1, -8(%rbp)
	jmp	.L361
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	txp_generate_crypto_frames, .-txp_generate_crypto_frames
	.type	txp_plan_stream_chunk, @function
txp_plan_stream_chunk:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	$2, 80(%rax)
	movq	-80(%rbp), %rax
	leaq	80(%rax), %rdi
	movq	-80(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	movq	-80(%rbp), %rdx
	movl	%eax, 88(%rdx)
	movq	-80(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L364
	movl	$1, %eax
	jmp	.L365
.L364:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L366
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L367
.L366:
	movl	$1, %eax
	jmp	.L368
.L367:
	movl	$0, %eax
.L368:
	cltq
	testq	%rax, %rax
	jne	.L369
	movl	$0, %eax
	jmp	.L365
.L369:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L370
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L370
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L371
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	jmp	.L372
.L371:
	movl	$0, %edx
.L372:
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 32(%rax)
.L370:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L373
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L373
	movq	-80(%rbp), %rax
	movl	$0, 88(%rax)
	movl	$1, %eax
	jmp	.L365
.L373:
	movl	$1, %eax
.L365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	txp_plan_stream_chunk, .-txp_plan_stream_chunk
	.type	txp_generate_stream_frames, @function
txp_generate_stream_frames:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	%r8, -408(%rbp)
	movq	%r9, -416(%rbp)
	movl	$0, -4(%rbp)
	leaq	-304(%rbp), %rdx
	movl	$0, %eax
	movl	$24, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-384(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-384(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L375
.L379:
	leaq	-304(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %r8
	movq	-16(%rbp), %rdi
	movq	-408(%rbp), %rcx
	movq	-400(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-376(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	txp_plan_stream_chunk
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L409
	cmpq	$0, -16(%rbp)
	jne	.L378
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L378
	movl	$1, -4(%rbp)
	jmp	.L377
.L378:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rdx
	movq	-392(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -16(%rbp)
.L375:
	cmpq	$1, -16(%rbp)
	jbe	.L379
	movq	$0, -16(%rbp)
.L407:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L380
	movl	$1, -4(%rbp)
	jmp	.L377
.L380:
	cmpq	$2, -72(%rbp)
	ja	.L381
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L377
.L381:
	movq	-56(%rbp), %rax
	movzbl	52(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L410
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rdx
	leaq	-304(%rbp), %rax
	negq	%rdx
	andl	$96, %edx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$264, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L383
	movq	-16(%rbp), %rax
	addq	$1, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	leaq	-304(%rbp), %rax
	negq	%rdx
	andl	$96, %edx
	leaq	(%rax,%rdx), %r8
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-408(%rbp), %rcx
	movq	-400(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-376(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	txp_plan_stream_chunk
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L411
.L383:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 32(%rax)
	movq	$0, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-352(%rbp), %rdi
	leaq	-344(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	determine_stream_len
	testl	%eax, %eax
	jne	.L384
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L377
.L384:
	movq	-344(%rbp), %rdx
	movq	-352(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-72(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	cmpq	$0, -416(%rbp)
	jne	.L385
	movq	-16(%rbp), %rax
	addq	$1, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L386
.L385:
	movl	$1, %eax
	jmp	.L387
.L386:
	movl	$0, %eax
.L387:
	movl	%eax, -96(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.L388
	cmpl	$0, -96(%rbp)
	jne	.L389
.L388:
	movq	-384(%rbp), %rax
	movl	280(%rax), %eax
	testl	%eax, %eax
	je	.L390
.L389:
	movl	$1, %eax
	jmp	.L391
.L390:
	movl	$0, %eax
.L391:
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L392
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$1, %edx
	movb	%dl, 32(%rax)
	movq	$0, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -360(%rbp)
	leaq	-368(%rbp), %rdi
	leaq	-360(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	determine_stream_len
	testl	%eax, %eax
	jne	.L393
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L377
.L393:
	movq	-368(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L394
.L392:
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 32(%rax)
	movq	-352(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
.L394:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L395
	movq	-16(%rbp), %rax
	addq	$1, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movl	$0, (%rax)
.L395:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L396
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 32(%rax)
.L396:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$224, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rcx
	leaq	-304(%rbp), %rax
	negq	%rcx
	andl	$96, %ecx
	addq	$48, %rcx
	addq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_adjust_iov@PLT
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	3(%rax), %rdx
	movl	-36(%rbp), %eax
	salq	$5, %rax
	leaq	528(%rax), %rcx
	movq	-376(%rbp), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_el_ensure_iovec
	testl	%eax, %eax
	je	.L412
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L413
	movq	-80(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stream_hdr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L399
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L377
.L399:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	je	.L414
	movq	$0, -24(%rbp)
	jmp	.L401
.L402:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	addq	$3, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$296, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rax
	addq	$3, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$304, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tx_helper_append_iovec
	addq	$1, -24(%rbp)
.L401:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$224, %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L402
	movq	16(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L403
	movq	-56(%rbp), %rax
	movzbl	52(%rax), %edx
	orl	$2, %edx
	movb	%dl, 52(%rax)
.L403:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L404
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L404
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.L404:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-312(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -312(%rbp)
	movzbl	-312(%rbp), %eax
	andl	$-3, %eax
	movb	%al, -312(%rbp)
	movzbl	-312(%rbp), %eax
	andl	$-5, %eax
	movb	%al, -312(%rbp)
	leaq	-336(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_append_chunk@PLT
	testl	%eax, %eax
	je	.L415
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L406
	movl	$1, -4(%rbp)
	jmp	.L377
.L406:
	addq	$1, -16(%rbp)
	jmp	.L407
.L409:
	nop
	jmp	.L377
.L410:
	nop
	jmp	.L377
.L411:
	nop
	jmp	.L377
.L412:
	nop
	jmp	.L377
.L413:
	nop
	jmp	.L377
.L414:
	nop
	jmp	.L377
.L415:
	nop
.L377:
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	txp_generate_stream_frames, .-txp_generate_stream_frames
	.type	txp_enlink_tmp, @function
txp_enlink_tmp:
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
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	txp_enlink_tmp, .-txp_enlink_tmp
	.type	txp_generate_stream_related, @function
txp_generate_stream_related:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	192(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_iter_init@PLT
	jmp	.L418
.L444:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_iter_next@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 259(%rax)
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %edx
	andl	$-33, %edx
	movb	%dl, 259(%rax)
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 259(%rax)
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 260(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L419
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L420
	movl	$0, %eax
	jmp	.L445
.L420:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stop_sending@PLT
	testl	%eax, %eax
	jne	.L422
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_enlink_tmp
	jmp	.L423
.L422:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L424
	movl	$0, %eax
	jmp	.L445
.L424:
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %edx
	orl	$32, %edx
	movb	%dl, 259(%rax)
.L419:
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L426
	movq	-40(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$5, %al
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L427
	movl	$0, %eax
	jmp	.L445
.L427:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L429
	movl	$0, %eax
	jmp	.L445
.L429:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -136(%rbp)
	leaq	-144(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_send_get_final_size
	testl	%eax, %eax
	jne	.L430
	movl	$0, %eax
	jmp	.L445
.L430:
	leaq	-144(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_reset_stream@PLT
	testl	%eax, %eax
	jne	.L431
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_enlink_tmp
	jmp	.L423
.L431:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L432
	movl	$0, %eax
	jmp	.L445
.L432:
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %edx
	orl	$64, %edx
	movb	%dl, 259(%rax)
	movq	-128(%rbp), %rbx
	movq	-40(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	cmpq	%rbx, %rax
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L433
	movl	$0, %eax
	jmp	.L445
.L433:
	movq	-128(%rbp), %rbx
	movq	-40(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 96(%rax)
.L426:
	movq	-40(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$1, %al
	jne	.L434
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L435
	movq	-40(%rbp), %rax
	addq	$160, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	je	.L434
.L435:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L436
	movl	$0, %eax
	jmp	.L445
.L436:
	movq	-40(%rbp), %rax
	addq	$160, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_stream_data@PLT
	testl	%eax, %eax
	jne	.L437
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_enlink_tmp
	jmp	.L423
.L437:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	jne	.L438
	movl	$0, %eax
	jmp	.L445
.L438:
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %edx
	orl	$16, %edx
	movb	%dl, 259(%rax)
.L434:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	je	.L439
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_send_is_reset
	testl	%eax, %eax
	jne	.L439
	movl	$0, -148(%rbp)
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$8, %eax
	shrb	$3, %al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L440
	movl	$0, %eax
	jmp	.L445
.L440:
	movq	-40(%rbp), %rax
	leaq	96(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	128(%rax), %r10
	movq	-40(%rbp), %rax
	movq	112(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-48(%rbp), %r8
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdi
	leaq	-148(%rbp), %rdi
	pushq	%rdi
	pushq	-184(%rbp)
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	txp_generate_stream_frames
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L442
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_enlink_tmp
	movl	$0, %eax
	jmp	.L445
.L442:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	addq	%rax, -24(%rbp)
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	je	.L439
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_enlink_tmp
	jmp	.L423
.L439:
	movq	-40(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txp_enlink_tmp
.L418:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L444
.L423:
	movl	$1, %eax
.L445:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	txp_generate_stream_related, .-txp_generate_stream_related
	.type	txp_generate_for_el, @function
txp_generate_for_el:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	$1, -44(%rbp)
	movq	-192(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -52(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -20(%rbp)
	movq	-192(%rbp), %rax
	movl	276(%rax), %eax
	movl	%eax, -160(%rbp)
	movl	$1, -164(%rbp)
	movq	$0, -40(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-184(%rbp), %rax
	movl	-52(%rbp), %edx
	addq	$54, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_pn_valid
	testl	%eax, %eax
	je	.L498
	movq	-192(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L499
	movq	-184(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_alloc@PLT
	movq	%rax, -40(%rbp)
	movq	-192(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-192(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L500
	movzbl	-160(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L451
	movq	-184(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L451
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	testq	%rax, %rax
	je	.L451
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L501
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_handshake_done@PLT
	testl	%eax, %eax
	je	.L453
	movq	-40(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$1, %edx
	movb	%dl, 121(%rax)
	movl	$1, -156(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	je	.L502
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	jmp	.L451
.L453:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L451:
	movzbl	-159(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L455
	movq	-184(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L456
	movq	-184(%rbp), %rax
	movq	208(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	je	.L455
.L456:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	cmpq	$1, %rax
	jbe	.L455
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -80(%rbp)
	movq	-184(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L503
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_data@PLT
	testl	%eax, %eax
	je	.L458
	movq	-40(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$2, %edx
	movb	%dl, 121(%rax)
	movl	$1, -156(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	je	.L504
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	jmp	.L455
.L458:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L455:
	movzbl	-159(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L460
	movq	-184(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L461
	movq	-184(%rbp), %rax
	movq	216(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	je	.L460
.L461:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	cmpq	$1, %rax
	jbe	.L460
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L505
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_streams@PLT
	testl	%eax, %eax
	je	.L463
	movq	-40(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$4, %edx
	movb	%dl, 121(%rax)
	movl	$1, -156(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	je	.L506
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	jmp	.L460
.L463:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L460:
	movzbl	-159(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L465
	movq	-184(%rbp), %rax
	movzbl	472(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L466
	movq	-184(%rbp), %rax
	movq	224(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	je	.L465
.L466:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	cmpq	$1, %rax
	jbe	.L465
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -112(%rbp)
	movq	-184(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L507
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_streams@PLT
	testl	%eax, %eax
	je	.L468
	movq	-40(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$8, %edx
	movb	%dl, 121(%rax)
	movl	$1, -156(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	je	.L508
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	jmp	.L465
.L468:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_rollback
.L465:
	movq	-184(%rbp), %rax
	movq	176(%rax), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, -32(%rbp)
	jmp	.L470
.L486:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_frame_type@PLT
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_encoded@PLT
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_encoded_len@PLT
	movq	%rax, -144(%rbp)
	cmpq	$27, -128(%rbp)
	je	.L471
	cmpq	$27, -128(%rbp)
	ja	.L472
	cmpq	$25, -128(%rbp)
	je	.L473
	cmpq	$25, -128(%rbp)
	ja	.L472
	cmpq	$7, -128(%rbp)
	je	.L474
	cmpq	$24, -128(%rbp)
	jne	.L472
	movzbl	-160(%rbp), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L509
	jmp	.L476
.L473:
	movzbl	-160(%rbp), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L510
	jmp	.L476
.L474:
	movzbl	-159(%rbp), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L511
	cmpl	$0, -20(%rbp)
	jne	.L512
	leaq	-164(%rbp), %rcx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	txp_generate_pre_token
	testl	%eax, %eax
	je	.L512
	movl	$1, -20(%rbp)
	jmp	.L512
.L471:
	movzbl	-160(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L513
	movq	-192(%rbp), %rax
	movl	$1, 280(%rax)
	jmp	.L477
.L472:
	movzbl	-159(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L514
	jmp	.L477
.L509:
	nop
	jmp	.L477
.L510:
	nop
	jmp	.L477
.L512:
	nop
.L477:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_get_space_left
	cmpq	-144(%rbp), %rax
	jb	.L515
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tx_helper_append_iovec
	testl	%eax, %eax
	je	.L516
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_add_cfq_item@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_frame_type_is_ack_eliciting
	testl	%eax, %eax
	je	.L476
	movl	$1, -156(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	jmp	.L476
.L511:
	nop
	jmp	.L476
.L513:
	nop
	jmp	.L476
.L514:
	nop
.L476:
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_priority_next@PLT
	movq	%rax, -32(%rbp)
.L470:
	cmpq	$0, -32(%rbp)
	jne	.L486
	jmp	.L484
.L515:
	nop
.L484:
	cmpl	$0, -20(%rbp)
	jne	.L487
	leaq	-164(%rbp), %rcx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	txp_generate_pre_token
	testl	%eax, %eax
	je	.L487
	movl	$1, -20(%rbp)
.L487:
	movzbl	-160(%rbp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L488
	leaq	-156(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	txp_generate_crypto_frames
	testl	%eax, %eax
	je	.L517
.L488:
	movzbl	-159(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L489
	movq	-184(%rbp), %rax
	movzbl	473(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L489
	movq	-192(%rbp), %rax
	leaq	144(%rax), %rcx
	leaq	-156(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	txp_generate_stream_related
	testl	%eax, %eax
	je	.L518
.L489:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_unrestrict
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	jne	.L490
	leaq	-160(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	txp_need_ping
	testl	%eax, %eax
	je	.L490
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_begin
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L519
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_ping@PLT
	testl	%eax, %eax
	je	.L520
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tx_helper_commit
	testl	%eax, %eax
	je	.L520
	movl	$1, -156(%rbp)
.L490:
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	je	.L494
	movl	$0, -164(%rbp)
.L494:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	264(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-184(%rbp), %rax
	movl	-52(%rbp), %edx
	addq	$54, %rdx
	movq	8(%rax,%rdx,8), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-52(%rbp), %eax
	andl	$3, %eax
	movq	-40(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	32(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	sete	%dl
	movq	-40(%rbp), %rax
	andl	$1, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	32(%rax), %edx
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, 32(%rax)
	movl	-156(%rbp), %eax
	andl	$1, %eax
	movq	-40(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,8), %ecx
	movzbl	32(%rdx), %eax
	andl	$-9, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 32(%rax)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-33, %edx
	movb	%dl, 32(%rax)
	movq	-184(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	256(%rax), %rax
	movq	-40(%rbp), %rbx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, 16(%rbx)
	movq	-192(%rbp), %rax
	movzbl	152(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, 120(%rax)
	movl	-44(%rbp), %eax
	jmp	.L497
.L498:
	nop
	jmp	.L448
.L499:
	nop
	jmp	.L448
.L500:
	nop
	jmp	.L448
.L501:
	nop
	jmp	.L448
.L502:
	nop
	jmp	.L448
.L503:
	nop
	jmp	.L448
.L504:
	nop
	jmp	.L448
.L505:
	nop
	jmp	.L448
.L506:
	nop
	jmp	.L448
.L507:
	nop
	jmp	.L448
.L508:
	nop
	jmp	.L448
.L516:
	nop
	jmp	.L448
.L517:
	nop
	jmp	.L448
.L518:
	nop
	jmp	.L448
.L519:
	nop
	jmp	.L448
.L520:
	nop
.L448:
	cmpq	$0, -40(%rbp)
	je	.L496
	movq	-184(%rbp), %rax
	movq	168(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_release@PLT
	movq	-192(%rbp), %rax
	movq	$0, 136(%rax)
.L496:
	movl	$0, %eax
.L497:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	txp_generate_for_el, .-txp_generate_for_el
	.type	txp_pkt_commit, @function
txp_pkt_commit:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movl	$1, -4(%rbp)
	movq	-160(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -24(%rbp)
	movq	-160(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	movl	$0, (%rax)
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L522
	movl	$0, %eax
	jmp	.L552
.L522:
	leaq	-100(%rbp), %rdx
	movl	-164(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	txp_get_archetype_data
	testl	%eax, %eax
	jne	.L524
	movl	$0, %eax
	jmp	.L552
.L524:
	movq	-160(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movl	-20(%rbp), %edx
	addq	$17, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	-152(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L525
	movq	-152(%rbp), %rax
	addq	$44, %rax
	jmp	.L526
.L525:
	movl	$0, %eax
.L526:
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	movl	-24(%rbp), %edx
	addq	$54, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -48(%rbp)
	movq	-160(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L527
.L531:
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L528
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L529
.L528:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -128(%rbp)
	movzbl	-120(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -120(%rbp)
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	shrb	$5, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%rax,%rax), %edx
	movzbl	-120(%rbp), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, -120(%rbp)
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%rax,4), %edx
	movzbl	-120(%rbp), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, -120(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_append_chunk@PLT
	testl	%eax, %eax
	jne	.L529
	movl	$0, %eax
	jmp	.L552
.L529:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L527:
	cmpq	$0, -16(%rbp)
	jne	.L531
	movq	-152(%rbp), %rax
	leaq	336(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_fifd_pkt_commit@PLT
	testl	%eax, %eax
	jne	.L532
	movl	$0, %eax
	jmp	.L552
.L532:
	movq	-152(%rbp), %rax
	movl	-24(%rbp), %edx
	addq	$54, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	1(%rax), %rcx
	movq	-152(%rbp), %rax
	movl	-24(%rbp), %edx
	addq	$54, %rdx
	movq	%rcx, 8(%rax,%rdx,8)
	movq	-176(%rbp), %rax
	movl	$1, (%rax)
	movq	-152(%rbp), %rax
	movq	160(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_write_pkt@PLT
	testl	%eax, %eax
	jne	.L533
	movl	$0, %eax
	jmp	.L552
.L533:
	movq	-160(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L534
.L541:
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L535
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 260(%rax)
	movq	-16(%rbp), %rax
	addq	$160, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
.L535:
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L536
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 260(%rax)
.L536:
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L537
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 260(%rax)
.L537:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L538
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L539
	movl	$0, -4(%rbp)
.L539:
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.L538:
	movq	-152(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	je	.L540
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_has_pending@PLT
	testl	%eax, %eax
	jne	.L540
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	je	.L540
	movq	-152(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_notify_all_data_sent@PLT
.L540:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L534:
	cmpq	$0, -16(%rbp)
	jne	.L541
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L542
	movq	-152(%rbp), %rax
	movzwl	472(%rax), %eax
	shrw	$7, %ax
	andl	$7, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	notl	%eax
	andl	%esi, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movzbl	%dl, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$7, %ecx
	movzwl	472(%rax), %edx
	andw	$-897, %dx
	orl	%ecx, %edx
	movw	%dx, 472(%rax)
.L542:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L543
	movq	-152(%rbp), %rax
	movzbl	472(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 472(%rax)
.L543:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L544
	movq	-152(%rbp), %rax
	movzbl	472(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 472(%rax)
	movq	-152(%rbp), %rax
	movq	208(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
.L544:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L545
	movq	-152(%rbp), %rax
	movzbl	472(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 472(%rax)
	movq	-152(%rbp), %rax
	movq	216(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
.L545:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L546
	movq	-152(%rbp), %rax
	movzbl	472(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 472(%rax)
	movq	-152(%rbp), %rax
	movq	224(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
.L546:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L547
	movq	-152(%rbp), %rax
	movzbl	472(%rax), %eax
	shrb	$4, %al
	andl	$7, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	notl	%eax
	andl	%esi, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	472(%rax), %edx
	andl	$-113, %edx
	orl	%ecx, %edx
	movb	%dl, 472(%rax)
.L547:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L548
	movq	-152(%rbp), %rax
	movzbl	473(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 473(%rax)
.L548:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L549
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L550
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L550
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L550:
	cmpl	$1, -20(%rbp)
	jne	.L551
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L551
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
.L551:
	movzbl	-99(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L549
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	8(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L549
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	8(%rax,%rdx,4), %eax
	leal	-1(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%ecx, 8(%rax,%rdx,4)
.L549:
	movl	-4(%rbp), %eax
.L552:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	txp_pkt_commit, .-txp_pkt_commit
	.type	txp_el_ensure_iovec, @function
txp_el_ensure_iovec:
.LFB669:
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
	jb	.L554
	movl	$1, %eax
	jmp	.L555
.L554:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L556
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	jmp	.L557
.L556:
	movq	$8, -32(%rbp)
.L557:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$3061, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L558
	movl	$0, %eax
	jmp	.L555
.L558:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L555:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	txp_el_ensure_iovec, .-txp_el_ensure_iovec
	.globl	ossl_quic_tx_packetiser_schedule_conn_close
	.type	ossl_quic_tx_packetiser_schedule_conn_close, @function
ossl_quic_tx_packetiser_schedule_conn_close:
.LFB670:
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
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	txp_get_mdpl
	shrq	%rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movzbl	473(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L560
	movl	$0, %eax
	jmp	.L561
.L560:
	movq	-32(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L562
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.L562:
	cmpq	$0, -32(%rbp)
	je	.L563
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movl	$3088, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L563
	movl	$0, %eax
	jmp	.L561
.L563:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 480(%rax)
	movq	%rbx, 488(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 496(%rax)
	movq	%rbx, 504(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 512(%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 504(%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 512(%rax)
	movq	-56(%rbp), %rax
	movzbl	473(%rax), %edx
	orl	$4, %edx
	movb	%dl, 473(%rax)
	movl	$1, %eax
.L561:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	ossl_quic_tx_packetiser_schedule_conn_close, .-ossl_quic_tx_packetiser_schedule_conn_close
	.globl	ossl_quic_tx_packetiser_set_msg_callback
	.type	ossl_quic_tx_packetiser_set_msg_callback, @function
ossl_quic_tx_packetiser_set_msg_callback:
.LFB671:
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
	movq	%rdx, 664(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 680(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	ossl_quic_tx_packetiser_set_msg_callback, .-ossl_quic_tx_packetiser_set_msg_callback
	.globl	ossl_quic_tx_packetiser_set_msg_callback_arg
	.type	ossl_quic_tx_packetiser_set_msg_callback_arg, @function
ossl_quic_tx_packetiser_set_msg_callback_arg:
.LFB672:
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
	movq	%rdx, 672(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	ossl_quic_tx_packetiser_set_msg_callback_arg, .-ossl_quic_tx_packetiser_set_msg_callback_arg
	.globl	ossl_quic_tx_packetiser_get_next_pn
	.type	ossl_quic_tx_packetiser_get_next_pn, @function
ossl_quic_tx_packetiser_get_next_pn:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jbe	.L567
	movq	$-1, %rax
	jmp	.L568
.L567:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$54, %rdx
	movq	8(%rax,%rdx,8), %rax
.L568:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	ossl_quic_tx_packetiser_get_next_pn, .-ossl_quic_tx_packetiser_get_next_pn
	.globl	ossl_quic_tx_packetiser_get_deadline
	.type	ossl_quic_tx_packetiser_get_deadline, @function
ossl_quic_tx_packetiser_get_deadline:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_time_infinite
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L570
.L572:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_is_enc_level_provisioned@PLT
	testl	%eax, %eax
	je	.L571
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
.L571:
	addl	$1, -4(%rbp)
.L570:
	cmpl	$3, -4(%rbp)
	jbe	.L572
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testq	%rax, %rax
	jne	.L573
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, -16(%rbp)
.L573:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	ossl_quic_tx_packetiser_get_deadline, .-ossl_quic_tx_packetiser_get_deadline
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 28
__func__.3:
	.string	"ossl_quic_tx_packetiser_new"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 37
__func__.2:
	.string	"ossl_quic_tx_packetiser_set_cur_dcid"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 37
__func__.1:
	.string	"ossl_quic_tx_packetiser_set_cur_scid"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 42
__func__.0:
	.string	"ossl_quic_tx_packetiser_discard_enc_level"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

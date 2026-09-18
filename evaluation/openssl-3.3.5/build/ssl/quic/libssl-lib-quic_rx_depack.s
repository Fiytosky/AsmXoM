	.file	"quic_rx_depack.c"
	.text
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB31:
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
.LFE31:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB33:
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
.LFE33:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB34:
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
	jns	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	ossl_quic_enc_level_to_pn_space, @function
ossl_quic_enc_level_to_pn_space:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	ja	.L9
	cmpl	$2, -4(%rbp)
	jnb	.L10
	cmpl	$0, -4(%rbp)
	je	.L11
	cmpl	$1, -4(%rbp)
	je	.L12
	jmp	.L9
.L11:
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	$1, %eax
	jmp	.L13
.L10:
	movl	$2, %eax
	jmp	.L13
.L9:
	movl	$2, %eax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	ossl_quic_enc_level_to_pn_space, .-ossl_quic_enc_level_to_pn_space
	.type	ossl_quic_pkt_type_to_enc_level, @function
ossl_quic_pkt_type_to_enc_level:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	.L15
	cmpl	$5, -4(%rbp)
	ja	.L16
	cmpl	$3, -4(%rbp)
	je	.L17
	cmpl	$3, -4(%rbp)
	ja	.L16
	cmpl	$1, -4(%rbp)
	je	.L18
	cmpl	$2, -4(%rbp)
	je	.L19
	jmp	.L16
.L18:
	movl	$0, %eax
	jmp	.L20
.L17:
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$2, %eax
	jmp	.L20
.L15:
	movl	$3, %eax
	jmp	.L20
.L16:
	movl	$4, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	ossl_quic_pkt_type_to_enc_level, .-ossl_quic_pkt_type_to_enc_level
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
	.type	ossl_quic_stream_recv_get_final_size, @function
ossl_quic_stream_recv_get_final_size:
.LFB653:
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
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	subl	$2, %eax
	cmpl	$4, %eax
	jbe	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	leaq	160(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_rxfc_get_final_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L34
	movl	$0, %eax
	jmp	.L33
.L34:
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ossl_quic_stream_recv_get_final_size, .-ossl_quic_stream_recv_get_final_size
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
	.type	depack_do_frame_padding, @function
depack_do_frame_padding:
.LFB729:
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
	call	ossl_quic_wire_decode_padding@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	depack_do_frame_padding, .-depack_do_frame_padding
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_rx_depack.c"
.LC1:
	.string	"decode error"
	.text
	.type	depack_do_frame_ping, @function
depack_do_frame_ping:
.LFB730:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ping@PLT
	testl	%eax, %eax
	jne	.L46
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	__func__.20(%rip), %rcx
	pushq	%rcx
	pushq	$50
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_ack_eliciting@PLT
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	depack_do_frame_ping, .-depack_do_frame_ping
	.section	.rodata
	.align 8
.LC2:
	.string	"acked packet which initiated a key update without a corresponding key update"
	.text
	.type	depack_do_frame_ack, @function
depack_do_frame_ack:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movzbl	1304(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	leaq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_ack_num_ranges@PLT
	testl	%eax, %eax
	je	.L60
	movq	-104(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L60
	movq	-128(%rbp), %rax
	movq	1544(%rax), %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L52
	movq	-104(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-128(%rbp), %rax
	movq	1536(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$77, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L61
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 1536(%rax)
	movq	-104(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 1544(%rax)
.L52:
	movq	-128(%rbp), %rax
	movq	1536(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-96(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ack@PLT
	testl	%eax, %eax
	je	.L62
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L55
	movq	-160(%rbp), %rax
	movq	56(%rax), %rbx
	movq	-128(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_get_key_epoch@PLT
	cmpq	%rax, %rbx
	jb	.L56
	movq	-128(%rbp), %rax
	movzbl	1524(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L55
.L56:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	1504(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L55
	leaq	.LC0(%rip), %rdi
	leaq	.LC2(%rip), %rcx
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	__func__.19(%rip), %rsi
	pushq	%rsi
	pushq	$117
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L59
.L55:
	movq	-128(%rbp), %rax
	movq	1016(%rax), %rax
	movq	-144(%rbp), %rcx
	movl	-132(%rbp), %edx
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_ack_frame@PLT
	testl	%eax, %eax
	je	.L63
	movq	-128(%rbp), %rax
	movzwl	1306(%rax), %eax
	leal	1(%rax), %edx
	movq	-128(%rbp), %rax
	movw	%dx, 1306(%rax)
	movl	$1, %eax
	jmp	.L59
.L60:
	nop
	jmp	.L51
.L61:
	nop
	jmp	.L51
.L62:
	nop
	jmp	.L51
.L63:
	nop
.L51:
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	__func__.19(%rip), %rsi
	pushq	%rsi
	pushq	$134
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	depack_do_frame_ack, .-depack_do_frame_ack
	.section	.rodata
	.align 8
.LC3:
	.string	"RESET_STREAM frame for TX only stream"
.LC4:
	.string	"internal error (flow control)"
.LC5:
	.string	"flow control violation"
	.text
	.type	depack_do_frame_reset_stream, @function
depack_do_frame_reset_stream:
.LFB732:
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
	movq	$0, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_reset_stream@PLT
	testl	%eax, %eax
	jne	.L65
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.18(%rip), %rcx
	pushq	%rcx
	pushq	$150
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L72
.L65:
	movq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	depack_do_implicit_stream_create
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L72
.L67:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$1, %eax
	jmp	.L72
.L68:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv
	testl	%eax, %eax
	jne	.L69
	leaq	.LC0(%rip), %rsi
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.18(%rip), %rcx
	pushq	%rcx
	pushq	$166
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L72
.L69:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	160(%rdx), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_rx_stream_frame@PLT
	testl	%eax, %eax
	jne	.L70
	leaq	.LC0(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.18(%rip), %rcx
	pushq	%rcx
	pushq	$186
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L72
.L70:
	movq	-40(%rbp), %rax
	addq	$160, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_error@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L71
	leaq	.LC0(%rip), %rdi
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	-64(%rbp), %rax
	leaq	__func__.18(%rip), %rcx
	pushq	%rcx
	pushq	$196
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rsi
	leaq	816(%rsi), %rdi
	movq	%rax, %rsi
	call	ossl_quic_stream_map_notify_reset_recv_part@PLT
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	$816, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	depack_do_frame_reset_stream, .-depack_do_frame_reset_stream
	.section	.rodata
	.align 8
.LC6:
	.string	"STOP_SENDING frame for RX only stream"
	.text
	.type	depack_do_frame_stop_sending, @function
depack_do_frame_stop_sending:
.LFB733:
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
	movq	$0, -24(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stop_sending@PLT
	testl	%eax, %eax
	jne	.L74
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	__func__.17(%rip), %rcx
	pushq	%rcx
	pushq	$225
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L79
.L74:
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	depack_do_implicit_stream_create
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L79
.L76:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L77
	movl	$1, %eax
	jmp	.L79
.L77:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send
	testl	%eax, %eax
	jne	.L78
	leaq	.LC0(%rip), %rsi
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	__func__.17(%rip), %rcx
	pushq	%rcx
	pushq	$241
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	-24(%rbp), %rax
	movzbl	259(%rax), %edx
	orl	$8, %edx
	movb	%dl, 259(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$816, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_reset_stream_send_part@PLT
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	depack_do_frame_stop_sending, .-depack_do_frame_stop_sending
	.section	.rodata
.LC7:
	.string	"internal error (crypto RXFC)"
	.align 8
.LC8:
	.string	"exceeded maximum crypto buffer"
	.align 8
.LC9:
	.string	"internal error (rstream queue)"
	.text
	.type	depack_do_frame_crypto, @function
depack_do_frame_crypto:
.LFB734:
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
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_crypto@PLT
	testl	%eax, %eax
	jne	.L81
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.16(%rip), %rcx
	pushq	%rcx
	pushq	$274
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L88
.L81:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L83
	movl	$1, %eax
	jmp	.L88
.L83:
	movq	-80(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	addq	$136, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L84
	movl	$0, %eax
	jmp	.L88
.L84:
	movq	-80(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	336(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_rx_stream_frame@PLT
	testl	%eax, %eax
	jne	.L85
	leaq	.LC0(%rip), %rsi
	leaq	.LC7(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.16(%rip), %rcx
	pushq	%rcx
	pushq	$297
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L88
.L85:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_error@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC0(%rip), %rsi
	leaq	.LC8(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.16(%rip), %rcx
	pushq	%rcx
	pushq	$305
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L88
.L86:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	jne	.L87
	leaq	.LC0(%rip), %rsi
	leaq	.LC9(%rip), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.16(%rip), %rcx
	pushq	%rcx
	pushq	$313
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-64(%rbp), %rax
	movzbl	1523(%rax), %edx
	orl	$16, %edx
	movb	%dl, 1523(%rax)
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	depack_do_frame_crypto, .-depack_do_frame_crypto
	.section	.rodata
.LC10:
	.string	"zero-length NEW_TOKEN"
	.text
	.type	depack_do_frame_new_token, @function
depack_do_frame_new_token:
.LFB735:
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
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_token@PLT
	testl	%eax, %eax
	jne	.L90
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.15(%rip), %rcx
	pushq	%rcx
	pushq	$333
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L93
.L90:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L92
	leaq	.LC0(%rip), %rsi
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.15(%rip), %rcx
	pushq	%rcx
	pushq	$346
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L93
.L92:
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	depack_do_frame_new_token, .-depack_do_frame_new_token
	.section	.rodata
	.align 8
.LC11:
	.string	"internal error (stream count RXFC)"
	.align 8
.LC12:
	.string	"exceeded maximum allowed streams"
	.align 8
.LC13:
	.string	"internal error (stream allocation)"
	.align 8
.LC14:
	.string	"STREAM frame for nonexistent stream"
	.text
	.type	depack_do_implicit_stream_create, @function
depack_do_implicit_stream_create:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L95
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L96
.L95:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	andl	$1, %eax
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L97
	cmpl	$0, -48(%rbp)
	je	.L98
	movq	-72(%rbp), %rax
	addq	$1400, %rax
	movq	%rax, -24(%rbp)
	jmp	.L99
.L98:
	movq	-72(%rbp), %rax
	addq	$1392, %rax
	movq	%rax, -24(%rbp)
.L99:
	cmpl	$0, -48(%rbp)
	je	.L100
	movq	-72(%rbp), %rax
	addq	$720, %rax
	movq	%rax, -32(%rbp)
	jmp	.L101
.L100:
	movq	-72(%rbp), %rax
	addq	$624, %rax
	movq	%rax, -32(%rbp)
.L101:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_rx_stream_frame@PLT
	testl	%eax, %eax
	jne	.L102
	leaq	.LC0(%rip), %rdi
	leaq	.LC11(%rip), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.14(%rip), %rsi
	pushq	%rsi
	pushq	$427
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L96
.L102:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_error@PLT
	testl	%eax, %eax
	je	.L104
	leaq	.LC0(%rip), %rdi
	leaq	.LC12(%rip), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.14(%rip), %rsi
	pushq	%rsi
	pushq	$435
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L96
.L106:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	andl	$3, %eax
	orq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_new_stream_remote@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L105
	leaq	.LC0(%rip), %rdi
	leaq	.LC13(%rip), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.14(%rip), %rsi
	pushq	%rsi
	pushq	$452
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L96
.L105:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L104:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L106
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L107
.L97:
	cmpl	$0, -48(%rbp)
	je	.L108
	movq	-72(%rbp), %rax
	addq	$1384, %rax
	movq	%rax, -16(%rbp)
	jmp	.L109
.L108:
	movq	-72(%rbp), %rax
	addq	$1376, %rax
	movq	%rax, -16(%rbp)
.L109:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jb	.L110
	leaq	.LC0(%rip), %rdi
	leaq	.LC14(%rip), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.14(%rip), %rsi
	pushq	%rsi
	pushq	$474
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L96
.L110:
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
.L107:
	movl	$1, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	depack_do_implicit_stream_create, .-depack_do_implicit_stream_create
	.section	.rodata
	.align 8
.LC15:
	.string	"STREAM frame for TX only stream"
	.align 8
.LC16:
	.string	"internal error (rstream available)"
	.text
	.type	depack_do_frame_stream, @function
depack_do_frame_stream:
.LFB737:
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
	movq	%r9, -128(%rbp)
	movl	$0, -68(%rbp)
	movq	-128(%rbp), %rax
	movq	$0, (%rax)
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream@PLT
	testl	%eax, %eax
	jne	.L112
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.13(%rip), %rsi
	pushq	%rsi
	pushq	$509
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L127
.L112:
	movq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	depack_do_implicit_stream_create
	testl	%eax, %eax
	jne	.L114
	movl	$0, %eax
	jmp	.L127
.L114:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L115
	movl	$1, %eax
	jmp	.L127
.L115:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv
	testl	%eax, %eax
	jne	.L116
	leaq	.LC0(%rip), %rdi
	leaq	.LC15(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.13(%rip), %rsi
	pushq	%rsi
	pushq	$528
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L127
.L116:
	movzbl	-16(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	160(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_rx_stream_frame@PLT
	testl	%eax, %eax
	jne	.L117
	leaq	.LC0(%rip), %rdi
	leaq	.LC4(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.13(%rip), %rsi
	pushq	%rsi
	pushq	$540
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L127
.L117:
	movq	-56(%rbp), %rax
	addq	$160, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_error@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L118
	leaq	.LC0(%rip), %r8
	leaq	.LC5(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-96(%rbp), %rax
	leaq	__func__.13(%rip), %rdi
	pushq	%rdi
	pushq	$550
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L127
.L118:
	movq	-56(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	.L129
	movl	$1, %eax
	jmp	.L127
.L129:
	nop
	movzbl	-16(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L121
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_get_final_size
	testl	%eax, %eax
	jne	.L121
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	$816, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_notify_size_known_recv_part@PLT
.L121:
	movq	-56(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L122
	movl	$1, %eax
	jmp	.L127
.L122:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L123
	movzbl	-16(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L124
.L123:
	movzbl	-16(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movq	-104(%rbp), %rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	jne	.L124
	leaq	.LC0(%rip), %rdi
	leaq	.LC9(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.13(%rip), %rsi
	pushq	%rsi
	pushq	$612
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L127
.L124:
	movq	-56(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$2, %al
	jne	.L125
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-68(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_available@PLT
	testl	%eax, %eax
	jne	.L125
	leaq	.LC0(%rip), %rdi
	leaq	.LC16(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.13(%rip), %rsi
	pushq	%rsi
	pushq	$627
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L127
.L125:
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	je	.L126
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	addq	$816, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_notify_totally_received@PLT
.L126:
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	depack_do_frame_stream, .-depack_do_frame_stream
	.type	update_streams, @function
update_streams:
.LFB738:
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
.LFE738:
	.size	update_streams, .-update_streams
	.type	update_streams_bidi, @function
update_streams_bidi:
.LFB739:
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
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L131
.L134:
	nop
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	update_streams_bidi, .-update_streams_bidi
	.type	update_streams_uni, @function
update_streams_uni:
.LFB740:
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
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	jne	.L138
	movq	-8(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L135
.L138:
	nop
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	update_streams_uni, .-update_streams_uni
	.type	depack_do_frame_max_data, @function
depack_do_frame_max_data:
.LFB741:
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
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_data@PLT
	testl	%eax, %eax
	jne	.L140
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.12(%rip), %rcx
	pushq	%rcx
	pushq	$675
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L142
.L140:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	$208, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	movq	-32(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	update_streams(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_visit@PLT
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	depack_do_frame_max_data, .-depack_do_frame_max_data
	.section	.rodata
	.align 8
.LC17:
	.string	"MAX_STREAM_DATA for TX only stream"
	.text
	.type	depack_do_frame_max_stream_data, @function
depack_do_frame_max_stream_data:
.LFB742:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_stream_data@PLT
	testl	%eax, %eax
	jne	.L144
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	__func__.11(%rip), %rcx
	pushq	%rcx
	pushq	$697
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L149
.L144:
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$17, %edx
	movq	%rax, %rdi
	call	depack_do_implicit_stream_create
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L149
.L146:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L147
	movl	$1, %eax
	jmp	.L149
.L147:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send
	testl	%eax, %eax
	jne	.L148
	leaq	.LC0(%rip), %rsi
	leaq	.LC17(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	__func__.11(%rip), %rcx
	pushq	%rcx
	pushq	$713
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	$-128, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	$816, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movl	$1, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	depack_do_frame_max_stream_data, .-depack_do_frame_max_stream_data
	.section	.rodata
.LC18:
	.string	"invalid max streams value"
	.text
	.type	depack_do_frame_max_streams, @function
depack_do_frame_max_streams:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_streams@PLT
	testl	%eax, %eax
	jne	.L151
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.10(%rip), %rsi
	pushq	%rsi
	pushq	$734
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L160
.L151:
	movq	-8(%rbp), %rax
	movabsq	$1152921504606846976, %rdx
	cmpq	%rax, %rdx
	jnb	.L153
	leaq	.LC0(%rip), %rdi
	leaq	.LC18(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.10(%rip), %rsi
	pushq	%rsi
	pushq	$742
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L160
.L153:
	cmpq	$18, -48(%rbp)
	je	.L154
	cmpq	$19, -48(%rbp)
	je	.L155
	jmp	.L161
.L154:
	movq	-32(%rbp), %rax
	movq	1320(%rax), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L157
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 1320(%rax)
.L157:
	movq	-32(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	update_streams_bidi(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_visit@PLT
	jmp	.L158
.L155:
	movq	-32(%rbp), %rax
	movq	1328(%rax), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L159
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 1328(%rax)
.L159:
	movq	-32(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	update_streams_uni(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_quic_stream_map_visit@PLT
	jmp	.L158
.L161:
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.10(%rip), %rsi
	pushq	%rsi
	pushq	$765
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L160
.L158:
	movl	$1, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	depack_do_frame_max_streams, .-depack_do_frame_max_streams
	.type	depack_do_frame_data_blocked, @function
depack_do_frame_data_blocked:
.LFB744:
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
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_data_blocked@PLT
	testl	%eax, %eax
	jne	.L163
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.9(%rip), %rcx
	pushq	%rcx
	pushq	$782
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L165
.L163:
	movl	$1, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	depack_do_frame_data_blocked, .-depack_do_frame_data_blocked
	.section	.rodata
	.align 8
.LC19:
	.string	"STREAM_DATA_BLOCKED frame for TX only stream"
	.text
	.type	depack_do_frame_stream_data_blocked, @function
depack_do_frame_stream_data_blocked:
.LFB745:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream_data_blocked@PLT
	testl	%eax, %eax
	jne	.L167
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	__func__.8(%rip), %rcx
	pushq	%rcx
	pushq	$803
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$21, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L172
.L167:
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$21, %edx
	movq	%rax, %rdi
	call	depack_do_implicit_stream_create
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L172
.L169:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L170
	movl	$1, %eax
	jmp	.L172
.L170:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv
	testl	%eax, %eax
	jne	.L171
	leaq	.LC0(%rip), %rsi
	leaq	.LC19(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	__func__.8(%rip), %rcx
	pushq	%rcx
	pushq	$828
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$21, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L172
.L171:
	movl	$1, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	depack_do_frame_stream_data_blocked, .-depack_do_frame_stream_data_blocked
	.section	.rodata
.LC20:
	.string	"invalid stream count limit"
	.text
	.type	depack_do_frame_streams_blocked, @function
depack_do_frame_streams_blocked:
.LFB746:
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
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_streams_blocked@PLT
	testl	%eax, %eax
	jne	.L174
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.7(%rip), %rsi
	pushq	%rsi
	pushq	$848
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L177
.L174:
	movq	-8(%rbp), %rax
	movabsq	$1152921504606846976, %rdx
	cmpq	%rax, %rdx
	jnb	.L176
	leaq	.LC0(%rip), %rdi
	leaq	.LC20(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.7(%rip), %rsi
	pushq	%rsi
	pushq	$862
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L177
.L176:
	movl	$1, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	depack_do_frame_streams_blocked, .-depack_do_frame_streams_blocked
	.type	depack_do_frame_new_conn_id, @function
depack_do_frame_new_conn_id:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_conn_id@PLT
	testl	%eax, %eax
	jne	.L179
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	leaq	__func__.6(%rip), %rcx
	pushq	%rcx
	pushq	$880
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L181
.L179:
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_on_new_conn_id@PLT
	movl	$1, %eax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	depack_do_frame_new_conn_id, .-depack_do_frame_new_conn_id
	.section	.rodata
.LC21:
	.string	"conn has zero-length CID"
	.text
	.type	depack_do_frame_retire_conn_id, @function
depack_do_frame_retire_conn_id:
.LFB748:
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
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_retire_conn_id@PLT
	testl	%eax, %eax
	jne	.L183
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.5(%rip), %rcx
	pushq	%rcx
	pushq	$899
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$25, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L186
.L183:
	movq	-32(%rbp), %rax
	movzbl	1523(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L185
	leaq	.LC0(%rip), %rsi
	leaq	.LC21(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.5(%rip), %rcx
	pushq	%rcx
	pushq	$920
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$25, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L186
.L185:
	movl	$1, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	depack_do_frame_retire_conn_id, .-depack_do_frame_retire_conn_id
	.type	free_path_response, @function
free_path_response:
.LFB749:
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
	movl	$932, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	free_path_response, .-free_path_response
	.section	.rodata
.LC22:
	.string	"internal error"
	.text
	.type	depack_do_frame_path_challenge, @function
depack_do_frame_path_challenge:
.LFB750:
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
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_challenge@PLT
	testl	%eax, %eax
	jne	.L189
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.4(%rip), %rcx
	pushq	%rcx
	pushq	$945
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$26, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L196
.L189:
	movq	$9, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$960, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L197
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	je	.L198
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_path_response@PLT
	testl	%eax, %eax
	jne	.L194
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	jmp	.L192
.L194:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	movq	-96(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rcx
	subq	$8, %rsp
	pushq	$0
	leaq	free_path_response(%rip), %rdx
	pushq	%rdx
	pushq	-16(%rbp)
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$27, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_add_frame@PLT
	addq	$32, %rsp
	testq	%rax, %rax
	je	.L199
	movl	$1, %eax
	jmp	.L196
.L197:
	nop
	jmp	.L192
.L198:
	nop
	jmp	.L192
.L199:
	nop
.L192:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$983, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rsi
	leaq	.LC22(%rip), %rdx
	movq	-96(%rbp), %rax
	leaq	__func__.4(%rip), %rcx
	pushq	%rcx
	pushq	$984
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$26, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	depack_do_frame_path_challenge, .-depack_do_frame_path_challenge
	.type	depack_do_frame_path_response, @function
depack_do_frame_path_response:
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
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_response@PLT
	testl	%eax, %eax
	jne	.L201
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	__func__.3(%rip), %rcx
	pushq	%rcx
	pushq	$997
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$27, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L203
.L201:
	movl	$1, %eax
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	depack_do_frame_path_response, .-depack_do_frame_path_response
	.type	depack_do_frame_conn_close, @function
depack_do_frame_conn_close:
.LFB752:
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
	call	ossl_quic_wire_decode_frame_conn_close@PLT
	testl	%eax, %eax
	jne	.L205
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	__func__.2(%rip), %rsi
	pushq	%rsi
	pushq	$1015
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L207
.L205:
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_on_remote_conn_close@PLT
	movl	$1, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	depack_do_frame_conn_close, .-depack_do_frame_conn_close
	.section	.rodata
	.align 8
.LC23:
	.string	"internal error (decode frame handshake done)"
	.text
	.type	depack_do_frame_handshake_done, @function
depack_do_frame_handshake_done:
.LFB753:
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
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_handshake_done@PLT
	testl	%eax, %eax
	jne	.L209
	leaq	.LC0(%rip), %rsi
	leaq	.LC23(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	__func__.1(%rip), %rcx
	pushq	%rcx
	pushq	$1032
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$30, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L210
.L209:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_on_handshake_confirmed@PLT
	movl	$1, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	depack_do_frame_handshake_done, .-depack_do_frame_handshake_done
	.section	.rodata
.LC24:
	.string	"empty packet payload"
.LC25:
	.string	"malformed frame header"
	.align 8
.LC26:
	.string	"non-minimal frame type encoding"
.LC27:
	.string	"ACK not valid in 0-RTT"
	.align 8
.LC28:
	.string	"RESET_STREAM not valid in INITIAL/HANDSHAKE"
	.align 8
.LC29:
	.string	"STOP_SENDING not valid in INITIAL/HANDSHAKE"
	.align 8
.LC30:
	.string	"CRYPTO frame not valid in 0-RTT"
.LC31:
	.string	"NEW_TOKEN valid only in 1-RTT"
.LC32:
	.string	"STREAM valid only in 0/1-RTT"
	.align 8
.LC33:
	.string	"MAX_DATA valid only in 0/1-RTT"
	.align 8
.LC34:
	.string	"MAX_STREAM_DATA valid only in 0/1-RTT"
	.align 8
.LC35:
	.string	"MAX_STREAMS valid only in 0/1-RTT"
	.align 8
.LC36:
	.string	"DATA_BLOCKED valid only in 0/1-RTT"
	.align 8
.LC37:
	.string	"STREAM_DATA_BLOCKED valid only in 0/1-RTT"
.LC38:
	.string	"STREAMS valid only in 0/1-RTT"
	.align 8
.LC39:
	.string	"NEW_CONN_ID valid only in 0/1-RTT"
	.align 8
.LC40:
	.string	"RETIRE_CONN_ID valid only in 0/1-RTT"
	.align 8
.LC41:
	.string	"PATH_CHALLENGE valid only in 0/1-RTT"
	.align 8
.LC42:
	.string	"PATH_CHALLENGE valid only in 1-RTT"
	.align 8
.LC43:
	.string	"CONN_CLOSE (APP) valid only in 0/1-RTT"
	.align 8
.LC44:
	.string	"HANDSHAKE_DONE valid only in 1-RTT"
.LC45:
	.string	"Unknown frame type received"
	.text
	.type	depack_process_frames, @function
depack_process_frames:
.LFB754:
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
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L214
	leaq	.LC0(%rip), %rsi
	leaq	.LC24(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rcx
	pushq	%rcx
	pushq	$1058
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L285:
	movq	$0, -8(%rbp)
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	1040(%rax), %rax
	testq	%rax, %rax
	je	.L215
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -8(%rbp)
.L215:
	leaq	-36(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	jne	.L216
	leaq	.LC0(%rip), %rsi
	leaq	.LC25(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rcx
	pushq	%rcx
	pushq	$1075
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L216:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L218
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC26(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1083
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L218:
	movq	-48(%rbp), %rax
	cmpq	$29, %rax
	ja	.L219
	cmpq	$28, %rax
	jnb	.L286
	testq	%rax, %rax
	je	.L286
	subq	$2, %rax
	cmpq	$1, %rax
	jbe	.L286
.L219:
	movq	-112(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$4, %edx
	movb	%dl, 16(%rax)
	jmp	.L221
.L286:
	nop
.L221:
	movq	-48(%rbp), %rax
	cmpq	$30, %rax
	je	.L222
	cmpq	$30, %rax
	ja	.L223
	cmpq	$29, %rax
	je	.L224
	cmpq	$29, %rax
	ja	.L223
	cmpq	$28, %rax
	je	.L225
	cmpq	$28, %rax
	ja	.L223
	cmpq	$27, %rax
	je	.L226
	cmpq	$27, %rax
	ja	.L223
	cmpq	$26, %rax
	je	.L227
	cmpq	$26, %rax
	ja	.L223
	cmpq	$25, %rax
	je	.L228
	cmpq	$25, %rax
	ja	.L223
	cmpq	$24, %rax
	je	.L229
	cmpq	$24, %rax
	ja	.L223
	cmpq	$23, %rax
	ja	.L223
	cmpq	$22, %rax
	jnb	.L230
	cmpq	$21, %rax
	je	.L231
	cmpq	$21, %rax
	ja	.L223
	cmpq	$20, %rax
	je	.L232
	cmpq	$20, %rax
	ja	.L223
	cmpq	$19, %rax
	ja	.L223
	cmpq	$18, %rax
	jnb	.L233
	cmpq	$17, %rax
	je	.L234
	cmpq	$17, %rax
	ja	.L223
	cmpq	$16, %rax
	je	.L235
	cmpq	$16, %rax
	ja	.L223
	cmpq	$15, %rax
	ja	.L223
	cmpq	$8, %rax
	jnb	.L236
	cmpq	$7, %rax
	je	.L237
	cmpq	$7, %rax
	ja	.L223
	cmpq	$6, %rax
	je	.L238
	cmpq	$6, %rax
	ja	.L223
	cmpq	$5, %rax
	je	.L239
	cmpq	$5, %rax
	ja	.L223
	cmpq	$4, %rax
	je	.L240
	cmpq	$4, %rax
	ja	.L223
	cmpq	$3, %rax
	ja	.L223
	cmpq	$2, %rax
	jnb	.L241
	testq	%rax, %rax
	je	.L242
	cmpq	$1, %rax
	jne	.L223
	movq	-112(%rbp), %rcx
	movl	-92(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	depack_do_frame_ping
	testl	%eax, %eax
	jne	.L287
	movl	$0, %eax
	jmp	.L213
.L242:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	depack_do_frame_padding
	testl	%eax, %eax
	jne	.L288
	movl	$0, %eax
	jmp	.L213
.L241:
	cmpl	$2, -28(%rbp)
	jne	.L246
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC27(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1124
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L246:
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %edx
	movq	-88(%rbp), %r8
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	depack_do_frame_ack
	testl	%eax, %eax
	jne	.L289
	movl	$0, %eax
	jmp	.L213
.L240:
	cmpl	$2, -28(%rbp)
	je	.L248
	cmpl	$5, -28(%rbp)
	je	.L248
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC28(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1139
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L248:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_reset_stream
	testl	%eax, %eax
	jne	.L290
	movl	$0, %eax
	jmp	.L213
.L239:
	cmpl	$2, -28(%rbp)
	je	.L250
	cmpl	$5, -28(%rbp)
	je	.L250
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC29(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1153
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L250:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_stop_sending
	testl	%eax, %eax
	jne	.L291
	movl	$0, %eax
	jmp	.L213
.L238:
	cmpl	$2, -28(%rbp)
	jne	.L252
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC30(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1166
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L252:
	leaq	-56(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	depack_do_frame_crypto
	testl	%eax, %eax
	jne	.L292
	movl	$0, %eax
	jmp	.L213
.L237:
	cmpl	$5, -28(%rbp)
	je	.L254
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC31(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1178
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L254:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_new_token
	testl	%eax, %eax
	jne	.L293
	movl	$0, %eax
	jmp	.L213
.L236:
	cmpl	$2, -28(%rbp)
	je	.L256
	cmpl	$5, -28(%rbp)
	je	.L256
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC32(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1199
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L256:
	movq	-48(%rbp), %rdi
	leaq	-56(%rbp), %r8
	movq	-112(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	depack_do_frame_stream
	testl	%eax, %eax
	jne	.L294
	movl	$0, %eax
	jmp	.L213
.L235:
	cmpl	$2, -28(%rbp)
	je	.L258
	cmpl	$5, -28(%rbp)
	je	.L258
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC33(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1214
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L258:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_max_data
	testl	%eax, %eax
	jne	.L295
	movl	$0, %eax
	jmp	.L213
.L234:
	cmpl	$2, -28(%rbp)
	je	.L260
	cmpl	$5, -28(%rbp)
	je	.L260
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC34(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1227
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L260:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_max_stream_data
	testl	%eax, %eax
	jne	.L296
	movl	$0, %eax
	jmp	.L213
.L233:
	cmpl	$2, -28(%rbp)
	je	.L262
	cmpl	$5, -28(%rbp)
	je	.L262
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC35(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1242
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L262:
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	depack_do_frame_max_streams
	testl	%eax, %eax
	jne	.L297
	movl	$0, %eax
	jmp	.L213
.L232:
	cmpl	$2, -28(%rbp)
	je	.L264
	cmpl	$5, -28(%rbp)
	je	.L264
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC36(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1257
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L264:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_data_blocked
	testl	%eax, %eax
	jne	.L298
	movl	$0, %eax
	jmp	.L213
.L231:
	cmpl	$2, -28(%rbp)
	je	.L266
	cmpl	$5, -28(%rbp)
	je	.L266
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC37(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1270
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L266:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_stream_data_blocked
	testl	%eax, %eax
	jne	.L299
	movl	$0, %eax
	jmp	.L213
.L230:
	cmpl	$2, -28(%rbp)
	je	.L268
	cmpl	$5, -28(%rbp)
	je	.L268
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC38(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1285
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L268:
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	depack_do_frame_streams_blocked
	testl	%eax, %eax
	jne	.L300
	movl	$0, %eax
	jmp	.L213
.L229:
	cmpl	$2, -28(%rbp)
	je	.L270
	cmpl	$5, -28(%rbp)
	je	.L270
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC39(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1300
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
.L270:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_new_conn_id
	testl	%eax, %eax
	jne	.L301
	movl	$0, %eax
	jmp	.L213
.L228:
	cmpl	$2, -28(%rbp)
	je	.L272
	cmpl	$5, -28(%rbp)
	je	.L272
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC40(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1312
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L272:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_retire_conn_id
	testl	%eax, %eax
	jne	.L302
	movl	$0, %eax
	jmp	.L213
.L227:
	cmpl	$2, -28(%rbp)
	je	.L274
	cmpl	$5, -28(%rbp)
	je	.L274
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC41(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1325
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L274:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_path_challenge
	testl	%eax, %eax
	jne	.L303
	movl	$0, %eax
	jmp	.L213
.L226:
	cmpl	$5, -28(%rbp)
	je	.L276
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC42(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1338
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L276:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_path_response
	testl	%eax, %eax
	jne	.L304
	movl	$0, %eax
	jmp	.L213
.L224:
	cmpl	$2, -28(%rbp)
	je	.L225
	cmpl	$5, -28(%rbp)
	je	.L225
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC43(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1352
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L225:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_conn_close
	testl	%eax, %eax
	jne	.L305
	movl	$0, %eax
	jmp	.L213
.L222:
	cmpl	$5, -28(%rbp)
	je	.L279
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC44(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1368
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L279:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	depack_do_frame_handshake_done
	testl	%eax, %eax
	jne	.L306
	movl	$0, %eax
	jmp	.L213
.L223:
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	leaq	.LC45(%rip), %rcx
	movq	-72(%rbp), %rax
	leaq	__func__.0(%rip), %rsi
	pushq	%rsi
	pushq	$1380
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_protocol_error_loc@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L213
.L287:
	nop
	jmp	.L244
.L288:
	nop
	jmp	.L244
.L289:
	nop
	jmp	.L244
.L290:
	nop
	jmp	.L244
.L291:
	nop
	jmp	.L244
.L292:
	nop
	jmp	.L244
.L293:
	nop
	jmp	.L244
.L294:
	nop
	jmp	.L244
.L295:
	nop
	jmp	.L244
.L296:
	nop
	jmp	.L244
.L297:
	nop
	jmp	.L244
.L298:
	nop
	jmp	.L244
.L299:
	nop
	jmp	.L244
.L300:
	nop
	jmp	.L244
.L301:
	nop
	jmp	.L244
.L302:
	nop
	jmp	.L244
.L303:
	nop
	jmp	.L244
.L304:
	nop
	jmp	.L244
.L305:
	nop
	jmp	.L244
.L306:
	nop
.L244:
	movq	-72(%rbp), %rax
	movq	1040(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movl	$514, -12(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L282
	movl	$516, -12(%rbp)
	jmp	.L283
.L282:
	movq	-48(%rbp), %rax
	andq	$-8, %rax
	cmpq	$8, %rax
	je	.L284
	movq	-48(%rbp), %rax
	cmpq	$6, %rax
	jne	.L283
.L284:
	movl	$515, -12(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -24(%rbp)
.L283:
	movq	-72(%rbp), %rax
	movq	1040(%rax), %r10
	movq	-72(%rbp), %rax
	movq	1048(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	1056(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L214:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L285
	movl	$1, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	depack_process_frames, .-depack_process_frames
	.globl	ossl_quic_handle_frames
	.type	ossl_quic_handle_frames, @function
ossl_quic_handle_frames:
.LFB755:
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
	jne	.L308
	movl	$0, %eax
	jmp	.L313
.L308:
	movq	-72(%rbp), %rax
	movzbl	1523(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 1523(%rax)
	leaq	-64(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_to_enc_level
	movl	%eax, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jbe	.L310
	movl	$0, %eax
	jmp	.L313
.L310:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	-48(%rbp), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L311
	leaq	-64(%rbp), %r8
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-4(%rbp), %ecx
	movq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	depack_process_frames
	testl	%eax, %eax
	jne	.L312
.L311:
	movl	$0, %eax
	jmp	.L313
.L312:
	movq	-72(%rbp), %rax
	movq	1016(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_packet@PLT
	movl	$1, %eax
.L313:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_quic_handle_frames, .-ossl_quic_handle_frames
	.section	.rodata
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 21
__func__.20:
	.string	"depack_do_frame_ping"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 20
__func__.19:
	.string	"depack_do_frame_ack"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 29
__func__.18:
	.string	"depack_do_frame_reset_stream"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 29
__func__.17:
	.string	"depack_do_frame_stop_sending"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 23
__func__.16:
	.string	"depack_do_frame_crypto"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 26
__func__.15:
	.string	"depack_do_frame_new_token"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 33
__func__.14:
	.string	"depack_do_implicit_stream_create"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 23
__func__.13:
	.string	"depack_do_frame_stream"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 25
__func__.12:
	.string	"depack_do_frame_max_data"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 32
__func__.11:
	.string	"depack_do_frame_max_stream_data"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 28
__func__.10:
	.string	"depack_do_frame_max_streams"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 29
__func__.9:
	.string	"depack_do_frame_data_blocked"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 36
__func__.8:
	.string	"depack_do_frame_stream_data_blocked"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 32
__func__.7:
	.string	"depack_do_frame_streams_blocked"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 28
__func__.6:
	.string	"depack_do_frame_new_conn_id"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 31
__func__.5:
	.string	"depack_do_frame_retire_conn_id"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 31
__func__.4:
	.string	"depack_do_frame_path_challenge"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 30
__func__.3:
	.string	"depack_do_frame_path_response"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 27
__func__.2:
	.string	"depack_do_frame_conn_close"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"depack_do_frame_handshake_done"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"depack_process_frames"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

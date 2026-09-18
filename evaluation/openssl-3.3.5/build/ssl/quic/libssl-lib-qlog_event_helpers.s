	.file	"qlog_event_helpers.c"
	.text
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB495:
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
.LFE495:
	.size	ossl_time2ticks, .-ossl_time2ticks
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
	jns	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_forward, @function
PACKET_forward:
.LFB546:
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
	cmpq	-16(%rbp), %rax
	jnb	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	PACKET_forward, .-PACKET_forward
	.type	ossl_quic_pkt_type_is_encrypted, @function
ossl_quic_pkt_type_is_encrypted:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L15
	cmpl	$6, -4(%rbp)
	jne	.L16
.L15:
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	ossl_quic_pkt_type_is_encrypted, .-ossl_quic_pkt_type_is_encrypted
	.type	ossl_quic_pkt_type_has_pn, @function
ossl_quic_pkt_type_has_pn:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_quic_pkt_type_has_pn, .-ossl_quic_pkt_type_has_pn
	.type	ossl_quic_pkt_type_has_scid, @function
ossl_quic_pkt_type_has_scid:
.LFB566:
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
.LFE566:
	.size	ossl_quic_pkt_type_has_scid, .-ossl_quic_pkt_type_has_scid
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
	.section	.rodata
	.align 8
.LC0:
	.string	"connectivity:connection_started"
.LC1:
	.string	"connection_started"
.LC2:
	.string	"connectivity"
.LC3:
	.string	"quic"
.LC4:
	.string	"protocol"
.LC5:
	.string	"dst_cid"
	.text
	.globl	ossl_qlog_event_connectivity_connection_started
	.type	ossl_qlog_event_connectivity_connection_started, @function
ossl_qlog_event_connectivity_connection_started:
.LFB628:
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
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	leaq	.LC0(%rip), %rdi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L28
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdi
	leaq	.LC5(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L28:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ossl_qlog_event_connectivity_connection_started, .-ossl_qlog_event_connectivity_connection_started
	.section	.rodata
.LC6:
	.string	"handshake_confirmed"
.LC7:
	.string	"handshake_complete"
.LC8:
	.string	"attempted"
.LC9:
	.string	"closing"
.LC10:
	.string	"draining"
.LC11:
	.string	"closed"
	.text
	.type	map_state_to_qlog, @function
map_state_to_qlog:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L30
	cmpl	$4, -4(%rbp)
	ja	.L31
	cmpl	$3, -4(%rbp)
	je	.L32
	cmpl	$3, -4(%rbp)
	ja	.L31
	cmpl	$1, -4(%rbp)
	je	.L33
	cmpl	$2, -4(%rbp)
	je	.L34
.L31:
	movl	$0, %eax
	jmp	.L35
.L33:
	cmpl	$0, -12(%rbp)
	je	.L36
	leaq	.LC6(%rip), %rax
	jmp	.L35
.L36:
	cmpl	$0, -8(%rbp)
	je	.L37
	leaq	.LC7(%rip), %rax
	jmp	.L35
.L37:
	leaq	.LC8(%rip), %rax
	jmp	.L35
.L34:
	leaq	.LC9(%rip), %rax
	jmp	.L35
.L32:
	leaq	.LC10(%rip), %rax
	jmp	.L35
.L30:
	leaq	.LC11(%rip), %rax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	map_state_to_qlog, .-map_state_to_qlog
	.section	.rodata
	.align 8
.LC12:
	.string	"connectivity:connection_state_updated"
.LC13:
	.string	"connection_state_updated"
.LC14:
	.string	"state"
	.text
	.globl	ossl_qlog_event_connectivity_connection_state_updated
	.type	ossl_qlog_event_connectivity_connection_state_updated, @function
ossl_qlog_event_connectivity_connection_state_updated:
.LFB630:
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
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	leaq	.LC12(%rip), %rdi
	leaq	.LC13(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L41
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	map_state_to_qlog
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-24(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
.L40:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ossl_qlog_event_connectivity_connection_state_updated, .-ossl_qlog_event_connectivity_connection_state_updated
	.section	.rodata
.LC15:
	.string	"internal_error"
.LC16:
	.string	"connection_refused"
.LC17:
	.string	"flow_control_error"
.LC18:
	.string	"stream_limit_error"
.LC19:
	.string	"stream_state_error"
.LC20:
	.string	"final_size_error"
.LC21:
	.string	"frame_encoding_error"
.LC22:
	.string	"transport_parameter_error"
.LC23:
	.string	"connection_id_limit_error"
.LC24:
	.string	"protocol_violation"
.LC25:
	.string	"invalid_token"
.LC26:
	.string	"application_error"
.LC27:
	.string	"crypto_buffer_exceeded"
.LC28:
	.string	"key_update_error"
.LC29:
	.string	"aead_limit_reached"
.LC30:
	.string	"no_viable_path"
	.text
	.type	quic_err_to_qlog, @function
quic_err_to_qlog:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$16, -8(%rbp)
	je	.L43
	cmpq	$16, -8(%rbp)
	ja	.L44
	cmpq	$15, -8(%rbp)
	je	.L45
	cmpq	$15, -8(%rbp)
	ja	.L44
	cmpq	$14, -8(%rbp)
	je	.L46
	cmpq	$14, -8(%rbp)
	ja	.L44
	cmpq	$13, -8(%rbp)
	je	.L47
	cmpq	$13, -8(%rbp)
	ja	.L44
	cmpq	$12, -8(%rbp)
	je	.L48
	cmpq	$12, -8(%rbp)
	ja	.L44
	cmpq	$11, -8(%rbp)
	je	.L49
	cmpq	$11, -8(%rbp)
	ja	.L44
	cmpq	$10, -8(%rbp)
	je	.L50
	cmpq	$10, -8(%rbp)
	ja	.L44
	cmpq	$9, -8(%rbp)
	je	.L51
	cmpq	$9, -8(%rbp)
	ja	.L44
	cmpq	$8, -8(%rbp)
	je	.L52
	cmpq	$8, -8(%rbp)
	ja	.L44
	cmpq	$7, -8(%rbp)
	je	.L53
	cmpq	$7, -8(%rbp)
	ja	.L44
	cmpq	$6, -8(%rbp)
	je	.L54
	cmpq	$6, -8(%rbp)
	ja	.L44
	cmpq	$5, -8(%rbp)
	je	.L55
	cmpq	$5, -8(%rbp)
	ja	.L44
	cmpq	$4, -8(%rbp)
	je	.L56
	cmpq	$4, -8(%rbp)
	ja	.L44
	cmpq	$3, -8(%rbp)
	je	.L57
	cmpq	$3, -8(%rbp)
	ja	.L44
	cmpq	$1, -8(%rbp)
	je	.L58
	cmpq	$2, -8(%rbp)
	je	.L59
	jmp	.L44
.L58:
	leaq	.LC15(%rip), %rax
	jmp	.L60
.L59:
	leaq	.LC16(%rip), %rax
	jmp	.L60
.L57:
	leaq	.LC17(%rip), %rax
	jmp	.L60
.L56:
	leaq	.LC18(%rip), %rax
	jmp	.L60
.L55:
	leaq	.LC19(%rip), %rax
	jmp	.L60
.L54:
	leaq	.LC20(%rip), %rax
	jmp	.L60
.L53:
	leaq	.LC21(%rip), %rax
	jmp	.L60
.L52:
	leaq	.LC22(%rip), %rax
	jmp	.L60
.L51:
	leaq	.LC23(%rip), %rax
	jmp	.L60
.L50:
	leaq	.LC24(%rip), %rax
	jmp	.L60
.L49:
	leaq	.LC25(%rip), %rax
	jmp	.L60
.L48:
	leaq	.LC26(%rip), %rax
	jmp	.L60
.L47:
	leaq	.LC27(%rip), %rax
	jmp	.L60
.L46:
	leaq	.LC28(%rip), %rax
	jmp	.L60
.L45:
	leaq	.LC29(%rip), %rax
	jmp	.L60
.L43:
	leaq	.LC30(%rip), %rax
	jmp	.L60
.L44:
	movl	$0, %eax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	quic_err_to_qlog, .-quic_err_to_qlog
	.section	.rodata
	.align 8
.LC31:
	.string	"connectivity:connection_closed"
.LC32:
	.string	"connection_closed"
.LC33:
	.string	"remote"
.LC34:
	.string	"local"
.LC35:
	.string	"owner"
.LC36:
	.string	"application_code"
.LC37:
	.string	"crypto_error_0x%03llx"
.LC38:
	.string	"connection_code"
.LC39:
	.string	"reason"
	.text
	.globl	ossl_qlog_event_connectivity_connection_closed
	.type	ossl_qlog_event_connectivity_connection_closed, @function
ossl_qlog_event_connectivity_connection_closed:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$3, -20(%rbp)
	leaq	.LC31(%rip), %rdi
	leaq	.LC32(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L70
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L63
	leaq	.LC33(%rip), %rax
	jmp	.L64
.L63:
	leaq	.LC34(%rip), %rax
.L64:
	leaq	.LC35(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_qlog_str@PLT
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L65
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L66
.L65:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quic_err_to_qlog
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$255, %rax
	jbe	.L67
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$511, %rax
	ja	.L67
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC37(%rip), %rsi
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L67:
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	jmp	.L66
.L68:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC38(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L66:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.LC39(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_str_len@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L70:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_qlog_event_connectivity_connection_closed, .-ossl_qlog_event_connectivity_connection_closed
	.section	.rodata
.LC40:
	.string	"initial"
.LC41:
	.string	"handshake"
.LC42:
	.string	"0RTT"
.LC43:
	.string	"1RTT"
.LC44:
	.string	"version_negotiation"
.LC45:
	.string	"retry"
.LC46:
	.string	"unknown"
	.text
	.type	quic_pkt_type_to_qlog, @function
quic_pkt_type_to_qlog:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$6, -4(%rbp)
	je	.L72
	cmpl	$6, -4(%rbp)
	ja	.L73
	cmpl	$5, -4(%rbp)
	je	.L74
	cmpl	$5, -4(%rbp)
	ja	.L73
	cmpl	$4, -4(%rbp)
	je	.L75
	cmpl	$4, -4(%rbp)
	ja	.L73
	cmpl	$3, -4(%rbp)
	je	.L76
	cmpl	$3, -4(%rbp)
	ja	.L73
	cmpl	$1, -4(%rbp)
	je	.L77
	cmpl	$2, -4(%rbp)
	je	.L78
	jmp	.L73
.L77:
	leaq	.LC40(%rip), %rax
	jmp	.L79
.L76:
	leaq	.LC41(%rip), %rax
	jmp	.L79
.L78:
	leaq	.LC42(%rip), %rax
	jmp	.L79
.L74:
	leaq	.LC43(%rip), %rax
	jmp	.L79
.L72:
	leaq	.LC44(%rip), %rax
	jmp	.L79
.L75:
	leaq	.LC45(%rip), %rax
	jmp	.L79
.L73:
	leaq	.LC46(%rip), %rax
.L79:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	quic_pkt_type_to_qlog, .-quic_pkt_type_to_qlog
	.section	.rodata
.LC47:
	.string	"recovery:packet_lost"
.LC48:
	.string	"packet_lost"
.LC49:
	.string	"recovery"
.LC50:
	.string	"header"
.LC51:
	.string	"packet_type"
.LC52:
	.string	"packet_number"
	.text
	.globl	ossl_qlog_event_recovery_packet_lost
	.type	ossl_qlog_event_recovery_packet_lost, @function
ossl_qlog_event_recovery_packet_lost:
.LFB634:
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
	movq	%rax, -8(%rbp)
	movl	$7, -12(%rbp)
	leaq	.LC47(%rip), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L83
	leaq	.LC50(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	movq	-32(%rbp), %rax
	movzbl	120(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	quic_pkt_type_to_qlog
	movq	%rax, %rdx
	leaq	.LC51(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-32(%rbp), %rax
	movzbl	120(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_pn
	testl	%eax, %eax
	je	.L82
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC52(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L83:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_qlog_event_recovery_packet_lost, .-ossl_qlog_event_recovery_packet_lost
	.type	ignore_res, @function
ignore_res:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ignore_res, .-ignore_res
	.section	.rodata
.LC53:
	.string	"padding"
.LC54:
	.string	"frame_type"
.LC55:
	.string	"payload_length"
.LC56:
	.string	"ping"
.LC57:
	.string	"ack"
.LC58:
	.string	"ack_delay"
.LC59:
	.string	"ect1"
.LC60:
	.string	"ect0"
.LC61:
	.string	"ce"
.LC62:
	.string	"acked_ranges"
.LC63:
	.string	"reset_stream"
.LC64:
	.string	"stream_id"
.LC65:
	.string	"error_code"
.LC66:
	.string	"final_size"
.LC67:
	.string	"stop_sending"
.LC68:
	.string	"crypto"
.LC69:
	.string	"offset"
.LC70:
	.string	"stream"
.LC71:
	.string	"explicit_length"
.LC72:
	.string	"fin"
.LC73:
	.string	"max_data"
.LC74:
	.string	"maximum"
.LC75:
	.string	"max_streams"
.LC76:
	.string	"bidirectional"
.LC77:
	.string	"unidirectional"
.LC78:
	.string	"stream_type"
.LC79:
	.string	"max_stream_data"
.LC80:
	.string	"path_challenge"
.LC81:
	.string	"path_response"
.LC82:
	.string	"connection_close"
.LC83:
	.string	"application"
.LC84:
	.string	"transport"
.LC85:
	.string	"error_space"
.LC86:
	.string	"error_code_value"
.LC87:
	.string	"trigger_frame_type"
.LC88:
	.string	"handshake_done"
.LC89:
	.string	"new_connection_id"
.LC90:
	.string	"sequence_number"
.LC91:
	.string	"retire_prior_to"
.LC92:
	.string	"connection_id"
.LC93:
	.string	"stateless_reset_token"
.LC94:
	.string	"retire_connection_id"
.LC95:
	.string	"data_blocked"
.LC96:
	.string	"limit"
.LC97:
	.string	"stream_data_blocked"
.LC98:
	.string	"streams_blocked"
.LC99:
	.string	"new_token"
.LC100:
	.string	"token"
.LC101:
	.string	"raw"
.LC102:
	.string	"data"
.LC103:
	.string	"frame_type_value"
	.text
	.type	log_frame_actual, @function
log_frame_actual:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$904, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -888(%rbp)
	movq	%rsi, -896(%rbp)
	movq	%rdx, -904(%rbp)
	movq	-896(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	%rdx, -632(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-896(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	jne	.L86
	movq	-904(%rbp), %rax
	movq	$-1, (%rax)
	movl	$0, %eax
	jmp	.L145
.L86:
	movq	-32(%rbp), %rax
	cmpq	$30, %rax
	je	.L88
	cmpq	$30, %rax
	ja	.L89
	cmpq	$29, %rax
	ja	.L89
	cmpq	$28, %rax
	jnb	.L90
	cmpq	$27, %rax
	je	.L91
	cmpq	$27, %rax
	ja	.L89
	cmpq	$26, %rax
	je	.L92
	cmpq	$26, %rax
	ja	.L89
	cmpq	$25, %rax
	je	.L93
	cmpq	$25, %rax
	ja	.L89
	cmpq	$24, %rax
	je	.L94
	cmpq	$24, %rax
	ja	.L89
	cmpq	$23, %rax
	ja	.L89
	cmpq	$22, %rax
	jnb	.L95
	cmpq	$21, %rax
	je	.L96
	cmpq	$21, %rax
	ja	.L89
	cmpq	$20, %rax
	je	.L97
	cmpq	$20, %rax
	ja	.L89
	cmpq	$19, %rax
	ja	.L89
	cmpq	$18, %rax
	jnb	.L98
	cmpq	$17, %rax
	je	.L99
	cmpq	$17, %rax
	ja	.L89
	cmpq	$16, %rax
	je	.L100
	cmpq	$16, %rax
	ja	.L89
	cmpq	$15, %rax
	ja	.L89
	cmpq	$8, %rax
	jnb	.L101
	cmpq	$7, %rax
	je	.L102
	cmpq	$7, %rax
	ja	.L89
	cmpq	$6, %rax
	je	.L103
	cmpq	$6, %rax
	ja	.L89
	cmpq	$5, %rax
	je	.L104
	cmpq	$5, %rax
	ja	.L89
	cmpq	$4, %rax
	je	.L105
	cmpq	$4, %rax
	ja	.L89
	cmpq	$3, %rax
	ja	.L89
	cmpq	$2, %rax
	jnb	.L106
	testq	%rax, %rax
	je	.L107
	cmpq	$1, %rax
	je	.L108
	jmp	.L89
.L107:
	leaq	.LC53(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_padding@PLT
	movq	%rax, %rdx
	leaq	.LC55(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L108:
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ping@PLT
	testl	%eax, %eax
	je	.L146
	leaq	.LC56(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	jmp	.L109
.L106:
	leaq	-616(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_ack_num_ranges@PLT
	testl	%eax, %eax
	je	.L147
	leaq	-608(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$32, -88(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-896(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ack@PLT
	testl	%eax, %eax
	je	.L148
	leaq	.LC57(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	shrq	$18, %rdx
	leaq	.LC58(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L113
	movq	-72(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-64(%rbp), %rdx
	leaq	.LC60(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-56(%rbp), %rdx
	leaq	.LC61(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L113:
	leaq	.LC62(%rip), %rdx
	movq	-888(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_array_begin@PLT
	movq	$0, -24(%rbp)
	jmp	.L114
.L116:
	movq	-888(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qlog_array_begin@PLT
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-888(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L115
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-888(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L115:
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_array_end@PLT
	addq	$1, -24(%rbp)
.L114:
	movq	-88(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L116
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_array_end@PLT
	jmp	.L109
.L105:
	leaq	-672(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_reset_stream@PLT
	testl	%eax, %eax
	je	.L149
	leaq	.LC63(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-672(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-664(%rbp), %rdx
	leaq	.LC65(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-656(%rbp), %rdx
	leaq	.LC66(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L104:
	leaq	-688(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stop_sending@PLT
	testl	%eax, %eax
	je	.L150
	leaq	.LC67(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-688(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-680(%rbp), %rdx
	leaq	.LC65(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L103:
	leaq	-720(%rbp), %rdx
	movq	-896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_crypto@PLT
	testl	%eax, %eax
	je	.L151
	leaq	.LC68(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-720(%rbp), %rdx
	leaq	.LC69(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-712(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-904(%rbp), %rax
	movq	(%rax), %rdx
	movq	-712(%rbp), %rax
	addq	%rax, %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L109
.L101:
	leaq	-880(%rbp), %rdx
	movq	-896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream@PLT
	testl	%eax, %eax
	je	.L152
	leaq	.LC70(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-880(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-872(%rbp), %rdx
	leaq	.LC69(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-864(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movzbl	-848(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %edx
	leaq	.LC71(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_bool@PLT
	movzbl	-848(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L121
	leaq	.LC72(%rip), %rcx
	movq	-888(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_bool@PLT
.L121:
	movzbl	-848(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L122
	movq	-904(%rbp), %rax
	movq	(%rax), %rdx
	movq	-864(%rbp), %rax
	addq	%rax, %rdx
	jmp	.L123
.L122:
	movq	$-1, %rdx
.L123:
	movq	-904(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L109
.L100:
	leaq	-728(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_data@PLT
	testl	%eax, %eax
	je	.L153
	leaq	.LC73(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-728(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L98:
	leaq	-736(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_streams@PLT
	testl	%eax, %eax
	je	.L154
	leaq	.LC75(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-32(%rbp), %rax
	cmpq	$18, %rax
	jne	.L126
	leaq	.LC76(%rip), %rax
	jmp	.L127
.L126:
	leaq	.LC77(%rip), %rax
.L127:
	leaq	.LC78(%rip), %rsi
	movq	-888(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_qlog_str@PLT
	movq	-736(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L99:
	leaq	-752(%rbp), %rdx
	leaq	-744(%rbp), %rcx
	movq	-896(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_stream_data@PLT
	testl	%eax, %eax
	je	.L155
	leaq	.LC79(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-744(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-752(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L92:
	leaq	-760(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_challenge@PLT
	testl	%eax, %eax
	je	.L156
	leaq	.LC80(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	jmp	.L109
.L91:
	leaq	-768(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_response@PLT
	testl	%eax, %eax
	je	.L157
	leaq	.LC81(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	jmp	.L109
.L90:
	leaq	-880(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_conn_close@PLT
	testl	%eax, %eax
	je	.L158
	leaq	.LC82(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movzbl	-880(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L132
	leaq	.LC83(%rip), %rax
	jmp	.L133
.L132:
	leaq	.LC84(%rip), %rax
.L133:
	leaq	.LC85(%rip), %rsi
	movq	-888(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_qlog_str@PLT
	movq	-872(%rbp), %rdx
	leaq	.LC86(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movzbl	-880(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L134
	movq	-872(%rbp), %rdx
	leaq	.LC65(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L134:
	movzbl	-880(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L135
	movq	-864(%rbp), %rax
	testq	%rax, %rax
	je	.L135
	movq	-864(%rbp), %rdx
	leaq	.LC87(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L135:
	movq	-848(%rbp), %rcx
	movq	-856(%rbp), %rdx
	leaq	.LC39(%rip), %rsi
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_str_len@PLT
	jmp	.L109
.L88:
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_handshake_done@PLT
	testl	%eax, %eax
	je	.L159
	leaq	.LC88(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	jmp	.L109
.L94:
	leaq	-880(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_conn_id@PLT
	testl	%eax, %eax
	je	.L160
	leaq	.LC89(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-880(%rbp), %rdx
	leaq	.LC90(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-872(%rbp), %rdx
	leaq	.LC91(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movzbl	-864(%rbp), %eax
	movzbl	%al, %edx
	leaq	-880(%rbp), %rax
	leaq	17(%rax), %rdi
	leaq	.LC92(%rip), %rsi
	movq	-888(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	leaq	-880(%rbp), %rax
	leaq	37(%rax), %rdx
	leaq	.LC93(%rip), %rsi
	movq	-888(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	jmp	.L109
.L93:
	leaq	-776(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_retire_conn_id@PLT
	testl	%eax, %eax
	je	.L161
	leaq	.LC94(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-776(%rbp), %rdx
	leaq	.LC90(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L97:
	leaq	-784(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_data_blocked@PLT
	testl	%eax, %eax
	je	.L162
	leaq	.LC95(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-784(%rbp), %rdx
	leaq	.LC96(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L96:
	leaq	-800(%rbp), %rdx
	leaq	-792(%rbp), %rcx
	movq	-896(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream_data_blocked@PLT
	testl	%eax, %eax
	je	.L163
	leaq	.LC97(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-792(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-800(%rbp), %rdx
	leaq	.LC96(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L95:
	leaq	-808(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_streams_blocked@PLT
	testl	%eax, %eax
	je	.L164
	leaq	.LC98(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-32(%rbp), %rax
	cmpq	$22, %rax
	jne	.L142
	leaq	.LC76(%rip), %rax
	jmp	.L143
.L142:
	leaq	.LC77(%rip), %rax
.L143:
	leaq	.LC78(%rip), %rsi
	movq	-888(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_qlog_str@PLT
	movq	-808(%rbp), %rdx
	leaq	.LC96(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L109
.L102:
	leaq	-824(%rbp), %rdx
	leaq	-816(%rbp), %rcx
	movq	-896(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_token@PLT
	testl	%eax, %eax
	je	.L165
	leaq	.LC99(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	leaq	.LC100(%rip), %rdx
	movq	-888(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	leaq	.LC101(%rip), %rdx
	movq	-888(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	movq	-824(%rbp), %rcx
	movq	-816(%rbp), %rdx
	leaq	.LC102(%rip), %rsi
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	jmp	.L109
.L146:
	nop
	jmp	.L89
.L147:
	nop
	jmp	.L89
.L148:
	nop
	jmp	.L89
.L149:
	nop
	jmp	.L89
.L150:
	nop
	jmp	.L89
.L151:
	nop
	jmp	.L89
.L152:
	nop
	jmp	.L89
.L153:
	nop
	jmp	.L89
.L154:
	nop
	jmp	.L89
.L155:
	nop
	jmp	.L89
.L156:
	nop
	jmp	.L89
.L157:
	nop
	jmp	.L89
.L158:
	nop
	jmp	.L89
.L159:
	nop
	jmp	.L89
.L160:
	nop
	jmp	.L89
.L161:
	nop
	jmp	.L89
.L162:
	nop
	jmp	.L89
.L163:
	nop
	jmp	.L89
.L164:
	nop
	jmp	.L89
.L165:
	nop
.L89:
	leaq	.LC46(%rip), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-32(%rbp), %rdx
	leaq	.LC103(%rip), %rcx
	movq	-888(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	leaq	.LC101(%rip), %rdx
	movq	-888(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdx
	leaq	.LC102(%rip), %rsi
	movq	-888(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	movl	%eax, %edi
	call	ignore_res
	nop
.L109:
	movl	$1, %eax
.L145:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	log_frame_actual, .-log_frame_actual
	.section	.rodata
.LC104:
	.string	"length"
	.text
	.type	log_frame, @function
log_frame:
.LFB637:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	log_frame_actual
	testl	%eax, %eax
	je	.L169
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC104(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	jmp	.L166
.L169:
	nop
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	log_frame, .-log_frame
	.type	log_frames, @function
log_frames:
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
	movq	%rdx, -72(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L171
.L179:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L174
	movl	$0, %eax
	jmp	.L180
.L178:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L175
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-16(%rbp), %rax
	jnb	.L176
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -16(%rbp)
.L176:
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L177
	movl	$0, %eax
	jmp	.L180
.L177:
	movq	-40(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L174
.L175:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	log_frame
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
.L174:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L178
	addq	$1, -8(%rbp)
.L171:
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L179
	movl	$1, %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	log_frames, .-log_frames
	.section	.rodata
.LC105:
	.string	"dcid"
.LC106:
	.string	"scid"
.LC107:
	.string	"datagram_id"
.LC108:
	.string	"frames"
	.text
	.type	log_packet, @function
log_packet:
.LFB639:
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
	movq	%r9, -64(%rbp)
	leaq	.LC50(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	quic_pkt_type_to_qlog
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L182
	leaq	.LC46(%rip), %rax
	movq	%rax, -8(%rbp)
.L182:
	movq	-8(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_pn
	testl	%eax, %eax
	je	.L183
	movq	-40(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
.L183:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leaq	9(%rax), %rdi
	leaq	.LC105(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_scid
	testl	%eax, %eax
	je	.L184
	movq	-32(%rbp), %rax
	movzbl	29(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leaq	30(%rax), %rdi
	leaq	.LC106(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
.L184:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L185
	leaq	.LC100(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	leaq	.LC101(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	movq	-32(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	.LC102(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
.L185:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	movq	-64(%rbp), %rdx
	leaq	.LC107(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	testl	%eax, %eax
	je	.L187
	leaq	.LC108(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_array_begin@PLT
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	log_frames
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_array_end@PLT
.L187:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	log_packet, .-log_packet
	.section	.rodata
.LC109:
	.string	"transport:packet_sent"
.LC110:
	.string	"packet_sent"
	.text
	.globl	ossl_qlog_event_transport_packet_sent
	.type	ossl_qlog_event_transport_packet_sent, @function
ossl_qlog_event_transport_packet_sent:
.LFB640:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -12(%rbp)
	leaq	.LC109(%rip), %rdi
	leaq	.LC110(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L190
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	log_packet
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L190:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_qlog_event_transport_packet_sent, .-ossl_qlog_event_transport_packet_sent
	.section	.rodata
.LC111:
	.string	"transport:packet_received"
.LC112:
	.string	"packet_received"
	.text
	.globl	ossl_qlog_event_transport_packet_received
	.type	ossl_qlog_event_transport_packet_received, @function
ossl_qlog_event_transport_packet_received:
.LFB641:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$6, -12(%rbp)
	leaq	.LC111(%rip), %rdi
	leaq	.LC112(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L193
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	log_packet
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L193:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_qlog_event_transport_packet_received, .-ossl_qlog_event_transport_packet_received
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

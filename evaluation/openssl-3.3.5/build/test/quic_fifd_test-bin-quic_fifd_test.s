	.file	"quic_fifd_test.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB524:
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
.LFE524:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB533:
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
.LFE533:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB535:
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
.LFE535:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB536:
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
.LFE536:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_add, @function
ossl_time_add:
.LFB544:
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
	je	.L14
	call	ossl_time_infinite
	jmp	.L16
.L14:
	movq	-8(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	ossl_time_add, .-ossl_time_add
	.local	cur_time
	.comm	cur_time,8,8
	.type	fake_now, @function
fake_now:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	cur_time(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	fake_now, .-fake_now
	.type	step_time, @function
step_time:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	cur_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, cur_time(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	step_time, .-step_time
	.local	get_sstream_by_id_p
	.comm	get_sstream_by_id_p,8,8
	.type	get_sstream_by_id, @function
get_sstream_by_id:
.LFB604:
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
	movq	get_sstream_by_id_p(%rip), %r8
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	get_sstream_by_id, .-get_sstream_by_id
	.local	regen_frame_p
	.comm	regen_frame_p,8,8
	.type	regen_frame, @function
regen_frame:
.LFB605:
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
	movq	regen_frame_p(%rip), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	regen_frame, .-regen_frame
	.type	confirm_frame, @function
confirm_frame:
.LFB606:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	confirm_frame, .-confirm_frame
	.type	sstream_updated, @function
sstream_updated:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	sstream_updated, .-sstream_updated
	.local	cur_info
	.comm	cur_info,8,8
	.local	cb_fail
	.comm	cb_fail,4,4
	.local	cfq_freed
	.comm	cfq_freed,4,4
	.type	sstream_expect, @function
sstream_expect:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$42, -8(%rbp)
	je	.L26
	cmpq	$43, -8(%rbp)
	jne	.L27
.L26:
	movq	cur_info(%rip), %rax
	movq	-8(%rbp), %rdx
	subq	$42, %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	jmp	.L28
.L27:
	movl	$1, cb_fail(%rip)
	movl	$0, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	sstream_expect, .-sstream_expect
	.local	regen_frame_type
	.comm	regen_frame_type,128,32
	.local	regen_stream_id
	.comm	regen_stream_id,128,32
	.local	regen_count
	.comm	regen_count,8,8
	.type	regen_expect, @function
regen_expect:
.LFB609:
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
	movq	regen_count(%rip), %rax
	leaq	0(,%rax,8), %rcx
	leaq	regen_frame_type(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movq	regen_count(%rip), %rax
	leaq	0(,%rax,8), %rcx
	leaq	regen_stream_id(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movq	regen_count(%rip), %rax
	addq	$1, %rax
	movq	%rax, regen_count(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	regen_expect, .-regen_expect
	.section	.rodata
	.align 8
	.type	placeholder_data, @object
	.size	placeholder_data, 12
placeholder_data:
	.string	"placeholder"
	.text
	.type	cfq_free_cb_, @function
cfq_free_cb_:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	placeholder_data(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L32
	cmpq	$12, -16(%rbp)
	jne	.L32
	movl	$1, cfq_freed(%rip)
.L32:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	cfq_free_cb_, .-cfq_free_cb_
	.section	.rodata
	.align 8
.LC0:
	.string	"pkt = ossl_quic_txpim_pkt_alloc(info->txpim)"
.LC1:
	.string	"../test/quic_fifd_test.c"
.LC2:
	.string	"Test message"
	.align 8
.LC3:
	.string	"ossl_quic_sstream_append(info->sstream[i], (unsigned char *)\"Test message\", 12, &consumed)"
.LC4:
	.string	"12"
.LC5:
	.string	"consumed"
	.align 8
.LC6:
	.string	"ossl_quic_sstream_get_stream_frame(info->sstream[i], 0, &hdr, iov, &num_iov)"
.LC7:
	.string	"i == 1"
.LC8:
	.string	"hdr.is_fin"
.LC9:
	.string	"0"
.LC10:
	.string	"hdr.offset"
.LC11:
	.string	"hdr.len"
	.align 8
.LC12:
	.string	"ossl_quic_sstream_get_buffer_used(info->sstream[i])"
	.align 8
.LC13:
	.string	"ossl_quic_sstream_mark_transmitted(info->sstream[i], hdr.offset, hdr.offset + hdr.len - 1)"
	.align 8
.LC14:
	.string	"ossl_quic_sstream_mark_transmitted_fin(info->sstream[i], hdr.offset + hdr.len)"
	.align 8
.LC15:
	.string	"ossl_quic_txpim_pkt_append_chunk(pkt, &chunk)"
	.align 8
.LC16:
	.string	"cfq_item = ossl_quic_cfq_add_frame(info->cfq, 10, pn_space, OSSL_QUIC_FRAME_TYPE_NEW_CONN_ID, 0, placeholder_data, sizeof(placeholder_data), cfq_free_cb_, NULL)"
	.align 8
.LC17:
	.string	"ossl_quic_cfq_get_priority_head(info->cfq, pn_space)"
.LC18:
	.string	"cfq_item"
	.align 8
.LC19:
	.string	"ossl_quic_fifd_pkt_commit(&info->fifd, pkt)"
	.align 8
.LC20:
	.string	"ossl_ackm_on_rx_ack_frame(info->ackm, &ack, pn_space, cur_time)"
	.align 8
.LC21:
	.string	"ossl_quic_sstream_mark_lost_fin(info->sstream[1])"
.LC22:
	.string	"cfq_freed"
.LC23:
	.string	"regen_count"
	.align 8
.LC24:
	.string	"pkt2 = ossl_quic_txpim_pkt_alloc(info->txpim)"
	.align 8
.LC25:
	.string	"ossl_quic_fifd_pkt_commit(&info->fifd, pkt2)"
.LC26:
	.string	"7"
.LC27:
	.string	"42"
.LC28:
	.string	"regen_stream_id[0]"
	.align 8
.LC29:
	.string	"OSSL_QUIC_FRAME_TYPE_MAX_STREAM_DATA"
.LC30:
	.string	"regen_frame_type[0]"
.LC31:
	.string	"43"
.LC32:
	.string	"regen_stream_id[1]"
.LC33:
	.string	"regen_frame_type[1]"
	.align 8
.LC34:
	.string	"OSSL_QUIC_FRAME_TYPE_HANDSHAKE_DONE"
.LC35:
	.string	"regen_frame_type[2]"
.LC36:
	.string	"UINT64_MAX"
.LC37:
	.string	"regen_stream_id[2]"
.LC38:
	.string	"OSSL_QUIC_FRAME_TYPE_MAX_DATA"
.LC39:
	.string	"regen_frame_type[3]"
.LC40:
	.string	"regen_stream_id[3]"
	.align 8
.LC41:
	.string	"OSSL_QUIC_FRAME_TYPE_MAX_STREAMS_BIDI"
.LC42:
	.string	"regen_frame_type[4]"
.LC43:
	.string	"regen_stream_id[4]"
	.align 8
.LC44:
	.string	"OSSL_QUIC_FRAME_TYPE_MAX_STREAMS_UNI"
.LC45:
	.string	"regen_frame_type[5]"
.LC46:
	.string	"regen_stream_id[5]"
	.align 8
.LC47:
	.string	"OSSL_QUIC_FRAME_TYPE_ACK_WITH_ECN"
.LC48:
	.string	"regen_frame_type[6]"
.LC49:
	.string	"regen_stream_id[6]"
	.align 8
.LC50:
	.string	"ossl_quic_sstream_get_stream_frame(info->sstream[1], 1, &hdr, iov, &num_iov)"
	.align 8
.LC51:
	.string	"ossl_ackm_on_pkt_space_discarded(info->ackm, pn_space)"
	.align 8
.LC52:
	.string	"ossl_quic_txpim_get_in_use(info->txpim)"
	.text
	.type	test_generic, @function
test_generic:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movl	%esi, -268(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -160(%rbp)
	movq	$42, -176(%rbp)
	movq	$11, -160(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movq	%xmm0, -192(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$2, -268(%rbp)
	jne	.L34
	movl	$1, -20(%rbp)
	jmp	.L35
.L34:
	movl	$2, -20(%rbp)
.L35:
	movabsq	$1000000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, cur_time(%rip)
	movq	$0, regen_count(%rip)
	leaq	sstream_expect(%rip), %rax
	movq	%rax, get_sstream_by_id_p(%rip)
	leaq	regen_expect(%rip), %rax
	movq	%rax, regen_frame_p(%rip)
	movq	-264(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_alloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L80
	movq	$0, -16(%rbp)
	jmp	.L38
.L46:
	movq	$2, -136(%rbp)
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rdx, %rcx
	movl	$12, %edx
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	-56(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L81
	cmpq	$1, -16(%rbp)
	jne	.L41
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_fin@PLT
.L41:
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$141, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	cmpq	$1, -16(%rbp)
	sete	%al
	movzbl	%al, %edi
	movzbl	-64(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$143, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-88(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-80(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movq	%rsi, %r8
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movq	%rsi, %r8
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rsi
	addq	$22, %rsi
	movq	(%rax,%rsi,8), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$147, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	cmpq	$1, -16(%rbp)
	jne	.L44
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$22, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted_fin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$152, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
.L44:
	movzbl	-64(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-152(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -152(%rbp)
	movq	-16(%rbp), %rax
	addq	$42, %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_append_chunk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	addq	$1, -16(%rbp)
.L38:
	cmpq	$1, -16(%rbp)
	jbe	.L46
	movl	$0, cfq_freed(%rip)
	movq	-264(%rbp), %rax
	movq	112(%rax), %rax
	leaq	placeholder_data(%rip), %rsi
	movl	-20(%rbp), %edx
	subq	$8, %rsp
	pushq	$0
	leaq	cfq_free_cb_(%rip), %rcx
	pushq	%rcx
	pushq	$12
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$24, %ecx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_add_frame@PLT
	addq	$32, %rsp
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L85
	movq	-264(%rbp), %rax
	movq	112(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_add_cfq_item@PLT
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	32(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$50, 8(%rax)
	movq	-32(%rbp), %rax
	movq	cur_time(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$8, %edx
	movb	%dl, 32(%rax)
	cmpl	$1, -268(%rbp)
	jne	.L49
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$1, %edx
	movb	%dl, 121(%rax)
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$2, %edx
	movb	%dl, 121(%rax)
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$4, %edx
	movb	%dl, 121(%rax)
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$8, %edx
	movb	%dl, 121(%rax)
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %edx
	orl	$16, %edx
	movb	%dl, 121(%rax)
.L49:
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	movq	-264(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_fifd_pkt_commit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-264(%rbp), %rax
	movq	112(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L87
	cmpl	$2, -268(%rbp)
	je	.L52
	cmpl	$2, -268(%rbp)
	jg	.L88
	cmpl	$0, -268(%rbp)
	je	.L54
	cmpl	$1, -268(%rbp)
	je	.L55
	jmp	.L88
.L54:
	movl	-20(%rbp), %edx
	movq	-264(%rbp), %rax
	movq	104(%rax), %rax
	movq	cur_time(%rip), %rcx
	leaq	-240(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_ack_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$203, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	$0, -16(%rbp)
	jmp	.L57
.L59:
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$209, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L90
	addq	$1, -16(%rbp)
.L57:
	cmpq	$1, -16(%rbp)
	jbe	.L59
	movq	-264(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_lost_fin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$213, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L91
	movl	cfq_freed(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$217, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	regen_count(%rip), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$221, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L93
	jmp	.L37
.L55:
	movq	-264(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_alloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movl	$10000, %edi
	call	step_time
	movq	-40(%rbp), %rax
	movq	$50, (%rax)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	movq	-40(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	32(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-40(%rbp), %rax
	movq	$50, 8(%rax)
	movq	-40(%rbp), %rax
	movq	cur_time(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$8, %edx
	movb	%dl, 32(%rax)
	movq	$50, -256(%rbp)
	movq	$50, -248(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	movq	-264(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_fifd_pkt_commit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$245, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movl	-20(%rbp), %edx
	movq	-264(%rbp), %rax
	movq	104(%rax), %rax
	movq	cur_time(%rip), %rcx
	leaq	-240(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_ack_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	$0, -16(%rbp)
	jmp	.L67
.L70:
	movq	$2, -136(%rbp)
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$22, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	movq	-88(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L96
	movq	-80(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movq	%rsi, %r8
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L96
	addq	$1, -16(%rbp)
.L67:
	cmpq	$1, -16(%rbp)
	jbe	.L70
	movq	regen_count(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movq	%rsi, %r8
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	regen_stream_id(%rip), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	regen_frame_type(%rip), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$17, %r9d
	movq	%rsi, %r8
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	8+regen_stream_id(%rip), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$43, %r9d
	movq	%rsi, %r8
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	8+regen_frame_type(%rip), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$17, %r9d
	movq	%rsi, %r8
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	16+regen_frame_type(%rip), %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$30, %r9d
	movq	%rsi, %r8
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	16+regen_stream_id(%rip), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	24+regen_frame_type(%rip), %rsi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	24+regen_stream_id(%rip), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$272, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	32+regen_frame_type(%rip), %rsi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$18, %r9d
	movq	%rsi, %r8
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	32+regen_stream_id(%rip), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$274, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	40+regen_frame_type(%rip), %rsi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$19, %r9d
	movq	%rsi, %r8
	movl	$275, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	40+regen_stream_id(%rip), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	48+regen_frame_type(%rip), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$277, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	48+regen_stream_id(%rip), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-264(%rbp), %rax
	movq	112(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L98
	movq	$2, -136(%rbp)
	movq	-264(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L99
	movzbl	-64(%rbp), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L99
	movq	-80(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$290, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L100
	jmp	.L99
.L52:
	movl	-20(%rbp), %edx
	movq	-264(%rbp), %rax
	movq	104(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_on_pkt_space_discarded@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$296, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L101
	movl	cfq_freed(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	jmp	.L63
.L93:
	nop
	jmp	.L63
.L100:
	nop
.L63:
	movq	-264(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_get_in_use@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L103
	movl	$1, -4(%rbp)
	jmp	.L37
.L80:
	nop
	jmp	.L37
.L81:
	nop
	jmp	.L37
.L82:
	nop
	jmp	.L37
.L83:
	nop
	jmp	.L37
.L84:
	nop
	jmp	.L37
.L85:
	nop
	jmp	.L37
.L86:
	nop
	jmp	.L37
.L87:
	nop
	jmp	.L37
.L88:
	nop
	jmp	.L37
.L89:
	nop
	jmp	.L37
.L90:
	nop
	jmp	.L37
.L91:
	nop
	jmp	.L37
.L92:
	nop
	jmp	.L37
.L94:
	nop
	jmp	.L37
.L95:
	nop
	jmp	.L37
.L96:
	nop
	jmp	.L37
.L97:
	nop
	jmp	.L37
.L98:
	nop
	jmp	.L37
.L99:
	nop
	jmp	.L37
.L101:
	nop
	jmp	.L37
.L102:
	nop
	jmp	.L37
.L103:
	nop
.L37:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	test_generic, .-test_generic
	.section	.rodata
.LC53:
	.string	"ossl_statm_init(&info.statm)"
	.align 8
.LC54:
	.string	"info.ccdata = ossl_cc_dummy_method.new(fake_now, NULL)"
	.align 8
.LC55:
	.string	"info.ackm = ossl_ackm_new(fake_now, NULL, &info.statm, &ossl_cc_dummy_method, info.ccdata, 0)"
	.align 8
.LC56:
	.string	"ossl_ackm_on_handshake_confirmed(info.ackm)"
	.align 8
.LC57:
	.string	"info.cfq = ossl_quic_cfq_new()"
	.align 8
.LC58:
	.string	"info.txpim = ossl_quic_txpim_new()"
	.align 8
.LC59:
	.string	"ossl_quic_fifd_init(&info.fifd, info.cfq, info.ackm, info.txpim, get_sstream_by_id, NULL, regen_frame, NULL, confirm_frame, NULL, sstream_updated, NULL, NULL, NULL)"
	.align 8
.LC60:
	.string	"info.sstream[i] = ossl_quic_sstream_new(1024)"
.LC61:
	.string	"test_generic(&info, idx)"
.LC62:
	.string	"cb_fail"
	.text
	.type	test_fifd, @function
test_fifd:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movl	%edi, -244(%rbp)
	movl	$0, -20(%rbp)
	leaq	-240(%rbp), %rdx
	movl	$0, %eax
	movl	$26, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-240(%rbp), %rax
	movq	%rax, cur_info(%rip)
	movl	$0, cb_fail(%rip)
	leaq	-240(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_statm_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$327, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L117
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$328, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	movq	-72(%rbp), %rcx
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	-240(%rbp), %rax
	leaq	128(%rax), %rdx
	leaq	fake_now(%rip), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ackm_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$329, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_on_handshake_confirmed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L117
	call	ossl_quic_cfq_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	call	ossl_quic_txpim_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$336, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	leaq	get_sstream_by_id(%rip), %r8
	leaq	-240(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	sstream_updated(%rip), %rdi
	pushq	%rdi
	pushq	$0
	leaq	confirm_frame(%rip), %rdi
	pushq	%rdi
	pushq	$0
	leaq	regen_frame(%rip), %rdi
	pushq	%rdi
	movl	$0, %r9d
	movq	%rax, %rdi
	call	ossl_quic_fifd_init@PLT
	addq	$64, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$337, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L117
	movq	$0, -32(%rbp)
	jmp	.L108
.L110:
	movl	$1024, %edi
	call	ossl_quic_sstream_new@PLT
	movq	-32(%rbp), %rdx
	addq	$22, %rdx
	movq	%rax, -240(%rbp,%rdx,8)
	movq	-32(%rbp), %rax
	addq	$22, %rax
	movq	-240(%rbp,%rax,8), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$347, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	addq	$1, -32(%rbp)
.L108:
	cmpq	$3, -32(%rbp)
	jbe	.L110
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rbx
	call	ossl_time_zero
	movq	%rax, %rcx
	leaq	-240(%rbp), %rax
	subq	$-128, %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_update_rtt@PLT
	movl	-244(%rbp), %edx
	leaq	-240(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	test_generic
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	movl	cb_fail(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$353, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L119
	movl	$1, -20(%rbp)
	jmp	.L107
.L117:
	nop
	jmp	.L107
.L118:
	nop
	jmp	.L107
.L119:
	nop
.L107:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_fifd_cleanup@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_free@PLT
	leaq	-240(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_statm_destroy@PLT
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L113
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L113:
	movq	$0, -32(%rbp)
	jmp	.L114
.L115:
	movq	-32(%rbp), %rax
	addq	$22, %rax
	movq	-240(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	addq	$1, -32(%rbp)
.L114:
	cmpq	$3, -32(%rbp)
	jbe	.L115
	movq	$0, cur_info(%rip)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	test_fifd, .-test_fifd
	.section	.rodata
.LC63:
	.string	"test_fifd"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_fifd(%rip), %rsi
	leaq	.LC63(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

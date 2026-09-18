	.file	"quic_fifd.c"
	.text
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
	.type	ossl_list_tx_history_init_elem, @function
ossl_list_tx_history_init_elem:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
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
.LFE644:
	.size	ossl_list_tx_history_init_elem, .-ossl_list_tx_history_init_elem
	.globl	ossl_quic_fifd_init
	.type	ossl_quic_fifd_init, @function
ossl_quic_fifd_init:
.LFB656:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L7
	cmpq	$0, -24(%rbp)
	je	.L7
	cmpq	$0, -32(%rbp)
	je	.L7
	cmpq	$0, -40(%rbp)
	je	.L7
	cmpq	$0, 16(%rbp)
	jne	.L8
.L7:
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movl	$1, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_quic_fifd_init, .-ossl_quic_fifd_init
	.globl	ossl_quic_fifd_cleanup
	.type	ossl_quic_fifd_cleanup, @function
ossl_quic_fifd_cleanup:
.LFB657:
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
.LFE657:
	.size	ossl_quic_fifd_cleanup, .-ossl_quic_fifd_cleanup
	.type	on_acked, @function
on_acked:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_chunks@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_num_chunks@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L12
.L19:
	movq	-32(%rbp), %rax
	movq	24(%rax), %r8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L15
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked@PLT
.L15:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L16
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L16
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked_fin@PLT
.L16:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L17
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L17
	movq	-32(%rbp), %rax
	movq	56(%rax), %r8
	movq	-32(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$5, %edi
	call	*%r8
.L17:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L18
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L18
	movq	-32(%rbp), %rax
	movq	56(%rax), %r8
	movq	-32(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$4, %edi
	call	*%r8
.L18:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	je	.L14
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L14
.L22:
	nop
.L14:
	addq	$1, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L19
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L20
.L21:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_release@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L20:
	cmpq	$0, -16(%rbp)
	jne	.L21
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_release@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	on_acked, .-on_acked
	.type	fifd_get_qlog, @function
fifd_get_qlog:
.LFB659:
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
	testq	%rax, %rax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	fifd_get_qlog, .-fifd_get_qlog
	.type	on_lost, @function
on_lost:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_chunks@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_num_chunks@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fifd_get_qlog
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_qlog_event_recovery_packet_lost@PLT
	movq	$0, -8(%rbp)
	jmp	.L27
.L34:
	movq	-40(%rbp), %rax
	movq	24(%rax), %r8
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L42
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L30
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_lost@PLT
	movl	$1, -20(%rbp)
.L30:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L31
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L31
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_lost_fin@PLT
	movl	$1, -20(%rbp)
.L31:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L32
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L32
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movl	$5, %edi
	call	*%r8
.L32:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L33
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L33
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movl	$4, %edi
	call	*%r8
.L33:
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movl	$17, %edi
	call	*%r8
	cmpl	$0, -20(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L29
	movq	-40(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L29
.L42:
	nop
.L29:
	addq	$1, -8(%rbp)
.L27:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L34
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L35
.L36:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_mark_lost@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.L35:
	cmpq	$0, -16(%rbp)
	jne	.L36
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L37
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	$-1, %rsi
	movl	$30, %edi
	call	*%r8
.L37:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L38
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	$-1, %rsi
	movl	$16, %edi
	call	*%r8
.L38:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L39
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	$-1, %rsi
	movl	$18, %edi
	call	*%r8
.L39:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L40
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	$-1, %rsi
	movl	$19, %edi
	call	*%r8
.L40:
	movq	-32(%rbp), %rax
	movzbl	121(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L41
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	$-1, %rsi
	movl	$3, %edi
	call	*%r8
.L41:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_release@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	on_lost, .-on_lost
	.type	on_discarded, @function
on_discarded:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L44
.L45:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_release@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L44:
	cmpq	$0, -8(%rbp)
	jne	.L45
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_release@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	on_discarded, .-on_discarded
	.globl	ossl_quic_fifd_pkt_commit
	.type	ossl_quic_fifd_pkt_commit, @function
ossl_quic_fifd_pkt_commit:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-64(%rbp), %rax
	leaq	on_lost(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-64(%rbp), %rax
	leaq	on_acked(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-64(%rbp), %rax
	leaq	on_discarded(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_tx_history_init_elem
	movq	-64(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L47
.L48:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_mark_tx@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L47:
	cmpq	$0, -8(%rbp)
	jne	.L48
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_chunks@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_num_chunks@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L49
.L54:
	movq	-56(%rbp), %rax
	movq	24(%rax), %r8
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L55
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L52
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L51
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted_fin@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L53
.L55:
	nop
.L51:
	addq	$1, -16(%rbp)
.L49:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L54
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_tx_packet@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	ossl_quic_fifd_pkt_commit, .-ossl_quic_fifd_pkt_commit
	.globl	ossl_quic_fifd_set_qlog_cb
	.type	ossl_quic_fifd_set_qlog_cb, @function
ossl_quic_fifd_set_qlog_cb:
.LFB663:
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
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	ossl_quic_fifd_set_qlog_cb, .-ossl_quic_fifd_set_qlog_cb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

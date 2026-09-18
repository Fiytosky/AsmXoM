	.file	"quic_cc_test.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB499:
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
.LFE499:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB508:
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
.LFE508:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB510:
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
.LFE510:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB511:
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
.LFE511:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB516:
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
	jnb	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L16
	movl	$-1, %eax
	jmp	.L15
.L16:
	movl	$0, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB517:
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
.LFE517:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_add, @function
ossl_time_add:
.LFB519:
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
	je	.L20
	call	ossl_time_infinite
	jmp	.L22
.L20:
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_time_add, .-ossl_time_add
	.local	fake_time
	.comm	fake_time,8,8
	.type	fake_now, @function
fake_now:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	fake_time(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	fake_now, .-fake_now
	.type	step_time, @function
step_time:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_time(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	step_time, .-step_time
	.type	ossl_pqueue_NET_PKT_new, @function
ossl_pqueue_NET_PKT_new:
.LFB529:
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
	call	ossl_pqueue_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ossl_pqueue_NET_PKT_new, .-ossl_pqueue_NET_PKT_new
	.type	ossl_pqueue_NET_PKT_pop_free, @function
ossl_pqueue_NET_PKT_pop_free:
.LFB531:
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
	call	ossl_pqueue_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ossl_pqueue_NET_PKT_pop_free, .-ossl_pqueue_NET_PKT_pop_free
	.type	ossl_pqueue_NET_PKT_push, @function
ossl_pqueue_NET_PKT_push:
.LFB534:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	ossl_pqueue_NET_PKT_push, .-ossl_pqueue_NET_PKT_push
	.type	ossl_pqueue_NET_PKT_peek, @function
ossl_pqueue_NET_PKT_peek:
.LFB535:
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
	call	ossl_pqueue_peek@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ossl_pqueue_NET_PKT_peek, .-ossl_pqueue_NET_PKT_peek
	.type	ossl_pqueue_NET_PKT_pop, @function
ossl_pqueue_NET_PKT_pop:
.LFB536:
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
	call	ossl_pqueue_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	ossl_pqueue_NET_PKT_pop, .-ossl_pqueue_NET_PKT_pop
	.type	net_pkt_cmp, @function
net_pkt_cmp:
.LFB538:
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
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	net_pkt_cmp, .-net_pkt_cmp
	.section	.rodata
	.align 8
.LC0:
	.string	"s->pkts = ossl_pqueue_NET_PKT_new(net_pkt_cmp)"
.LC1:
	.string	"../test/quic_cc_test.c"
	.text
	.type	net_sim_init, @function
net_sim_init:
.LFB539:
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
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	leaq	net_pkt_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_new
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$122, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	net_sim_init, .-net_sim_init
	.type	do_free, @function
do_free:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	do_free, .-do_free
	.type	net_sim_cleanup, @function
net_sim_cleanup:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	do_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_pop_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	net_sim_cleanup, .-net_sim_cleanup
	.section	.rodata
.LC2:
	.string	"pkt"
.LC3:
	.string	"net_sim_process(s, 0)"
	.align 8
.LC4:
	.string	"s->ccm->on_data_sent(s->cc, sz)"
	.align 8
.LC5:
	.string	"ossl_pqueue_NET_PKT_push(s->pkts, pkt, &pkt->idx)"
	.text
	.type	net_sim_send, @function
net_sim_send:
.LFB542:
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
	movq	%rsi, -48(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$142, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$145, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	net_sim_process
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$152, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-48(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	fake_time(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 32(%rax)
	cmpl	$0, -28(%rbp)
	je	.L47
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 8(%rbx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L48
.L47:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 8(%rbx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$3000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L48:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movl	$1, %eax
	jmp	.L44
.L51:
	nop
	jmp	.L46
.L52:
	nop
	jmp	.L46
.L53:
	nop
.L46:
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L44:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	net_sim_send, .-net_sim_send
	.section	.rodata
.LC6:
	.string	"!pkt->success || pkt->arrived"
	.align 8
.LC7:
	.string	"s->ccm->on_data_lost(s->cc, &loss_info)"
	.align 8
.LC8:
	.string	"s->ccm->on_data_lost_finished(s->cc, 0)"
	.align 8
.LC9:
	.string	"s->ccm->on_data_acked(s->cc, &ack_info)"
	.text
	.type	net_sim_process_one, @function
net_sim_process_one:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_peek
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L55
	movl	$3, %eax
	jmp	.L56
.L55:
	cmpl	$0, -60(%rbp)
	je	.L57
	movq	fake_time(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jle	.L57
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, fake_time(%rip)
.L57:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L58
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L58
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L58
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 36(%rax)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_pop
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_push
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L56
.L59:
	movl	$1, %eax
	jmp	.L56
.L58:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jns	.L60
	movl	$2, %eax
	jmp	.L56
.L60:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L62
.L61:
	movl	$1, %ecx
	jmp	.L63
.L62:
	movl	$0, %ecx
.L63:
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L56
.L64:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L65
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$237, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L56
.L66:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L56
.L68:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_pop
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$245, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L69
.L65:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$252, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L56
.L70:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_NET_PKT_pop
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$257, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L69:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	net_sim_process_one, .-net_sim_process_one
	.type	net_sim_process, @function
net_sim_process:
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
	jmp	.L72
.L73:
	cmpq	$0, -32(%rbp)
	je	.L72
	subq	$1, -32(%rbp)
.L72:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	net_sim_process_one
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L73
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	net_sim_process, .-net_sim_process
	.type	dump_state, @function
dump_state:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	dump_state, .-dump_state
	.section	.rodata
.LC10:
	.string	"cc = ccm->new(fake_now, NULL)"
	.align 8
.LC11:
	.string	"net_sim_init(&sim, ccm, cc, actual_capacity, 100)"
.LC12:
	.string	"max_dgram_payload_len"
	.align 8
.LC13:
	.string	"ccm->set_input_params(cc, params)"
.LC14:
	.string	"bytes_in_flight"
.LC15:
	.string	"cur_cwnd_size"
	.align 8
.LC16:
	.string	"ccm->bind_diagnostics(cc, params)"
.LC17:
	.string	"mdpl"
	.align 8
.LC18:
	.string	"allowance = ccm->get_tx_allowance(cc)"
	.align 8
.LC19:
	.string	"net_sim_send(&sim, (size_t)sz)"
.LC20:
	.string	"0"
.LC21:
	.string	"rc"
.LC22:
	.string	"diag_cur_bytes_in_flight"
.LC23:
	.string	"ccm->get_tx_allowance(cc)"
.LC24:
	.string	"UINT64_MAX"
.LC25:
	.string	"diag_cur_cwnd_size"
	.align 8
.LC28:
	.string	"est = %6llu kB/s, act=%6llu kB/s (error=%.02f%%)\n"
.LC30:
	.string	"0.05"
.LC31:
	.string	"error"
	.text
	.type	test_simulate, @function
test_simulate:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	ossl_cc_newreno_method@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$1472, -144(%rbp)
	movq	$0, -32(%rbp)
	movq	$16000, -72(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$-1, -152(%rbp)
	movq	$-1, -160(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$5000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, fake_time(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$346, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$100, %r8d
	movq	%rax, %rdi
	call	net_sim_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$349, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movl	$1, -24(%rbp)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-400(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-352(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-352(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-400(%rbp), %rax
	leaq	-152(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-400(%rbp), %rax
	leaq	-160(%rbp), %rdx
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-352(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$368, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-144(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L107
	movq	$31457280, -96(%rbp)
	jmp	.L84
.L88:
	leaq	-224(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dump_state
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rdx
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -120(%rbp)
	cmpq	$29, -120(%rbp)
	jbe	.L108
	movl	$7, %edi
	call	step_time
	movq	-120(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	net_sim_send
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L109
	movq	-120(%rbp), %rax
	addq	%rax, -32(%rbp)
	jmp	.L88
.L108:
	nop
	leaq	-224(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	net_sim_process
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$414, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L110
	cmpl	$3, -124(%rbp)
	jne	.L90
	movq	-152(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$422, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L111
	movq	-144(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L112
.L90:
	movq	$1, -136(%rbp)
	movq	-152(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$433, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L113
	movq	-160(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$434, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L113
	movq	-136(%rbp), %rax
	addq	%rax, -40(%rbp)
	addq	$1, -48(%rbp)
.L84:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L88
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	js	.L94
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L95
.L94:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L95:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	js	.L96
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	jmp	.L97
.L96:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L97:
	divsd	%xmm1, %xmm0
	movsd	.LC26(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	movq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movq	%rdx, %xmm0
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$451, %esi
	movl	$1, %eax
	call	test_info@PLT
	movsd	.LC29(%rip), %xmm0
	movq	-112(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$457, %esi
	call	test_double_le@PLT
	testl	%eax, %eax
	je	.L114
	movl	$1, -20(%rbp)
	jmp	.L79
.L103:
	nop
	jmp	.L79
.L104:
	nop
	jmp	.L79
.L105:
	nop
	jmp	.L79
.L106:
	nop
	jmp	.L79
.L107:
	nop
	jmp	.L79
.L109:
	nop
	jmp	.L79
.L110:
	nop
	jmp	.L79
.L111:
	nop
	jmp	.L79
.L112:
	nop
	jmp	.L79
.L113:
	nop
	jmp	.L79
.L114:
	nop
.L79:
	cmpl	$0, -24(%rbp)
	je	.L99
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	net_sim_cleanup
.L99:
	cmpq	$0, -64(%rbp)
	je	.L100
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L100:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	test_simulate, .-test_simulate
	.section	.rodata
.LC32:
	.string	"1472"
.LC33:
	.string	"diag_mdpl"
	.align 8
.LC34:
	.string	"ossl_time_is_zero(ccm->get_wakeup_deadline(cc))"
.LC35:
	.string	"ccm->on_data_sent(cc, 1200)"
.LC36:
	.string	"allowance - 1200"
	.align 8
.LC37:
	.string	"ccm->on_data_acked(cc, &ack_info)"
.LC38:
	.string	"allowance"
	.align 8
.LC39:
	.string	"allowance2 = ccm->get_tx_allowance(cc)"
	.align 8
.LC40:
	.string	"ccm->on_data_invalidated(cc, 1200)"
.LC41:
	.string	"allowance2"
.LC42:
	.string	"1200 + 1300"
.LC43:
	.string	"ccm->on_data_sent(cc, 1300)"
.LC44:
	.string	"allowance - 1200 - 1300"
	.align 8
.LC45:
	.string	"ccm->on_data_lost(cc, &loss_info)"
	.align 8
.LC46:
	.string	"ccm->on_data_lost_finished(cc, 0)"
	.text
	.type	test_sanity, @function
test_sanity:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	ossl_cc_newreno_method@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$1472, -232(%rbp)
	movq	$-1, -240(%rbp)
	movq	$-1, -248(%rbp)
	movabsq	$5000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, fake_time(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$497, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L143
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-232(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-224(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	-224(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-240(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-248(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-224(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L145
	movq	-240(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1472, %r9d
	movq	%rsi, %r8
	movl	$518, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L145
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1472, %r9d
	movq	%rsi, %r8
	movl	$521, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L146
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$525, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L147
	movq	-248(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$529, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L148
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$1200, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$533, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movq	-56(%rbp), %rax
	leaq	-1200(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$537, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L150
	movq	fake_time(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	$1200, -88(%rbp)
	movl	$100, %edi
	call	step_time
	movq	-40(%rbp), %rax
	movq	72(%rax), %rcx
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$544, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L151
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$548, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L152
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$1200, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$552, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L153
	movq	-56(%rbp), %rax
	leaq	-1200(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$556, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$1200, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$559, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	movq	-64(%rbp), %rdi
	leaq	.LC41(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$563, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2500, %r9d
	movq	%rsi, %r8
	movl	$567, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L157
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$1200, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$570, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L158
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$1300, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$573, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-56(%rbp), %rax
	leaq	-2500(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.LC44(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$576, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L160
	movq	fake_time(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$1200, -72(%rbp)
	movl	$100, %edi
	call	step_time
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$584, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	$1300, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$588, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L162
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$591, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L163
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	movq	-64(%rbp), %rdi
	leaq	.LC41(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$595, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L164
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	movq	-56(%rbp), %rdi
	leaq	.LC38(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$599, %esi
	movq	%rax, %rdi
	call	test_uint64_t_lt@PLT
	testl	%eax, %eax
	je	.L165
	movl	$1, -20(%rbp)
	jmp	.L117
.L143:
	nop
	jmp	.L117
.L144:
	nop
	jmp	.L117
.L145:
	nop
	jmp	.L117
.L146:
	nop
	jmp	.L117
.L147:
	nop
	jmp	.L117
.L148:
	nop
	jmp	.L117
.L149:
	nop
	jmp	.L117
.L150:
	nop
	jmp	.L117
.L151:
	nop
	jmp	.L117
.L152:
	nop
	jmp	.L117
.L153:
	nop
	jmp	.L117
.L154:
	nop
	jmp	.L117
.L155:
	nop
	jmp	.L117
.L156:
	nop
	jmp	.L117
.L157:
	nop
	jmp	.L117
.L158:
	nop
	jmp	.L117
.L159:
	nop
	jmp	.L117
.L160:
	nop
	jmp	.L117
.L161:
	nop
	jmp	.L117
.L162:
	nop
	jmp	.L117
.L163:
	nop
	jmp	.L117
.L164:
	nop
	jmp	.L117
.L165:
	nop
.L117:
	cmpq	$0, -32(%rbp)
	je	.L141
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L141:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	test_sanity, .-test_sanity
	.section	.rodata
.LC47:
	.string	"test_simulate"
.LC48:
	.string	"test_sanity"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_simulate(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC26:
	.long	0
	.long	1072693248
	.align 8
.LC27:
	.long	0
	.long	1079574528
	.align 8
.LC29:
	.long	-1717986918
	.long	1068079513
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

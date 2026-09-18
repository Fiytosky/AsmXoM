	.file	"quic_reactor.c"
	.text
	.type	safe_sub_time, @function
safe_sub_time:
.LFB31:
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
	jnb	.L2
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L2:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB39:
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
.LFE39:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB40:
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
.LFE40:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB41:
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
.LFE41:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB42:
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
.LFE42:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB47:
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
	jnb	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L15
	movl	$-1, %eax
	jmp	.L14
.L15:
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB49:
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
.LFE49:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB51:
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
	je	.L19
	call	ossl_time_zero
	jmp	.L21
.L19:
	movq	-8(%rbp), %rax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.globl	ossl_quic_reactor_init
	.type	ossl_quic_reactor_init, @function
ossl_quic_reactor_init:
.LFB68:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 56(%rax)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 56(%rax)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 56(%rax)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 56(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	ossl_quic_reactor_init, .-ossl_quic_reactor_init
	.globl	ossl_quic_reactor_set_poll_r
	.type	ossl_quic_reactor_set_poll_r, @function
ossl_quic_reactor_set_poll_r:
.LFB69:
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
	jne	.L24
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L25
.L24:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L25:
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_reactor_can_support_poll_descriptor@PLT
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,4), %ecx
	movzbl	56(%rdx), %eax
	andl	$-5, %eax
	orl	%ecx, %eax
	movb	%al, 56(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	ossl_quic_reactor_set_poll_r, .-ossl_quic_reactor_set_poll_r
	.globl	ossl_quic_reactor_set_poll_w
	.type	ossl_quic_reactor_set_poll_w, @function
ossl_quic_reactor_set_poll_w:
.LFB70:
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
	jne	.L27
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	.L28
.L27:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L28:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_reactor_can_support_poll_descriptor@PLT
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,8), %ecx
	movzbl	56(%rdx), %eax
	andl	$-9, %eax
	orl	%ecx, %eax
	movb	%al, 56(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	ossl_quic_reactor_set_poll_w, .-ossl_quic_reactor_set_poll_w
	.globl	ossl_quic_reactor_get_poll_r
	.type	ossl_quic_reactor_get_poll_r, @function
ossl_quic_reactor_get_poll_r:
.LFB71:
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
.LFE71:
	.size	ossl_quic_reactor_get_poll_r, .-ossl_quic_reactor_get_poll_r
	.globl	ossl_quic_reactor_get_poll_w
	.type	ossl_quic_reactor_get_poll_w, @function
ossl_quic_reactor_get_poll_w:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	ossl_quic_reactor_get_poll_w, .-ossl_quic_reactor_get_poll_w
	.globl	ossl_quic_reactor_can_support_poll_descriptor
	.type	ossl_quic_reactor_can_support_poll_descriptor, @function
ossl_quic_reactor_can_support_poll_descriptor:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	ossl_quic_reactor_can_support_poll_descriptor, .-ossl_quic_reactor_can_support_poll_descriptor
	.globl	ossl_quic_reactor_can_poll_r
	.type	ossl_quic_reactor_can_poll_r, @function
ossl_quic_reactor_can_poll_r:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_quic_reactor_can_poll_r, .-ossl_quic_reactor_can_poll_r
	.globl	ossl_quic_reactor_can_poll_w
	.type	ossl_quic_reactor_can_poll_w, @function
ossl_quic_reactor_can_poll_w:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	ossl_quic_reactor_can_poll_w, .-ossl_quic_reactor_can_poll_w
	.globl	ossl_quic_reactor_net_read_desired
	.type	ossl_quic_reactor_net_read_desired, @function
ossl_quic_reactor_net_read_desired:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ossl_quic_reactor_net_read_desired, .-ossl_quic_reactor_net_read_desired
	.globl	ossl_quic_reactor_net_write_desired
	.type	ossl_quic_reactor_net_write_desired, @function
ossl_quic_reactor_net_write_desired:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	ossl_quic_reactor_net_write_desired, .-ossl_quic_reactor_net_write_desired
	.globl	ossl_quic_reactor_get_tick_deadline
	.type	ossl_quic_reactor_get_tick_deadline, @function
ossl_quic_reactor_get_tick_deadline:
.LFB78:
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
.LFE78:
	.size	ossl_quic_reactor_get_tick_deadline, .-ossl_quic_reactor_get_tick_deadline
	.globl	ossl_quic_reactor_tick
	.type	ossl_quic_reactor_tick, @function
ossl_quic_reactor_tick:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %r8
	movq	-24(%rbp), %rax
	movq	48(%rax), %rcx
	movl	-28(%rbp), %edx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	56(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 56(%rax)
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	56(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 56(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	ossl_quic_reactor_tick, .-ossl_quic_reactor_tick
	.type	poll_two_fds, @function
poll_two_fds:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movl	%edx, -76(%rbp)
	movl	%ecx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.L48
	movq	-16(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, -64(%rbp,%rax,8)
	cmpl	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	cmpl	$0, -80(%rbp)
	je	.L49
	movl	$4, %edx
	jmp	.L50
.L49:
	movl	$0, %edx
.L50:
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, -60(%rbp,%rax,8)
	cmpl	$0, -68(%rbp)
	js	.L51
	movq	-16(%rbp), %rax
	movzwl	-60(%rbp,%rax,8), %eax
	testw	%ax, %ax
	je	.L51
	addq	$1, -16(%rbp)
	jmp	.L51
.L48:
	movq	-16(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, -64(%rbp,%rax,8)
	cmpl	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movw	%dx, -60(%rbp,%rax,8)
	cmpl	$0, -68(%rbp)
	js	.L52
	movq	-16(%rbp), %rax
	movzwl	-60(%rbp,%rax,8), %eax
	testw	%ax, %ax
	je	.L52
	addq	$1, -16(%rbp)
.L52:
	movq	-16(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, -64(%rbp,%rax,8)
	cmpl	$0, -80(%rbp)
	je	.L53
	movl	$4, %edx
	jmp	.L54
.L53:
	movl	$0, %edx
.L54:
	movq	-16(%rbp), %rax
	movw	%dx, -60(%rbp,%rax,8)
	cmpl	$0, -76(%rbp)
	js	.L51
	movq	-16(%rbp), %rax
	movzwl	-60(%rbp,%rax,8), %eax
	testw	%ax, %ax
	je	.L51
	addq	$1, -16(%rbp)
.L51:
	cmpq	$0, -16(%rbp)
	jne	.L55
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L56
.L55:
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L66
.L58:
	cmpq	$0, -96(%rbp)
	je	.L64
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
.L64:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	je	.L61
	movl	$-1, -4(%rbp)
	jmp	.L62
.L61:
	call	ossl_time_now@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	movl	%eax, -4(%rbp)
.L62:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	poll@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L63
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L64
.L63:
	cmpq	$0, -96(%rbp)
	je	.L65
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
.L65:
	movl	-20(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	poll_two_fds, .-poll_two_fds
	.type	poll_descriptor_to_fd, @function
poll_descriptor_to_fd:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L69
.L68:
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	movl	$1, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L71
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L72
.L71:
	movl	$0, %eax
	jmp	.L70
.L72:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L70:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	poll_descriptor_to_fd, .-poll_descriptor_to_fd
	.type	poll_two_descriptors, @function
poll_two_descriptors:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	poll_descriptor_to_fd
	testl	%eax, %eax
	je	.L74
	leaq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	poll_descriptor_to_fd
	testl	%eax, %eax
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L77
.L75:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	poll_two_fds
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	poll_two_descriptors, .-poll_two_descriptors
	.globl	ossl_quic_reactor_block_until_pred
	.type	ossl_quic_reactor_block_until_pred, @function
ossl_quic_reactor_block_until_pred:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
.L84:
	movl	-76(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L79
	andl	$-2, -76(%rbp)
	jmp	.L80
.L79:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
.L80:
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L81
	movl	-36(%rbp), %eax
	jmp	.L82
.L81:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_get_tick_deadline@PLT
	movq	%rax, %r14
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_net_write_desired@PLT
	movl	%eax, %r13d
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_get_poll_w@PLT
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_net_read_desired@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_reactor_get_poll_r@PLT
	movq	-88(%rbp), %rdx
	movq	%rdx, %r9
	movq	%r14, %r8
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	poll_two_descriptors
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
.L82:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ossl_quic_reactor_block_until_pred, .-ossl_quic_reactor_block_until_pred
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

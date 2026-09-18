	.file	"quic_tserver.c"
	.text
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
	.type	ossl_quic_stream_has_send_buffer, @function
ossl_quic_stream_has_send_buffer:
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
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$2, %eax
	ja	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movl	$0, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	ossl_quic_stream_has_send_buffer, .-ossl_quic_stream_has_send_buffer
	.type	ossl_quic_stream_has_recv_buffer, @function
ossl_quic_stream_has_recv_buffer:
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
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$2, %eax
	ja	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ossl_quic_stream_has_recv_buffer, .-ossl_quic_stream_has_recv_buffer
	.type	ossl_quic_stream_recv_is_reset, @function
ossl_quic_stream_recv_is_reset:
.LFB652:
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
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$6, %al
	jne	.L17
.L16:
	movl	$1, %eax
	jmp	.L19
.L17:
	movl	$0, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ossl_quic_stream_recv_is_reset, .-ossl_quic_stream_recv_is_reset
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
	.type	alpn_select_cb, @function
alpn_select_cb:
.LFB729:
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
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	leaq	alpndeflt.0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$9, -16(%rbp)
	jmp	.L30
.L29:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
.L30:
	movq	-16(%rbp), %rax
	movl	%eax, %r10d
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	SSL_select_next_proto@PLT
	cmpl	$1, %eax
	je	.L31
	movl	$2, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	alpn_select_cb, .-alpn_select_cb
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_tserver.c"
	.text
	.globl	ossl_quic_tserver_new
	.type	ossl_quic_tserver_new, @function
ossl_quic_tserver_new:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -112(%rbp)
	movq	%xmm0, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L55
	leaq	.LC0(%rip), %rax
	movl	$90, %edx
	movq	%rax, %rsi
	movl	$248, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L56
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rdx
	movq	%rdx, 64(%rax)
	call	ossl_crypto_mutex_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	jmp	.L40
.L39:
	call	TLS_method@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 112(%rdx)
.L40:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L58
	cmpq	$0, -128(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-128(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate_file@PLT
	testl	%eax, %eax
	jle	.L59
.L42:
	cmpq	$0, -136(%rbp)
	je	.L43
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-136(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey_file@PLT
	testl	%eax, %eax
	jle	.L60
.L43:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	alpn_select_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_select_cb@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -104(%rbp)
	movl	$1, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_engine_create_port@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_create_incoming@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_set_net_rbio@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_port_set_net_wbio@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC0(%rip), %rax
	movl	$144, %edx
	movq	%rax, %rsi
	movl	$360, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L66
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L54
.L55:
	nop
	jmp	.L36
.L56:
	nop
	jmp	.L36
.L57:
	nop
	jmp	.L36
.L58:
	nop
	jmp	.L36
.L59:
	nop
	jmp	.L36
.L60:
	nop
	jmp	.L36
.L61:
	nop
	jmp	.L36
.L62:
	nop
	jmp	.L36
.L63:
	nop
	jmp	.L36
.L64:
	nop
	jmp	.L36
.L65:
	nop
	jmp	.L36
.L66:
	nop
.L36:
	cmpq	$0, -24(%rbp)
	je	.L52
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
.L53:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_free@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_free@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_free@PLT
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$164, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L52:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L54:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ossl_quic_tserver_new, .-ossl_quic_tserver_new
	.globl	ossl_quic_tserver_free
	.type	ossl_quic_tserver_free, @function
ossl_quic_tserver_free:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_engine_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$182, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L67
.L70:
	nop
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ossl_quic_tserver_free, .-ossl_quic_tserver_free
	.globl	ossl_quic_tserver_set_plain_packet_mutator
	.type	ossl_quic_tserver_set_plain_packet_mutator, @function
ossl_quic_tserver_set_plain_packet_mutator:
.LFB732:
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
	movq	96(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_mutator@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ossl_quic_tserver_set_plain_packet_mutator, .-ossl_quic_tserver_set_plain_packet_mutator
	.globl	ossl_quic_tserver_set_handshake_mutator
	.type	ossl_quic_tserver_set_handshake_mutator, @function
ossl_quic_tserver_set_handshake_mutator:
.LFB733:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get0_ssl@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_statem_set_mutator@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ossl_quic_tserver_set_handshake_mutator, .-ossl_quic_tserver_set_handshake_mutator
	.globl	ossl_quic_tserver_tick
	.type	ossl_quic_tserver_tick, @function
ossl_quic_tserver_tick:
.LFB734:
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
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	je	.L76
	movq	-8(%rbp), %rax
	movzbl	240(%rax), %edx
	orl	$1, %edx
	movb	%dl, 240(%rax)
.L76:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ossl_quic_tserver_tick, .-ossl_quic_tserver_tick
	.globl	ossl_quic_tserver_is_connected
	.type	ossl_quic_tserver_is_connected, @function
ossl_quic_tserver_is_connected:
.LFB735:
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
	call	ossl_quic_channel_is_active@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ossl_quic_tserver_is_connected, .-ossl_quic_tserver_is_connected
	.globl	ossl_quic_tserver_is_term_any
	.type	ossl_quic_tserver_is_term_any, @function
ossl_quic_tserver_is_term_any:
.LFB736:
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
	call	ossl_quic_channel_is_term_any@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ossl_quic_tserver_is_term_any, .-ossl_quic_tserver_is_term_any
	.globl	ossl_quic_tserver_get_terminate_cause
	.type	ossl_quic_tserver_get_terminate_cause, @function
ossl_quic_tserver_get_terminate_cause:
.LFB737:
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
	call	ossl_quic_channel_get_terminate_cause@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_quic_tserver_get_terminate_cause, .-ossl_quic_tserver_get_terminate_cause
	.globl	ossl_quic_tserver_is_terminated
	.type	ossl_quic_tserver_is_terminated, @function
ossl_quic_tserver_is_terminated:
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
	call	ossl_quic_channel_is_terminated@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_quic_tserver_is_terminated, .-ossl_quic_tserver_is_terminated
	.globl	ossl_quic_tserver_is_handshake_confirmed
	.type	ossl_quic_tserver_is_handshake_confirmed, @function
ossl_quic_tserver_is_handshake_confirmed:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_handshake_confirmed@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ossl_quic_tserver_is_handshake_confirmed, .-ossl_quic_tserver_is_handshake_confirmed
	.globl	ossl_quic_tserver_read
	.type	ossl_quic_tserver_read, @function
ossl_quic_tserver_read:
.LFB740:
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
	movl	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	movq	-64(%rbp), %rax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L90
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	jne	.L91
.L90:
	movl	$0, %eax
	jmp	.L100
.L91:
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L100
.L89:
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$4, %al
	je	.L93
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv_buffer
	testl	%eax, %eax
	jne	.L94
.L93:
	movl	$0, %eax
	jmp	.L100
.L94:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-16(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_read@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L100
.L95:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_statm@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	160(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L100
.L96:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L98
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_notify_totally_read@PLT
.L98:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
.L99:
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ossl_quic_tserver_read, .-ossl_quic_tserver_read
	.globl	ossl_quic_tserver_has_read_ended
	.type	ossl_quic_tserver_has_read_ended, @function
ossl_quic_tserver_has_read_ended:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L109
.L102:
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$4, %al
	jne	.L104
	movl	$1, %eax
	jmp	.L109
.L104:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv_buffer
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L109
.L105:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-28(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-9(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_quic_rstream_peek@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L109
.L106:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L107
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L107
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	-28(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-9(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_quic_rstream_read@PLT
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_notify_totally_read@PLT
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movl	$1, %eax
	jmp	.L109
.L107:
	movl	$0, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ossl_quic_tserver_has_read_ended, .-ossl_quic_tserver_has_read_ended
	.globl	ossl_quic_tserver_write
	.type	ossl_quic_tserver_write, @function
ossl_quic_tserver_write:
.LFB742:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	jne	.L114
.L113:
	movl	$0, %eax
	jmp	.L112
.L114:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L112
.L115:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
.L116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ossl_quic_tserver_write, .-ossl_quic_tserver_write
	.globl	ossl_quic_tserver_conclude
	.type	ossl_quic_tserver_conclude, @function
ossl_quic_tserver_conclude:
.LFB743:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send_buffer
	testl	%eax, %eax
	jne	.L121
.L120:
	movl	$0, %eax
	jmp	.L119
.L121:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	jne	.L122
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_fin@PLT
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_update_state@PLT
.L122:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ossl_quic_tserver_conclude, .-ossl_quic_tserver_conclude
	.globl	ossl_quic_tserver_stream_new
	.type	ossl_quic_tserver_stream_new, @function
ossl_quic_tserver_stream_new:
.LFB744:
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
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_active@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_channel_new_stream_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L126
	movl	$0, %eax
	jmp	.L125
.L126:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ossl_quic_tserver_stream_new, .-ossl_quic_tserver_stream_new
	.globl	ossl_quic_tserver_get0_rbio
	.type	ossl_quic_tserver_get0_rbio, @function
ossl_quic_tserver_get0_rbio:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_quic_tserver_get0_rbio, .-ossl_quic_tserver_get0_rbio
	.globl	ossl_quic_tserver_get0_ssl_ctx
	.type	ossl_quic_tserver_get0_ssl_ctx, @function
ossl_quic_tserver_get0_ssl_ctx:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_quic_tserver_get0_ssl_ctx, .-ossl_quic_tserver_get0_ssl_ctx
	.globl	ossl_quic_tserver_stream_has_peer_stop_sending
	.type	ossl_quic_tserver_stream_has_peer_stop_sending, @function
ossl_quic_tserver_stream_has_peer_stop_sending:
.LFB747:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L132
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-8(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L134
	cmpq	$0, -40(%rbp)
	je	.L134
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L134:
	movq	-8(%rbp), %rax
	movzbl	259(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_quic_tserver_stream_has_peer_stop_sending, .-ossl_quic_tserver_stream_has_peer_stop_sending
	.globl	ossl_quic_tserver_stream_has_peer_reset_stream
	.type	ossl_quic_tserver_stream_has_peer_reset_stream, @function
ossl_quic_tserver_stream_has_peer_reset_stream:
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
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L136
	movl	$0, %eax
	jmp	.L137
.L136:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_is_reset
	testl	%eax, %eax
	je	.L138
	cmpq	$0, -40(%rbp)
	je	.L138
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L138:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_is_reset
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_quic_tserver_stream_has_peer_reset_stream, .-ossl_quic_tserver_stream_has_peer_reset_stream
	.globl	ossl_quic_tserver_set_new_local_cid
	.type	ossl_quic_tserver_set_new_local_cid, @function
ossl_quic_tserver_set_new_local_cid:
.LFB749:
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
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_replace_local_cid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_quic_tserver_set_new_local_cid, .-ossl_quic_tserver_set_new_local_cid
	.globl	ossl_quic_tserver_pop_incoming_stream
	.type	ossl_quic_tserver_pop_incoming_stream, @function
ossl_quic_tserver_pop_incoming_stream:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_peek_accept_queue@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L142
	movq	$-1, %rax
	jmp	.L143
.L142:
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_remove_from_accept_queue@PLT
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	ossl_quic_tserver_pop_incoming_stream, .-ossl_quic_tserver_pop_incoming_stream
	.globl	ossl_quic_tserver_is_stream_totally_acked
	.type	ossl_quic_tserver_is_stream_totally_acked, @function
ossl_quic_tserver_is_stream_totally_acked:
.LFB751:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_qsm@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L145
	movl	$1, %eax
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	ossl_quic_tserver_is_stream_totally_acked, .-ossl_quic_tserver_is_stream_totally_acked
	.globl	ossl_quic_tserver_get_net_read_desired
	.type	ossl_quic_tserver_get_net_read_desired, @function
ossl_quic_tserver_get_net_read_desired:
.LFB752:
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
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, %rdi
	call	ossl_quic_reactor_net_read_desired@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ossl_quic_tserver_get_net_read_desired, .-ossl_quic_tserver_get_net_read_desired
	.globl	ossl_quic_tserver_get_net_write_desired
	.type	ossl_quic_tserver_get_net_write_desired, @function
ossl_quic_tserver_get_net_write_desired:
.LFB753:
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
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, %rdi
	call	ossl_quic_reactor_net_write_desired@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	ossl_quic_tserver_get_net_write_desired, .-ossl_quic_tserver_get_net_write_desired
	.globl	ossl_quic_tserver_get_deadline
	.type	ossl_quic_tserver_get_deadline, @function
ossl_quic_tserver_get_deadline:
.LFB754:
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
	call	ossl_quic_channel_get_reactor@PLT
	movq	%rax, %rdi
	call	ossl_quic_reactor_get_tick_deadline@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	ossl_quic_tserver_get_deadline, .-ossl_quic_tserver_get_deadline
	.globl	ossl_quic_tserver_shutdown
	.type	ossl_quic_tserver_shutdown, @function
ossl_quic_tserver_shutdown:
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
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_local_close@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L154
	movl	$1, %eax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_is_terminated@PLT
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_quic_tserver_shutdown, .-ossl_quic_tserver_shutdown
	.globl	ossl_quic_tserver_ping
	.type	ossl_quic_tserver_ping, @function
ossl_quic_tserver_ping:
.LFB756:
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
	call	ossl_quic_channel_is_terminated@PLT
	testl	%eax, %eax
	je	.L157
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_ping@PLT
	testl	%eax, %eax
	jne	.L159
	movl	$0, %eax
	jmp	.L158
.L159:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_reactor@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_reactor_tick@PLT
	movl	$1, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_quic_tserver_ping, .-ossl_quic_tserver_ping
	.globl	ossl_quic_tserver_get_channel
	.type	ossl_quic_tserver_get_channel, @function
ossl_quic_tserver_get_channel:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	ossl_quic_tserver_get_channel, .-ossl_quic_tserver_get_channel
	.globl	ossl_quic_tserver_set_msg_callback
	.type	ossl_quic_tserver_set_msg_callback, @function
ossl_quic_tserver_set_msg_callback:
.LFB758:
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
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_msg_callback@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_msg_callback_arg@PLT
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_msg_callback@PLT
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	ossl_quic_tserver_set_msg_callback, .-ossl_quic_tserver_set_msg_callback
	.globl	ossl_quic_tserver_new_ticket
	.type	ossl_quic_tserver_new_ticket, @function
ossl_quic_tserver_new_ticket:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	SSL_new_session_ticket@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ossl_quic_tserver_new_ticket, .-ossl_quic_tserver_new_ticket
	.globl	ossl_quic_tserver_set_max_early_data
	.type	ossl_quic_tserver_set_max_early_data, @function
ossl_quic_tserver_set_max_early_data:
.LFB760:
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
	movq	120(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_max_early_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ossl_quic_tserver_set_max_early_data, .-ossl_quic_tserver_set_max_early_data
	.globl	ossl_quic_tserver_set_psk_find_session_cb
	.type	ossl_quic_tserver_set_psk_find_session_cb, @function
ossl_quic_tserver_set_psk_find_session_cb:
.LFB761:
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
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_psk_find_session_callback@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_quic_tserver_set_psk_find_session_cb, .-ossl_quic_tserver_set_psk_find_session_cb
	.section	.rodata
	.align 8
	.type	alpndeflt.0, @object
	.size	alpndeflt.0, 9
alpndeflt.0:
	.ascii	"\bossltest"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"quic-client.c"
	.text
	.type	ossl_check_SSL_COMP_sk_type, @function
ossl_check_SSL_COMP_sk_type:
.LFB475:
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
.LFE475:
	.size	ossl_check_SSL_COMP_sk_type, .-ossl_check_SSL_COMP_sk_type
	.type	safe_add_time, @function
safe_add_time:
.LFB496:
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
	jnc	.L4
	movl	$1, %ecx
.L4:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L6
	movq	-8(%rbp), %rax
	jmp	.L8
.L6:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB505:
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
.LFE505:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB507:
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
.LFE507:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB508:
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
.LFE508:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_from_timeval, @function
ossl_time_from_timeval:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L16
	call	ossl_time_zero
	jmp	.L18
.L16:
	movq	-32(%rbp), %rax
	imulq	$1000000000, %rax, %rdx
	movq	-24(%rbp), %rax
	imulq	$1000, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ossl_time_from_timeval, .-ossl_time_from_timeval
	.type	ossl_time_compare, @function
ossl_time_compare:
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
.LFE513:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_add, @function
ossl_time_add:
.LFB516:
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
	je	.L24
	call	ossl_time_infinite
	jmp	.L26
.L24:
	movq	-8(%rbp), %rax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_time_add, .-ossl_time_add
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
	.local	idx
	.comm	idx,4,4
	.local	fake_now
	.comm	fake_now,8,8
	.type	fake_now_cb, @function
fake_now_cb:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	fake_now(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	fake_now_cb, .-fake_now_cb
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	FuzzerSetRand@PLT
	movl	$0, %esi
	movl	$258, %edi
	call	OPENSSL_init_crypto@PLT
	movl	$0, %esi
	movl	$2097152, %edi
	call	OPENSSL_init_ssl@PLT
	call	ERR_clear_error@PLT
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	movl	%eax, idx(%rip)
	call	SSL_COMP_get_compression_methods@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_COMP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
.L34:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"localhost"
.LC1:
	.string	"\bossltest"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1256, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1256(%rbp)
	movq	%rsi, -1264(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -40(%rbp)
	movq	$1, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	cmpq	$0, -1264(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L91
.L37:
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L92
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L93
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, fake_now(%rip)
	leaq	fake_now_cb(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set_override_now_cb@PLT
	testl	%eax, %eax
	je	.L94
	call	BIO_ADDR_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L95
	movl	$2130706433, %edi
	call	htonl@PLT
	movl	%eax, -164(%rbp)
	movl	$4433, %edi
	call	htons@PLT
	movzwl	%ax, %ecx
	leaq	-164(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	$4, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	testl	%eax, %eax
	je	.L96
	leaq	.LC0(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	call	BIO_s_dgram_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L97
	call	BIO_s_dgram_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L46
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L40
.L46:
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$87, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L40
.L47:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	leaq	.LC1(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_alpn_protos@PLT
	testl	%eax, %eax
	jne	.L98
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set1_initial_peer_addr@PLT
	cmpl	$1, %eax
	jne	.L99
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_incoming_stream_policy@PLT
	testl	%eax, %eax
	je	.L100
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)
.L88:
	movq	$0, -112(%rbp)
	call	ossl_time_zero
	movq	%rax, -1224(%rbp)
	movl	$0, -68(%rbp)
	cmpq	$1, -1264(%rbp)
	jbe	.L83
	cmpq	$4, -1264(%rbp)
	jbe	.L52
	movq	-1256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	jne	.L52
	movq	-1256(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	jne	.L52
	movq	-1256(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L53
	cmpl	$2, %eax
	jg	.L101
	testl	%eax, %eax
	je	.L55
	cmpl	$1, %eax
	je	.L56
	jmp	.L101
.L55:
	cmpl	$1, -60(%rbp)
	jne	.L102
	movl	$3, -60(%rbp)
	jmp	.L102
.L56:
	cmpl	$1, -60(%rbp)
	jne	.L103
	movl	$4, -60(%rbp)
	jmp	.L103
.L53:
	cmpl	$1, -60(%rbp)
	jne	.L104
	movl	$5, -60(%rbp)
	jmp	.L104
.L101:
	nop
	jmp	.L58
.L102:
	nop
	jmp	.L58
.L103:
	nop
	jmp	.L58
.L104:
	nop
.L58:
	subq	$3, -1264(%rbp)
	addq	$3, -1256(%rbp)
.L52:
	movq	-1256(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-1256(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%edx, %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_now(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -1224(%rbp)
	subq	$2, -1264(%rbp)
	addq	$2, -1256(%rbp)
.L83:
	cmpl	$5, -60(%rbp)
	je	.L61
	cmpl	$5, -60(%rbp)
	jg	.L62
	cmpl	$4, -60(%rbp)
	je	.L63
	cmpl	$4, -60(%rbp)
	jg	.L62
	cmpl	$3, -60(%rbp)
	je	.L64
	cmpl	$3, -60(%rbp)
	jg	.L62
	cmpl	$2, -60(%rbp)
	je	.L65
	cmpl	$2, -60(%rbp)
	jg	.L62
	cmpl	$0, -60(%rbp)
	je	.L66
	cmpl	$1, -60(%rbp)
	je	.L67
	jmp	.L62
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -68(%rbp)
	cmpl	$1, -68(%rbp)
	jne	.L105
	movl	$1, -60(%rbp)
	jmp	.L105
.L67:
	leaq	-1216(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L106
	movl	$2, -60(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.L106
.L65:
	movl	-64(%rbp), %edx
	leaq	-1216(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L107
	movl	$1, -60(%rbp)
	jmp	.L107
.L64:
	movl	$1, -60(%rbp)
	movl	$1, -68(%rbp)
	cmpq	$4, -48(%rbp)
	je	.L62
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_accept_stream_queue_len@PLT
	testq	%rax, %rax
	je	.L62
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_accept_stream@PLT
	movq	%rax, -160(%rbp,%rbx,8)
	movq	-160(%rbp,%rbx,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L108
	jmp	.L40
.L63:
	movl	$1, -60(%rbp)
	movl	$1, -68(%rbp)
	cmpq	$4, -48(%rbp)
	je	.L109
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_new_stream@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L74
	movq	-40(%rbp), %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -24(%rbp)
	jmp	.L62
.L74:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -160(%rbp,%rax,8)
	jmp	.L62
.L61:
	movl	$1, -60(%rbp)
	movl	$1, -68(%rbp)
	cmpq	$1, -48(%rbp)
	je	.L110
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L76
	movq	$0, -40(%rbp)
.L76:
	movq	-40(%rbp), %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -24(%rbp)
	jmp	.L62
.L105:
	nop
	jmp	.L62
.L106:
	nop
	jmp	.L62
.L107:
	nop
	jmp	.L62
.L108:
	nop
	jmp	.L62
.L109:
	nop
	jmp	.L62
.L110:
	nop
.L62:
	cmpl	$0, -68(%rbp)
	jg	.L77
	movl	-68(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L111
	nop
.L77:
	leaq	-1236(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get_event_timeout@PLT
	testl	%eax, %eax
	je	.L112
	movl	-1236(%rbp), %eax
	testl	%eax, %eax
	je	.L80
	movq	-1224(%rbp), %rax
	movq	%rax, fake_now(%rip)
	jmp	.L81
.L80:
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ossl_time_from_timeval
	movq	%rax, %rdx
	movq	fake_now(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -1232(%rbp)
	cmpq	$3, -1264(%rbp)
	jbe	.L82
	movq	-1224(%rbp), %rdx
	movq	-1232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L82
	movq	-1224(%rbp), %rax
	movq	%rax, fake_now(%rip)
	jmp	.L81
.L82:
	movq	-1232(%rbp), %rax
	movq	%rax, fake_now(%rip)
	jmp	.L83
.L81:
	cmpq	$3, -1264(%rbp)
	jbe	.L113
	movq	-1256(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-1256(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%edx, %eax
	cltq
	movq	%rax, -120(%rbp)
	movq	-1264(%rbp), %rax
	subq	$2, %rax
	cmpq	-120(%rbp), %rax
	jb	.L114
	cmpq	$0, -120(%rbp)
	je	.L87
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-1256(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L87:
	movq	-1264(%rbp), %rax
	subq	-120(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -1264(%rbp)
	movq	-120(%rbp), %rax
	addq	$2, %rax
	addq	%rax, -1256(%rbp)
	jmp	.L88
.L92:
	nop
	jmp	.L40
.L93:
	nop
	jmp	.L40
.L94:
	nop
	jmp	.L40
.L95:
	nop
	jmp	.L40
.L96:
	nop
	jmp	.L40
.L97:
	nop
	jmp	.L40
.L98:
	nop
	jmp	.L40
.L99:
	nop
	jmp	.L40
.L100:
	nop
	jmp	.L40
.L111:
	nop
	jmp	.L40
.L112:
	nop
	jmp	.L40
.L113:
	nop
	jmp	.L40
.L114:
	nop
.L40:
	movq	$0, -32(%rbp)
	jmp	.L89
.L90:
	movq	-32(%rbp), %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	addq	$1, -32(%rbp)
.L89:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L90
	call	ERR_clear_error@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	$0, %eax
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"quic_tserver_test.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB483:
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
.LFE483:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB484:
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
	jnb	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB492:
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
.LFE492:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB494:
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
.LFE494:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB495:
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
.LFE495:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_from_timeval, @function
ossl_time_from_timeval:
.LFB497:
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
	jns	.L17
	call	ossl_time_zero
	jmp	.L19
.L17:
	movq	-32(%rbp), %rax
	imulq	$1000000000, %rax, %rdx
	movq	-24(%rbp), %rax
	imulq	$1000, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_time_from_timeval, .-ossl_time_from_timeval
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB500:
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
	jnb	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L23
	movl	$-1, %eax
	jmp	.L22
.L23:
	movl	$0, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_add, @function
ossl_time_add:
.LFB503:
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
	je	.L25
	call	ossl_time_infinite
	jmp	.L27
.L25:
	movq	-8(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ossl_time_add, .-ossl_time_add
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB504:
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
	je	.L29
	call	ossl_time_zero
	jmp	.L31
.L29:
	movq	-8(%rbp), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ossl_time_subtract, .-ossl_time_subtract
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
	.section	.rodata
	.align 32
	.type	msg1, @object
	.size	msg1, 47
msg1:
	.string	"The quick brown fox jumped over the lazy dogs."
	.local	msg2
	.comm	msg2,1024,32
	.local	msg3
	.comm	msg3,1024,32
	.local	fake_time
	.comm	fake_time,8,8
	.local	fake_time_lock
	.comm	fake_time_lock,8,8
	.local	certfile
	.comm	certfile,8,8
	.local	keyfile
	.comm	keyfile,8,8
	.text
	.type	is_want, @function
is_want:
.LFB643:
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
	call	SSL_get_error@PLT
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	je	.L37
	cmpl	$3, -4(%rbp)
	jne	.L38
.L37:
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	is_want, .-is_want
	.local	scratch_buf
	.comm	scratch_buf,2048,32
	.type	fake_now, @function
fake_now:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	fake_time_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L42
	call	ossl_time_zero
	jmp	.L44
.L42:
	movq	fake_time(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	fake_time_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	fake_now, .-fake_now
	.type	real_now, @function
real_now:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_now@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	real_now, .-real_now
	.section	.rodata
.LC0:
	.string	"0"
.LC1:
	.string	"s_fd"
.LC2:
	.string	"../test/quic_tserver_test.c"
.LC3:
	.string	"BIO_socket_nbio(s_fd, 1)"
.LC4:
	.string	"s_addr_ = BIO_ADDR_new()"
	.align 8
.LC5:
	.string	"BIO_ADDR_rawmake(s_addr_, AF_INET, &ina, sizeof(ina), 0)"
.LC6:
	.string	"BIO_bind(s_fd, s_addr_, 0)"
	.align 8
.LC7:
	.string	"BIO_sock_info(s_fd, BIO_SOCK_INFO_ADDRESS, &s_info)"
.LC8:
	.string	"BIO_ADDR_rawport(s_addr_)"
	.align 8
.LC9:
	.string	"s_net_bio = s_net_bio_own = BIO_new_dgram(s_fd, 0)"
	.align 8
.LC10:
	.string	"tserver = ossl_quic_tserver_new(&tserver_args, certfile, keyfile)"
	.align 8
.LC11:
	.string	"BIO_new_bio_dgram_pair(&c_pair_own, 5000, &s_pair_own, 5000)"
.LC12:
	.string	"c_fd"
.LC13:
	.string	"BIO_socket_nbio(c_fd, 1)"
	.align 8
.LC14:
	.string	"c_net_bio = c_net_bio_own = BIO_new_dgram(c_fd, 0)"
	.align 8
.LC15:
	.string	"c_ctx = SSL_CTX_new(use_thread_assist ? OSSL_QUIC_client_thread_method() : OSSL_QUIC_client_method())"
.LC16:
	.string	"c_ssl = SSL_new(c_ctx)"
	.align 8
.LC17:
	.string	"ossl_quic_conn_set_override_now_cb(c_ssl, fake_now, NULL)"
	.align 8
.LC18:
	.string	"SSL_set_alpn_protos(c_ssl, alpn, sizeof(alpn))"
.LC19:
	.string	"BIO_up_ref(c_net_bio)"
	.align 8
.LC20:
	.string	"SSL_set_blocking_mode(c_ssl, 0)"
	.align 8
.LC21:
	.string	"timeout while attempting QUIC server test"
	.align 8
.LC22:
	.string	"ret == 1 || is_want(c_ssl, ret)"
.LC23:
	.string	"(int)sizeof(msg1) - 1"
	.align 8
.LC24:
	.string	"SSL_write(c_ssl, msg1, sizeof(msg1) - 1)"
.LC25:
	.string	"SSL_stream_conclude(c_ssl, 0)"
	.align 8
.LC26:
	.string	"ossl_quic_tserver_has_read_ended(tserver, 0)"
.LC27:
	.string	"msg2"
.LC28:
	.string	"msg1"
.LC29:
	.string	"sizeof(msg1) - 1"
.LC30:
	.string	"s_total_read"
	.align 8
.LC31:
	.string	"ossl_quic_tserver_write(tserver, 0, (unsigned char *)msg2 + s_total_written, sizeof(msg1) - 1 - s_total_written, &l)"
.LC32:
	.string	"msg3"
.LC33:
	.string	"ret"
.LC34:
	.string	"SSL_ERROR_ZERO_RETURN"
.LC35:
	.string	"SSL_get_error(c_ssl, ret)"
	.align 8
.LC36:
	.string	"ossl_quic_tserver_is_connected(tserver)"
	.align 8
.LC37:
	.string	"CRYPTO_THREAD_write_lock(fake_time_lock)"
	.align 8
.LC38:
	.string	"SSL_get_event_timeout(c_ssl, &tv, &isinf)"
	.align 8
.LC39:
	.string	"SSL_inject_net_dgram(c_ssl, rmsg.data, rmsg.data_len, NULL, NULL)"
	.text
	.type	do_test, @function
do_test:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$408, %rsp
	.cfi_offset 3, -24
	movl	%edi, -404(%rbp)
	movl	%esi, -408(%rbp)
	movl	%edx, -412(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -156(%rbp)
	movl	$-1, -24(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movq	%xmm0, -208(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -276(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movabsq	$8315180296151723784, %rax
	movq	%rax, -313(%rbp)
	movb	$116, -305(%rbp)
	movq	$10000, -152(%rbp)
	movl	$2130706433, %edi
	call	htonl@PLT
	movl	%eax, -276(%rbp)
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L121
	movl	-156(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	call	BIO_ADDR_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$95, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L123
	leaq	-276(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-56(%rbp), %rcx
	movl	-156(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_bind@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)
	leaq	-288(%rbp), %rdx
	movl	-156(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_sock_info@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$108, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L127
	movl	-156(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L128
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	je	.L129
	movl	$1000000000, %edi
	call	ossl_ticks2time
	movq	%rax, fake_time(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -256(%rbp)
	cmpl	$0, -408(%rbp)
	je	.L58
	leaq	fake_now(%rip), %rax
	movq	%rax, -232(%rbp)
.L58:
	movq	keyfile(%rip), %rdx
	movq	certfile(%rip), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L49
.L59:
	movq	$0, -32(%rbp)
	cmpl	$0, -412(%rbp)
	je	.L60
	leaq	-200(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movl	$5000, %ecx
	movl	$5000, %esi
	movq	%rax, %rdi
	call	BIO_new_bio_dgram_pair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$141, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
.L60:
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L131
	movl	-24(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L132
	movl	-24(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L133
	movq	-56(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L134
	cmpl	$0, -404(%rbp)
	je	.L65
	call	OSSL_QUIC_client_thread_method@PLT
	jmp	.L66
.L65:
	call	OSSL_QUIC_client_method@PLT
.L66:
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$160, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L136
	cmpl	$0, -408(%rbp)
	je	.L69
	leaq	fake_now(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set_override_now_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L137
.L69:
	leaq	-313(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_alpn_protos@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$173, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L138
	cmpl	$0, -412(%rbp)
	je	.L71
	movq	-192(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	$0, -192(%rbp)
	jmp	.L72
.L71:
	movq	-176(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L72
	movq	$0, -40(%rbp)
	jmp	.L49
.L72:
	movq	-176(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_blocking_mode@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$193, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L139
	movl	$0, %edi
	call	real_now
	movq	%rax, -304(%rbp)
.L117:
	movq	-152(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rbx
	movl	$0, %edi
	call	real_now
	movq	%rax, %rdx
	movq	-304(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L74
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$205, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L49
.L74:
	cmpl	$0, -100(%rbp)
	jne	.L75
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -180(%rbp)
	cmpl	$1, -180(%rbp)
	je	.L76
	movl	-180(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	je	.L77
.L76:
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L140
	cmpl	$1, -180(%rbp)
	jne	.L75
	movl	$1, -76(%rbp)
.L75:
	cmpl	$0, -76(%rbp)
	je	.L80
	cmpl	$0, -80(%rbp)
	jne	.L80
	leaq	msg1(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$46, %r9d
	movl	%esi, %r8d
	movl	$219, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L141
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_stream_conclude@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$223, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L142
	movl	$1, -80(%rbp)
.L80:
	cmpl	$0, -76(%rbp)
	je	.L83
	cmpl	$0, -80(%rbp)
	je	.L83
	cmpl	$0, -88(%rbp)
	jne	.L83
	movl	$1024, %eax
	subq	-112(%rbp), %rax
	movq	%rax, %rdx
	leaq	msg2(%rip), %rcx
	movq	-112(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-296(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	jne	.L84
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_has_read_ended@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$233, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	leaq	msg1(%rip), %rdi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-112(%rbp)
	leaq	msg2(%rip), %rsi
	pushq	%rsi
	movl	$46, %r9d
	movq	%rdi, %r8
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L144
	movl	$1, -140(%rbp)
	movl	$1, -88(%rbp)
	jmp	.L83
.L84:
	movq	-296(%rbp), %rax
	addq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$46, %r9d
	movq	%rsi, %r8
	movl	$243, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	je	.L145
.L83:
	cmpl	$0, -140(%rbp)
	je	.L87
	cmpq	$45, -120(%rbp)
	ja	.L87
	movl	$46, %eax
	subq	-120(%rbp), %rax
	movq	%rax, %rdx
	leaq	msg2(%rip), %rcx
	movq	-120(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-296(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L146
	movq	-296(%rbp), %rax
	addq	%rax, -120(%rbp)
	cmpq	$46, -120(%rbp)
	jne	.L87
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_conclude@PLT
	movl	$1, -84(%rbp)
.L87:
	cmpl	$0, -84(%rbp)
	je	.L89
	cmpq	$45, -128(%rbp)
	ja	.L89
	movl	$46, %eax
	subq	-128(%rbp), %rax
	movq	%rax, %rdx
	leaq	msg3(%rip), %rcx
	movq	-128(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-296(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -180(%rbp)
	cmpl	$1, -180(%rbp)
	je	.L90
	movl	-180(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	je	.L91
.L90:
	movl	$1, %eax
	jmp	.L92
.L91:
	movl	$0, %eax
.L92:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$265, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L147
	movq	-296(%rbp), %rax
	addq	%rax, -128(%rbp)
	cmpq	$46, -128(%rbp)
	jne	.L89
	leaq	msg1(%rip), %rdi
	leaq	.LC32(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-128(%rbp)
	leaq	msg3(%rip), %rsi
	pushq	%rsi
	movl	$46, %r9d
	movq	%rdi, %r8
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L148
	movl	$1, -92(%rbp)
.L89:
	cmpl	$0, -92(%rbp)
	je	.L95
	cmpl	$0, -96(%rbp)
	jne	.L95
	leaq	-296(%rbp), %rdx
	leaq	-314(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L149
	movl	-180(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$2, %eax
	je	.L95
	movl	-180(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$291, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L150
	movl	$1, -96(%rbp)
	cmpl	$0, -404(%rbp)
	je	.L102
	cmpl	$0, -408(%rbp)
	je	.L102
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_connected@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$297, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L151
	movl	$1, -100(%rbp)
	movq	$120000, -152(%rbp)
.L95:
	cmpl	$0, -100(%rbp)
	je	.L103
	cmpl	$0, -104(%rbp)
	jne	.L103
	cmpq	$599, -136(%rbp)
	ja	.L104
	movq	fake_time_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$314, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L152
	movl	$100000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_time(%rip)
	movq	fake_time_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	addq	$1, -136(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_force_assist_thread_wake@PLT
	leaq	-340(%rbp), %rdx
	leaq	-336(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get_event_timeout@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$326, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L153
	movl	-340(%rbp), %eax
	testl	%eax, %eax
	jne	.L103
	movq	-336(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ossl_time_from_timeval
	movq	%rax, %rbx
	call	ossl_time_zero
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L103
	movl	$100, %edi
	call	OSSL_sleep@PLT
	jmp	.L103
.L104:
	movl	$1, -104(%rbp)
.L103:
	cmpl	$0, -104(%rbp)
	je	.L109
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_connected@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$341, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L154
	jmp	.L49
.L109:
	cmpl	$0, -100(%rbp)
	je	.L111
	cmpl	$0, -104(%rbp)
	je	.L112
.L111:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
.L112:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	cmpl	$0, -412(%rbp)
	je	.L117
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -400(%rbp)
	movaps	%xmm0, -384(%rbp)
	movq	%xmm0, -368(%rbp)
	movq	$0, -352(%rbp)
.L116:
	leaq	scratch_buf(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	$2048, -392(%rbp)
	leaq	-352(%rbp), %rdx
	leaq	-400(%rbp), %rsi
	movq	-176(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	je	.L117
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	je	.L117
	movq	-392(%rbp), %rax
	testq	%rax, %rax
	je	.L117
	movq	-392(%rbp), %rdx
	movq	-400(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	SSL_inject_net_dgram@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$376, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	jmp	.L116
.L154:
	nop
.L102:
	movl	$1, -20(%rbp)
	jmp	.L49
.L121:
	nop
	jmp	.L49
.L122:
	nop
	jmp	.L49
.L123:
	nop
	jmp	.L49
.L124:
	nop
	jmp	.L49
.L125:
	nop
	jmp	.L49
.L126:
	nop
	jmp	.L49
.L127:
	nop
	jmp	.L49
.L128:
	nop
	jmp	.L49
.L129:
	nop
	jmp	.L49
.L130:
	nop
	jmp	.L49
.L131:
	nop
	jmp	.L49
.L132:
	nop
	jmp	.L49
.L133:
	nop
	jmp	.L49
.L134:
	nop
	jmp	.L49
.L135:
	nop
	jmp	.L49
.L136:
	nop
	jmp	.L49
.L137:
	nop
	jmp	.L49
.L138:
	nop
	jmp	.L49
.L139:
	nop
	jmp	.L49
.L140:
	nop
	jmp	.L49
.L141:
	nop
	jmp	.L49
.L142:
	nop
	jmp	.L49
.L143:
	nop
	jmp	.L49
.L144:
	nop
	jmp	.L49
.L145:
	nop
	jmp	.L49
.L146:
	nop
	jmp	.L49
.L147:
	nop
	jmp	.L49
.L148:
	nop
	jmp	.L49
.L149:
	nop
	jmp	.L49
.L150:
	nop
	jmp	.L49
.L151:
	nop
	jmp	.L49
.L152:
	nop
	jmp	.L49
.L153:
	nop
	jmp	.L49
.L155:
	nop
.L49:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -156(%rbp)
	js	.L118
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L118:
	cmpl	$0, -24(%rbp)
	js	.L119
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L119:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	do_test, .-do_test
	.type	test_tserver, @function
test_tserver:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L157
	cmpl	$0, -4(%rbp)
	jne	.L157
	movl	$1, %eax
	jmp	.L158
.L157:
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	do_test
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	test_tserver, .-test_tserver
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC40:
	.string	"Error parsing test options\n"
	.align 8
.LC41:
	.string	"certfile = test_get_argument(0)"
	.align 8
.LC42:
	.string	"keyfile = test_get_argument(1)"
.LC43:
	.string	"test_tserver"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L162
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$423, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L163
.L162:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, certfile(%rip)
	movq	certfile(%rip), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$427, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, keyfile(%rip)
	movq	keyfile(%rip), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$428, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L165
.L164:
	movl	$0, %eax
	jmp	.L163
.L165:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, fake_time_lock(%rip)
	movq	fake_time_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L166
	movl	$0, %eax
	jmp	.L163
.L166:
	leaq	test_tserver(%rip), %rsi
	leaq	.LC43(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L163:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC44:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC45:
	.string	"Valid options are:\n"
.LC46:
	.string	"help"
.LC47:
	.string	"Display this summary"
.LC48:
	.string	"list"
	.align 8
.LC49:
	.string	"Display the list of tests available"
.LC50:
	.string	"test"
	.align 8
.LC51:
	.string	"Run a single test by id or name"
.LC52:
	.string	"iter"
	.align 8
.LC53:
	.string	"Run a single iteration of a test"
.LC54:
	.string	"indent"
	.align 8
.LC55:
	.string	"Number of tabs added to output"
.LC56:
	.string	"seed"
	.align 8
.LC57:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	500
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	501
	.long	45
	.quad	.LC49
	.quad	.LC50
	.long	502
	.long	115
	.quad	.LC51
	.quad	.LC52
	.long	503
	.long	110
	.quad	.LC53
	.quad	.LC54
	.long	504
	.long	112
	.quad	.LC55
	.quad	.LC56
	.long	505
	.long	110
	.quad	.LC57
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

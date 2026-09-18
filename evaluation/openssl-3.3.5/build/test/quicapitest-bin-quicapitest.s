	.file	"quicapitest.c"
	.text
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB468:
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
.LFE468:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	ossl_check_SSL_CIPHER_sk_type, @function
ossl_check_SSL_CIPHER_sk_type:
.LFB469:
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
.LFE469:
	.size	ossl_check_SSL_CIPHER_sk_type, .-ossl_check_SSL_CIPHER_sk_type
	.type	safe_sub_time, @function
safe_sub_time:
.LFB506:
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
	jnb	.L6
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L6:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB514:
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
.LFE514:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB515:
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
.LFE515:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB516:
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
.LFE516:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB526:
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
	je	.L15
	call	ossl_time_zero
	jmp	.L17
.L15:
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB539:
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
.LFE539:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB541:
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
.LFE541:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB542:
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
	jns	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB652:
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
.LFE652:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
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
.LFE653:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB702:
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
.LFE702:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB703:
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
.LFE703:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB718:
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
.LFE718:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB719:
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
.LFE719:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.local	libctx
	.comm	libctx,8,8
	.local	defctxnull
	.comm	defctxnull,8,8
	.local	certsdir
	.comm	certsdir,8,8
	.local	cert
	.comm	cert,8,8
	.local	ccert
	.comm	ccert,8,8
	.local	cauthca
	.comm	cauthca,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	cprivkey
	.comm	cprivkey,8,8
	.local	datadir
	.comm	datadir,8,8
	.local	is_fips
	.comm	is_fips,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"Blocking tests not supported in this build"
.LC1:
	.string	"../test/quicapitest.c"
.LC2:
	.string	"cctx"
	.align 8
.LC3:
	.string	"qtest_create_quic_objects(libctx, cctx, sctx, cert, privkey, idx >= 1 ? QTEST_FLAG_BLOCK : 0, &qtserv, &clientquic, NULL, NULL)"
.LC4:
	.string	"localhost"
	.align 8
.LC5:
	.string	"SSL_set_tlsext_host_name(clientquic, \"localhost\")"
	.align 8
.LC6:
	.string	"SSL_set_session(clientquic, sess)"
	.align 8
.LC7:
	.string	"qtest_create_quic_connection(qtserv, clientquic)"
	.align 8
.LC8:
	.string	"BIO_get_fd(ossl_quic_tserver_get0_rbio(qtserv), &ssock)"
.LC9:
	.string	"0"
	.align 8
.LC10:
	.string	"csock = SSL_get_rfd(clientquic)"
	.align 8
.LC11:
	.string	"SSL_write_ex(clientquic, msg, msglen, &numbytes)"
.LC12:
	.string	"msglen"
.LC13:
	.string	"numbytes"
	.align 8
.LC14:
	.string	"wait_until_sock_readable(ssock)"
	.align 8
.LC15:
	.string	"ossl_quic_tserver_read(qtserv, sid, buf, sizeof(buf), &numbytes)"
.LC16:
	.string	"msg"
.LC17:
	.string	"buf"
	.align 8
.LC18:
	.string	"ossl_quic_tserver_write(qtserv, sid, (unsigned char *)msg, msglen, &numbytes)"
	.align 8
.LC19:
	.string	"SSL_read_ex(clientquic, buf, 1, &numbytes)"
.LC20:
	.string	"SSL_ERROR_SYSCALL"
.LC21:
	.string	"SSL_get_error(clientquic, 0)"
.LC22:
	.string	"1"
.LC23:
	.string	"SSL_has_pending(clientquic)"
.LC24:
	.string	"msglen - 1"
.LC25:
	.string	"SSL_pending(clientquic)"
	.align 8
.LC26:
	.string	"SSL_read_ex(clientquic, buf + 1, sizeof(buf) - 1, &numbytes)"
.LC27:
	.string	"ctx"
.LC28:
	.string	"test"
	.align 8
.LC29:
	.string	"SSL_export_keying_material(clientquic, scratch, sizeof(scratch), \"test\", 4, (unsigned char *)\"ctx\", 3, 1)"
	.align 8
.LC30:
	.string	"SSL_session_reused(clientquic)"
.LC31:
	.string	"sess"
	.align 8
.LC32:
	.string	"qtest_shutdown(qtserv, clientquic)"
.LC33:
	.string	"SSL_CTX_up_ref(sctx)"
	.text
	.type	test_quic_write_read, @function
test_quic_write_read:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -36(%rbp)
	movq	msg.2(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -184(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -40(%rbp)
	movq	$-1, -72(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, -196(%rbp)
	jle	.L38
	call	qtest_supports_blocking@PLT
	testl	%eax, %eax
	jne	.L38
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L73
.L38:
	movl	$0, -32(%rbp)
	jmp	.L40
.L72:
	movq	-56(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$68, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	cmpl	$0, -196(%rbp)
	setg	%al
	movzbl	%al, %r9d
	movq	privkey(%rip), %r8
	movq	cert(%rip), %rcx
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-88(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	-80(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	cmpq	$0, -48(%rbp)
	je	.L44
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$79, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
.L44:
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	cmpl	$0, -196(%rbp)
	jle	.L46
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get0_rbio@PLT
	movq	%rax, %rdi
	leaq	-188(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$105, %esi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rfd@PLT
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L78
.L46:
	movq	$0, -72(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L48
.L63:
	movq	msg.2(%rip), %rsi
	movq	-80(%rbp), %rax
	leaq	-184(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	movq	-184(%rbp), %rsi
	movq	-64(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L79
	cmpl	$0, -196(%rbp)
	jle	.L51
.L54:
	movl	-188(%rbp), %eax
	movl	%eax, %edi
	call	wait_until_sock_readable@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L80
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-88(%rbp), %rax
	leaq	-184(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rcx, %r8
	movl	$20, %ecx
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	-184(%rbp), %rax
	testq	%rax, %rax
	je	.L54
	movq	msg.2(%rip), %rsi
	movq	-184(%rbp), %r8
	leaq	-112(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-64(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L82
.L51:
	cmpl	$1, -196(%rbp)
	jle	.L55
	cmpl	$0, -28(%rbp)
	jle	.L55
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L55:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	msg.2(%rip), %rdx
	movq	-88(%rbp), %rax
	leaq	-184(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	cmpl	$1, -196(%rbp)
	jle	.L57
	cmpl	$0, -28(%rbp)
	jle	.L57
	movq	-80(%rbp), %rax
	leaq	-184(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L84
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$131, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L84
	movq	msg.2(%rip), %rsi
	movq	-80(%rbp), %rax
	leaq	-184(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L84
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L85
	jmp	.L84
.L57:
	movq	-80(%rbp), %rax
	leaq	-184(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-184(%rbp), %rsi
	leaq	.LC22(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$147, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L86
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_has_pending@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$148, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-64(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_pending@PLT
	movl	%eax, %esi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$149, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L86
	leaq	-112(%rbp), %rax
	addq	$1, %rax
	movq	-80(%rbp), %rdi
	leaq	-184(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$19, %edx
	movq	%rax, %rsi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	msg.2(%rip), %rsi
	movq	-184(%rbp), %rax
	leaq	1(%rax), %r8
	leaq	-112(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-64(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L86
	addl	$1, -28(%rbp)
.L48:
	cmpl	$1, -28(%rbp)
	jle	.L63
	jmp	.L60
.L85:
	nop
.L60:
	movq	-80(%rbp), %rax
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	-176(%rbp), %rsi
	pushq	$1
	pushq	$3
	movq	%rcx, %r9
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	SSL_export_keying_material@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$157, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	cmpq	$0, -48(%rbp)
	jne	.L65
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L88
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_session@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L67
	jmp	.L43
.L65:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
.L67:
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_shutdown@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$176, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	cmpq	$0, -24(%rbp)
	jne	.L69
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get0_ssl_ctx@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L69
	movq	$0, -24(%rbp)
	jmp	.L43
.L69:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	$0, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -80(%rbp)
	cmpl	$1, -196(%rbp)
	jg	.L91
	addl	$1, -32(%rbp)
.L40:
	cmpl	$1, -32(%rbp)
	jle	.L72
	jmp	.L71
.L91:
	nop
.L71:
	movl	$1, -36(%rbp)
	jmp	.L43
.L74:
	nop
	jmp	.L43
.L75:
	nop
	jmp	.L43
.L76:
	nop
	jmp	.L43
.L77:
	nop
	jmp	.L43
.L78:
	nop
	jmp	.L43
.L79:
	nop
	jmp	.L43
.L80:
	nop
	jmp	.L43
.L81:
	nop
	jmp	.L43
.L82:
	nop
	jmp	.L43
.L83:
	nop
	jmp	.L43
.L84:
	nop
	jmp	.L43
.L86:
	nop
	jmp	.L43
.L87:
	nop
	jmp	.L43
.L88:
	nop
	jmp	.L43
.L89:
	nop
	jmp	.L43
.L90:
	nop
.L43:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L73:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	test_quic_write_read, .-test_quic_write_read
	.section	.rodata
.LC34:
	.string	"Hello World"
	.align 8
.LC35:
	.string	"qtest_create_quic_objects(libctx, cctx, sctx, cert, privkey, QTEST_FLAG_BLOCK, &qtserv, &clientquic, NULL, NULL)"
	.align 8
.LC36:
	.string	"ossl_quic_tserver_stream_new(qtserv, 0, &sid)"
	.align 8
.LC37:
	.string	"ossl_quic_tserver_write(qtserv, sid, (unsigned char *)msg, strlen(msg), &numbytes)"
.LC38:
	.string	"strlen(msg)"
	.align 8
.LC39:
	.string	"SSL_read_ex(clientquic, buf, sizeof(buf), &numbytes)"
	.align 8
.LC40:
	.string	"ossl_quic_tserver_conclude(qtserv, sid)"
.LC41:
	.string	"SSL_ERROR_ZERO_RETURN"
.LC42:
	.string	"40"
.LC43:
	.string	"ossl_time2ms(timediff)"
	.text
	.type	test_fin_only_blocking, @function
test_fin_only_blocking:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	call	qtest_supports_blocking@PLT
	testl	%eax, %eax
	jne	.L93
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L108
.L93:
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$227, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L109
	movq	privkey(%rip), %r8
	movq	cert(%rip), %rcx
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	movl	$1, %r9d
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$228, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L109
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$233, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L109
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$236, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-64(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_stream_new@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L111
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L111
	movq	-80(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$243, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L111
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-80(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %r8
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rbx
	leaq	-112(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L112
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_conclude@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L113
	call	ossl_time_now@PLT
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$258, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L114
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$262, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L115
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rsi
	shrq	$18, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$40, %r9d
	movq	%rsi, %r8
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	je	.L115
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_shutdown@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$270, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L116
	movl	$1, -20(%rbp)
	jmp	.L97
.L109:
	nop
	jmp	.L97
.L110:
	nop
	jmp	.L97
.L111:
	nop
	jmp	.L97
.L112:
	nop
	jmp	.L97
.L113:
	nop
	jmp	.L97
.L114:
	nop
	jmp	.L97
.L115:
	nop
	jmp	.L97
.L116:
	nop
.L97:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-20(%rbp), %eax
.L108:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	test_fin_only_blocking, .-test_fin_only_blocking
	.section	.rodata
.LC44:
	.string	"DEFAULT"
	.align 8
.LC45:
	.string	"SSL_CTX_set_cipher_list(ctx, \"DEFAULT\")"
.LC46:
	.string	"ssl"
	.align 8
.LC47:
	.string	"SSL_set_cipher_list(ssl, \"DEFAULT\")"
.LC48:
	.string	"cipher"
.LC49:
	.string	"cipherids[i]"
.LC50:
	.string	"SSL_CIPHER_get_id(cipher)"
.LC51:
	.string	"j"
.LC52:
	.string	"sk_SSL_CIPHER_num(ciphers)"
	.text
	.type	test_ciphersuites, @function
test_ciphersuites:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -64(%rbp)
	movl	$50336514, -84(%rbp)
	movl	$50336515, -80(%rbp)
	movl	$50336513, -76(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$302, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L130
.L118:
	leaq	.LC44(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L131
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$313, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	leaq	.LC44(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$316, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L133
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L124
.L128:
	movq	-40(%rbp), %rax
	movl	-84(%rbp,%rax,4), %eax
	cmpl	$50336515, %eax
	jne	.L125
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	jne	.L134
.L125:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$325, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	movq	-40(%rbp), %rax
	movl	-84(%rbp,%rax,4), %eax
	movl	%eax, %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$327, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L136
	jmp	.L126
.L134:
	nop
.L126:
	addq	$1, -40(%rbp)
.L124:
	cmpq	$2, -40(%rbp)
	jbe	.L128
	movq	-48(%rbp), %rax
	movl	%eax, %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$332, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L137
	movl	$1, -28(%rbp)
	jmp	.L121
.L131:
	nop
	jmp	.L121
.L132:
	nop
	jmp	.L121
.L133:
	nop
	jmp	.L121
.L135:
	nop
	jmp	.L121
.L136:
	nop
	jmp	.L121
.L137:
	nop
.L121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-28(%rbp), %eax
.L130:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	test_ciphersuites, .-test_ciphersuites
	.section	.rodata
.LC53:
	.base64	"EwEA"
.LC54:
	.base64	"EwIA"
.LC55:
	.base64	"EwMA"
.LC56:
	.base64	"EwQA"
.LC57:
	.base64	"EwUA"
.LC58:
	.string	"clientquic"
	.align 8
.LC59:
	.string	"SSL_CIPHER_find(clientquic, testciphers[i].cipherbytes)"
	.text
	.type	test_cipher_find, @function
test_cipher_find:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	$1, -104(%rbp)
	leaq	.LC54(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	leaq	.LC55(%rip), %rax
	movq	%rax, -80(%rbp)
	movl	$1, -72(%rbp)
	leaq	.LC56(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -56(%rbp)
	leaq	.LC57(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L147
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$364, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L148
	movq	$0, -16(%rbp)
	jmp	.L142
.L145:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$104, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$112, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$369, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L144
	jmp	.L140
.L143:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$112, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L149
.L144:
	addq	$1, -16(%rbp)
.L142:
	cmpq	$4, -16(%rbp)
	jbe	.L145
	movl	$1, -20(%rbp)
	jmp	.L140
.L147:
	nop
	jmp	.L140
.L148:
	nop
	jmp	.L140
.L149:
	nop
.L140:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	test_cipher_find, .-test_cipher_find
	.section	.rodata
	.align 8
.LC60:
	.string	"qtest_create_quic_objects(libctx, cctx, NULL, cert, privkey, 0, &qtserv, &clientquic, NULL, NULL)"
.LC61:
	.string	"OSSL_QUIC1_VERSION"
.LC62:
	.string	"SSL_version(clientquic)"
.LC63:
	.string	"QUICv1"
.LC64:
	.string	"\"QUICv1\""
.LC65:
	.string	"SSL_get_version(clientquic)"
.LC66:
	.string	"SSL_is_quic(clientquic)"
.LC67:
	.string	"SSL_is_tls(clientquic)"
.LC68:
	.string	"SSL_is_dtls(clientquic)"
	.text
	.type	test_version, @function
test_version:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$399, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$403, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$406, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L160
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_version@PLT
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	leaq	.LC64(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L160
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_quic@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$410, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_tls@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$411, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_dtls@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$412, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L161
	movl	$1, -4(%rbp)
	jmp	.L153
.L159:
	nop
	jmp	.L153
.L160:
	nop
	jmp	.L153
.L161:
	nop
.L153:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	test_version, .-test_version
	.type	strip_line_ends, @function
strip_line_ends:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L163
.L165:
	subq	$1, -8(%rbp)
.L163:
	cmpq	$0, -8(%rbp)
	je	.L164
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L165
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L165
.L164:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	strip_line_ends, .-strip_line_ends
	.section	.rodata
.LC69:
	.string	"ssltraceref.txt"
.LC70:
	.string	"reffile"
.LC71:
	.string	"rb"
.LC72:
	.string	"file"
.LC73:
	.string	"wb"
.LC74:
	.string	"ssltraceref-new.txt"
.LC75:
	.string	"newfile"
.LC76:
	.string	"Failed writing new file data"
.LC77:
	.string	"BIO_seek(membio, 0)"
.LC78:
	.string	"Failed reading mem data"
	.align 8
.LC79:
	.string	"Actual and ref line data length mismatch"
.LC80:
	.string	"%s"
.LC81:
	.string	"buf2"
.LC82:
	.string	"buf1"
.LC83:
	.string	"BIO_eof(file)"
.LC84:
	.string	"BIO_eof(membio)"
	.text
	.type	compare_with_file, @function
compare_with_file:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1096, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1096(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	datadir(%rip), %rax
	leaq	.LC69(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$450, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	leaq	.LC71(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$454, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L185
	leaq	.LC73(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$458, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L186
	jmp	.L171
.L172:
	leaq	-1088(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L171
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$463, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L168
.L171:
	leaq	-1088(%rbp), %rcx
	movq	-1096(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	jg	.L172
	movq	-1096(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$467, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L187
	jmp	.L174
.L180:
	leaq	-1088(%rbp), %rcx
	movq	-1096(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	jg	.L175
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L168
.L175:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	strip_line_ends
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	strip_line_ends
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L176
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$478, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	leaq	-576(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$479, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	-1088(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$480, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L168
.L176:
	movq	$0, -48(%rbp)
	jmp	.L177
.L179:
	leaq	-576(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L178
	leaq	-1088(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$63, (%rax)
.L178:
	addq	$1, -48(%rbp)
.L177:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, -48(%rbp)
	jb	.L179
	leaq	-1088(%rbp), %rdi
	leaq	-576(%rbp), %rsi
	leaq	.LC81(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$488, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L188
.L174:
	leaq	-576(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	jg	.L180
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$491, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L189
	movq	-1096(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$492, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L189
	movl	$1, -36(%rbp)
	jmp	.L168
.L184:
	nop
	jmp	.L168
.L185:
	nop
	jmp	.L168
.L186:
	nop
	jmp	.L168
.L187:
	nop
	jmp	.L168
.L188:
	nop
	jmp	.L168
.L189:
	nop
.L168:
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$497, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	compare_with_file, .-compare_with_file
	.section	.rodata
	.align 8
.LC85:
	.string	"cctx = SSL_CTX_new_ex(libctx, NULL, OSSL_QUIC_client_method())"
.LC86:
	.string	"bio = BIO_new(BIO_s_mem())"
.LC87:
	.string	"TLS_AES_128_GCM_SHA256"
	.align 8
.LC88:
	.string	"SSL_CTX_set_ciphersuites(cctx, \"TLS_AES_128_GCM_SHA256\")"
	.align 8
.LC89:
	.string	"qtest_create_quic_objects(libctx, cctx, NULL, cert, privkey, QTEST_FLAG_FAKE_TIME, &qtserv, &clientquic, NULL, NULL)"
.LC90:
	.string	"BIO_pending(bio)"
.LC91:
	.string	"compare_with_file(bio)"
	.text
	.type	test_ssl_trace, @function
test_ssl_trace:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$515, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L198
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$516, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L198
	leaq	.LC87(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	movl	$2, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$518, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-32(%rbp), %rax
	movq	SSL_trace@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_msg_callback@PLT
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$528, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L195
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$534, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L196
	jmp	.L193
.L195:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	compare_with_file
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$537, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L200
.L196:
	movl	$1, -4(%rbp)
	jmp	.L193
.L198:
	nop
	jmp	.L193
.L199:
	nop
	jmp	.L193
.L200:
	nop
.L193:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	test_ssl_trace, .-test_ssl_trace
	.section	.rodata
.LC92:
	.string	"forbidden cipher: %s"
	.text
	.type	ensure_valid_ciphers, @function
ensure_valid_ciphers:
.LFB762:
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
	movq	$0, -24(%rbp)
	jmp	.L202
.L206:
	movq	-24(%rbp), %rax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	subl	$50336513, %eax
	cmpl	$2, %eax
	jbe	.L208
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L205
.L208:
	nop
	addq	$1, -24(%rbp)
.L202:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cltq
	cmpq	%rax, -24(%rbp)
	jb	.L206
	movl	$1, %eax
.L205:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ensure_valid_ciphers, .-ensure_valid_ciphers
	.section	.rodata
	.align 8
.LC93:
	.string	"ctx = SSL_CTX_new_ex(libctx, NULL, OSSL_QUIC_client_method())"
.LC94:
	.string	"SRTP_AEAD_AES_128_GCM"
	.align 8
.LC95:
	.string	"SSL_CTX_set_tlsext_use_srtp(ctx, \"SRTP_AEAD_AES_128_GCM\")"
	.align 8
.LC96:
	.string	"TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_CCM_SHA256:TLS_AES_256_CCM_SHA384:TLS_AES_128_CCM_8_SHA256"
	.align 8
.LC97:
	.string	"SSL_CTX_set_ciphersuites(ctx, QUIC_CIPHERSUITES \":\" NON_QUIC_CIPHERSUITES)"
	.text
	.type	test_quic_forbidden_apis_ctx, @function
test_quic_forbidden_apis_ctx:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$581, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L215
	leaq	.LC94(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_tlsext_use_srtp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$586, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L216
	leaq	.LC96(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$604, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L217
	movl	$1, -4(%rbp)
	jmp	.L211
.L215:
	nop
	jmp	.L211
.L216:
	nop
	jmp	.L211
.L217:
	nop
.L211:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	test_quic_forbidden_apis_ctx, .-test_quic_forbidden_apis_ctx
	.section	.rodata
.LC98:
	.string	"ssl = SSL_new(ctx)"
	.align 8
.LC99:
	.string	"SSL_set_tlsext_use_srtp(ssl, \"SRTP_AEAD_AES_128_GCM\")"
	.align 8
.LC100:
	.string	"SSL_set_ciphersuites(ssl, QUIC_CIPHERSUITES \":\" NON_QUIC_CIPHERSUITES)"
	.align 8
.LC101:
	.string	"ciphers = SSL_get1_supported_ciphers(ssl)"
.LC102:
	.string	"ensure_valid_ciphers(ciphers)"
	.text
	.type	test_quic_forbidden_apis, @function
test_quic_forbidden_apis:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$628, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L227
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$631, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L228
	leaq	.LC94(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_tlsext_use_srtp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$636, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L229
	leaq	.LC96(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$641, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_supported_ciphers@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$647, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L231
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ensure_valid_ciphers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$648, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L231
	movl	$1, -4(%rbp)
	jmp	.L220
.L227:
	nop
	jmp	.L220
.L228:
	nop
	jmp	.L220
.L229:
	nop
	jmp	.L220
.L230:
	nop
	jmp	.L220
.L231:
	nop
.L220:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	test_quic_forbidden_apis, .-test_quic_forbidden_apis
	.section	.rodata
.LC103:
	.string	"UINT64_MAX"
.LC104:
	.string	"SSL_CTX_get_options(ctx)"
.LC105:
	.string	"OSSL_QUIC_PERMITTED_OPTIONS"
.LC106:
	.string	"SSL_get_options(ssl)"
.LC107:
	.string	"SSL_get_read_ahead(ssl)"
.LC108:
	.string	"SSL_set_block_padding(ssl, 0)"
.LC109:
	.string	"SSL_set_block_padding(ssl, 1)"
.LC110:
	.string	"SSL_set_block_padding(ssl, 2)"
	.align 8
.LC111:
	.string	"SSL_set_tlsext_max_fragment_length(ssl, TLSEXT_max_fragment_length_DISABLED)"
	.align 8
.LC112:
	.string	"SSL_set_tlsext_max_fragment_length(ssl, TLSEXT_max_fragment_length_512)"
	.align 8
.LC113:
	.string	"SSL_set_recv_max_early_data(ssl, 1)"
	.align 8
.LC114:
	.string	"SSL_set_max_early_data(ssl, 1)"
	.align 8
.LC115:
	.string	"SSL_read_early_data(ssl, buf, sizeof(buf), &len)"
	.align 8
.LC116:
	.string	"SSL_write_early_data(ssl, buf, sizeof(buf), &len)"
.LC117:
	.string	"SSL_alloc_buffers(ssl)"
.LC118:
	.string	"SSL_free_buffers(ssl)"
	.align 8
.LC119:
	.string	"SSL_set_max_send_fragment(ssl, 2)"
	.align 8
.LC120:
	.string	"SSL_set_split_send_fragment(ssl, 2)"
.LC121:
	.string	"SSL_set_max_pipelines(ssl, 2)"
.LC122:
	.string	"SSL_stateless(ssl)"
.LC123:
	.string	"SSL_get_quiet_shutdown(ssl)"
.LC124:
	.string	"SSL_dup(ssl)"
.LC125:
	.string	"SSL_clear(ssl)"
	.text
	.type	test_quic_forbidden_options, @function
test_quic_forbidden_options:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$667, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	movq	-24(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_options@PLT
	movq	%rax, %rsi
	leaq	.LC103(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$673, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L260
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_max_early_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_recv_max_early_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_quiet_shutdown@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$682, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L261
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	movq	%rax, %rsi
	movabsq	$16633559943, %rdi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$686, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L262
	movq	-16(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	movq	%rax, %rsi
	movabsq	$16633559943, %rdi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$692, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L263
	movq	-16(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	SSL_clear_options@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$698, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L264
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_read_ahead@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$702, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L265
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_read_ahead@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_read_ahead@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$706, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L266
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_block_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$710, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L267
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_block_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$711, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L267
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	SSL_set_block_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$712, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L267
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_tlsext_max_fragment_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$716, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L268
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_tlsext_max_fragment_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$717, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L268
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_recv_max_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$721, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L269
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_max_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$722, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L269
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	SSL_read_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$726, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L270
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	SSL_write_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$727, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L270
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_alloc_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$731, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L271
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$732, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L271
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$736, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L272
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$125, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC120(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$737, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L272
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$126, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$738, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L272
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_stateless@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC122(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$742, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L273
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_quiet_shutdown@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC123(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$746, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L274
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_dup@PLT
	movq	%rax, %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$750, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L275
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_clear@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$754, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L276
	movl	$1, -4(%rbp)
	jmp	.L234
.L259:
	nop
	jmp	.L234
.L260:
	nop
	jmp	.L234
.L261:
	nop
	jmp	.L234
.L262:
	nop
	jmp	.L234
.L263:
	nop
	jmp	.L234
.L264:
	nop
	jmp	.L234
.L265:
	nop
	jmp	.L234
.L266:
	nop
	jmp	.L234
.L267:
	nop
	jmp	.L234
.L268:
	nop
	jmp	.L234
.L269:
	nop
	jmp	.L234
.L270:
	nop
	jmp	.L234
.L271:
	nop
	jmp	.L234
.L272:
	nop
	jmp	.L234
.L273:
	nop
	jmp	.L234
.L274:
	nop
	jmp	.L234
.L275:
	nop
	jmp	.L234
.L276:
	nop
.L234:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	test_quic_forbidden_options, .-test_quic_forbidden_options
	.section	.rodata
	.align 8
.LC126:
	.string	"fd = BIO_socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP, 0)"
.LC127:
	.string	"SSL_set_fd(ssl, fd)"
.LC128:
	.string	"bio = SSL_get_rbio(ssl)"
.LC129:
	.string	"SSL_get_wbio(ssl)"
.LC130:
	.string	"bio"
.LC131:
	.string	"SSL_set_rfd(ssl, fd)"
.LC132:
	.string	"SSL_set_wfd(ssl, fd)"
.LC133:
	.string	"bio = SSL_get_wbio(ssl)"
.LC134:
	.string	"SSL_get_rbio(ssl)"
.LC135:
	.string	"BIO_TYPE_DGRAM"
.LC136:
	.string	"BIO_method_type(bio)"
.LC137:
	.string	"BIO_get_fd(bio, &resfd)"
.LC138:
	.string	"fd"
.LC139:
	.string	"resfd"
	.text
	.type	test_quic_set_fd, @function
test_quic_set_fd:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$-1, -44(%rbp)
	movq	$0, -32(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$772, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L296
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$775, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L297
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC126(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$778, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L298
	cmpl	$0, -52(%rbp)
	jne	.L282
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_fd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$782, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L299
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$784, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L300
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC129(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$786, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L285
	jmp	.L279
.L282:
	cmpl	$1, -52(%rbp)
	jne	.L286
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_rfd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC131(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$789, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L301
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$791, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, %rcx
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L285
	jmp	.L279
.L286:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_wfd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$796, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L303
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$798, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L304
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, %rcx
	leaq	.LC134(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$800, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L305
.L285:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	movl	%eax, %esi
	leaq	.LC135(%rip), %rcx
	leaq	.LC136(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1301, %r9d
	movl	%esi, %r8d
	movl	$804, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L306
	leaq	-44(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$807, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L307
	movl	-44(%rbp), %esi
	movl	-20(%rbp), %edi
	leaq	.LC138(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$808, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L307
	movl	$1, -4(%rbp)
	jmp	.L279
.L296:
	nop
	jmp	.L279
.L297:
	nop
	jmp	.L279
.L298:
	nop
	jmp	.L279
.L299:
	nop
	jmp	.L279
.L300:
	nop
	jmp	.L279
.L301:
	nop
	jmp	.L279
.L302:
	nop
	jmp	.L279
.L303:
	nop
	jmp	.L279
.L304:
	nop
	jmp	.L279
.L305:
	nop
	jmp	.L279
.L306:
	nop
	jmp	.L279
.L307:
	nop
.L279:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	cmpl	$0, -20(%rbp)
	js	.L294
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L294:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	test_quic_set_fd, .-test_quic_set_fd
	.section	.rodata
.LC140:
	.string	"Hello world"
.LC141:
	.string	"cbio"
	.align 8
.LC142:
	.string	"BIO_get_ssl(cbio, &clientquic)"
	.align 8
.LC143:
	.string	"qtest_create_quic_objects(libctx, NULL, NULL, cert, privkey, 0, &qtserv, &clientquic, NULL, NULL)"
.LC144:
	.string	"BIO_write_ex() failed %d, %d"
.LC145:
	.string	"No progress made"
	.align 8
.LC146:
	.string	"ossl_quic_tserver_read(qtserv, sid, buf, sizeof(buf), &readbytes)"
	.align 8
.LC147:
	.string	"ossl_quic_tserver_write(qtserv, sid, (unsigned char *)msg, msglen, &written)"
	.align 8
.LC148:
	.string	"BIO_read_ex(thisbio, buf, sizeof(buf), &readbytes)"
.LC149:
	.string	"SSL_set_mode(clientquic, 0)"
.LC150:
	.string	"stream"
.LC151:
	.string	"SSL_set_mode(stream, 0)"
.LC152:
	.string	"strbio"
	.align 8
.LC153:
	.string	"BIO_set_ssl(thisbio, stream, BIO_CLOSE)"
	.align 8
.LC154:
	.string	"BIO_write_ex(thisbio, msg, msglen, &written)"
	.text
	.type	test_bio_ssl, @function
test_bio_ssl:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -80(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC140(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$841, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L341
	movq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_new_ssl@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC141(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$845, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L342
	leaq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC142(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$852, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L343
	movq	privkey(%rip), %rsi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	pushq	$0
	pushq	$0
	leaq	-104(%rbp), %rcx
	pushq	%rcx
	leaq	-112(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC143(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$855, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L344
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -96(%rbp)
.L323:
	movl	$2, -48(%rbp)
	jmp	.L314
.L317:
	leaq	-120(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L314
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L315
	movq	-24(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, -48(%rbp)
	jmp	.L314
.L315:
	movl	$0, -48(%rbp)
.L314:
	cmpl	$0, -52(%rbp)
	jne	.L316
	cmpl	$0, -60(%rbp)
	jne	.L316
	cmpl	$2, -48(%rbp)
	je	.L317
.L316:
	cmpl	$0, -52(%rbp)
	jne	.L318
	cmpl	$0, -60(%rbp)
	jg	.L318
	cmpl	$1, -48(%rbp)
	je	.L318
	movl	-48(%rbp), %ecx
	movl	-60(%rbp), %eax
	leaq	.LC144(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$875, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	test_openssl_errors@PLT
	movl	$1, -52(%rbp)
.L318:
	cmpl	$0, -56(%rbp)
	jne	.L319
	cmpl	$0, -64(%rbp)
	jg	.L319
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_term_any@PLT
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L319
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_handshake_confirmed@PLT
	movl	%eax, -64(%rbp)
.L319:
	cmpl	$0, -52(%rbp)
	je	.L320
	cmpl	$0, -56(%rbp)
	jne	.L345
.L320:
	addl	$1, -44(%rbp)
	cmpl	$1000, -44(%rbp)
	jne	.L321
	leaq	.LC145(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$891, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L310
.L321:
	cmpl	$0, -60(%rbp)
	jne	.L322
	cmpl	$0, -52(%rbp)
	je	.L323
.L322:
	cmpl	$0, -64(%rbp)
	jg	.L324
	cmpl	$0, -56(%rbp)
	je	.L323
.L324:
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L325
.L339:
	movl	-68(%rbp), %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rax
	leaq	-128(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$901, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L346
	movq	-128(%rbp), %rsi
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-208(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$903, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L346
	movl	-68(%rbp), %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rax
	leaq	-120(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$906, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L347
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	leaq	-128(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	BIO_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC148(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$911, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L348
	movq	-128(%rbp), %rsi
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-208(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L348
	cmpl	$1, -72(%rbp)
	je	.L349
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC149(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$918, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L350
	movl	$4, -68(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_new_stream@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC150(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$929, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L351
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC151(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$932, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L352
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC152(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$936, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L353
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC153(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$939, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L354
	movq	$0, -8(%rbp)
	leaq	-120(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC154(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$943, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L355
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	addl	$1, -72(%rbp)
.L325:
	cmpl	$1, -72(%rbp)
	jle	.L339
	jmp	.L332
.L349:
	nop
.L332:
	movl	$1, -12(%rbp)
	jmp	.L310
.L341:
	nop
	jmp	.L310
.L342:
	nop
	jmp	.L310
.L343:
	nop
	jmp	.L310
.L344:
	nop
	jmp	.L310
.L345:
	nop
	jmp	.L310
.L346:
	nop
	jmp	.L310
.L347:
	nop
	jmp	.L310
.L348:
	nop
	jmp	.L310
.L350:
	nop
	jmp	.L310
.L351:
	nop
	jmp	.L310
.L352:
	nop
	jmp	.L310
.L353:
	nop
	jmp	.L310
.L354:
	nop
	jmp	.L310
.L355:
	nop
.L310:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	test_bio_ssl, .-test_bio_ssl
	.section	.rodata
	.align 8
.LC155:
	.string	"RAND_bytes_ex(libctx, msg, msglen, 0)"
.LC156:
	.string	"Unexpected client failure"
	.align 8
.LC157:
	.string	"ossl_quic_tserver_read(qtserv, 0, buf, sizeof(buf), &readbytes)"
.LC158:
	.string	"No back pressure seen"
	.text
	.type	test_back_pressure, @function
test_back_pressure:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$1024, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$977, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L370
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-32(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	leaq	-56(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$978, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L370
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$981, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L370
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$984, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$985, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L371
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC155(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$987, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L372
	movl	$0, -20(%rbp)
	jmp	.L362
.L367:
	movq	-48(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	jne	.L363
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$3, %eax
	je	.L373
	leaq	.LC156(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L359
.L363:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	leaq	-136(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	%rcx, %r8
	movl	$64, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1006, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L374
	addl	$1, -20(%rbp)
.L362:
	cmpl	$9999, -20(%rbp)
	jle	.L367
	jmp	.L365
.L373:
	nop
.L365:
	cmpl	$10000, -20(%rbp)
	jne	.L368
	leaq	.LC158(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1012, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L359
.L368:
	movl	$1, -4(%rbp)
	jmp	.L359
.L370:
	nop
	jmp	.L359
.L371:
	nop
	jmp	.L359
.L372:
	nop
	jmp	.L359
.L374:
	nop
.L359:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1021, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	test_back_pressure, .-test_back_pressure
	.local	dgram_ctr
	.comm	dgram_ctr,4,4
	.type	dgram_cb, @function
dgram_cb:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L379
	cmpl	$512, -12(%rbp)
	jne	.L380
	movl	dgram_ctr(%rip), %eax
	addl	$1, %eax
	movl	%eax, dgram_ctr(%rip)
	jmp	.L375
.L379:
	nop
	jmp	.L375
.L380:
	nop
.L375:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	dgram_cb, .-dgram_cb
	.section	.rodata
	.align 8
.LC159:
	.string	"SSL_write_ex(clientquic, buf, buflen, &written)"
.LC160:
	.string	"buflen"
.LC161:
	.string	"written"
.LC162:
	.string	"2"
.LC163:
	.string	"dgram_ctr"
	.text
	.type	test_multiple_dgrams, @function
test_multiple_dgrams:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$1400, -24(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1052, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1054, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L388
	movq	-32(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1055, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L388
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1056, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L388
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1059, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L388
	movl	$0, dgram_ctr(%rip)
	movq	-40(%rbp), %rax
	leaq	dgram_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_msg_callback@PLT
	movq	-40(%rbp), %rax
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC159(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1064, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L389
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC160(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1065, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L389
	movl	dgram_ctr(%rip), %esi
	leaq	.LC162(%rip), %rcx
	leaq	.LC163(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$1067, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L389
	movl	$1, -4(%rbp)
	jmp	.L384
.L388:
	nop
	jmp	.L384
.L389:
	nop
.L384:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	test_multiple_dgrams, .-test_multiple_dgrams
	.type	non_io_retry_cert_verify_cb, @function
non_io_retry_cert_verify_cb:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L391
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_ex_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L392
.L391:
	movl	$0, %eax
	jmp	.L393
.L392:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L394
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setg	%al
	movzbl	%al, %eax
	jmp	.L393
.L394:
	movl	$1, %eax
.L393:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	non_io_retry_cert_verify_cb, .-non_io_retry_cert_verify_cb
	.section	.rodata
	.align 8
.LC164:
	.string	"qtest_create_quic_objects(libctx, cctx, NULL, cert, privkey, flags, &qtserv, &clientquic, NULL, NULL)"
	.align 8
.LC165:
	.string	"qtest_create_quic_connection_ex(qtserv, clientquic, SSL_ERROR_WANT_RETRY_VERIFY)"
.LC166:
	.string	"SSL_RETRY_VERIFY"
.LC167:
	.string	"SSL_want(clientquic)"
	.text
	.type	test_non_io_retry, @function
test_non_io_retry:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L396
	call	qtest_supports_blocking@PLT
	testl	%eax, %eax
	jne	.L396
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1112, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L403
.L396:
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L404
	leaq	-36(%rbp), %rdx
	leaq	non_io_retry_cert_verify_cb(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
	cmpl	$0, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movl	-8(%rbp), %r8d
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L405
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC165(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L405
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	movl	%eax, %esi
	leaq	.LC166(%rip), %rcx
	leaq	.LC167(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$1126, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L405
	movl	$1, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L406
	movl	$1, -4(%rbp)
	jmp	.L399
.L404:
	nop
	jmp	.L399
.L405:
	nop
	jmp	.L399
.L406:
	nop
.L399:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
.L403:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	test_non_io_retry, .-test_non_io_retry
	.local	use_session_cb_cnt
	.comm	use_session_cb_cnt,4,4
	.local	find_session_cb_cnt
	.comm	find_session_cb_cnt,4,4
	.section	.rodata
.LC168:
	.string	"Identity"
	.section	.data.rel.local,"aw"
	.align 8
	.type	pskid, @object
	.size	pskid, 8
pskid:
	.quad	.LC168
	.local	serverpsk
	.comm	serverpsk,8,8
	.local	clientpsk
	.comm	clientpsk,8,8
	.text
	.type	use_session_cb, @function
use_session_cb:
.LFB773:
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
	movl	use_session_cb_cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, use_session_cb_cnt(%rip)
	movq	clientpsk(%rip), %rax
	testq	%rax, %rax
	jne	.L408
	movl	$0, %eax
	jmp	.L409
.L408:
	movq	clientpsk(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
	movq	clientpsk(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	pskid(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	pskid(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
.L409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	use_session_cb, .-use_session_cb
	.type	find_session_cb, @function
find_session_cb:
.LFB774:
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
	movl	find_session_cb_cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, find_session_cb_cnt(%rip)
	movq	serverpsk(%rip), %rax
	testq	%rax, %rax
	jne	.L411
	movl	$0, %eax
	jmp	.L412
.L411:
	movq	pskid(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, -24(%rbp)
	jne	.L413
	movq	pskid(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L414
.L413:
	movl	$0, %eax
	jmp	.L412
.L414:
	movq	serverpsk(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
	movq	serverpsk(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	find_session_cb, .-find_session_cb
	.section	.rodata
	.align 8
.LC169:
	.string	"qtest_create_quic_objects(libctx, cctx, NULL, NULL, NULL, 0, &qtserv, &clientquic, NULL, NULL)"
.LC170:
	.string	"clientpsk"
.LC171:
	.string	"find_session_cb_cnt"
.LC172:
	.string	"use_session_cb_cnt"
	.text
	.type	test_quic_psk, @function
test_quic_psk:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1190, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-24(%rbp), %rdx
	pushq	%rdx
	leaq	-32(%rbp), %rdx
	pushq	%rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC169(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movq	-24(%rbp), %rax
	leaq	use_session_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_psk_use_session_callback@PLT
	movq	-32(%rbp), %rax
	leaq	find_session_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_psk_find_session_cb@PLT
	movl	$0, use_session_cb_cnt(%rip)
	movl	$0, find_session_cb_cnt(%rip)
	movq	-24(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	create_a_psk@PLT
	movq	%rax, serverpsk(%rip)
	movq	serverpsk(%rip), %rax
	movq	%rax, clientpsk(%rip)
	movq	clientpsk(%rip), %rax
	leaq	.LC170(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1203, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L424
	movq	clientpsk(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L425
	movl	find_session_cb_cnt(%rip), %esi
	leaq	.LC171(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$1209, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L425
	movl	use_session_cb_cnt(%rip), %esi
	leaq	.LC172(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$1210, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L425
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L425
	movl	$1, -4(%rbp)
	jmp	.L418
.L423:
	nop
	jmp	.L418
.L424:
	nop
	jmp	.L418
.L425:
	nop
.L418:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	clientpsk(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	serverpsk(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, serverpsk(%rip)
	movq	serverpsk(%rip), %rax
	movq	%rax, clientpsk(%rip)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	test_quic_psk, .-test_quic_psk
	.section	.rodata
.LC173:
	.string	"sctx"
	.align 8
.LC174:
	.string	"SSL_CTX_load_verify_file(sctx, cauthca)"
	.align 8
.LC175:
	.string	"SSL_CTX_use_certificate_chain_file(cctx, ccert)"
	.align 8
.LC176:
	.string	"SSL_CTX_use_PrivateKey_file(cctx, cprivkey, SSL_FILETYPE_PEM)"
	.align 8
.LC177:
	.string	"qtest_create_quic_objects(libctx, cctx, sctx, cert, privkey, 0, &qtserv, &clientquic, NULL, NULL)"
	.align 8
.LC178:
	.string	"ssl_ctx_add_large_cert_chain(libctx, cctx, ccert)"
	.align 8
.LC179:
	.string	"ssl_ctx_add_large_cert_chain(libctx, sctx, cert)"
	.align 8
.LC180:
	.string	"ossl_quic_tserver_write(qtserv, 0, (unsigned char *)msg, msglen, &numbytes)"
	.text
	.type	test_client_auth, @function
test_client_auth:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	call	TLS_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	msg.1(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -88(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1240, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L446
	movq	-24(%rbp), %rax
	leaq	.LC173(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1240, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L446
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_verify@PLT
	movq	cauthca(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC174(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L447
	cmpl	$0, -100(%rbp)
	jle	.L431
	movq	ccert(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate_chain_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movq	cprivkey(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC176(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
.L431:
	movq	privkey(%rip), %r8
	movq	cert(%rip), %rcx
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-40(%rbp), %rdi
	pushq	%rdi
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	movl	$0, %r9d
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L449
	cmpl	$1, -100(%rbp)
	jle	.L434
	movq	ccert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_ctx_add_large_cert_chain@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1261, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L450
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_ctx_add_large_cert_chain@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC179(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1262, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L450
.L434:
	cmpl	$0, -100(%rbp)
	jne	.L436
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1267, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L451
	movl	$1, -4(%rbp)
	jmp	.L429
.L436:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1275, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L452
	movq	msg.1(%rip), %rsi
	movq	-40(%rbp), %rax
	leaq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1279, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L453
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1280, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L453
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	msg.1(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	-88(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC180(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1284, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L454
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	movq	-40(%rbp), %rax
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L455
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1293, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L455
	movq	msg.1(%rip), %rsi
	movq	-88(%rbp), %r8
	leaq	-80(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-32(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1294, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L455
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_shutdown@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1297, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movl	$1, -4(%rbp)
	jmp	.L429
.L446:
	nop
	jmp	.L429
.L447:
	nop
	jmp	.L429
.L448:
	nop
	jmp	.L429
.L449:
	nop
	jmp	.L429
.L450:
	nop
	jmp	.L429
.L451:
	nop
	jmp	.L429
.L452:
	nop
	jmp	.L429
.L453:
	nop
	jmp	.L429
.L454:
	nop
	jmp	.L429
.L455:
	nop
	jmp	.L429
.L456:
	nop
.L429:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	test_client_auth, .-test_client_auth
	.section	.rodata
	.align 8
.LC181:
	.string	"SSL_set_alpn_protos(clientquic, NULL, 0)"
.LC182:
	.string	"ret"
.LC183:
	.string	"SSL_ERROR_SSL"
	.align 8
.LC184:
	.string	"SSL_get_error(clientquic, ret)"
.LC185:
	.string	"SSL_ERROR_WANT_READ"
	.text
	.type	test_alpn, @function
test_alpn:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC87(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1328, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L468
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1331, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L469
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	movl	$2, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1332, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L469
	cmpl	$0, -52(%rbp)
	jne	.L462
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_alpn_protos@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC181(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1344, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L470
.L462:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC182(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1349, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L471
	cmpl	$0, -52(%rbp)
	jne	.L464
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC183(%rip), %rcx
	leaq	.LC184(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1353, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L465
	jmp	.L459
.L464:
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC185(%rip), %rcx
	leaq	.LC184(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$1357, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L472
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L472
.L465:
	movl	$1, -4(%rbp)
	jmp	.L459
.L468:
	nop
	jmp	.L459
.L469:
	nop
	jmp	.L459
.L470:
	nop
	jmp	.L459
.L471:
	nop
	jmp	.L459
.L472:
	nop
.L459:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	test_alpn, .-test_alpn
	.section	.rodata
.LC186:
	.string	"SSL_get_shutdown(clientquic)"
.LC187:
	.string	"SSL_shutdown(clientquic)"
.LC188:
	.string	"SSL_SENT_SHUTDOWN"
	.align 8
.LC189:
	.string	"SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN"
	.text
	.type	test_get_shutdown, @function
test_get_shutdown:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1381, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L482
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	$2, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1382, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L482
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1387, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L482
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_shutdown@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1390, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L483
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC187(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1393, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L484
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_shutdown@PLT
	movl	%eax, %esi
	leaq	.LC188(%rip), %rcx
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1396, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L485
.L479:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$100, %edi
	call	qtest_add_time@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	testl	%eax, %eax
	je	.L479
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_shutdown@PLT
	movl	%eax, %esi
	leaq	.LC189(%rip), %rcx
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$1404, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L486
	movl	$1, -4(%rbp)
	jmp	.L476
.L482:
	nop
	jmp	.L476
.L483:
	nop
	jmp	.L476
.L484:
	nop
	jmp	.L476
.L485:
	nop
	jmp	.L476
.L486:
	nop
.L476:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	test_get_shutdown, .-test_get_shutdown
	.section	.rodata
.LC190:
	.string	"SSL_get_error(*stream, 0)"
	.text
	.type	unreliable_client_read, @function
unreliable_client_read:
.LFB779:
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
	movl	$0, -4(%rbp)
	jmp	.L488
.L493:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L489
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_accept_stream@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L489:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L490
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	je	.L491
	movl	$1, %eax
	jmp	.L492
.L491:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC185(%rip), %rcx
	leaq	.LC190(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$1439, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L490
	movl	$0, %eax
	jmp	.L492
.L490:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, %edi
	call	qtest_add_time@PLT
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_wait_for_timeout@PLT
	addl	$1, -4(%rbp)
.L488:
	cmpl	$1999, -4(%rbp)
	jle	.L493
	leaq	.LC145(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1447, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L492:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	unreliable_client_read, .-unreliable_client_read
	.type	unreliable_server_read, @function
unreliable_server_read:
.LFB780:
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
	movl	$0, -4(%rbp)
	jmp	.L495
.L498:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	je	.L496
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jbe	.L496
	movl	$1, %eax
	jmp	.L497
.L496:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	movl	$1, %edi
	call	qtest_add_time@PLT
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_wait_for_timeout@PLT
	addl	$1, -4(%rbp)
.L495:
	cmpl	$1999, -4(%rbp)
	jle	.L498
	leaq	.LC145(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1469, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L497:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	unreliable_server_read, .-unreliable_server_read
	.section	.rodata
.LC191:
	.string	"Hello world!"
	.align 8
.LC192:
	.string	"qtest_create_quic_objects(libctx, cctx, NULL, cert, privkey, flags, &qtserv, &clientquic, &fault, NULL)"
	.align 8
.LC193:
	.string	"SSL_set_incoming_stream_policy(clientquic, SSL_INCOMING_STREAM_POLICY_ACCEPT, 0)"
	.align 8
.LC194:
	.string	"SSL_set_default_stream_mode(clientquic, SSL_DEFAULT_STREAM_MODE_NONE)"
	.align 8
.LC195:
	.string	"unreliable_client_read(clientquic, &stream[j], buf, sizeof(buf), &readbytes, qtserv)"
	.align 8
.LC196:
	.string	"SSL_write_ex(stream[j], (unsigned char *)msg, msglen, &written)"
	.align 8
.LC197:
	.string	"unreliable_server_read(qtserv, sid, buf, sizeof(buf), &readbytes, clientquic)"
	.text
	.type	test_noisy_dgram, @function
test_noisy_dgram:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -96(%rbp)
	leaq	.LC191(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -56(%rbp)
	movl	$6, -28(%rbp)
	movq	$0, -200(%rbp)
	cmpl	$1, -212(%rbp)
	jne	.L500
	orl	$8, -28(%rbp)
.L500:
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1497, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L523
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %rsi
	pushq	$0
	leaq	-200(%rbp), %rcx
	pushq	%rcx
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	leaq	-88(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC192(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1498, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L523
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1504, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L524
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_incoming_stream_policy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC193(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1507, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L525
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_default_stream_mode@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC194(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1510, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L525
	movq	$0, -24(%rbp)
	jmp	.L507
.L521:
	movq	-88(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_stream_new@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L526
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, %edi
	call	qtest_add_time@PLT
	movq	$0, -16(%rbp)
	jmp	.L509
.L514:
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	leaq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1526, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L527
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC161(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1529, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L527
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, %edi
	call	qtest_add_time@PLT
	movq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rsi
	movq	-64(%rbp), %rax
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	unreliable_client_read
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1539, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L528
	movq	-112(%rbp), %rsi
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-192(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1542, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L528
	addq	$1, -16(%rbp)
.L509:
	cmpq	$19, -16(%rbp)
	jbe	.L514
	movq	$0, -16(%rbp)
	jmp	.L515
.L520:
	movq	-24(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	leaq	-104(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC196(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1548, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L529
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC161(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1550, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L529
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, %edi
	call	qtest_add_time@PLT
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	unreliable_server_read
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC197(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1561, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L530
	movq	-112(%rbp), %rsi
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-192(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1563, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L530
	addq	$1, -16(%rbp)
.L515:
	cmpq	$19, -16(%rbp)
	jbe	.L520
	addq	$1, -24(%rbp)
.L507:
	cmpq	$1, -24(%rbp)
	jbe	.L521
	movl	$1, -4(%rbp)
	jmp	.L503
.L523:
	nop
	jmp	.L503
.L524:
	nop
	jmp	.L503
.L525:
	nop
	jmp	.L503
.L526:
	nop
	jmp	.L503
.L527:
	nop
	jmp	.L503
.L528:
	nop
	jmp	.L503
.L529:
	nop
	jmp	.L503
.L530:
	nop
.L503:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	test_noisy_dgram, .-test_noisy_dgram
	.section	.rodata
	.align 8
.LC198:
	.string	"msg = OPENSSL_zalloc(TEST_SINGLE_WRITE_SIZE)"
	.align 8
.LC199:
	.string	"recvbuf = OPENSSL_zalloc(TEST_SINGLE_WRITE_SIZE)"
	.align 8
.LC200:
	.string	"qtest_fault_set_bw_limit(fault, 1000, 1000, 0)"
.LC201:
	.string	"Retrying to send: %llu"
.LC202:
	.string	"SSL_ERROR_WANT_WRITE"
.LC203:
	.string	"Remaining to send: %llu"
.LC204:
	.string	"Remaining to recv: %llu"
.LC205:
	.string	"No progress on recv: %llu"
	.align 8
.LC206:
	.string	"BW limit: %d Bytes/ms Real bandwidth reached: %llu Bytes/ms"
.LC207:
	.string	"TEST_BW_LIMIT"
.LC208:
	.string	"real_bw"
	.text
	.type	test_bw_limit, @function
test_bw_limit:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$2097152, -32(%rbp)
	movq	$2097152, -40(%rbp)
	movl	$6, -52(%rbp)
	movq	$0, -104(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1601, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L548
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rsi
	pushq	$0
	leaq	-104(%rbp), %rcx
	pushq	%rcx
	leaq	-72(%rbp), %rcx
	pushq	%rcx
	leaq	-80(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC192(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1602, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L548
	leaq	.LC1(%rip), %rax
	movl	$1608, %edx
	movq	%rax, %rsi
	movl	$16384, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC198(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1608, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L549
	leaq	.LC1(%rip), %rax
	movl	$1609, %edx
	movq	%rax, %rsi
	movl	$16384, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC199(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1609, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L549
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$1000, %edx
	movl	$1000, %esi
	movq	%rax, %rdi
	call	qtest_fault_set_bw_limit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC200(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1613, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L550
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1616, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L551
	call	qtest_start_stopwatch@PLT
	jmp	.L539
.L545:
	movl	$1, %edi
	call	qtest_add_time@PLT
	cmpq	$0, -32(%rbp)
	je	.L540
	movq	-32(%rbp), %rax
	movl	$16384, %edx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	jne	.L541
	movq	-32(%rbp), %rax
	leaq	.LC201(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1629, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC202(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$1630, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L542
	jmp	.L534
.L541:
	movq	-88(%rbp), %rax
	subq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC203(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1634, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L542
.L540:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
.L542:
	movq	-40(%rbp), %rax
	movl	$16384, %edx
	cmpq	%rdx, %rax
	movq	%rdx, %rcx
	cmovbe	%rax, %rcx
	movq	-80(%rbp), %rax
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	je	.L543
	movq	-96(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L543
	movq	-96(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC204(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1646, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L544
.L543:
	movq	-40(%rbp), %rax
	leaq	.LC205(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1648, %esi
	movl	$0, %eax
	call	test_info@PLT
.L544:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
.L539:
	cmpq	$0, -40(%rbp)
	jne	.L545
	call	qtest_get_stopwatch_time@PLT
	movq	%rax, %rsi
	movl	$2097152, %eax
	movl	$0, %edx
	divq	%rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	leaq	.LC206(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rcx, %r8
	movl	$1000, %ecx
	movl	$1654, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-64(%rbp), %rsi
	leaq	.LC207(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1000, %r9d
	movq	%rsi, %r8
	movl	$1657, %esi
	movq	%rax, %rdi
	call	test_uint64_t_lt@PLT
	testl	%eax, %eax
	je	.L552
	movl	$1, -4(%rbp)
	jmp	.L534
.L548:
	nop
	jmp	.L534
.L549:
	nop
	jmp	.L534
.L550:
	nop
	jmp	.L534
.L551:
	nop
	jmp	.L534
.L552:
	nop
.L534:
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1662, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1663, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	test_bw_limit, .-test_bw_limit
	.section	.rodata
	.align 8
	.type	retry_scid_1, @object
	.size	retry_scid_1, 8
retry_scid_1:
	.zero	8
	.type	disable_active_migration_1, @object
	.size	disable_active_migration_1, 1
disable_active_migration_1:
	.zero	1
	.type	malformed_stateless_reset_token_1, @object
	.size	malformed_stateless_reset_token_1, 2
malformed_stateless_reset_token_1:
	.ascii	"\002\377"
	.type	malformed_stateless_reset_token_2, @object
	.size	malformed_stateless_reset_token_2, 1
malformed_stateless_reset_token_2:
	.ascii	"\001"
	.align 8
	.type	malformed_stateless_reset_token_3, @object
	.size	malformed_stateless_reset_token_3, 15
malformed_stateless_reset_token_3:
	.zero	15
	.align 16
	.type	malformed_stateless_reset_token_4, @object
	.size	malformed_stateless_reset_token_4, 17
malformed_stateless_reset_token_4:
	.zero	17
	.type	malformed_preferred_addr_1, @object
	.size	malformed_preferred_addr_1, 2
malformed_preferred_addr_1:
	.ascii	"\r\377"
	.align 32
	.type	malformed_preferred_addr_2, @object
	.size	malformed_preferred_addr_2, 42
malformed_preferred_addr_2:
	.string	"\r("
	.zero	39
	.align 32
	.type	malformed_preferred_addr_3, @object
	.size	malformed_preferred_addr_3, 64
malformed_preferred_addr_3:
	.string	"\r>"
	.zero	61
	.align 32
	.type	malformed_preferred_addr_4, @object
	.size	malformed_preferred_addr_4, 44
malformed_preferred_addr_4:
	.string	"\r)"
	.zero	23
	.string	"\001U"
	.zero	15
	.type	malformed_unknown_1, @object
	.size	malformed_unknown_1, 1
malformed_unknown_1:
	.ascii	"\377"
	.type	malformed_unknown_2, @object
	.size	malformed_unknown_2, 2
malformed_unknown_2:
	.ascii	"UU"
	.type	malformed_unknown_3, @object
	.size	malformed_unknown_3, 3
malformed_unknown_3:
	.base64	"VVUB"
	.type	ack_delay_exp, @object
	.size	ack_delay_exp, 1
ack_delay_exp:
	.ascii	"\003"
	.align 16
	.type	stateless_reset_token, @object
	.size	stateless_reset_token, 16
stateless_reset_token:
	.string	"B"
	.zero	14
	.align 32
	.type	preferred_addr, @object
	.size	preferred_addr, 43
preferred_addr:
	.base64	"RERERFVVZmZmZmZmZmZmZmZmZmZmZnd3Aqq7mZmZmZmZmZmZmZmZmZmZmQ=="
	.align 16
	.type	long_cid, @object
	.size	long_cid, 21
long_cid:
	.string	"B"
	.zero	19
	.type	excess_ack_delay_exp, @object
	.size	excess_ack_delay_exp, 1
excess_ack_delay_exp:
	.ascii	"\025"
	.align 8
	.type	excess_max_ack_delay, @object
	.size	excess_max_ack_delay, 8
excess_max_ack_delay:
	.base64	"wAAAAAAAQAA="
	.align 8
	.type	excess_initial_max_streams, @object
	.size	excess_initial_max_streams, 8
excess_initial_max_streams:
	.base64	"0AAAAAAAAAE="
	.align 8
	.type	undersize_udp_payload_size, @object
	.size	undersize_udp_payload_size, 8
undersize_udp_payload_size:
	.base64	"wAAAAAAABK8="
	.align 8
	.type	undersize_active_conn_id_limit, @object
	.size	undersize_active_conn_id_limit, 8
undersize_active_conn_id_limit:
	.base64	"wAAAAAAAAAE="
	.align 8
	.type	bogus_int, @object
	.size	bogus_int, 9
bogus_int:
	.zero	9
	.type	int_with_trailer, @object
	.size	int_with_trailer, 2
int_with_trailer:
	.string	"\001"
	.align 8
.LC209:
	.string	"ORIG_DCID appears multiple times"
	.align 8
.LC210:
	.string	"INITIAL_SCID appears multiple times"
	.align 8
.LC211:
	.string	"INITIAL_MAX_DATA appears multiple times"
	.align 8
.LC212:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_LOCAL appears multiple times"
	.align 8
.LC213:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_REMOTE appears multiple times"
	.align 8
.LC214:
	.string	"INITIAL_MAX_STREAM_DATA_UNI appears multiple times"
	.align 8
.LC215:
	.string	"INITIAL_MAX_STREAMS_BIDI appears multiple times"
	.align 8
.LC216:
	.string	"INITIAL_MAX_STREAMS_UNI appears multiple times"
	.align 8
.LC217:
	.string	"MAX_IDLE_TIMEOUT appears multiple times"
	.align 8
.LC218:
	.string	"MAX_UDP_PAYLOAD_SIZE appears multiple times"
	.align 8
.LC219:
	.string	"ACTIVE_CONN_ID_LIMIT appears multiple times"
	.align 8
.LC220:
	.string	"DISABLE_ACTIVE_MIGRATION appears multiple times"
	.align 8
.LC221:
	.string	"INITIAL_SCID was not sent but is required"
	.align 8
.LC222:
	.string	"ORIG_DCID was not sent but is required"
	.align 8
.LC223:
	.string	"RETRY_SCID sent when not performing a retry"
	.align 8
.LC224:
	.string	"DISABLE_ACTIVE_MIGRATION is malformed"
	.align 8
.LC225:
	.string	"STATELESS_RESET_TOKEN is malformed"
.LC226:
	.string	"PREFERRED_ADDR is malformed"
.LC227:
	.string	"bad transport parameter"
.LC228:
	.string	"ACK_DELAY_EXP is malformed"
.LC229:
	.string	"MAX_ACK_DELAY is malformed"
	.align 8
.LC230:
	.string	"INITIAL_MAX_STREAMS_BIDI is malformed"
	.align 8
.LC231:
	.string	"INITIAL_MAX_STREAMS_UNI is malformed"
	.align 8
.LC232:
	.string	"MAX_UDP_PAYLOAD_SIZE is malformed"
	.align 8
.LC233:
	.string	"ACTIVE_CONN_ID_LIMIT is malformed"
	.align 8
.LC234:
	.string	"ACK_DELAY_EXP appears multiple times"
	.align 8
.LC235:
	.string	"MAX_ACK_DELAY appears multiple times"
	.align 8
.LC236:
	.string	"STATELESS_RESET_TOKEN appears multiple times"
	.align 8
.LC237:
	.string	"PREFERRED_ADDR appears multiple times"
	.align 8
.LC238:
	.string	"ORIG_DCID does not match expected value"
	.align 8
.LC239:
	.string	"INITIAL_SCID does not match expected value"
.LC240:
	.string	"ORIG_DCID is malformed"
.LC241:
	.string	"INITIAL_SCID is malformed"
.LC242:
	.string	"INITIAL_MAX_DATA is malformed"
	.align 8
.LC243:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_LOCAL is malformed"
	.align 8
.LC244:
	.string	"INITIAL_MAX_STREAM_DATA_BIDI_REMOTE is malformed"
	.align 8
.LC245:
	.string	"INITIAL_MAX_STREAM_DATA_UNI is malformed"
.LC246:
	.string	"MAX_IDLE_TIMEOUT is malformed"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	tparam_tests, @object
	.size	tparam_tests, 3040
tparam_tests:
	.quad	0
	.long	0
	.zero	4
	.quad	.LC209
	.zero	16
	.quad	15
	.long	0
	.zero	4
	.quad	.LC210
	.zero	16
	.quad	4
	.long	0
	.zero	4
	.quad	.LC211
	.zero	16
	.quad	5
	.long	0
	.zero	4
	.quad	.LC212
	.zero	16
	.quad	6
	.long	0
	.zero	4
	.quad	.LC213
	.zero	16
	.quad	7
	.long	0
	.zero	4
	.quad	.LC214
	.zero	16
	.quad	8
	.long	0
	.zero	4
	.quad	.LC215
	.zero	16
	.quad	9
	.long	0
	.zero	4
	.quad	.LC216
	.zero	16
	.quad	1
	.long	0
	.zero	4
	.quad	.LC217
	.zero	16
	.quad	3
	.long	0
	.zero	4
	.quad	.LC218
	.zero	16
	.quad	14
	.long	0
	.zero	4
	.quad	.LC219
	.zero	16
	.quad	12
	.long	0
	.zero	4
	.quad	.LC220
	.zero	16
	.quad	15
	.long	1
	.zero	4
	.quad	.LC221
	.zero	16
	.quad	0
	.long	1
	.zero	4
	.quad	.LC222
	.zero	16
	.quad	16
	.long	2
	.zero	4
	.quad	.LC223
	.quad	retry_scid_1
	.quad	8
	.quad	12
	.long	5
	.zero	4
	.quad	.LC224
	.quad	disable_active_migration_1
	.quad	1
	.quad	61937
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	.LC225
	.quad	malformed_stateless_reset_token_1
	.quad	2
	.quad	2
	.long	2
	.zero	4
	.quad	.LC225
	.quad	malformed_stateless_reset_token_2
	.quad	1
	.quad	2
	.long	2
	.zero	4
	.quad	.LC225
	.quad	malformed_stateless_reset_token_3
	.quad	15
	.quad	2
	.long	2
	.zero	4
	.quad	.LC225
	.quad	malformed_stateless_reset_token_4
	.quad	17
	.quad	2
	.long	2
	.zero	4
	.quad	.LC225
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	.LC226
	.quad	malformed_preferred_addr_1
	.quad	2
	.quad	0
	.long	4
	.zero	4
	.quad	.LC226
	.quad	malformed_preferred_addr_2
	.quad	42
	.quad	0
	.long	4
	.zero	4
	.quad	.LC226
	.quad	malformed_preferred_addr_3
	.quad	64
	.quad	0
	.long	4
	.zero	4
	.quad	.LC226
	.quad	malformed_preferred_addr_4
	.quad	44
	.quad	0
	.long	4
	.zero	4
	.quad	.LC227
	.quad	malformed_unknown_1
	.quad	1
	.quad	0
	.long	4
	.zero	4
	.quad	.LC227
	.quad	malformed_unknown_2
	.quad	2
	.quad	0
	.long	4
	.zero	4
	.quad	.LC227
	.quad	malformed_unknown_3
	.quad	3
	.quad	10
	.long	2
	.zero	4
	.quad	.LC228
	.quad	excess_ack_delay_exp
	.quad	1
	.quad	11
	.long	2
	.zero	4
	.quad	.LC229
	.quad	excess_max_ack_delay
	.quad	8
	.quad	8
	.long	5
	.zero	4
	.quad	.LC230
	.quad	excess_initial_max_streams
	.quad	8
	.quad	9
	.long	5
	.zero	4
	.quad	.LC231
	.quad	excess_initial_max_streams
	.quad	8
	.quad	3
	.long	5
	.zero	4
	.quad	.LC232
	.quad	undersize_udp_payload_size
	.quad	8
	.quad	14
	.long	5
	.zero	4
	.quad	.LC233
	.quad	undersize_active_conn_id_limit
	.quad	8
	.quad	10
	.long	3
	.zero	4
	.quad	.LC234
	.quad	ack_delay_exp
	.quad	1
	.quad	11
	.long	3
	.zero	4
	.quad	.LC235
	.quad	ack_delay_exp
	.quad	1
	.quad	2
	.long	3
	.zero	4
	.quad	.LC236
	.quad	stateless_reset_token
	.quad	16
	.quad	13
	.long	3
	.zero	4
	.quad	.LC237
	.quad	preferred_addr
	.quad	43
	.quad	0
	.long	6
	.zero	4
	.quad	.LC238
	.zero	16
	.quad	15
	.long	6
	.zero	4
	.quad	.LC239
	.zero	16
	.quad	0
	.long	5
	.zero	4
	.quad	.LC240
	.quad	long_cid
	.quad	21
	.quad	15
	.long	5
	.zero	4
	.quad	.LC241
	.quad	long_cid
	.quad	21
	.quad	4
	.long	5
	.zero	4
	.quad	.LC242
	.quad	0
	.quad	0
	.quad	4
	.long	5
	.zero	4
	.quad	.LC242
	.quad	bogus_int
	.quad	9
	.quad	4
	.long	5
	.zero	4
	.quad	.LC242
	.quad	int_with_trailer
	.quad	2
	.quad	5
	.long	5
	.zero	4
	.quad	.LC243
	.quad	0
	.quad	0
	.quad	5
	.long	5
	.zero	4
	.quad	.LC243
	.quad	bogus_int
	.quad	9
	.quad	5
	.long	5
	.zero	4
	.quad	.LC243
	.quad	int_with_trailer
	.quad	2
	.quad	6
	.long	5
	.zero	4
	.quad	.LC244
	.quad	0
	.quad	0
	.quad	6
	.long	5
	.zero	4
	.quad	.LC244
	.quad	bogus_int
	.quad	9
	.quad	6
	.long	5
	.zero	4
	.quad	.LC244
	.quad	int_with_trailer
	.quad	2
	.quad	7
	.long	5
	.zero	4
	.quad	.LC245
	.quad	0
	.quad	0
	.quad	7
	.long	5
	.zero	4
	.quad	.LC245
	.quad	bogus_int
	.quad	9
	.quad	7
	.long	5
	.zero	4
	.quad	.LC245
	.quad	int_with_trailer
	.quad	2
	.quad	10
	.long	5
	.zero	4
	.quad	.LC228
	.quad	0
	.quad	0
	.quad	10
	.long	5
	.zero	4
	.quad	.LC228
	.quad	bogus_int
	.quad	9
	.quad	10
	.long	5
	.zero	4
	.quad	.LC228
	.quad	int_with_trailer
	.quad	2
	.quad	11
	.long	5
	.zero	4
	.quad	.LC229
	.quad	0
	.quad	0
	.quad	11
	.long	5
	.zero	4
	.quad	.LC229
	.quad	bogus_int
	.quad	9
	.quad	11
	.long	5
	.zero	4
	.quad	.LC229
	.quad	int_with_trailer
	.quad	2
	.quad	8
	.long	5
	.zero	4
	.quad	.LC230
	.quad	0
	.quad	0
	.quad	8
	.long	5
	.zero	4
	.quad	.LC230
	.quad	bogus_int
	.quad	9
	.quad	8
	.long	5
	.zero	4
	.quad	.LC230
	.quad	int_with_trailer
	.quad	2
	.quad	9
	.long	5
	.zero	4
	.quad	.LC231
	.quad	0
	.quad	0
	.quad	9
	.long	5
	.zero	4
	.quad	.LC231
	.quad	bogus_int
	.quad	9
	.quad	9
	.long	5
	.zero	4
	.quad	.LC231
	.quad	int_with_trailer
	.quad	2
	.quad	1
	.long	5
	.zero	4
	.quad	.LC246
	.quad	0
	.quad	0
	.quad	1
	.long	5
	.zero	4
	.quad	.LC246
	.quad	bogus_int
	.quad	9
	.quad	1
	.long	5
	.zero	4
	.quad	.LC246
	.quad	int_with_trailer
	.quad	2
	.quad	3
	.long	5
	.zero	4
	.quad	.LC232
	.quad	0
	.quad	0
	.quad	3
	.long	5
	.zero	4
	.quad	.LC232
	.quad	bogus_int
	.quad	9
	.quad	3
	.long	5
	.zero	4
	.quad	.LC232
	.quad	int_with_trailer
	.quad	2
	.quad	14
	.long	5
	.zero	4
	.quad	.LC233
	.quad	0
	.quad	0
	.quad	14
	.long	5
	.zero	4
	.quad	.LC233
	.quad	bogus_int
	.quad	9
	.quad	14
	.long	5
	.zero	4
	.quad	.LC233
	.quad	int_with_trailer
	.quad	2
	.section	.rodata
	.align 8
.LC247:
	.string	"ossl_quic_wire_encode_transport_param_bytes(wpkt, id, data, data_len)"
.LC248:
	.string	"data_len"
	.text
	.type	tparam_handle, @function
tparam_handle:
.LFB783:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$6, %eax
	je	.L554
	cmpl	$6, %eax
	jg	.L555
	cmpl	$5, %eax
	je	.L556
	cmpl	$5, %eax
	jg	.L555
	cmpl	$4, %eax
	jg	.L555
	cmpl	$2, %eax
	jge	.L557
	testl	%eax, %eax
	je	.L558
	cmpl	$1, %eax
	je	.L556
	jmp	.L555
.L558:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1954, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L559
	movl	$0, %eax
	jmp	.L560
.L559:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L561
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1962, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L561
	movl	$0, %eax
	jmp	.L560
.L561:
	movl	$1, %eax
	jmp	.L560
.L556:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L562
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1972, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L562
	movl	$0, %eax
	jmp	.L560
.L562:
	movl	$1, %eax
	jmp	.L560
.L557:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1982, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L563
	movl	$0, %eax
	jmp	.L560
.L563:
	movl	$1, %eax
	jmp	.L560
.L554:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L564
	movq	-48(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1990, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L565
	movl	$0, %eax
	jmp	.L560
.L565:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
.L564:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1996, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L566
	movl	$0, %eax
	jmp	.L560
.L566:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L567
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
.L567:
	movl	$1, %eax
	jmp	.L560
.L555:
	movl	$0, %eax
.L560:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	tparam_handle, .-tparam_handle
	.section	.rodata
.LC249:
	.string	"old_bufm = BUF_MEM_new()"
	.align 8
.LC250:
	.string	"qtest_fault_delete_extension(qtf, TLSEXT_TYPE_quic_transport_parameters, ee->extensions, &ee->extensionslen, old_bufm)"
	.align 8
.LC251:
	.string	"PACKET_buf_init(&pkt, (unsigned char *)old_bufm->data, old_bufm->length)"
.LC252:
	.string	"new_bufm = BUF_MEM_new()"
.LC253:
	.string	"WPACKET_init(&wpkt, new_bufm)"
	.align 8
.LC254:
	.string	"WPACKET_put_bytes_u16(&wpkt, TLSEXT_TYPE_quic_transport_parameters)"
	.align 8
.LC255:
	.string	"WPACKET_start_sub_packet_u16(&wpkt)"
.LC256:
	.string	"tp_p"
.LC257:
	.string	"NULL"
.LC258:
	.string	"PACKET_data(&pkt)"
	.align 8
.LC259:
	.string	"tparam_handle(ctx, id, tp_p, tp_len, &wpkt)"
	.align 8
.LC260:
	.string	"ossl_quic_wire_encode_transport_param_bytes(&wpkt, ctx->t->id, ctx->t->buf, ctx->t->buf_len)"
	.align 8
.LC261:
	.string	"WPACKET_memcpy(&wpkt, ctx->t->buf, ctx->t->buf_len)"
.LC262:
	.string	"WPACKET_close(&wpkt)"
	.align 8
.LC263:
	.string	"WPACKET_get_total_written(&wpkt, &written)"
	.text
	.type	tparam_on_enc_ext, @function
tparam_on_enc_ext:
.LFB784:
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
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movl	$0, -20(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC249(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2023, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L589
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-208(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rsi, %r8
	movl	$57, %esi
	movq	%rax, %rdi
	call	qtest_fault_delete_extension@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC250(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2030, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L590
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC251(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2035, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L591
	call	BUF_MEM_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2036, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L591
	movq	-32(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2037, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L591
	movl	$1, -24(%rbp)
	leaq	-160(%rbp), %rax
	movl	$2, %edx
	movl	$57, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC254(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2050, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L592
	leaq	-160(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC255(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2052, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L592
	jmp	.L576
.L578:
	leaq	-168(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC256(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2059, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L577
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	leaq	.LC257(%rip), %rcx
	leaq	.LC258(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$0
	pushq	$0
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$2060, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	jmp	.L570
.L577:
	movq	-168(%rbp), %rcx
	movq	-184(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tparam_handle
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC259(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2064, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L593
.L576:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L578
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L579
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L579
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L580
.L579:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC260(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2070, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L594
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L595
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC260(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2076, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L595
	jmp	.L570
.L580:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L583
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC261(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2081, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L596
	jmp	.L583
.L595:
	nop
.L583:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC262(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2085, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L597
	leaq	-176(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC263(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2088, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L598
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	movl	$0, -24(%rbp)
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-208(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_message@PLT
	testl	%eax, %eax
	je	.L599
	movq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-56(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movb	%dl, (%rax)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	-64(%rbp), %rdx
	movb	%dl, (%rax)
	movl	$1, -20(%rbp)
	jmp	.L570
.L589:
	nop
	jmp	.L570
.L590:
	nop
	jmp	.L570
.L591:
	nop
	jmp	.L570
.L592:
	nop
	jmp	.L570
.L593:
	nop
	jmp	.L570
.L594:
	nop
	jmp	.L570
.L596:
	nop
	jmp	.L570
.L597:
	nop
	jmp	.L570
.L598:
	nop
	jmp	.L570
.L599:
	nop
.L570:
	cmpl	$0, -24(%rbp)
	je	.L587
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L587:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	tparam_on_enc_ext, .-tparam_on_enc_ext
	.section	.rodata
	.align 8
.LC264:
	.string	"c_ctx = SSL_CTX_new_ex(libctx, NULL, OSSL_QUIC_client_method())"
	.align 8
.LC265:
	.string	"qtest_create_quic_objects(libctx, c_ctx, NULL, cert, privkey, 0, &s, &c_ssl, &qtf, NULL)"
	.align 8
.LC266:
	.string	"qtest_fault_set_hand_enc_ext_listener(qtf, tparam_on_enc_ext, &ctx)"
	.align 8
.LC267:
	.string	"qtest_create_quic_connection_ex(s, c_ssl, ctx.t->expect_fail != NULL)"
	.align 8
.LC268:
	.string	"SSL_get_conn_close_info(c_ssl, &info, sizeof(info))"
	.align 8
.LC269:
	.string	"(info.flags & SSL_CONN_CLOSE_FLAG_TRANSPORT) != 0"
	.align 8
.LC270:
	.string	"OSSL_QUIC_ERR_TRANSPORT_PARAMETER_ERROR"
.LC271:
	.string	"info.error_code"
	.align 8
.LC272:
	.string	"strstr(info.reason, ctx.t->expect_fail)"
	.align 8
.LC273:
	.string	"expected connection closure information mismatch during TPARAM test: flags=%llu ec=%llu reason='%s'"
	.align 8
.LC274:
	.string	"failed during test for id=%llu, op=%d, bl=%zu, expected failure='%s'"
	.align 8
.LC275:
	.string	"failed during test for id=%llu, op=%d, bl=%zu"
	.text
	.type	test_tparam, @function
test_tparam:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	tparam_tests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC264(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2130, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L614
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC265(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L615
	movq	-40(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	tparam_on_enc_ext(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_hand_enc_ext_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC266(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L616
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC267(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2142, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L617
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L606
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rax
	leaq	-96(%rbp), %rcx
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get_conn_close_info@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC268(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2149, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L618
	movl	-64(%rbp), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC269(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2152, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L609
	movq	-96(%rbp), %rsi
	leaq	.LC270(%rip), %rcx
	leaq	.LC271(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$2153, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L609
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rcx
	leaq	.LC272(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2154, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L606
.L609:
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movl	-64(%rbp), %eax
	movl	%eax, %edi
	leaq	.LC273(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movl	$2155, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L602
.L606:
	movl	$1, -4(%rbp)
	jmp	.L602
.L614:
	nop
	jmp	.L602
.L615:
	nop
	jmp	.L602
.L616:
	nop
	jmp	.L602
.L617:
	nop
	jmp	.L602
.L618:
	nop
.L602:
	cmpl	$0, -4(%rbp)
	jne	.L611
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L612
	movq	-48(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	32(%rax), %r8
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC274(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movl	%esi, %r8d
	movq	%rax, %rcx
	movl	$2168, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	jmp	.L611
.L612:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC275(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$2172, %esi
	movl	$0, %eax
	call	test_info@PLT
.L611:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	test_tparam, .-test_tparam
	.local	new_called
	.comm	new_called,4,4
	.local	cbssl
	.comm	cbssl,8,8
	.type	new_session_cb, @function
new_session_cb:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	new_called(%rip), %eax
	addl	$1, %eax
	movl	%eax, new_called(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, cbssl(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	new_session_cb, .-new_session_cb
	.section	.rodata
.LC276:
	.string	"SSL_handle_events(clientquic)"
.LC277:
	.string	"new_called"
.LC278:
	.string	"cbssl"
	.text
	.type	test_session_cb, @function
test_session_cb:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L631
	movl	$0, new_called(%rip)
	movq	$0, cbssl(%rip)
	leaq	new_session_cb(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_sess_set_new_cb@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movq	privkey(%rip), %rdi
	movq	cert(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rsi
	pushq	$0
	pushq	$0
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	$2, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L632
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L633
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC276(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L634
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC187(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2232, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L635
	movl	new_called(%rip), %esi
	leaq	.LC162(%rip), %rcx
	leaq	.LC277(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$2239, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L636
	movq	cbssl(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC278(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2240, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L636
	movl	$1, -4(%rbp)
	jmp	.L623
.L631:
	nop
	jmp	.L623
.L632:
	nop
	jmp	.L623
.L633:
	nop
	jmp	.L623
.L634:
	nop
	jmp	.L623
.L635:
	nop
	jmp	.L623
.L636:
	nop
.L623:
	movq	$0, cbssl(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	test_session_cb, .-test_session_cb
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB788:
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
.LFE788:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC279:
	.string	"libctx"
.LC280:
	.string	"null"
.LC281:
	.string	"default"
	.align 8
.LC282:
	.string	"OSSL_PROVIDER_available(NULL, \"default\")"
.LC283:
	.string	"fips"
	.align 8
.LC284:
	.string	"OSSL_PROVIDER_available(NULL, \"fips\")"
.LC285:
	.string	"Error parsing test options\n"
	.align 8
.LC286:
	.string	"modulename = test_get_argument(0)"
	.align 8
.LC287:
	.string	"configfile = test_get_argument(1)"
	.align 8
.LC288:
	.string	"certsdir = test_get_argument(2)"
	.align 8
.LC289:
	.string	"datadir = test_get_argument(3)"
	.align 8
.LC290:
	.string	"OSSL_LIB_CTX_load_config(libctx, configfile)"
	.align 8
.LC291:
	.string	"OSSL_PROVIDER_available(libctx, modulename)"
	.align 8
.LC292:
	.string	"OSSL_PROVIDER_available(libctx, \"default\")"
.LC293:
	.string	"servercert.pem"
.LC294:
	.string	"ee-client-chain.pem"
.LC295:
	.string	"root-cert.pem"
.LC296:
	.string	"serverkey.pem"
.LC297:
	.string	"ee-key.pem"
.LC298:
	.string	"test_quic_write_read"
.LC299:
	.string	"test_fin_only_blocking"
.LC300:
	.string	"test_ciphersuites"
.LC301:
	.string	"test_cipher_find"
.LC302:
	.string	"test_version"
.LC303:
	.string	"test_ssl_trace"
.LC304:
	.string	"test_quic_forbidden_apis_ctx"
.LC305:
	.string	"test_quic_forbidden_apis"
.LC306:
	.string	"test_quic_forbidden_options"
.LC307:
	.string	"test_quic_set_fd"
.LC308:
	.string	"test_bio_ssl"
.LC309:
	.string	"test_back_pressure"
.LC310:
	.string	"test_multiple_dgrams"
.LC311:
	.string	"test_non_io_retry"
.LC312:
	.string	"test_quic_psk"
.LC313:
	.string	"test_client_auth"
.LC314:
	.string	"test_alpn"
.LC315:
	.string	"test_noisy_dgram"
.LC316:
	.string	"test_bw_limit"
.LC317:
	.string	"test_get_shutdown"
.LC318:
	.string	"test_tparam"
.LC319:
	.string	"test_session_cb"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, libctx(%rip)
	movq	libctx(%rip), %rax
	leaq	.LC279(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2263, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L640
	movl	$0, %eax
	jmp	.L641
.L640:
	leaq	.LC280(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, defctxnull(%rip)
	leaq	.LC281(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC282(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2272, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L657
	leaq	.LC283(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC284(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2273, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L657
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L645
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2277, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L644
.L645:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC286(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L658
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC287(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2282, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L658
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, certsdir(%rip)
	movq	certsdir(%rip), %rax
	leaq	.LC288(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2283, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L658
	movl	$3, %edi
	call	test_get_argument@PLT
	movq	%rax, datadir(%rip)
	movq	datadir(%rip), %rax
	leaq	.LC289(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2284, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L658
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC290(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L659
	movq	libctx(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC291(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2291, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L660
	leaq	.LC281(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L650
	movq	libctx(%rip), %rax
	leaq	.LC281(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC292(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2296, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L661
.L650:
	leaq	.LC283(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L651
	movl	$1, is_fips(%rip)
.L651:
	movq	certsdir(%rip), %rax
	leaq	.LC293(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	testq	%rax, %rax
	je	.L662
	movq	certsdir(%rip), %rax
	leaq	.LC294(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, ccert(%rip)
	movq	ccert(%rip), %rax
	testq	%rax, %rax
	je	.L663
	movq	certsdir(%rip), %rax
	leaq	.LC295(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cauthca(%rip)
	movq	cauthca(%rip), %rax
	testq	%rax, %rax
	je	.L664
	movq	certsdir(%rip), %rax
	leaq	.LC296(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	testq	%rax, %rax
	je	.L665
	movq	certsdir(%rip), %rax
	leaq	.LC297(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cprivkey(%rip)
	movq	privkey(%rip), %rax
	testq	%rax, %rax
	je	.L666
	leaq	test_quic_write_read(%rip), %rsi
	leaq	.LC298(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_fin_only_blocking(%rip), %rdx
	leaq	.LC299(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ciphersuites(%rip), %rdx
	leaq	.LC300(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cipher_find(%rip), %rdx
	leaq	.LC301(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_version(%rip), %rdx
	leaq	.LC302(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ssl_trace(%rip), %rdx
	leaq	.LC303(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_quic_forbidden_apis_ctx(%rip), %rdx
	leaq	.LC304(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_quic_forbidden_apis(%rip), %rdx
	leaq	.LC305(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_quic_forbidden_options(%rip), %rdx
	leaq	.LC306(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_quic_set_fd(%rip), %rsi
	leaq	.LC307(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_ssl(%rip), %rdx
	leaq	.LC308(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_back_pressure(%rip), %rdx
	leaq	.LC309(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multiple_dgrams(%rip), %rdx
	leaq	.LC310(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_non_io_retry(%rip), %rsi
	leaq	.LC311(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_quic_psk(%rip), %rdx
	leaq	.LC312(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_client_auth(%rip), %rsi
	leaq	.LC313(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_alpn(%rip), %rsi
	leaq	.LC314(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_noisy_dgram(%rip), %rsi
	leaq	.LC315(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bw_limit(%rip), %rdx
	leaq	.LC316(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_get_shutdown(%rip), %rdx
	leaq	.LC317(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_tparam(%rip), %rsi
	leaq	.LC318(%rip), %rax
	movl	$1, %ecx
	movl	$76, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_session_cb(%rip), %rdx
	leaq	.LC319(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	jmp	.L641
.L657:
	nop
	jmp	.L644
.L658:
	nop
	jmp	.L644
.L659:
	nop
	jmp	.L644
.L660:
	nop
	jmp	.L644
.L661:
	nop
	jmp	.L644
.L662:
	nop
	jmp	.L644
.L663:
	nop
	jmp	.L644
.L664:
	nop
	jmp	.L644
.L665:
	nop
	jmp	.L644
.L666:
	nop
.L644:
	call	cleanup_tests@PLT
	movl	$0, %eax
.L641:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	bio_f_noisy_dgram_filter_free@PLT
	call	bio_f_pkt_split_dgram_filter_free@PLT
	movq	cert(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2358, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	ccert(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2359, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	cauthca(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	cprivkey(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2361, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	defctxnull(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC320:
	.string	"A test message"
	.section	.data.rel.local
	.align 8
	.type	msg.2, @object
	.size	msg.2, 8
msg.2:
	.quad	.LC320
	.align 8
	.type	msg.1, @object
	.size	msg.1, 8
msg.1:
	.quad	.LC320
	.section	.rodata
	.align 8
.LC321:
	.string	"Usage: %s [options] provider config certsdir datadir\n"
.LC322:
	.string	"Valid options are:\n"
.LC323:
	.string	"help"
.LC324:
	.string	"Display this summary"
.LC325:
	.string	"list"
	.align 8
.LC326:
	.string	"Display the list of tests available"
	.align 8
.LC327:
	.string	"Run a single test by id or name"
.LC328:
	.string	"iter"
	.align 8
.LC329:
	.string	"Run a single iteration of a test"
.LC330:
	.string	"indent"
	.align 8
.LC331:
	.string	"Number of tabs added to output"
.LC332:
	.string	"seed"
	.align 8
.LC333:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC321
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC322
	.quad	.LC323
	.long	500
	.long	45
	.quad	.LC324
	.quad	.LC325
	.long	501
	.long	45
	.quad	.LC326
	.quad	.LC28
	.long	502
	.long	115
	.quad	.LC327
	.quad	.LC328
	.long	503
	.long	110
	.quad	.LC329
	.quad	.LC330
	.long	504
	.long	112
	.quad	.LC331
	.quad	.LC332
	.long	505
	.long	110
	.quad	.LC333
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

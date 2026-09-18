	.file	"quic_client_test.c"
	.text
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
	jnb	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L11
	movl	$-1, %eax
	jmp	.L10
.L11:
	movl	$0, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_time_compare, .-ossl_time_compare
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
	je	.L13
	call	ossl_time_zero
	jmp	.L15
.L13:
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.section	.rodata
	.align 16
	.type	msg1, @object
	.size	msg1, 18
msg1:
	.string	"GET LICENSE.txt\r\n"
	.local	msg2
	.comm	msg2,16000,32
	.text
	.type	is_want, @function
is_want:
.LFB527:
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
	je	.L17
	cmpl	$3, -4(%rbp)
	jne	.L18
.L17:
	movl	$1, %eax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	is_want, .-is_want
	.section	.rodata
.LC0:
	.string	"INVALID_SOCKET"
.LC1:
	.string	"c_fd"
.LC2:
	.string	"../test/quic_client_test.c"
.LC3:
	.string	"BIO_socket_nbio(c_fd, 1)"
.LC4:
	.string	"s_addr_ = BIO_ADDR_new()"
	.align 8
.LC5:
	.string	"BIO_ADDR_rawmake(s_addr_, AF_INET, &ina, sizeof(ina), htons(port))"
	.align 8
.LC6:
	.string	"c_net_bio = c_net_bio_own = BIO_new_dgram(c_fd, 0)"
	.align 8
.LC7:
	.string	"c_ctx = SSL_CTX_new(OSSL_QUIC_client_method())"
.LC8:
	.string	"c_ssl = SSL_new(c_ctx)"
	.align 8
.LC9:
	.string	"SSL_set_alpn_protos(c_ssl, alpn, sizeof(alpn))"
.LC10:
	.string	"BIO_up_ref(c_net_bio)"
	.align 8
.LC11:
	.string	"SSL_set_blocking_mode(c_ssl, 0)"
	.align 8
.LC12:
	.string	"timeout while attempting QUIC client test"
	.align 8
.LC13:
	.string	"ret == 1 || is_want(c_ssl, ret)"
.LC14:
	.string	"Connected!"
.LC15:
	.string	"(int)sizeof(msg1) - 1"
	.align 8
.LC16:
	.string	"SSL_write(c_ssl, msg1, sizeof(msg1) - 1)"
.LC17:
	.string	"SSL_stream_conclude(c_ssl, 0)"
.LC18:
	.string	"Message: \n%s\n"
.LC19:
	.string	"is_want(c_ssl, ret)"
.LC20:
	.string	"sizeof(msg2) - 1"
.LC21:
	.string	"c_total_read"
	.text
	.type	test_quic_client_ex, @function
test_quic_client_ex:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movw	$4433, -90(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -80(%rbp)
	movabsq	$3328212284663425032, %rax
	movq	%rax, -129(%rbp)
	movb	$57, -121(%rbp)
	cmpl	$-1, -148(%rbp)
	jne	.L22
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L53
	movl	-24(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$53, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	call	BIO_ADDR_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movl	$2130706433, %edi
	call	htonl@PLT
	movl	%eax, -100(%rbp)
	movzwl	-90(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons@PLT
	movzwl	%ax, %ecx
	leaq	-100(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %r8d
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
	movl	$60, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L27
	jmp	.L24
.L22:
	movl	-148(%rbp), %eax
	movl	%eax, -24(%rbp)
.L27:
	movl	-24(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$67, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	cmpq	$0, -40(%rbp)
	je	.L29
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L57
.L29:
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L58
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$77, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-129(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_alpn_protos@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L60
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L33
	movq	$0, -32(%rbp)
	jmp	.L24
.L33:
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_blocking_mode@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$96, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	call	ossl_time_now@PLT
	movq	%rax, -120(%rbp)
.L49:
	movabsq	$10000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rbx
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L35
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L24
.L35:
	cmpl	$0, -60(%rbp)
	jne	.L36
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -96(%rbp)
	cmpl	$1, -96(%rbp)
	je	.L37
	movl	-96(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	je	.L38
.L37:
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	cmpl	$1, -96(%rbp)
	jne	.L36
	movl	$1, -60(%rbp)
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$115, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L36:
	cmpl	$0, -60(%rbp)
	je	.L41
	cmpl	$0, -64(%rbp)
	jne	.L41
	leaq	msg1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$17, %r9d
	movl	%esi, %r8d
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L63
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_stream_conclude@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movl	$1, -64(%rbp)
.L41:
	cmpl	$0, -64(%rbp)
	je	.L44
	cmpl	$0, -68(%rbp)
	jne	.L44
	cmpq	$15998, -80(%rbp)
	ja	.L44
	movl	$15999, %eax
	subq	-80(%rbp), %rax
	movq	%rax, %rdx
	leaq	msg2(%rip), %rcx
	movq	-80(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-112(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -96(%rbp)
	cmpl	$1, -96(%rbp)
	je	.L45
	movl	-96(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$6, %eax
	jne	.L46
	movl	$1, -68(%rbp)
	leaq	msg2(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L44
.L46:
	movl	-96(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$137, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L44
	jmp	.L24
.L45:
	movq	-112(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$15999, %r9d
	movq	%rsi, %r8
	movl	$143, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L65
.L44:
	cmpl	$0, -68(%rbp)
	je	.L47
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movl	%eax, -96(%rbp)
	cmpl	$1, -96(%rbp)
	je	.L66
.L47:
	movl	$0, %edi
	call	OSSL_sleep@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	jmp	.L49
.L66:
	nop
	movl	$1, -20(%rbp)
	jmp	.L24
.L53:
	nop
	jmp	.L24
.L54:
	nop
	jmp	.L24
.L55:
	nop
	jmp	.L24
.L56:
	nop
	jmp	.L24
.L57:
	nop
	jmp	.L24
.L58:
	nop
	jmp	.L24
.L59:
	nop
	jmp	.L24
.L60:
	nop
	jmp	.L24
.L61:
	nop
	jmp	.L24
.L62:
	nop
	jmp	.L24
.L63:
	nop
	jmp	.L24
.L64:
	nop
	jmp	.L24
.L65:
	nop
.L24:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$-1, -148(%rbp)
	jne	.L50
	cmpl	$-1, -24(%rbp)
	je	.L50
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L50:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_quic_client_ex, .-test_quic_client_ex
	.type	test_quic_client, @function
test_quic_client:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-1, %edi
	call	test_quic_client_ex
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_quic_client, .-test_quic_client
	.section	.rodata
.LC22:
	.string	"0"
	.align 8
.LC23:
	.string	"connect(c_fd, (const struct sockaddr *)&sin, sizeof(sin))"
	.text
	.type	test_quic_client_connect_first, @function
test_quic_client_connect_first:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movw	$2, -32(%rbp)
	movl	$4433, %edi
	call	htons@PLT
	movw	%ax, -30(%rbp)
	movl	$2130706433, %edi
	call	htonl@PLT
	movl	%eax, -28(%rbp)
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	socket@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L77
	leaq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L78
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$198, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test_quic_client_ex
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-8(%rbp), %eax
	jmp	.L76
.L77:
	nop
	jmp	.L71
.L78:
	nop
	jmp	.L71
.L79:
	nop
.L71:
	cmpl	$-1, -4(%rbp)
	je	.L75
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L75:
	movl	$0, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_quic_client_connect_first, .-test_quic_client_connect_first
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB531:
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
.LFE531:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC24:
	.string	"Error parsing test options\n"
.LC25:
	.string	"test_quic_client"
	.align 8
.LC26:
	.string	"test_quic_client_connect_first"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L83
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L84
.L83:
	leaq	test_quic_client(%rip), %rdx
	leaq	.LC25(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_quic_client_connect_first(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L84:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC27:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC28:
	.string	"Valid options are:\n"
.LC29:
	.string	"help"
.LC30:
	.string	"Display this summary"
.LC31:
	.string	"list"
	.align 8
.LC32:
	.string	"Display the list of tests available"
.LC33:
	.string	"test"
	.align 8
.LC34:
	.string	"Run a single test by id or name"
.LC35:
	.string	"iter"
	.align 8
.LC36:
	.string	"Run a single iteration of a test"
.LC37:
	.string	"indent"
	.align 8
.LC38:
	.string	"Number of tabs added to output"
.LC39:
	.string	"seed"
	.align 8
.LC40:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC27
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	500
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	501
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	502
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	503
	.long	110
	.quad	.LC36
	.quad	.LC37
	.long	504
	.long	112
	.quad	.LC38
	.quad	.LC39
	.long	505
	.long	110
	.quad	.LC40
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

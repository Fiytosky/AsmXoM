	.file	"ssl_old_test.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_const_SSL_COMP_sk_type, @function
ossl_check_const_SSL_COMP_sk_type:
.LFB582:
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
.LFE582:
	.size	ossl_check_const_SSL_COMP_sk_type, .-ossl_check_const_SSL_COMP_sk_type
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	s_ctx
	.comm	s_ctx,8,8
	.local	s_ctx2
	.comm	s_ctx2,8,8
	.local	psk_key
	.comm	psk_key,8,8
	.local	bio_stdout
	.comm	bio_stdout,8,8
	.section	.rodata
	.align 8
	.type	NEXT_PROTO_STRING, @object
	.size	NEXT_PROTO_STRING, 11
NEXT_PROTO_STRING:
	.string	"\ttestproto"
	.local	npn_client
	.comm	npn_client,4,4
	.local	npn_server
	.comm	npn_server,4,4
	.local	npn_server_reject
	.comm	npn_server_reject,4,4
	.text
	.type	cb_client_npn, @function
cb_client_npn:
.LFB607:
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
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	leaq	1+NEXT_PROTO_STRING(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movb	$9, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	cb_client_npn, .-cb_client_npn
	.type	cb_server_npn, @function
cb_server_npn:
.LFB608:
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
	movq	-16(%rbp), %rax
	leaq	NEXT_PROTO_STRING(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$10, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	cb_server_npn, .-cb_server_npn
	.type	cb_server_rejects_npn, @function
cb_server_rejects_npn:
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
	movl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	cb_server_rejects_npn, .-cb_server_rejects_npn
	.section	.rodata
.LC0:
	.string	"Client NPN: "
.LC1:
	.string	"\n"
.LC2:
	.string	"Server NPN: "
	.text
	.type	verify_npn, @function
verify_npn:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_next_proto_negotiated@PLT
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_next_proto_negotiated@PLT
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L19
	movq	bio_stdout(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	bio_stdout(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	bio_stdout(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L19:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L20
	movq	bio_stdout(%rip), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	bio_stdout(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	bio_stdout(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L20:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L21
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jne	.L22
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	leaq	1+NEXT_PROTO_STRING(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L21
.L22:
	movl	$-1, %eax
	jmp	.L31
.L21:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L24
	movl	-28(%rbp), %eax
	cmpl	$9, %eax
	jne	.L25
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	leaq	1+NEXT_PROTO_STRING(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L24
.L25:
	movl	$-1, %eax
	jmp	.L31
.L24:
	movl	npn_client(%rip), %eax
	testl	%eax, %eax
	jne	.L26
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	movl	$-1, %eax
	jmp	.L31
.L26:
	movl	npn_server(%rip), %eax
	testl	%eax, %eax
	jne	.L27
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L27
	movl	$-1, %eax
	jmp	.L31
.L27:
	movl	npn_server_reject(%rip), %eax
	testl	%eax, %eax
	je	.L28
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L28
	movl	$-1, %eax
	jmp	.L31
.L28:
	movl	npn_client(%rip), %eax
	testl	%eax, %eax
	je	.L29
	movl	npn_server(%rip), %eax
	testl	%eax, %eax
	je	.L29
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L30
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L29
.L30:
	movl	$-1, %eax
	jmp	.L31
.L29:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	verify_npn, .-verify_npn
	.local	alpn_client
	.comm	alpn_client,8,8
	.local	alpn_server
	.comm	alpn_server,8,8
	.local	alpn_server2
	.comm	alpn_server2,8,8
	.local	alpn_expected
	.comm	alpn_expected,8,8
	.local	alpn_selected
	.comm	alpn_selected,8,8
	.local	server_min_proto
	.comm	server_min_proto,8,8
	.local	server_max_proto
	.comm	server_max_proto,8,8
	.local	client_min_proto
	.comm	client_min_proto,8,8
	.local	client_max_proto
	.comm	client_max_proto,8,8
	.local	should_negotiate
	.comm	should_negotiate,8,8
	.local	sn_client
	.comm	sn_client,8,8
	.local	sn_server1
	.comm	sn_server1,8,8
	.local	sn_server2
	.comm	sn_server2,8,8
	.local	sn_expect
	.comm	sn_expect,4,4
	.local	server_sess_out
	.comm	server_sess_out,8,8
	.local	server_sess_in
	.comm	server_sess_in,8,8
	.local	client_sess_out
	.comm	client_sess_out,8,8
	.local	client_sess_in
	.comm	client_sess_in,8,8
	.local	server_sess
	.comm	server_sess,8,8
	.local	client_sess
	.comm	client_sess,8,8
	.section	.rodata
.LC3:
	.string	"Servername 2 is NULL\n"
.LC4:
	.string	"Switching server context.\n"
	.text
	.type	servername_cb, @function
servername_cb:
.LFB611:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_servername@PLT
	movq	%rax, -8(%rbp)
	movq	sn_server2(%rip), %rax
	testq	%rax, %rax
	jne	.L33
	movq	bio_stdout(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$3, %eax
	jmp	.L34
.L33:
	cmpq	$0, -8(%rbp)
	je	.L35
	movq	s_ctx2(%rip), %rax
	testq	%rax, %rax
	je	.L35
	movq	sn_server2(%rip), %rax
	testq	%rax, %rax
	je	.L35
	movq	sn_server2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L35
	movq	bio_stdout(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	s_ctx2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_SSL_CTX@PLT
.L35:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	servername_cb, .-servername_cb
	.section	.rodata
	.align 8
.LC5:
	.string	"Servername: expected context %d\n"
.LC6:
	.string	"Servername: context is 2\n"
.LC7:
	.string	"Servername: context is 1\n"
	.align 8
.LC8:
	.string	"Servername: context is unknown\n"
	.text
	.type	verify_servername, @function
verify_servername:
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
	movq	%rax, %rdi
	call	SSL_get_SSL_CTX@PLT
	movq	%rax, -8(%rbp)
	movl	sn_expect(%rip), %eax
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movl	sn_expect(%rip), %eax
	cmpl	$1, %eax
	jne	.L39
	movq	s_ctx(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L38
.L39:
	movl	sn_expect(%rip), %eax
	cmpl	$2, %eax
	jne	.L40
	movq	s_ctx2(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L38
.L40:
	movl	sn_expect(%rip), %edx
	movq	bio_stdout(%rip), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	s_ctx2(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L41
	movq	bio_stdout(%rip), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L42
.L41:
	movq	s_ctx(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L43
	movq	bio_stdout(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L42
.L43:
	movq	bio_stdout(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L42:
	movl	$-1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	verify_servername, .-verify_servername
	.section	.rodata
.LC9:
	.string	"../test/ssl_old_test.c"
	.text
	.type	next_protos_parse, @function
next_protos_parse:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$65534, -24(%rbp)
	jbe	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	leaq	.LC9(%rip), %rcx
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L46
.L47:
	movq	$0, -8(%rbp)
	jmp	.L48
.L53:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L49
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L50
.L49:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	cmpq	$255, %rax
	jbe	.L51
	leaq	.LC9(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L46
.L51:
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	subl	%esi, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L52
.L50:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L52:
	addq	$1, -8(%rbp)
.L48:
	movq	-8(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L53
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	next_protos_parse, .-next_protos_parse
	.section	.rodata
	.align 8
.LC10:
	.string	"failed to parser ALPN server protocol string: %s\n"
.LC11:
	.string	"failed to allocate memory\n"
	.text
	.type	cb_server_alpn, @function
cb_server_alpn:
.LFB614:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	next_protos_parse
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L55
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	call	abort@PLT
.L55:
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	SSL_select_next_proto@PLT
	cmpl	$1, %eax
	je	.L56
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$305, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$3, %eax
	jmp	.L59
.L56:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rcx
	movl	$313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, alpn_selected(%rip)
	movq	alpn_selected(%rip), %rax
	testq	%rax, %rax
	jne	.L58
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$316, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	abort@PLT
.L58:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	alpn_selected(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	alpn_selected(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$322, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	cb_server_alpn, .-cb_server_alpn
	.section	.rodata
	.align 8
.LC12:
	.string	"Inconsistent SSL_get0_alpn_selected() for client!\n"
	.align 8
.LC13:
	.string	"Inconsistent SSL_get0_alpn_selected() for server!\n"
	.align 8
.LC14:
	.string	"ALPN selected protocols differ!\n"
.LC15:
	.string	"ALPN unexpectedly negotiated\n"
	.align 8
.LC16:
	.string	"ALPN selected protocols not equal to expected protocol: %s\n"
.LC17:
	.string	"ALPN results: client: '"
.LC18:
	.string	"', server: '"
.LC19:
	.string	"'\n"
	.align 8
.LC20:
	.string	"ALPN configured: client: '%s', server: '"
.LC21:
	.string	"%s'\n"
	.text
	.type	verify_alpn, @function
verify_alpn:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	leaq	-36(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_alpn_selected@PLT
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_alpn_selected@PLT
	movq	alpn_selected(%rip), %rax
	leaq	.LC9(%rip), %rcx
	movl	$333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, alpn_selected(%rip)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L61
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L61
	movq	bio_stdout(%rip), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L62
.L61:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L63
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L63
	movq	bio_stdout(%rip), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L62
.L63:
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	je	.L64
	movq	bio_stdout(%rip), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L62
.L64:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L65
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L65
	movq	bio_stdout(%rip), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L62
.L65:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L66
	movq	alpn_expected(%rip), %rax
	testq	%rax, %rax
	jne	.L66
	movq	bio_stdout(%rip), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L62
.L66:
	movq	alpn_expected(%rip), %rax
	testq	%rax, %rax
	je	.L67
	movl	-36(%rbp), %eax
	movl	%eax, %ebx
	movq	alpn_expected(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jne	.L68
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	alpn_expected(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L67
.L68:
	movq	alpn_expected(%rip), %rdx
	movq	bio_stdout(%rip), %rax
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L62
.L67:
	movl	$0, %eax
	jmp	.L72
.L62:
	movq	bio_stdout(%rip), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	bio_stdout(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	bio_stdout(%rip), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	bio_stdout(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	bio_stdout(%rip), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	alpn_client(%rip), %rdx
	movq	bio_stdout(%rip), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_SSL_CTX@PLT
	movq	%rax, %rdx
	movq	s_ctx2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L70
	movq	alpn_server2(%rip), %rdx
	movq	bio_stdout(%rip), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L70:
	movq	alpn_server(%rip), %rdx
	movq	bio_stdout(%rip), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L71:
	movl	$-1, %eax
.L72:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	verify_alpn, .-verify_alpn
	.section	.rodata
	.type	custom_ext_cli_string, @object
	.size	custom_ext_cli_string, 4
custom_ext_cli_string:
	.string	"abc"
	.type	custom_ext_srv_string, @object
	.size	custom_ext_srv_string, 5
custom_ext_srv_string:
	.string	"defg"
	.local	serverinfo_file
	.comm	serverinfo_file,8,8
	.local	serverinfo_sct
	.comm	serverinfo_sct,4,4
	.local	serverinfo_tack
	.comm	serverinfo_tack,4,4
	.local	serverinfo_sct_seen
	.comm	serverinfo_sct_seen,4,4
	.local	serverinfo_tack_seen
	.comm	serverinfo_tack_seen,4,4
	.local	serverinfo_other_seen
	.comm	serverinfo_other_seen,4,4
	.local	custom_ext
	.comm	custom_ext,4,4
	.local	custom_ext_error
	.comm	custom_ext_error,4,4
	.text
	.type	serverinfo_cli_parse_cb, @function
serverinfo_cli_parse_cb:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$18, -12(%rbp)
	jne	.L74
	movl	serverinfo_sct_seen(%rip), %eax
	addl	$1, %eax
	movl	%eax, serverinfo_sct_seen(%rip)
	jmp	.L75
.L74:
	cmpl	$62208, -12(%rbp)
	jne	.L76
	movl	serverinfo_tack_seen(%rip), %eax
	addl	$1, %eax
	movl	%eax, serverinfo_tack_seen(%rip)
	jmp	.L75
.L76:
	movl	serverinfo_other_seen(%rip), %eax
	addl	$1, %eax
	movl	%eax, serverinfo_other_seen(%rip)
.L75:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	serverinfo_cli_parse_cb, .-serverinfo_cli_parse_cb
	.type	verify_serverinfo, @function
verify_serverinfo:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	serverinfo_sct(%rip), %edx
	movl	serverinfo_sct_seen(%rip), %eax
	cmpl	%eax, %edx
	je	.L79
	movl	$-1, %eax
	jmp	.L80
.L79:
	movl	serverinfo_tack(%rip), %edx
	movl	serverinfo_tack_seen(%rip), %eax
	cmpl	%eax, %edx
	je	.L81
	movl	$-1, %eax
	jmp	.L80
.L81:
	movl	serverinfo_other_seen(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movl	$-1, %eax
	jmp	.L80
.L82:
	movl	$0, %eax
.L80:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	verify_serverinfo, .-verify_serverinfo
	.type	custom_ext_0_cli_add_cb, @function
custom_ext_0_cli_add_cb:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1000, -12(%rbp)
	je	.L84
	movl	$1, custom_ext_error(%rip)
.L84:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	custom_ext_0_cli_add_cb, .-custom_ext_0_cli_add_cb
	.type	custom_ext_0_cli_parse_cb, @function
custom_ext_0_cli_parse_cb:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	custom_ext_0_cli_parse_cb, .-custom_ext_0_cli_parse_cb
	.type	custom_ext_1_cli_add_cb, @function
custom_ext_1_cli_add_cb:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1001, -12(%rbp)
	je	.L89
	movl	$1, custom_ext_error(%rip)
.L89:
	movq	-24(%rbp), %rax
	leaq	custom_ext_cli_string(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$3, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	custom_ext_1_cli_add_cb, .-custom_ext_1_cli_add_cb
	.type	custom_ext_1_cli_parse_cb, @function
custom_ext_1_cli_parse_cb:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	custom_ext_1_cli_parse_cb, .-custom_ext_1_cli_parse_cb
	.type	custom_ext_2_cli_add_cb, @function
custom_ext_2_cli_add_cb:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1002, -12(%rbp)
	je	.L94
	movl	$1, custom_ext_error(%rip)
.L94:
	movq	-24(%rbp), %rax
	leaq	custom_ext_cli_string(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$3, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	custom_ext_2_cli_add_cb, .-custom_ext_2_cli_add_cb
	.type	custom_ext_2_cli_parse_cb, @function
custom_ext_2_cli_parse_cb:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1002, -12(%rbp)
	je	.L97
	movl	$1, custom_ext_error(%rip)
.L97:
	cmpq	$0, -32(%rbp)
	je	.L98
	movl	$1, custom_ext_error(%rip)
.L98:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	custom_ext_2_cli_parse_cb, .-custom_ext_2_cli_parse_cb
	.type	custom_ext_3_cli_add_cb, @function
custom_ext_3_cli_add_cb:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1003, -12(%rbp)
	je	.L101
	movl	$1, custom_ext_error(%rip)
.L101:
	movq	-24(%rbp), %rax
	leaq	custom_ext_cli_string(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$3, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	custom_ext_3_cli_add_cb, .-custom_ext_3_cli_add_cb
	.type	custom_ext_3_cli_parse_cb, @function
custom_ext_3_cli_parse_cb:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1003, -12(%rbp)
	je	.L104
	movl	$1, custom_ext_error(%rip)
.L104:
	cmpq	$4, -32(%rbp)
	je	.L105
	movl	$1, custom_ext_error(%rip)
.L105:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	custom_ext_srv_string(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L106
	movl	$1, custom_ext_error(%rip)
.L106:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	custom_ext_3_cli_parse_cb, .-custom_ext_3_cli_parse_cb
	.type	custom_ext_0_srv_parse_cb, @function
custom_ext_0_srv_parse_cb:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, custom_ext_error(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	custom_ext_0_srv_parse_cb, .-custom_ext_0_srv_parse_cb
	.type	custom_ext_0_srv_add_cb, @function
custom_ext_0_srv_add_cb:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, custom_ext_error(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	custom_ext_0_srv_add_cb, .-custom_ext_0_srv_add_cb
	.type	custom_ext_1_srv_parse_cb, @function
custom_ext_1_srv_parse_cb:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1001, -12(%rbp)
	je	.L113
	movl	$1, custom_ext_error(%rip)
.L113:
	cmpq	$3, -32(%rbp)
	je	.L114
	movl	$1, custom_ext_error(%rip)
.L114:
	movq	-32(%rbp), %rdx
	leaq	custom_ext_cli_string(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L115
	movl	$1, custom_ext_error(%rip)
.L115:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	custom_ext_1_srv_parse_cb, .-custom_ext_1_srv_parse_cb
	.type	custom_ext_1_srv_add_cb, @function
custom_ext_1_srv_add_cb:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	custom_ext_1_srv_add_cb, .-custom_ext_1_srv_add_cb
	.type	custom_ext_2_srv_parse_cb, @function
custom_ext_2_srv_parse_cb:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1002, -12(%rbp)
	je	.L120
	movl	$1, custom_ext_error(%rip)
.L120:
	cmpq	$3, -32(%rbp)
	je	.L121
	movl	$1, custom_ext_error(%rip)
.L121:
	movq	-32(%rbp), %rdx
	leaq	custom_ext_cli_string(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L122
	movl	$1, custom_ext_error(%rip)
.L122:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	custom_ext_2_srv_parse_cb, .-custom_ext_2_srv_parse_cb
	.type	custom_ext_2_srv_add_cb, @function
custom_ext_2_srv_add_cb:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	custom_ext_2_srv_add_cb, .-custom_ext_2_srv_add_cb
	.type	custom_ext_3_srv_parse_cb, @function
custom_ext_3_srv_parse_cb:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$1003, -12(%rbp)
	je	.L127
	movl	$1, custom_ext_error(%rip)
.L127:
	cmpq	$3, -32(%rbp)
	je	.L128
	movl	$1, custom_ext_error(%rip)
.L128:
	movq	-32(%rbp), %rdx
	leaq	custom_ext_cli_string(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L129
	movl	$1, custom_ext_error(%rip)
.L129:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	custom_ext_3_srv_parse_cb, .-custom_ext_3_srv_parse_cb
	.type	custom_ext_3_srv_add_cb, @function
custom_ext_3_srv_add_cb:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	leaq	custom_ext_srv_string(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$4, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	custom_ext_3_srv_add_cb, .-custom_ext_3_srv_add_cb
	.local	cipher
	.comm	cipher,8,8
	.local	ciphersuites
	.comm	ciphersuites,8,8
	.local	verbose
	.comm	verbose,4,4
	.local	debug
	.comm	debug,4,4
	.section	.rodata
.LC22:
	.string	"usage: ssltest [args ...]\n"
	.align 8
.LC23:
	.string	" -server_auth  - check server certificate\n"
	.align 8
.LC24:
	.string	" -client_auth  - do client authentication\n"
.LC25:
	.string	" -v            - more output\n"
	.align 8
.LC26:
	.string	" -d            - debug output\n"
	.align 8
.LC27:
	.string	" -reuse        - use session-id reuse\n"
	.align 8
.LC28:
	.string	" -num <val>    - number of connections to perform\n"
	.align 8
.LC29:
	.string	" -bytes <val>  - number of bytes to swap between client/server\n"
	.align 8
.LC30:
	.string	" -dhe512       - use 512 bit key for DHE (to test failure)\n"
	.align 8
.LC31:
	.string	" -dhe1024dsa   - use 1024 bit key (with 160-bit subprime) for DHE\n"
	.align 8
.LC32:
	.string	" -dhe2048      - use 2048 bit key (safe prime) for DHE (default, no-op)\n"
	.align 8
.LC33:
	.string	" -dhe4096      - use 4096 bit key (safe prime) for DHE\n"
.LC34:
	.string	" -no_dhe       - disable DHE\n"
	.align 8
.LC35:
	.string	" -no_ecdhe     - disable ECDHE\n"
	.align 8
.LC36:
	.string	" -psk arg      - PSK in hex (without 0x)\n"
.LC37:
	.string	" -tls1         - use TLSv1\n"
.LC38:
	.string	" -tls1_1       - use TLSv1.1\n"
.LC39:
	.string	" -tls1_2       - use TLSv1.2\n"
.LC40:
	.string	" -dtls         - use DTLS\n"
.LC41:
	.string	" -dtls1        - use DTLSv1\n"
	.align 8
.LC42:
	.string	" -dtls12       - use DTLSv1.2\n"
	.align 8
.LC43:
	.string	" -CApath arg   - PEM format directory of CA's\n"
	.align 8
.LC44:
	.string	" -CAfile arg   - PEM format file of CA's\n"
	.align 8
.LC45:
	.string	" -s_cert arg   - Server certificate file\n"
	.align 8
.LC46:
	.string	" -s_key arg    - Server key file (default: same as -cert)\n"
	.align 8
.LC47:
	.string	" -c_cert arg   - Client certificate file\n"
	.align 8
.LC48:
	.string	" -c_key arg    - Client key file (default: same as -c_cert)\n"
	.align 8
.LC49:
	.string	" -cipher arg   - The TLSv1.2 and below cipher list\n"
	.align 8
.LC50:
	.string	" -ciphersuites arg   - The TLSv1.3 ciphersuites\n"
	.align 8
.LC51:
	.string	" -bio_pair     - Use BIO pairs\n"
	.align 8
.LC52:
	.string	" -ipv4         - Use IPv4 connection on localhost\n"
	.align 8
.LC53:
	.string	" -ipv6         - Use IPv6 connection on localhost\n"
	.align 8
.LC54:
	.string	" -f            - Test even cases that can't work\n"
	.align 8
.LC55:
	.string	" -time         - measure processor time used by client and server\n"
	.align 8
.LC56:
	.string	" -zlib         - use zlib compression\n"
	.align 8
.LC57:
	.string	" -npn_client - have client side offer NPN\n"
	.align 8
.LC58:
	.string	" -npn_server - have server side offer NPN\n"
	.align 8
.LC59:
	.string	" -npn_server_reject - have server reject NPN\n"
	.align 8
.LC60:
	.string	" -serverinfo_file file - have server use this file\n"
	.align 8
.LC61:
	.string	" -serverinfo_sct  - have client offer and expect SCT\n"
	.align 8
.LC62:
	.string	" -serverinfo_tack - have client offer and expect TACK\n"
	.align 8
.LC63:
	.string	" -custom_ext - try various custom extension callbacks\n"
	.align 8
.LC64:
	.string	" -alpn_client <string> - have client side offer ALPN\n"
	.align 8
.LC65:
	.string	" -alpn_server <string> - have server side offer ALPN\n"
	.align 8
.LC66:
	.string	" -alpn_server1 <string> - alias for -alpn_server\n"
	.align 8
.LC67:
	.string	" -alpn_server2 <string> - have server side context 2 offer ALPN\n"
	.align 8
.LC68:
	.string	" -alpn_expected <string> - the ALPN protocol that should be negotiated\n"
	.align 8
.LC69:
	.string	" -server_min_proto <string> - Minimum version the server should support\n"
	.align 8
.LC70:
	.string	" -server_max_proto <string> - Maximum version the server should support\n"
	.align 8
.LC71:
	.string	" -client_min_proto <string> - Minimum version the client should support\n"
	.align 8
.LC72:
	.string	" -client_max_proto <string> - Maximum version the client should support\n"
	.align 8
.LC73:
	.string	" -should_negotiate <string> - The version that should be negotiated, fail-client or fail-server\n"
	.align 8
.LC74:
	.string	" -noct         - no certificate transparency\n"
	.align 8
.LC75:
	.string	" -requestct    - request certificate transparency\n"
	.align 8
.LC76:
	.string	" -requirect    - require certificate transparency\n"
	.align 8
.LC77:
	.string	" -sn_client <string>  - have client request this servername\n"
	.align 8
.LC78:
	.string	" -sn_server1 <string> - have server context 1 respond to this servername\n"
	.align 8
.LC79:
	.string	" -sn_server2 <string> - have server context 2 respond to this servername\n"
	.align 8
.LC80:
	.string	" -sn_expect1          - expected server 1\n"
	.align 8
.LC81:
	.string	" -sn_expect2          - expected server 2\n"
	.align 8
.LC82:
	.string	" -server_sess_out <file>    - Save the server session to a file\n"
	.align 8
.LC83:
	.string	" -server_sess_in <file>     - Read the server session from a file\n"
	.align 8
.LC84:
	.string	" -client_sess_out <file>    - Save the client session to a file\n"
	.align 8
.LC85:
	.string	" -client_sess_in <file>     - Read the client session from a file\n"
	.align 8
.LC86:
	.string	" -should_reuse <number>     - The expected state of reusing the session\n"
	.align 8
.LC87:
	.string	" -no_ticket    - do not issue TLS session ticket\n"
	.align 8
.LC88:
	.string	" -client_ktls  - try to enable client KTLS\n"
	.align 8
.LC89:
	.string	" -server_ktls  - try to enable server KTLS\n"
	.align 8
.LC90:
	.string	" -provider <name>    - Load the given provider into the library context\n"
	.align 8
.LC91:
	.string	" -config <cnf>    - Load the given config file into the library context\n"
	.text
	.type	sv_usage, @function
sv_usage:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC22(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC29(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC30(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdi
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdi
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC37(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC38(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rdi
	movq	%rax, %rcx
	movl	$46, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC49(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC50(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rdi
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC53(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC54(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdi
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC58(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC60(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rdi
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$54, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC63(%rip), %rdi
	movq	%rax, %rcx
	movl	$54, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdi
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdi
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdi
	movq	%rax, %rcx
	movl	$71, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC69(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC72(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC73(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC74(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC76(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC77(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC78(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC83(%rip), %rdi
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC85(%rip), %rdi
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC86(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC87(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC88(%rip), %rdi
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdi
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC90(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC91(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	sv_usage, .-sv_usage
	.section	.rodata
.LC92:
	.string	"%d bits EC (%s)"
.LC93:
	.string	"RSA"
.LC94:
	.string	"DSA"
.LC95:
	.string	"DH"
.LC96:
	.string	"%d bits %s"
	.text
	.type	print_key_details, @function
print_key_details:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, -12(%rbp)
	cmpl	$408, -12(%rbp)
	jne	.L135
	leaq	-24(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_group_name@PLT
	testl	%eax, %eax
	jne	.L136
	leaq	-112(%rbp), %rax
	movabsq	$2336936577129475701, %rcx
	movq	%rcx, (%rax)
	movabsq	$31654318912774254, %rcx
	movq	%rcx, 6(%rax)
.L136:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %edi
	leaq	-112(%rbp), %rdx
	leaq	.LC92(%rip), %rsi
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L143
.L135:
	cmpl	$116, -12(%rbp)
	je	.L138
	cmpl	$116, -12(%rbp)
	jg	.L139
	cmpl	$6, -12(%rbp)
	je	.L140
	cmpl	$28, -12(%rbp)
	je	.L141
	jmp	.L139
.L140:
	leaq	.LC93(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L142
.L138:
	leaq	.LC94(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L142
.L141:
	leaq	.LC95(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L142
.L139:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -8(%rbp)
	nop
.L142:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %edi
	movq	-8(%rbp), %rdx
	leaq	.LC96(%rip), %rsi
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L143:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	print_key_details, .-print_key_details
	.section	.rodata
.LC97:
	.string	"%s%s, cipher %s %s"
.LC98:
	.string	", "
.LC99:
	.string	", temp key: "
.LC100:
	.string	", digest=%s"
	.text
	.type	print_details, @function
print_details:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_current_cipher@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_version@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_version@PLT
	movq	%rax, %rcx
	movq	bio_stdout(%rip), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC97(%rip), %rsi
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_certificate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L145
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L145
	movq	bio_stdout(%rip), %rax
	leaq	.LC98(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_stdout(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_key_details
.L145:
	leaq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L146
	movq	bio_stdout(%rip), %rax
	leaq	.LC99(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-56(%rbp), %rdx
	movq	bio_stdout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_key_details
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L146:
	leaq	-44(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L147
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	bio_stdout(%rip), %rax
	leaq	.LC100(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L147:
	movq	bio_stdout(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	print_details, .-print_details
	.type	protocol_from_string, @function
protocol_from_string:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$7, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L149
.L152:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	versions.1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L150
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+versions.1(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L151
.L150:
	addq	$1, -8(%rbp)
.L149:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L152
	movl	$-1, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	protocol_from_string, .-protocol_from_string
	.section	.rodata
.LC101:
	.string	"r"
.LC102:
	.string	"Can't open session file %s\n"
.LC103:
	.string	"Can't parse session file %s\n"
	.text
	.type	read_session, @function
read_session:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC101(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L154
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC102(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_SSL_SESSION@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L156
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC103(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L156:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	read_session, .-read_session
	.section	.rodata
.LC104:
	.string	"No session information\n"
.LC105:
	.string	"w"
	.text
	.type	write_session, @function
write_session:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L158
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC104(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L159
.L158:
	leaq	.LC105(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L160
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC102(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L159
.L160:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_SSL_SESSION@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$1, %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	write_session, .-write_session
	.section	.rodata
.LC106:
	.string	"Error parsing: %s\n"
	.text
	.type	set_protocol_version, @function
set_protocol_version:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L162
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	protocol_from_string
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L163
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC106(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L164
.L163:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	jmp	.L164
.L162:
	movl	$1, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	set_protocol_version, .-set_protocol_version
	.section	.rodata
.LC107:
	.string	"Test Callback Argument"
.LC108:
	.string	"-s_"
.LC109:
	.string	"-c_"
.LC110:
	.string	"-F"
	.align 8
.LC111:
	.string	"not compiled with FIPS support, so exiting without running.\n"
.LC112:
	.string	"-server_auth"
.LC113:
	.string	"-client_auth"
.LC114:
	.string	"-v"
.LC115:
	.string	"-d"
.LC116:
	.string	"-reuse"
.LC117:
	.string	"-no_dhe"
.LC118:
	.string	"-dhe512"
.LC119:
	.string	"-dhe1024dsa"
.LC120:
	.string	"-dhe4096"
.LC121:
	.string	"-no_ecdhe"
.LC122:
	.string	"-psk"
.LC123:
	.string	"abcdefABCDEF1234567890"
.LC124:
	.string	"Not a hex number '%s'\n"
.LC125:
	.string	"-tls1_2"
.LC126:
	.string	"-tls1_1"
.LC127:
	.string	"-tls1"
.LC128:
	.string	"-ssl3"
.LC129:
	.string	"-dtls1"
.LC130:
	.string	"-dtls12"
.LC131:
	.string	"-dtls"
.LC132:
	.string	"-num"
.LC133:
	.string	"-bytes"
.LC134:
	.string	"-cipher"
.LC135:
	.string	"-ciphersuites"
.LC136:
	.string	"-CApath"
.LC137:
	.string	"-CAfile"
.LC138:
	.string	"-bio_pair"
.LC139:
	.string	"-ipv4"
.LC140:
	.string	"-ipv6"
.LC141:
	.string	"-f"
.LC142:
	.string	"-time"
.LC143:
	.string	"-noct"
.LC144:
	.string	"-ct"
.LC145:
	.string	"-zlib"
.LC146:
	.string	"-app_verify"
.LC147:
	.string	"-npn_client"
.LC148:
	.string	"-npn_server"
.LC149:
	.string	"-npn_server_reject"
.LC150:
	.string	"-serverinfo_sct"
.LC151:
	.string	"-serverinfo_tack"
.LC152:
	.string	"-serverinfo_file"
.LC153:
	.string	"-custom_ext"
.LC154:
	.string	"-alpn_client"
.LC155:
	.string	"-alpn_server"
.LC156:
	.string	"-alpn_server1"
.LC157:
	.string	"-alpn_server2"
.LC158:
	.string	"-alpn_expected"
.LC159:
	.string	"-server_min_proto"
.LC160:
	.string	"-server_max_proto"
.LC161:
	.string	"-client_min_proto"
.LC162:
	.string	"-client_max_proto"
.LC163:
	.string	"-should_negotiate"
.LC164:
	.string	"-sn_client"
.LC165:
	.string	"-sn_server1"
.LC166:
	.string	"-sn_server2"
.LC167:
	.string	"-sn_expect1"
.LC168:
	.string	"-sn_expect2"
.LC169:
	.string	"-server_sess_out"
.LC170:
	.string	"-server_sess_in"
.LC171:
	.string	"-client_sess_out"
.LC172:
	.string	"-client_sess_in"
.LC173:
	.string	"-should_reuse"
.LC174:
	.string	"-no_ticket"
.LC175:
	.string	"-client_ktls"
.LC176:
	.string	"-server_ktls"
.LC177:
	.string	"-provider"
.LC178:
	.string	"-config"
.LC179:
	.string	"Missing argument for %s\n"
.LC180:
	.string	"Error with command %s\n"
.LC181:
	.string	"unknown option %s\n"
	.align 8
.LC182:
	.string	"At most one of -ssl3, -tls1, -tls1_1, -tls1_2, -dtls, -dtls1 or -dtls12 should be requested.\n"
	.align 8
.LC183:
	.string	"Testing was requested for a disabled protocol. Skipping tests.\n"
	.align 8
.LC184:
	.string	"This case cannot work.  Use -f to perform the test anyway (and\n-d to see what happens), or add one of -ssl3, -tls1, -tls1_1, -tls1_2, -dtls, -dtls1, -dtls12, -reuse\nto avoid protocol mismatch.\n"
.LC185:
	.string	"Using BIO pair (-bio_pair)\n"
	.align 8
.LC186:
	.string	"Warning: For accurate timings, use more connections (e.g. -num 1000)\n"
	.align 8
.LC187:
	.string	"Failed to add compression method\n"
.LC188:
	.string	"zlib"
.LC189:
	.string	"unknown"
	.align 8
.LC190:
	.string	"Warning: %s compression not supported\n"
	.align 8
.LC191:
	.string	"Available compression methods:"
.LC192:
	.string	"  %s:%d"
	.align 8
.LC193:
	.string	"CLEARING ALL TLSv1.2 CIPHERS SHOULD FAIL\n"
.LC194:
	.string	""
.LC195:
	.string	"Error processing %s %s\n"
.LC196:
	.string	"Error finishing context\n"
.LC197:
	.string	"Error getting DH parameters\n"
.LC198:
	.string	"client authentication"
.LC199:
	.string	"server authentication"
	.align 8
.LC200:
	.string	"setting PSK identity hint to s_ctx\n"
.LC201:
	.string	"ctx server identity_hint"
	.align 8
.LC202:
	.string	"error setting PSK identity hint to s_ctx\n"
	.align 8
.LC203:
	.string	"Can't have both -npn_server and -npn_server_reject\n"
.LC204:
	.string	"Error adding SCT extension\n"
.LC205:
	.string	"Error adding TACK extension\n"
.LC206:
	.string	"missing serverinfo file\n"
	.align 8
.LC207:
	.string	"Error setting custom extensions\n"
	.align 8
.LC208:
	.string	"Error parsing -alpn_client argument\n"
.LC209:
	.string	"Error setting ALPN\n"
.LC210:
	.string	"Can't add server session\n"
	.align 8
.LC211:
	.string	"Doing handshakes=%d bytes=%ld\n"
.LC212:
	.string	"Failed to set session\n"
.LC213:
	.string	"Can't set client session\n"
.LC214:
	.string	"fail-server"
.LC215:
	.string	"fail-client"
	.align 8
.LC216:
	.string	"Unexpected version negotiated. Expected: %s, got %s\n"
	.align 8
.LC217:
	.string	"Unexpected session reuse state. Expected: %d, server: %d, client: %d\n"
	.align 8
.LC219:
	.string	"Approximate total server time: %6.2f s\nApproximate total client time: %6.2f s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	movl	%edi, -436(%rbp)
	movq	%rsi, -448(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$1, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	leaq	.LC107(%rip), %rax
	movq	%rax, -368(%rbp)
	movl	$0, -360(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movl	$1, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$-1, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movq	$256, -152(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -256(%rbp)
	movl	$0, -180(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -384(%rbp)
	movl	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -264(%rbp)
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -208(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -408(%rbp)
	movl	$0, verbose(%rip)
	movl	$0, debug(%rip)
	call	test_open_streams@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, bio_stdout(%rip)
	call	SSL_CONF_CTX_new@PLT
	movq	%rax, -272(%rbp)
	call	SSL_CONF_CTX_new@PLT
	movq	%rax, -288(%rbp)
	call	SSL_CONF_CTX_new@PLT
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	je	.L166
	cmpq	$0, -280(%rbp)
	je	.L166
	cmpq	$0, -288(%rbp)
	jne	.L167
.L166:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L167:
	movq	-272(%rbp), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_flags@PLT
	movq	-288(%rbp), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_flags@PLT
	leaq	.LC108(%rip), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set1_prefix@PLT
	testl	%eax, %eax
	jne	.L169
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L169:
	leaq	.LC108(%rip), %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set1_prefix@PLT
	testl	%eax, %eax
	jne	.L170
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L170:
	movq	-280(%rbp), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_flags@PLT
	leaq	.LC109(%rip), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set1_prefix@PLT
	testl	%eax, %eax
	jne	.L171
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L171:
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	jmp	.L172
.L279:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC110(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L173
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC111(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, -76(%rbp)
	jmp	.L168
.L173:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC112(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L174
	movl	$1, -84(%rbp)
	jmp	.L175
.L174:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L176
	movl	$1, -80(%rbp)
	jmp	.L175
.L176:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC114(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L177
	movl	$1, verbose(%rip)
	jmp	.L175
.L177:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC115(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L178
	movl	$1, debug(%rip)
	jmp	.L175
.L178:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC116(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L179
	movl	$1, -128(%rbp)
	jmp	.L175
.L179:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC117(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L180
	movl	$1, -176(%rbp)
	jmp	.L175
.L180:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC118(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L181
	movl	$1, -164(%rbp)
	jmp	.L175
.L181:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC119(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L182
	movl	$1, -168(%rbp)
	jmp	.L175
.L182:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC120(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L183
	movl	$1, -172(%rbp)
	jmp	.L175
.L183:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC121(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L175
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC122(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L184
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L411
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, psk_key(%rip)
	movq	psk_key(%rip), %rax
	leaq	.LC123(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movq	%rax, %rbx
	movq	psk_key(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L175
	movq	-448(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC124(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L186
.L184:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC125(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L187
	movl	$1, -68(%rbp)
	jmp	.L175
.L187:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC126(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L188
	movl	$1, -64(%rbp)
	jmp	.L175
.L188:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC127(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L189
	movl	$1, -60(%rbp)
	jmp	.L175
.L189:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC128(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L190
	movl	$1, -72(%rbp)
	jmp	.L175
.L190:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC129(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L191
	movl	$1, -48(%rbp)
	jmp	.L175
.L191:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC130(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L192
	movl	$1, -52(%rbp)
	jmp	.L175
.L192:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC131(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L193
	movl	$1, -56(%rbp)
	jmp	.L175
.L193:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC132(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L194
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L412
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L175
	movl	$1, -124(%rbp)
	jmp	.L175
.L194:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC133(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L196
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L413
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L198
	movq	$1, -152(%rbp)
.L198:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -88(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$107, %al
	jne	.L199
	salq	$10, -152(%rbp)
.L199:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$109, %al
	jne	.L175
	salq	$20, -152(%rbp)
	jmp	.L175
.L196:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC134(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L200
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L414
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, cipher(%rip)
	jmp	.L175
.L200:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC135(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L202
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L415
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, ciphersuites(%rip)
	jmp	.L175
.L202:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC136(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L204
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L416
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L175
.L204:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC137(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L206
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L417
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L175
.L206:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC138(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L208
	movl	$1, -40(%rbp)
	jmp	.L175
.L208:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC139(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L209
	movl	$2, -40(%rbp)
	jmp	.L175
.L209:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC140(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L210
	movl	$3, -40(%rbp)
	jmp	.L175
.L210:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC141(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L211
	movl	$1, -44(%rbp)
	jmp	.L175
.L211:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L212
	movl	$1, -180(%rbp)
	jmp	.L175
.L212:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L213
	movl	$0, -208(%rbp)
	jmp	.L175
.L213:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC144(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L214
	movl	$1, -208(%rbp)
	jmp	.L175
.L214:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC145(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L215
	movl	$1, -184(%rbp)
	jmp	.L175
.L215:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC146(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L216
	movl	$1, -360(%rbp)
	jmp	.L175
.L216:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC147(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L217
	movl	$1, npn_client(%rip)
	jmp	.L175
.L217:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC148(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$1, npn_server(%rip)
	jmp	.L175
.L218:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC149(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L219
	movl	$1, npn_server_reject(%rip)
	jmp	.L175
.L219:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC150(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L220
	movl	$1, serverinfo_sct(%rip)
	jmp	.L175
.L220:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC151(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L221
	movl	$1, serverinfo_tack(%rip)
	jmp	.L175
.L221:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC152(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L222
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L418
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, serverinfo_file(%rip)
	jmp	.L175
.L222:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC153(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L224
	movl	$1, custom_ext(%rip)
	jmp	.L175
.L224:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC154(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L225
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L419
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, alpn_client(%rip)
	jmp	.L175
.L225:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC155(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L227
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC156(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L228
.L227:
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L420
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, alpn_server(%rip)
	jmp	.L175
.L228:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC157(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L230
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L421
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, alpn_server2(%rip)
	jmp	.L175
.L230:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC158(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L232
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L422
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, alpn_expected(%rip)
	jmp	.L175
.L232:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC159(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L234
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L423
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, server_min_proto(%rip)
	jmp	.L175
.L234:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC160(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L236
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L424
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, server_max_proto(%rip)
	jmp	.L175
.L236:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC161(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L238
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L425
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, client_min_proto(%rip)
	jmp	.L175
.L238:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC162(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L240
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L426
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, client_max_proto(%rip)
	jmp	.L175
.L240:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC163(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L242
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L427
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, should_negotiate(%rip)
	jmp	.L175
.L242:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC164(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L244
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L428
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, sn_client(%rip)
	jmp	.L175
.L244:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC165(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L246
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L429
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, sn_server1(%rip)
	jmp	.L175
.L246:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC166(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L248
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L430
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, sn_server2(%rip)
	jmp	.L175
.L248:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L250
	movl	$1, sn_expect(%rip)
	jmp	.L175
.L250:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC168(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L251
	movl	$2, sn_expect(%rip)
	jmp	.L175
.L251:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC169(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L252
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L431
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, server_sess_out(%rip)
	jmp	.L175
.L252:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC170(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L254
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L432
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, server_sess_in(%rip)
	jmp	.L175
.L254:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC171(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L256
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L433
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, client_sess_out(%rip)
	jmp	.L175
.L256:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L258
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L434
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, client_sess_in(%rip)
	jmp	.L175
.L258:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC173(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L260
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L435
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	jmp	.L175
.L260:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC174(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L262
	movl	$1, -136(%rbp)
	jmp	.L175
.L262:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC175(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L263
	movl	$1, -140(%rbp)
	jmp	.L175
.L263:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC176(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L264
	movl	$1, -144(%rbp)
	jmp	.L175
.L264:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC177(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L265
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L436
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	jmp	.L175
.L265:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC178(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L267
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jle	.L437
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	jmp	.L175
.L267:
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-448(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	leaq	-448(%rbp), %rdx
	leaq	-436(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd_argv@PLT
	movl	%eax, -244(%rbp)
	cmpl	$0, -244(%rbp)
	jne	.L269
	leaq	-448(%rbp), %rdx
	leaq	-436(%rbp), %rcx
	movq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd_argv@PLT
	movl	%eax, -244(%rbp)
.L269:
	cmpl	$0, -244(%rbp)
	jle	.L270
	cmpl	$1, -244(%rbp)
	jne	.L271
	movq	$0, -224(%rbp)
.L271:
	cmpq	$0, -216(%rbp)
	jne	.L272
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.L438
.L272:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L439
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L440
	jmp	.L172
.L270:
	cmpl	$-3, -244(%rbp)
	jne	.L275
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-296(%rbp), %rdx
	leaq	.LC179(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L276
.L275:
	cmpl	$0, -244(%rbp)
	jns	.L277
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-296(%rbp), %rdx
	leaq	.LC180(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L276
.L277:
	cmpl	$0, -244(%rbp)
	jne	.L276
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-296(%rbp), %rdx
	leaq	.LC181(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L276:
	movl	$1, -36(%rbp)
	jmp	.L278
.L175:
	movl	-436(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -436(%rbp)
	movq	-448(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
.L172:
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jg	.L279
.L278:
	cmpl	$0, -36(%rbp)
	je	.L280
	jmp	.L186
.L411:
	nop
	jmp	.L186
.L412:
	nop
	jmp	.L186
.L413:
	nop
	jmp	.L186
.L414:
	nop
	jmp	.L186
.L415:
	nop
	jmp	.L186
.L416:
	nop
	jmp	.L186
.L417:
	nop
	jmp	.L186
.L418:
	nop
	jmp	.L186
.L419:
	nop
	jmp	.L186
.L420:
	nop
	jmp	.L186
.L421:
	nop
	jmp	.L186
.L422:
	nop
	jmp	.L186
.L423:
	nop
	jmp	.L186
.L424:
	nop
	jmp	.L186
.L425:
	nop
	jmp	.L186
.L426:
	nop
	jmp	.L186
.L427:
	nop
	jmp	.L186
.L428:
	nop
	jmp	.L186
.L429:
	nop
	jmp	.L186
.L430:
	nop
	jmp	.L186
.L431:
	nop
	jmp	.L186
.L432:
	nop
	jmp	.L186
.L433:
	nop
	jmp	.L186
.L434:
	nop
	jmp	.L186
.L435:
	nop
	jmp	.L186
.L436:
	nop
	jmp	.L186
.L437:
	nop
.L186:
	call	sv_usage
	jmp	.L168
.L280:
	movl	-72(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%eax, %edx
	movl	-56(%rbp), %eax
	addl	%eax, %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L281
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC182(%rip), %rdi
	movq	%rax, %rcx
	movl	$93, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L168
.L281:
	cmpl	$0, -72(%rbp)
	je	.L282
	movl	$1, -196(%rbp)
	jmp	.L283
.L282:
	movl	$0, -196(%rbp)
.L283:
	cmpl	$0, -196(%rbp)
	je	.L284
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC183(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, -76(%rbp)
	jmp	.L168
.L284:
	cmpl	$0, -72(%rbp)
	jne	.L285
	cmpl	$0, -60(%rbp)
	jne	.L285
	cmpl	$0, -64(%rbp)
	jne	.L285
	cmpl	$0, -68(%rbp)
	jne	.L285
	cmpl	$0, -56(%rbp)
	jne	.L285
	cmpl	$0, -48(%rbp)
	jne	.L285
	cmpl	$0, -52(%rbp)
	jne	.L285
	cmpl	$1, -124(%rbp)
	jle	.L285
	cmpl	$0, -128(%rbp)
	jne	.L285
	cmpl	$0, -44(%rbp)
	jne	.L285
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC184(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L168
.L285:
	cmpl	$0, -180(%rbp)
	je	.L286
	cmpl	$0, -40(%rbp)
	jne	.L287
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC185(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -40(%rbp)
.L287:
	cmpl	$49, -124(%rbp)
	jg	.L286
	cmpl	$0, -44(%rbp)
	jne	.L286
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC186(%rip), %rdi
	movq	%rax, %rcx
	movl	$69, %edx
	movl	$1, %esi
	call	fwrite@PLT
.L286:
	cmpl	$1, -184(%rbp)
	jne	.L288
	call	COMP_zlib@PLT
	movq	%rax, -192(%rbp)
.L288:
	cmpq	$0, -192(%rbp)
	je	.L289
	movq	-192(%rbp), %rdx
	movl	-184(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	SSL_COMP_add_compression_method@PLT
	testl	%eax, %eax
	je	.L290
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC187(%rip), %rdi
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	jmp	.L290
.L289:
	cmpl	$1, -184(%rbp)
	jne	.L291
	leaq	.LC188(%rip), %rax
	jmp	.L292
.L291:
	leaq	.LC189(%rip), %rax
.L292:
	movq	stderr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC190(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
.L290:
	call	SSL_COMP_get_compression_methods@PLT
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -300(%rbp)
	cmpl	$0, -300(%rbp)
	je	.L293
	leaq	.LC191(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -248(%rbp)
	jmp	.L294
.L295:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdx
	movl	-248(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_COMP_get_id@PLT
	movl	%eax, %ebx
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_COMP_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC192(%rip), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -248(%rbp)
.L294:
	movl	-248(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jl	.L295
	movl	$10, %edi
	call	putchar@PLT
.L293:
	call	TLS_method@PLT
	movq	%rax, -104(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L296
	movl	$768, -200(%rbp)
	movl	$768, -204(%rbp)
	jmp	.L297
.L296:
	cmpl	$0, -60(%rbp)
	je	.L298
	movl	$769, -200(%rbp)
	movl	$769, -204(%rbp)
	jmp	.L297
.L298:
	cmpl	$0, -64(%rbp)
	je	.L299
	movl	$770, -200(%rbp)
	movl	$770, -204(%rbp)
	jmp	.L297
.L299:
	cmpl	$0, -68(%rbp)
	je	.L300
	movl	$771, -200(%rbp)
	movl	$771, -204(%rbp)
	jmp	.L297
.L300:
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
.L297:
	cmpl	$0, -56(%rbp)
	jne	.L301
	cmpl	$0, -48(%rbp)
	jne	.L301
	cmpl	$0, -52(%rbp)
	je	.L302
.L301:
	call	DTLS_method@PLT
	movq	%rax, -104(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L303
	movl	$65279, -200(%rbp)
	movl	$65279, -204(%rbp)
	jmp	.L302
.L303:
	cmpl	$0, -52(%rbp)
	je	.L304
	movl	$65277, -200(%rbp)
	movl	$65277, -204(%rbp)
	jmp	.L302
.L304:
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
.L302:
	cmpq	$0, -232(%rbp)
	je	.L305
	movq	-232(%rbp), %rdi
	leaq	-392(%rbp), %rcx
	movq	-240(%rbp), %rdx
	leaq	-400(%rbp), %rsi
	leaq	-408(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	je	.L441
.L305:
	movq	-408(%rbp), %rax
	movq	-104(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -96(%rbp)
	movq	-408(%rbp), %rax
	movq	-104(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, s_ctx(%rip)
	movq	-408(%rbp), %rax
	movq	-104(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, s_ctx2(%rip)
	cmpq	$0, -96(%rbp)
	je	.L306
	movq	s_ctx(%rip), %rax
	testq	%rax, %rax
	je	.L306
	movq	s_ctx2(%rip), %rax
	testq	%rax, %rax
	jne	.L307
.L306:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L307:
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_security_level@PLT
	movq	s_ctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_security_level@PLT
	movq	s_ctx2(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_security_level@PLT
	cmpl	$0, -136(%rbp)
	je	.L308
	movq	-96(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	movq	s_ctx(%rip), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
.L308:
	movl	-200(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L442
	movl	-204(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L443
	movl	-200(%rbp), %eax
	movslq	%eax, %rdx
	movq	s_ctx(%rip), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L444
	movl	-204(%rbp), %eax
	movslq	%eax, %rdx
	movq	s_ctx(%rip), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L445
	movq	cipher(%rip), %rax
	testq	%rax, %rax
	je	.L313
	movq	cipher(%rip), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L314
	movq	cipher(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	jne	.L315
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$185, %eax
	jne	.L316
	call	ERR_clear_error@PLT
	movq	cipher(%rip), %rdx
	movq	s_ctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	jne	.L318
	jmp	.L409
.L316:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L315:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC193(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L168
.L409:
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$185, %eax
	jne	.L319
	call	ERR_clear_error@PLT
	movq	cipher(%rip), %rdx
	movq	s_ctx2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	jne	.L321
	jmp	.L410
.L319:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L318:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC193(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L168
.L410:
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$185, %eax
	jne	.L322
	call	ERR_clear_error@PLT
	jmp	.L313
.L322:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L321:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC193(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L168
.L314:
	movq	cipher(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	je	.L323
	movq	cipher(%rip), %rdx
	movq	s_ctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	je	.L323
	movq	cipher(%rip), %rdx
	movq	s_ctx2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	jne	.L313
.L323:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L313:
	movq	ciphersuites(%rip), %rax
	testq	%rax, %rax
	je	.L324
	movq	ciphersuites(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	je	.L325
	movq	ciphersuites(%rip), %rdx
	movq	s_ctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	je	.L325
	movq	ciphersuites(%rip), %rdx
	movq	s_ctx2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	jne	.L324
.L325:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L324:
	cmpl	$0, -208(%rbp)
	je	.L326
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_enable_ct@PLT
	testl	%eax, %eax
	jne	.L326
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L326:
	movq	-96(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_ssl_ctx@PLT
	movq	s_ctx(%rip), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_ssl_ctx@PLT
	movq	s_ctx2(%rip), %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_ssl_ctx@PLT
	movl	$0, -88(%rbp)
	jmp	.L327
.L332:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-88(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -296(%rbp)
	movl	-88(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd@PLT
	movl	%eax, -252(%rbp)
	cmpl	$-2, -252(%rbp)
	jne	.L328
	movq	-224(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd@PLT
	movl	%eax, -252(%rbp)
	cmpl	$0, -252(%rbp)
	jle	.L328
	movq	-224(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd@PLT
	movl	%eax, -252(%rbp)
.L328:
	cmpl	$0, -252(%rbp)
	jg	.L329
	cmpq	$0, -224(%rbp)
	je	.L330
	movq	-224(%rbp), %rax
	jmp	.L331
.L330:
	leaq	.LC194(%rip), %rax
.L331:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-296(%rbp), %rdx
	leaq	.LC195(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L329:
	addl	$2, -88(%rbp)
.L327:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -88(%rbp)
	jl	.L332
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_finish@PLT
	testl	%eax, %eax
	je	.L333
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_finish@PLT
	testl	%eax, %eax
	je	.L333
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_finish@PLT
	testl	%eax, %eax
	jne	.L334
.L333:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC196(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L334:
	cmpl	$0, -176(%rbp)
	jne	.L335
	cmpl	$0, -168(%rbp)
	je	.L336
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	get_dh1024dsa@PLT
	movq	%rax, -160(%rbp)
	jmp	.L337
.L336:
	cmpl	$0, -164(%rbp)
	je	.L338
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	get_dh512@PLT
	movq	%rax, -160(%rbp)
	jmp	.L337
.L338:
	cmpl	$0, -172(%rbp)
	je	.L339
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	get_dh4096@PLT
	movq	%rax, -160(%rbp)
	jmp	.L337
.L339:
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	get_dh2048@PLT
	movq	%rax, -160(%rbp)
.L337:
	cmpq	$0, -160(%rbp)
	je	.L340
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L341
.L340:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC197(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L341:
	movq	s_ctx(%rip), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set0_tmp_dh_pkey@PLT
	testl	%eax, %eax
	jne	.L342
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L342:
	movq	s_ctx2(%rip), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set0_tmp_dh_pkey@PLT
	testl	%eax, %eax
	jne	.L335
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L335:
	movq	s_ctx(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_file@PLT
	testl	%eax, %eax
	jne	.L343
	movq	s_ctx(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_dir@PLT
	testl	%eax, %eax
	je	.L344
.L343:
	movq	s_ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_verify_paths@PLT
	testl	%eax, %eax
	je	.L344
	movq	s_ctx2(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_file@PLT
	testl	%eax, %eax
	jne	.L345
	movq	s_ctx2(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_dir@PLT
	testl	%eax, %eax
	je	.L344
.L345:
	movq	s_ctx2(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_verify_paths@PLT
	testl	%eax, %eax
	je	.L344
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_file@PLT
	testl	%eax, %eax
	jne	.L346
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_dir@PLT
	testl	%eax, %eax
	je	.L344
.L346:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_verify_paths@PLT
	testl	%eax, %eax
	jne	.L347
.L344:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L347:
	movq	s_ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_ctlog_list_file@PLT
	testl	%eax, %eax
	je	.L348
	movq	s_ctx2(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_ctlog_list_file@PLT
	testl	%eax, %eax
	je	.L348
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_ctlog_list_file@PLT
	testl	%eax, %eax
	jne	.L349
.L348:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L349:
	cmpl	$0, -80(%rbp)
	je	.L350
	leaq	.LC198(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	s_ctx(%rip), %rax
	leaq	verify_callback(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_verify@PLT
	movq	s_ctx2(%rip), %rax
	leaq	verify_callback(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_verify@PLT
	movq	s_ctx(%rip), %rax
	leaq	-368(%rbp), %rdx
	leaq	app_verify_callback(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
	movq	s_ctx2(%rip), %rax
	leaq	-368(%rbp), %rdx
	leaq	app_verify_callback(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
.L350:
	cmpl	$0, -84(%rbp)
	je	.L351
	leaq	.LC199(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	verify_callback(%rip), %rdx
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_verify@PLT
	leaq	-368(%rbp), %rdx
	leaq	app_verify_callback(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
.L351:
	movl	$0, -412(%rbp)
	movq	s_ctx(%rip), %rax
	leaq	-412(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_session_id_context@PLT
	testl	%eax, %eax
	je	.L352
	movq	s_ctx2(%rip), %rax
	leaq	-412(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_session_id_context@PLT
	testl	%eax, %eax
	jne	.L353
.L352:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L353:
	movq	psk_key(%rip), %rax
	testq	%rax, %rax
	je	.L354
	cmpl	$0, -256(%rbp)
	je	.L355
	movl	$0, -76(%rbp)
	jmp	.L168
.L355:
	leaq	psk_client_callback(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_client_callback@PLT
	movq	s_ctx(%rip), %rax
	leaq	psk_server_callback(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_server_callback@PLT
	movq	s_ctx2(%rip), %rax
	leaq	psk_server_callback(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_server_callback@PLT
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L356
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L356:
	movq	s_ctx(%rip), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_psk_identity_hint@PLT
	testl	%eax, %eax
	je	.L357
	movq	s_ctx2(%rip), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_psk_identity_hint@PLT
	testl	%eax, %eax
	jne	.L354
.L357:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC202(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L354:
	movl	npn_client(%rip), %eax
	testl	%eax, %eax
	je	.L358
	leaq	cb_client_npn(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_proto_select_cb@PLT
.L358:
	movl	npn_server(%rip), %eax
	testl	%eax, %eax
	je	.L359
	movl	npn_server_reject(%rip), %eax
	testl	%eax, %eax
	je	.L360
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC203(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L360:
	movq	s_ctx(%rip), %rax
	leaq	cb_server_npn(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_protos_advertised_cb@PLT
	movq	s_ctx2(%rip), %rax
	leaq	cb_server_npn(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_protos_advertised_cb@PLT
.L359:
	movl	npn_server_reject(%rip), %eax
	testl	%eax, %eax
	je	.L361
	movq	s_ctx(%rip), %rax
	leaq	cb_server_rejects_npn(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_protos_advertised_cb@PLT
	movq	s_ctx2(%rip), %rax
	leaq	cb_server_rejects_npn(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_protos_advertised_cb@PLT
.L361:
	movl	serverinfo_sct(%rip), %eax
	testl	%eax, %eax
	je	.L362
	leaq	serverinfo_cli_parse_cb(%rip), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$18, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_client_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L362
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L362:
	movl	serverinfo_tack(%rip), %eax
	testl	%eax, %eax
	je	.L363
	leaq	serverinfo_cli_parse_cb(%rip), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$62208, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_client_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L363
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC205(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L363:
	movq	serverinfo_file(%rip), %rax
	testq	%rax, %rax
	je	.L364
	movq	serverinfo_file(%rip), %rdx
	movq	s_ctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_serverinfo_file@PLT
	testl	%eax, %eax
	je	.L365
	movq	serverinfo_file(%rip), %rdx
	movq	s_ctx2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_serverinfo_file@PLT
	testl	%eax, %eax
	jne	.L364
.L365:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC206(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L364:
	movl	custom_ext(%rip), %eax
	testl	%eax, %eax
	je	.L366
	leaq	custom_ext_0_cli_parse_cb(%rip), %rcx
	leaq	custom_ext_0_cli_add_cb(%rip), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1000, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_client_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	leaq	custom_ext_1_cli_parse_cb(%rip), %rcx
	leaq	custom_ext_1_cli_add_cb(%rip), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_client_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	leaq	custom_ext_2_cli_parse_cb(%rip), %rcx
	leaq	custom_ext_2_cli_add_cb(%rip), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1002, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_client_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	leaq	custom_ext_3_cli_parse_cb(%rip), %rcx
	leaq	custom_ext_3_cli_add_cb(%rip), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1003, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_client_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx(%rip), %rax
	leaq	custom_ext_0_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_0_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1000, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx2(%rip), %rax
	leaq	custom_ext_0_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_0_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1000, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx(%rip), %rax
	leaq	custom_ext_1_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_1_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx2(%rip), %rax
	leaq	custom_ext_1_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_1_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx(%rip), %rax
	leaq	custom_ext_2_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_2_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1002, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx2(%rip), %rax
	leaq	custom_ext_2_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_2_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1002, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx(%rip), %rax
	leaq	custom_ext_3_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_3_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1003, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L367
	movq	s_ctx2(%rip), %rax
	leaq	custom_ext_3_srv_parse_cb(%rip), %rcx
	leaq	custom_ext_3_srv_add_cb(%rip), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1003, %esi
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L366
.L367:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC207(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L366:
	movq	alpn_server(%rip), %rax
	testq	%rax, %rax
	je	.L368
	movq	alpn_server(%rip), %rdx
	movq	s_ctx(%rip), %rax
	leaq	cb_server_alpn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_select_cb@PLT
.L368:
	movq	alpn_server2(%rip), %rax
	testq	%rax, %rax
	je	.L369
	movq	alpn_server2(%rip), %rdx
	movq	s_ctx2(%rip), %rax
	leaq	cb_server_alpn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_select_cb@PLT
.L369:
	movq	alpn_client(%rip), %rax
	testq	%rax, %rax
	je	.L370
	movq	alpn_client(%rip), %rdx
	leaq	-424(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	next_protos_parse
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	jne	.L371
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC208(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L371:
	movq	-424(%rbp), %rax
	movl	%eax, %edx
	movq	-320(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_protos@PLT
	testl	%eax, %eax
	je	.L373
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC209(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC9(%rip), %rcx
	movq	-320(%rbp), %rax
	movl	$1741, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L168
.L373:
	leaq	.LC9(%rip), %rcx
	movq	-320(%rbp), %rax
	movl	$1744, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L370:
	movq	server_sess_in(%rip), %rax
	testq	%rax, %rax
	je	.L374
	movq	server_sess_in(%rip), %rax
	movq	%rax, %rdi
	call	read_session
	movq	%rax, server_sess(%rip)
	movq	server_sess(%rip), %rax
	testq	%rax, %rax
	je	.L446
.L374:
	movq	client_sess_in(%rip), %rax
	testq	%rax, %rax
	je	.L375
	movq	client_sess_in(%rip), %rax
	movq	%rax, %rdi
	call	read_session
	movq	%rax, client_sess(%rip)
	movq	client_sess(%rip), %rax
	testq	%rax, %rax
	je	.L447
.L375:
	movq	server_sess_out(%rip), %rax
	testq	%rax, %rax
	jne	.L376
	movq	server_sess_in(%rip), %rax
	testq	%rax, %rax
	je	.L377
.L376:
	movq	s_ctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$59, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movl	$1764, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -336(%rbp)
	cmpq	$0, -336(%rbp)
	je	.L448
	movq	s_ctx(%rip), %rax
	movq	-336(%rbp), %rcx
	movq	-328(%rbp), %rdx
	movl	$59, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	leaq	.LC9(%rip), %rcx
	movq	-336(%rbp), %rax
	movl	$1768, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L377:
	movq	sn_server1(%rip), %rax
	testq	%rax, %rax
	jne	.L379
	movq	sn_server2(%rip), %rax
	testq	%rax, %rax
	je	.L380
.L379:
	movq	s_ctx(%rip), %rax
	leaq	servername_cb(%rip), %rdx
	movl	$53, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
.L380:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -112(%rbp)
	movq	s_ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L449
	cmpq	$0, -120(%rbp)
	je	.L449
	movq	sn_client(%rip), %rax
	testq	%rax, %rax
	je	.L383
	movq	sn_client(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
.L383:
	cmpl	$0, -140(%rbp)
	je	.L384
	movq	-112(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
.L384:
	cmpl	$0, -144(%rbp)
	je	.L385
	movq	-120(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
.L385:
	movq	server_min_proto(%rip), %rax
	movq	-120(%rbp), %rcx
	movl	$123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_protocol_version
	testl	%eax, %eax
	je	.L450
	movq	server_max_proto(%rip), %rax
	movq	-120(%rbp), %rcx
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_protocol_version
	testl	%eax, %eax
	je	.L451
	movq	client_min_proto(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	$123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_protocol_version
	testl	%eax, %eax
	je	.L452
	movq	client_max_proto(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_protocol_version
	testl	%eax, %eax
	je	.L453
	movq	server_sess(%rip), %rax
	testq	%rax, %rax
	je	.L390
	movq	server_sess(%rip), %rdx
	movq	s_ctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_add_session@PLT
	testl	%eax, %eax
	jne	.L390
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC210(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L390:
	movq	bio_stdout(%rip), %rax
	movq	-152(%rbp), %rcx
	movl	-124(%rbp), %edx
	leaq	.LC211(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -88(%rbp)
	jmp	.L391
.L401:
	cmpl	$0, -128(%rbp)
	jne	.L392
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	jne	.L392
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC212(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L392:
	movq	client_sess_in(%rip), %rax
	testq	%rax, %rax
	je	.L393
	movq	client_sess(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	jne	.L393
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC213(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L168
.L393:
	cmpl	$3, -40(%rbp)
	je	.L394
	cmpl	$3, -40(%rbp)
	ja	.L395
	cmpl	$2, -40(%rbp)
	je	.L396
	cmpl	$2, -40(%rbp)
	ja	.L395
	cmpl	$0, -40(%rbp)
	je	.L397
	cmpl	$1, -40(%rbp)
	je	.L398
	jmp	.L395
.L397:
	movq	-152(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	doit@PLT
	movl	%eax, -76(%rbp)
	jmp	.L395
.L398:
	leaq	-384(%rbp), %rdi
	leaq	-376(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	doit_biopair@PLT
	movl	%eax, -76(%rbp)
	jmp	.L395
.L396:
	leaq	-384(%rbp), %rdi
	leaq	-376(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	doit_localhost@PLT
	movl	%eax, -76(%rbp)
	jmp	.L395
.L394:
	leaq	-384(%rbp), %rdi
	leaq	-376(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	doit_localhost@PLT
	movl	%eax, -76(%rbp)
	nop
.L395:
	cmpl	$0, -76(%rbp)
	jne	.L454
	addl	$1, -88(%rbp)
.L391:
	movl	-88(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.L401
	jmp	.L400
.L454:
	nop
.L400:
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L402
	cmpl	$0, -76(%rbp)
	jne	.L402
	movq	should_negotiate(%rip), %rax
	leaq	.LC214(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L402
	movq	should_negotiate(%rip), %rax
	leaq	.LC215(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L402
	movq	should_negotiate(%rip), %rax
	movq	%rax, %rdi
	call	protocol_from_string
	movl	%eax, -340(%rbp)
	cmpl	$0, -340(%rbp)
	jns	.L403
	movq	should_negotiate(%rip), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC106(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -76(%rbp)
	jmp	.L168
.L403:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	%eax, -340(%rbp)
	je	.L402
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_version@PLT
	movq	%rax, %rcx
	movq	should_negotiate(%rip), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC216(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -76(%rbp)
	jmp	.L168
.L402:
	cmpl	$-1, -132(%rbp)
	je	.L404
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	cmpl	%eax, -132(%rbp)
	jne	.L405
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	cmpl	%eax, -132(%rbp)
	je	.L404
.L405:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	movl	%eax, %ebx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	movl	%eax, %ecx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	leaq	.LC217(%rip), %rsi
	movl	%ebx, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -76(%rbp)
	jmp	.L168
.L404:
	movq	server_sess_out(%rip), %rax
	testq	%rax, %rax
	je	.L406
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, %rdx
	movq	server_sess_out(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_session
	testl	%eax, %eax
	jne	.L406
	movl	$1, -76(%rbp)
	jmp	.L168
.L406:
	movq	client_sess_out(%rip), %rax
	testq	%rax, %rax
	je	.L407
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, %rdx
	movq	client_sess_out(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_session
	testl	%eax, %eax
	jne	.L407
	movl	$1, -76(%rbp)
	jmp	.L168
.L407:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	jne	.L408
	leaq	.LC194(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_details
.L408:
	cmpl	$0, -180(%rbp)
	je	.L455
	movq	-384(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC218(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movq	-376(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC218(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movq	bio_stdout(%rip), %rax
	leaq	.LC219(%rip), %rcx
	movapd	%xmm2, %xmm1
	movq	%rdx, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L438:
	nop
	jmp	.L168
.L439:
	nop
	jmp	.L168
.L440:
	nop
	jmp	.L168
.L441:
	nop
	jmp	.L168
.L442:
	nop
	jmp	.L168
.L443:
	nop
	jmp	.L168
.L444:
	nop
	jmp	.L168
.L445:
	nop
	jmp	.L168
.L446:
	nop
	jmp	.L168
.L447:
	nop
	jmp	.L168
.L448:
	nop
	jmp	.L168
.L449:
	nop
	jmp	.L168
.L450:
	nop
	jmp	.L168
.L451:
	nop
	jmp	.L168
.L452:
	nop
	jmp	.L168
.L453:
	nop
	jmp	.L168
.L455:
	nop
.L168:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	s_ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	s_ctx2(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_free@PLT
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_free@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_free@PLT
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	bio_stdout(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	server_sess(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	client_sess(%rip), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	call	test_close_streams@PLT
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE641:
	.size	main, .-main
	.section	.rodata
.LC220:
	.string	"127.0.0.1:0"
.LC221:
	.string	"[::1]:0"
.LC222:
	.string	":%s"
	.align 8
.LC223:
	.string	"client waiting in SSL_connect - %s\n"
.LC224:
	.string	"ERROR in CLIENT (write)\n"
.LC225:
	.string	"SSL CLIENT STARTUP FAILED\n"
.LC226:
	.string	"client wrote %d\n"
.LC227:
	.string	"ERROR in CLIENT (read)\n"
.LC228:
	.string	"client read %d\n"
	.align 8
.LC229:
	.string	"server waiting in SSL_accept - %s\n"
.LC230:
	.string	"ERROR in SERVER (write)\n"
.LC231:
	.string	"SSL SERVER STARTUP FAILED\n"
.LC232:
	.string	"server wrote %d\n"
.LC233:
	.string	"ERROR in SERVER (read)\n"
.LC234:
	.string	"server read %d\n"
.LC235:
	.string	"DONE via TCP connect: "
.LC236:
	.string	"Server info verify error\n"
.LC237:
	.string	"Custom extension error\n"
	.text
	.globl	doit_localhost
	.type	doit_localhost, @function
doit_localhost:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8416, %rsp
	movq	%rdi, -8376(%rbp)
	movq	%rsi, -8384(%rbp)
	movl	%edx, -8388(%rbp)
	movq	%rcx, -8400(%rbp)
	movq	%r8, -8408(%rbp)
	movq	%r9, -8416(%rbp)
	movq	-8400(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8400(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8400(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8400(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$1, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	cmpl	$4, -8388(%rbp)
	jne	.L457
	leaq	.LC220(%rip), %rax
	jmp	.L458
.L457:
	leaq	.LC221(%rip), %rax
.L458:
	movq	%rax, %rdi
	call	BIO_new_accept@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L508
	movl	-8388(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %edx
	movl	$131, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L509
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	BIO_ptr_ctrl@PLT
	movq	%rax, %rcx
	leaq	.LC222(%rip), %rdx
	leaq	-176(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new_connect@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L510
	movl	-8388(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movl	$3, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L511
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L512
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L465
.L469:
	cmpl	$0, -88(%rbp)
	jne	.L466
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L467
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L466
	jmp	.L460
.L467:
	movl	$1, -88(%rbp)
.L466:
	cmpl	$0, -92(%rbp)
	jne	.L465
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L468
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L465
	jmp	.L460
.L468:
	movl	$1, -92(%rbp)
.L465:
	cmpl	$0, -88(%rbp)
	je	.L469
	cmpl	$0, -92(%rbp)
	je	.L469
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	$0, -56(%rbp)
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L513
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L514
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-8384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8384(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-8376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8376(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L498:
	call	clock@PLT
	movq	%rax, -112(%rbp)
	leaq	-8368(%rbp), %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L472
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L472
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC223(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L472:
	cmpq	$0, -24(%rbp)
	jle	.L473
	cmpq	$8192, -24(%rbp)
	jle	.L474
	movl	$8192, -96(%rbp)
	jmp	.L475
.L474:
	movq	-24(%rbp), %rax
	movl	%eax, -96(%rbp)
.L475:
	movl	-96(%rbp), %edx
	leaq	-8368(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jns	.L476
	movq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L473
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -80(%rbp)
	jmp	.L460
.L476:
	cmpl	$0, -116(%rbp)
	jne	.L478
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC225(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L460
.L478:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L479
	movl	-116(%rbp), %eax
	leaq	.LC226(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L479:
	movl	-116(%rbp), %eax
	cltq
	subq	%rax, -24(%rbp)
.L473:
	cmpq	$0, -16(%rbp)
	jle	.L480
	leaq	-8368(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jns	.L481
	movq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L480
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC227(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -80(%rbp)
	jmp	.L460
.L481:
	cmpl	$0, -116(%rbp)
	jne	.L482
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC225(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L460
.L482:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L483
	movl	-116(%rbp), %eax
	leaq	.LC228(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L483:
	movl	-116(%rbp), %eax
	cltq
	subq	%rax, -16(%rbp)
.L480:
	call	clock@PLT
	subq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-8416(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-8416(%rbp), %rax
	movq	%rdx, (%rax)
	call	clock@PLT
	movq	%rax, -128(%rbp)
	leaq	-8368(%rbp), %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L485
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L485
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC229(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L485:
	cmpq	$0, -8(%rbp)
	jle	.L486
	cmpq	$8192, -8(%rbp)
	jle	.L487
	movl	$8192, -100(%rbp)
	jmp	.L488
.L487:
	movq	-8(%rbp), %rax
	movl	%eax, -100(%rbp)
.L488:
	movl	-100(%rbp), %edx
	leaq	-8368(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jns	.L489
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L486
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC230(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -84(%rbp)
	jmp	.L460
.L489:
	cmpl	$0, -132(%rbp)
	jne	.L491
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC231(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L460
.L491:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L492
	movl	-132(%rbp), %eax
	leaq	.LC232(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L492:
	movl	-132(%rbp), %eax
	cltq
	subq	%rax, -8(%rbp)
.L486:
	cmpq	$0, -32(%rbp)
	jle	.L493
	leaq	-8368(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jns	.L494
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L493
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC233(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -84(%rbp)
	jmp	.L460
.L494:
	cmpl	$0, -132(%rbp)
	jne	.L495
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC231(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L460
.L495:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L496
	movl	-132(%rbp), %eax
	leaq	.LC234(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L496:
	movl	-132(%rbp), %eax
	cltq
	subq	%rax, -32(%rbp)
.L493:
	call	clock@PLT
	subq	-128(%rbp), %rax
	movq	%rax, %rdx
	movq	-8408(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-8408(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -24(%rbp)
	jg	.L498
	cmpq	$0, -16(%rbp)
	jg	.L498
	cmpq	$0, -8(%rbp)
	jg	.L498
	cmpq	$0, -32(%rbp)
	jg	.L498
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L499
	leaq	.LC235(%rip), %rdx
	movq	-8384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_details
.L499:
	movq	-8376(%rbp), %rdx
	movq	-8384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_npn
	testl	%eax, %eax
	js	.L515
	call	verify_serverinfo
	testl	%eax, %eax
	jns	.L502
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC236(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L460
.L502:
	movq	-8376(%rbp), %rdx
	movq	-8384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_alpn
	testl	%eax, %eax
	js	.L516
	movq	-8376(%rbp), %rdx
	movq	-8384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_servername
	testl	%eax, %eax
	js	.L516
	movl	custom_ext_error(%rip), %eax
	testl	%eax, %eax
	je	.L517
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC237(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L460
.L515:
	nop
	jmp	.L501
.L517:
	nop
.L501:
	movl	$0, -76(%rbp)
	jmp	.L460
.L508:
	nop
	jmp	.L460
.L509:
	nop
	jmp	.L460
.L510:
	nop
	jmp	.L460
.L511:
	nop
	jmp	.L460
.L512:
	nop
	jmp	.L460
.L513:
	nop
	jmp	.L460
.L514:
	nop
	jmp	.L460
.L516:
	nop
.L460:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L505
	movq	should_negotiate(%rip), %rax
	leaq	.LC215(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L505
	cmpl	$0, -80(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	jmp	.L506
.L505:
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L506
	movq	should_negotiate(%rip), %rax
	leaq	.LC214(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L506
	cmpl	$0, -84(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
.L506:
	movl	-76(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	doit_localhost, .-doit_localhost
	.section	.rodata
.LC238:
	.string	"ERROR in CLIENT\n"
.LC239:
	.string	"ERROR in SERVER\n"
	.align 8
.LC240:
	.string	"ERROR: BIO_write could not write BIO_ctrl_get_write_guarantee() bytes"
.LC241:
	.string	"C->S relaying: %d bytes\n"
.LC242:
	.string	"S->C relaying: %d bytes\n"
	.align 8
.LC243:
	.string	"ERROR: BIO_read could not read BIO_ctrl_pending() bytes"
	.align 8
.LC244:
	.string	"ERROR: BIO_nwrite() did not accept BIO_nwrite0() bytes"
.LC245:
	.string	"ERROR: got stuck\n"
.LC246:
	.string	" ERROR.\n"
.LC247:
	.string	"DONE via BIO pair: "
	.text
	.globl	doit_biopair
	.type	doit_biopair, @function
doit_biopair:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8464, %rsp
	movq	%rdi, -8424(%rbp)
	movq	%rsi, -8432(%rbp)
	movq	%rdx, -8440(%rbp)
	movq	%rcx, -8448(%rbp)
	movq	%r8, -8456(%rbp)
	movq	-8440(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8440(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8440(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8440(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	$256, -96(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new_bio_pair@PLT
	testl	%eax, %eax
	je	.L582
	movq	-96(%rbp), %rcx
	leaq	-200(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new_bio_pair@PLT
	testl	%eax, %eax
	je	.L583
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L584
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L585
	movq	-8432(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-192(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-8432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8432(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8424(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	movq	-176(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-8424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8424(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L572:
	call	clock@PLT
	movq	%rax, -104(%rbp)
	leaq	-8416(%rbp), %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L524
	movq	-8432(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L524
	movq	-8432(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC223(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L524:
	cmpq	$0, -8(%rbp)
	jle	.L525
	cmpq	$8192, -8(%rbp)
	jle	.L526
	movl	$8192, -64(%rbp)
	jmp	.L527
.L526:
	movq	-8(%rbp), %rax
	movl	%eax, -64(%rbp)
.L527:
	movl	-64(%rbp), %edx
	leaq	-8416(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jns	.L528
	movq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L525
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC238(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -56(%rbp)
	jmp	.L520
.L528:
	cmpl	$0, -108(%rbp)
	jne	.L530
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC225(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L530:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L531
	movl	-108(%rbp), %eax
	leaq	.LC226(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L531:
	movl	-108(%rbp), %eax
	cltq
	subq	%rax, -8(%rbp)
.L525:
	cmpq	$0, -16(%rbp)
	jle	.L532
	leaq	-8416(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jns	.L533
	movq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L532
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC238(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -56(%rbp)
	jmp	.L520
.L533:
	cmpl	$0, -108(%rbp)
	jne	.L534
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC225(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L534:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L535
	movl	-108(%rbp), %eax
	leaq	.LC228(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L535:
	movl	-108(%rbp), %eax
	cltq
	subq	%rax, -16(%rbp)
.L532:
	call	clock@PLT
	subq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-8456(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-8456(%rbp), %rax
	movq	%rdx, (%rax)
	call	clock@PLT
	movq	%rax, -120(%rbp)
	leaq	-8416(%rbp), %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L537
	movq	-8424(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L537
	movq	-8424(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC229(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L537:
	cmpq	$0, -24(%rbp)
	jle	.L538
	cmpq	$8192, -24(%rbp)
	jle	.L539
	movl	$8192, -68(%rbp)
	jmp	.L540
.L539:
	movq	-24(%rbp), %rax
	movl	%eax, -68(%rbp)
.L540:
	movl	-68(%rbp), %edx
	leaq	-8416(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jns	.L541
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L538
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC239(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -60(%rbp)
	jmp	.L520
.L541:
	cmpl	$0, -124(%rbp)
	jne	.L543
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC231(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L543:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L544
	movl	-124(%rbp), %eax
	leaq	.LC232(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L544:
	movl	-124(%rbp), %eax
	cltq
	subq	%rax, -24(%rbp)
.L538:
	cmpq	$0, -32(%rbp)
	jle	.L545
	leaq	-8416(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jns	.L546
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L545
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC239(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -60(%rbp)
	jmp	.L520
.L546:
	cmpl	$0, -124(%rbp)
	jne	.L547
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC231(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L547:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L548
	movl	-124(%rbp), %eax
	leaq	.LC234(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L548:
	movl	-124(%rbp), %eax
	cltq
	subq	%rax, -32(%rbp)
.L545:
	call	clock@PLT
	subq	-120(%rbp), %rax
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-184(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -72(%rbp)
.L558:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl_pending@PLT
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl_get_write_guarantee@PLT
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L550
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
.L550:
	cmpq	$0, -80(%rbp)
	je	.L551
	cmpq	$2147483647, -80(%rbp)
	jbe	.L552
	movq	$2147483647, -80(%rbp)
.L552:
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	leaq	-208(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_nread@PLT
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-208(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -164(%rbp)
	movq	-80(%rbp), %rax
	cmpl	%eax, -164(%rbp)
	je	.L553
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC240(%rip), %rdi
	movq	%rax, %rcx
	movl	$69, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L553:
	movl	$1, -72(%rbp)
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L551
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	cmpq	%rax, -136(%rbp)
	jne	.L555
	leaq	.LC241(%rip), %rax
	jmp	.L556
.L555:
	leaq	.LC242(%rip), %rax
.L556:
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L551:
	cmpq	$0, -152(%rbp)
	je	.L557
	cmpq	$0, -160(%rbp)
	jne	.L558
.L557:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl_pending@PLT
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl_get_read_request@PLT
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L559
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
.L559:
	cmpq	$0, -88(%rbp)
	je	.L560
	cmpq	$2147483647, -88(%rbp)
	jbe	.L561
	movq	$2147483647, -88(%rbp)
.L561:
	cmpq	$1, -88(%rbp)
	jbe	.L562
	subq	$1, -88(%rbp)
.L562:
	leaq	-216(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_nwrite0@PLT
	movl	%eax, -168(%rbp)
	movq	-88(%rbp), %rax
	cmpl	%eax, -168(%rbp)
	jge	.L563
	movl	-168(%rbp), %eax
	cltq
	movq	%rax, -88(%rbp)
.L563:
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-216(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -168(%rbp)
	movq	-88(%rbp), %rax
	cmpl	%eax, -168(%rbp)
	je	.L564
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC243(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L564:
	movl	$1, -72(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-216(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_nwrite@PLT
	movl	%eax, -168(%rbp)
	movq	-88(%rbp), %rax
	cmpl	%eax, -168(%rbp)
	je	.L566
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC244(%rip), %rdi
	movq	%rax, %rcx
	movl	$54, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L566:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L560
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	cmpq	%rax, -144(%rbp)
	jne	.L568
	leaq	.LC241(%rip), %rax
	jmp	.L569
.L568:
	leaq	.LC242(%rip), %rax
.L569:
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L560:
	cmpl	$0, -72(%rbp)
	jne	.L570
	movl	prev_progress.0(%rip), %eax
	testl	%eax, %eax
	jne	.L570
	cmpq	$0, -8(%rbp)
	jg	.L571
	cmpq	$0, -16(%rbp)
	jg	.L571
	cmpq	$0, -24(%rbp)
	jg	.L571
	cmpq	$0, -32(%rbp)
	jle	.L570
.L571:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC245(%rip), %rdi
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC246(%rip), %rdi
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L570:
	movl	-72(%rbp), %eax
	movl	%eax, prev_progress.0(%rip)
	cmpq	$0, -8(%rbp)
	jg	.L572
	cmpq	$0, -16(%rbp)
	jg	.L572
	cmpq	$0, -24(%rbp)
	jg	.L572
	cmpq	$0, -32(%rbp)
	jg	.L572
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L573
	leaq	.LC247(%rip), %rdx
	movq	-8432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_details
.L573:
	movq	-8424(%rbp), %rdx
	movq	-8432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_npn
	testl	%eax, %eax
	js	.L586
	call	verify_serverinfo
	testl	%eax, %eax
	jns	.L576
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC236(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L576:
	movq	-8424(%rbp), %rdx
	movq	-8432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_alpn
	testl	%eax, %eax
	js	.L587
	movq	-8424(%rbp), %rdx
	movq	-8432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_servername
	testl	%eax, %eax
	js	.L587
	movl	custom_ext_error(%rip), %eax
	testl	%eax, %eax
	je	.L588
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC237(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L520
.L586:
	nop
	jmp	.L575
.L588:
	nop
.L575:
	movl	$0, -52(%rbp)
	jmp	.L520
.L582:
	nop
	jmp	.L520
.L583:
	nop
	jmp	.L520
.L584:
	nop
	jmp	.L520
.L585:
	nop
	jmp	.L520
.L587:
	nop
.L520:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L579
	movq	should_negotiate(%rip), %rax
	leaq	.LC215(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L579
	cmpl	$0, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	jmp	.L580
.L579:
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L580
	movq	should_negotiate(%rip), %rax
	leaq	.LC214(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L580
	cmpl	$0, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
.L580:
	movl	-52(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	doit_biopair, .-doit_biopair
	.section	.rodata
.LC248:
	.string	"ERROR IN STARTUP\n"
	.align 8
.LC249:
	.string	"SSL SERVER STARTUP FAILED in SSL_read\n"
	.align 8
.LC250:
	.string	"SSL SERVER STARTUP FAILED in SSL_write\n"
.LC251:
	.string	"DONE: "
	.text
	.globl	doit
	.type	doit, @function
doit:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -8(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$5120, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	movq	-184(%rbp), %rax
	movl	$40960, %edx
	cmpq	%rdx, %rax
	cmovg	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movl	$2632, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L650
	movq	-152(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movl	$2634, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L651
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L593
	cmpq	$0, -56(%rbp)
	jne	.L594
.L593:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L594:
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -72(%rbp)
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L595
	cmpq	$0, -80(%rbp)
	jne	.L596
.L595:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L596:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-176(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L597
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L591
.L597:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L598
	movq	$0, -64(%rbp)
	jmp	.L591
.L598:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-168(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$0, -84(%rbp)
	movl	$1, -92(%rbp)
	movl	$1, -88(%rbp)
	movl	$0, -96(%rbp)
	movl	$1, -108(%rbp)
	movl	$0, -112(%rbp)
.L641:
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	je	.L599
	cmpl	$0, -92(%rbp)
	jne	.L600
.L599:
	cmpl	$0, -96(%rbp)
	je	.L601
.L600:
	movl	$1, -116(%rbp)
.L601:
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	je	.L602
	cmpl	$0, -84(%rbp)
	jne	.L603
.L602:
	cmpl	$0, -88(%rbp)
	je	.L604
.L603:
	movl	$1, -120(%rbp)
.L604:
	cmpl	$0, -116(%rbp)
	je	.L605
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L605
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L605
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC229(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L605:
	cmpl	$0, -120(%rbp)
	je	.L606
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L606
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L606
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC223(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L606:
	cmpl	$0, -120(%rbp)
	jne	.L607
	cmpl	$0, -116(%rbp)
	jne	.L607
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC248(%rip), %rdi
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L607:
	cmpl	$0, -120(%rbp)
	je	.L608
	movl	-104(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L608
	cmpl	$0, -108(%rbp)
	je	.L609
	movq	-16(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jle	.L610
	movq	-152(%rbp), %rax
	movl	%eax, -100(%rbp)
	jmp	.L611
.L610:
	movq	-16(%rbp), %rax
	movl	%eax, -100(%rbp)
.L611:
	movl	-100(%rbp), %edx
	movq	-144(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jns	.L612
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L613
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L614
	movl	$1, -84(%rbp)
.L614:
	movq	-72(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L608
	movl	$1, -88(%rbp)
	jmp	.L608
.L613:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC238(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -128(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L612:
	cmpl	$0, -156(%rbp)
	jne	.L615
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC225(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L591
.L615:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L616
	movl	-156(%rbp), %eax
	leaq	.LC226(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L616:
	movl	$1, -92(%rbp)
	movl	$0, -108(%rbp)
	movl	-156(%rbp), %eax
	cltq
	subq	%rax, -16(%rbp)
	cmpl	$1029, -124(%rbp)
	jle	.L608
	subl	$5, -124(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	jmp	.L608
.L609:
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-144(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jns	.L617
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L618
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L619
	movl	$1, -84(%rbp)
.L619:
	movq	-72(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L608
	movl	$1, -88(%rbp)
	jmp	.L608
.L618:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC238(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -128(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L617:
	cmpl	$0, -156(%rbp)
	jne	.L620
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC225(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L591
.L620:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L621
	movl	-156(%rbp), %eax
	leaq	.LC228(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L621:
	movl	-156(%rbp), %eax
	cltq
	subq	%rax, -24(%rbp)
	cmpq	$0, -32(%rbp)
	jle	.L622
	movl	$1, -112(%rbp)
	movl	$1, -96(%rbp)
.L622:
	cmpq	$0, -24(%rbp)
	jg	.L608
	movl	$1, -112(%rbp)
	movl	$1, -96(%rbp)
	movl	$3, -104(%rbp)
.L608:
	cmpl	$0, -116(%rbp)
	je	.L623
	movl	-104(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L623
	cmpl	$0, -112(%rbp)
	jne	.L624
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jns	.L625
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-80(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L626
	movq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L627
	movl	$1, -92(%rbp)
.L627:
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L623
	movl	$1, -96(%rbp)
	jmp	.L623
.L626:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC239(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -132(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L625:
	cmpl	$0, -156(%rbp)
	jne	.L628
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC249(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L591
.L628:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L629
	movl	-156(%rbp), %eax
	leaq	.LC234(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L629:
	movl	-156(%rbp), %eax
	cltq
	subq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.L630
	movl	$1, -108(%rbp)
	movl	$1, -88(%rbp)
.L630:
	cmpq	$0, -40(%rbp)
	jg	.L623
	movl	$1, -112(%rbp)
	movl	$1, -96(%rbp)
	movl	$0, -108(%rbp)
	jmp	.L623
.L624:
	movq	-32(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jle	.L631
	movq	-152(%rbp), %rax
	movl	%eax, -100(%rbp)
	jmp	.L632
.L631:
	movq	-32(%rbp), %rax
	movl	%eax, -100(%rbp)
.L632:
	movl	-100(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jns	.L633
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-80(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L634
	movq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L635
	movl	$1, -92(%rbp)
.L635:
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L623
	movl	$1, -96(%rbp)
	jmp	.L623
.L634:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC239(%rip), %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, -132(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L591
.L633:
	cmpl	$0, -156(%rbp)
	jne	.L636
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC250(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L591
.L636:
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L637
	movl	-156(%rbp), %eax
	leaq	.LC232(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L637:
	movl	-156(%rbp), %eax
	cltq
	subq	%rax, -32(%rbp)
	movl	$0, -112(%rbp)
	movl	$1, -84(%rbp)
	cmpq	$0, -32(%rbp)
	jg	.L638
	orl	$2, -104(%rbp)
.L638:
	cmpl	$1029, -124(%rbp)
	jle	.L623
	subl	$5, -124(%rbp)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
.L623:
	movl	-104(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L641
	movl	-104(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L652
	jmp	.L641
.L652:
	nop
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L642
	leaq	.LC251(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_details
.L642:
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_npn
	testl	%eax, %eax
	js	.L653
	call	verify_serverinfo
	testl	%eax, %eax
	jns	.L644
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC236(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L591
.L644:
	movl	custom_ext_error(%rip), %eax
	testl	%eax, %eax
	je	.L645
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC237(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L591
.L645:
	movl	$0, -44(%rbp)
	jmp	.L591
.L650:
	nop
	jmp	.L591
.L651:
	nop
	jmp	.L591
.L653:
	nop
.L591:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	leaq	.LC9(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$2881, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC9(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2882, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L646
	movq	should_negotiate(%rip), %rax
	leaq	.LC215(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L646
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	jmp	.L647
.L646:
	movq	should_negotiate(%rip), %rax
	testq	%rax, %rax
	je	.L647
	movq	should_negotiate(%rip), %rax
	leaq	.LC214(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L647
	cmpl	$0, -132(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
.L647:
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	doit, .-doit
	.section	.rodata
.LC252:
	.string	"depth=%d %s\n"
.LC253:
	.string	"depth=%d error=%d %s\n"
.LC254:
	.string	"Error string: %s\n"
	.text
	.type	verify_callback, @function
verify_callback:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	%edi, -292(%rbp)
	movq	%rsi, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_current_cert@PLT
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rcx
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L655
	cmpl	$0, -292(%rbp)
	je	.L656
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	movl	%eax, %esi
	leaq	-288(%rbp), %rax
	leaq	.LC252(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L655
.L656:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, %ebx
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	movl	%eax, %edx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-288(%rbp), %rcx
	leaq	.LC253(%rip), %rsi
	movq	%rcx, %r8
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L655:
	cmpl	$0, -292(%rbp)
	jne	.L657
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -28(%rbp)
	cmpl	$10, -28(%rbp)
	jg	.L658
	cmpl	$9, -28(%rbp)
	jge	.L659
	jmp	.L660
.L658:
	cmpl	$18, -28(%rbp)
	je	.L659
.L660:
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC254(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L657
.L659:
	movl	$1, -292(%rbp)
	nop
.L657:
	movl	-292(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	verify_callback, .-verify_callback
	.section	.rodata
	.align 8
.LC255:
	.string	"In app_verify_callback, allowing cert. "
.LC256:
	.string	"Arg is: %s\n"
	.align 8
.LC257:
	.string	"Finished printing do we have a context? 0x%p a cert? 0x%p\n"
.LC258:
	.string	"cert depth=%d %s\n"
	.text
	.type	app_verify_callback, @function
app_verify_callback:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movl	$1, -12(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L663
	movq	$0, -8(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_cert@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC255(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC256(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rdx
	movq	-296(%rbp), %rax
	leaq	.LC257(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -32(%rbp)
	je	.L664
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rcx
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -8(%rbp)
.L664:
	cmpq	$0, -8(%rbp)
	je	.L665
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	movl	%eax, %esi
	leaq	-288(%rbp), %rax
	leaq	.LC258(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L665:
	movl	$1, %eax
	jmp	.L666
.L663:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
.L666:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	app_verify_callback, .-app_verify_callback
	.section	.rodata
	.align 8
.LC259:
	.string	"Could not convert PSK key '%s' to BIGNUM\n"
	.align 8
.LC260:
	.string	"psk buffer of callback is too small (%d) for key (%d)\n"
	.text
	.type	psk_key2bn, @function
psk_key2bn:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L668
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC259(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L671
.L668:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L670
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	leaq	.LC260(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L671
.L670:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L671:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	psk_key2bn, .-psk_key2bn
	.section	.rodata
.LC261:
	.string	"Client_identity"
	.align 8
.LC262:
	.string	"client: created identity '%s' len=%d\n"
	.text
	.type	psk_client_callback, @function
psk_client_callback:
.LFB648:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	-44(%rbp), %ecx
	leaq	.LC261(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L678
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L675
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %ecx
	movq	-40(%rbp), %rdx
	leaq	.LC262(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L675:
	movq	psk_key(%rip), %rax
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	psk_key2bn
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L679
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L674
.L678:
	nop
	jmp	.L674
.L679:
	nop
.L674:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	psk_client_callback, .-psk_client_callback
	.section	.rodata
	.align 8
.LC263:
	.string	"server: PSK error: client identity not found\n"
	.text
	.type	psk_server_callback, @function
psk_server_callback:
.LFB649:
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
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC261(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L681
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC263(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L682
.L681:
	movq	psk_key(%rip), %rax
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	psk_key2bn
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L682:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	psk_server_callback, .-psk_server_callback
	.section	.rodata
.LC264:
	.string	"ssl3"
.LC265:
	.string	"tls1"
.LC266:
	.string	"tls1.1"
.LC267:
	.string	"tls1.2"
.LC268:
	.string	"tls1.3"
.LC269:
	.string	"dtls1"
.LC270:
	.string	"dtls1.2"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	versions.1, @object
	.size	versions.1, 112
versions.1:
	.quad	.LC264
	.long	768
	.zero	4
	.quad	.LC265
	.long	769
	.zero	4
	.quad	.LC266
	.long	770
	.zero	4
	.quad	.LC267
	.long	771
	.zero	4
	.quad	.LC268
	.long	772
	.zero	4
	.quad	.LC269
	.long	65279
	.zero	4
	.quad	.LC270
	.long	65277
	.zero	4
	.data
	.align 4
	.type	prev_progress.0, @object
	.size	prev_progress.0, 4
prev_progress.0:
	.long	1
	.section	.rodata
	.align 8
.LC218:
	.long	0
	.long	1093567616
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"clienthellotest.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB497:
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
.LFE497:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB500:
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
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_equal, @function
PACKET_equal:
.LFB502:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	%rax, -24(%rbp)
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	PACKET_equal, .-PACKET_equal
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB505:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$1, %rax
	ja	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB506:
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
	call	PACKET_peek_net_2
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB516:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB517:
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
	call	PACKET_peek_1
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-24(%rbp), %rax
	jnb	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_peek_bytes
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_forward, @function
PACKET_forward:
.LFB529:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-16(%rbp), %rax
	jnb	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_1, @function
PACKET_get_length_prefixed_1:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L32
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L35
.L33:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L37
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L38
.L37:
	movl	$0, %eax
	jmp	.L40
.L38:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_as_length_prefixed_2, @function
PACKET_as_length_prefixed_2:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L42
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L42
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L43
.L42:
	movl	$0, %eax
	jmp	.L45
.L43:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
	.local	sessionfile
	.comm	sessionfile,8,8
	.section	.rodata
	.align 32
	.type	alpn_prots, @object
	.size	alpn_prots, 161
alpn_prots:
	.string	"O1234567890123456789012345678901234567890123456789012345678901234567890123456789O1234567890123456789012345678901234567890123456789012345678901234567890123456789"
.LC0:
	.string	"Hello World!"
.LC1:
	.string	"ctx"
.LC2:
	.string	"../test/clienthellotest.c"
	.align 8
.LC3:
	.string	"SSL_CTX_set_max_proto_version(ctx, 0)"
	.align 8
.LC4:
	.string	"SSL_CTX_set_max_proto_version(ctx, TLS1_2_VERSION)"
.LC5:
	.string	""
	.align 8
.LC6:
	.string	"SSL_CTX_set_cipher_list(ctx, \"\")"
	.align 8
.LC7:
	.string	"SSL_CTX_set_alpn_protos(ctx, (unsigned char *)alpn_prots, sizeof(alpn_prots) - 1)"
.LC8:
	.string	"AES128-SHA"
	.align 8
.LC9:
	.string	"SSL_CTX_set_cipher_list(ctx, \"AES128-SHA\")"
.LC10:
	.string	"TLS_AES_128_GCM_SHA256"
	.align 8
.LC11:
	.string	"SSL_CTX_set_ciphersuites(ctx, \"TLS_AES_128_GCM_SHA256\")"
.LC12:
	.string	"con"
.LC13:
	.string	"r"
.LC14:
	.string	"sessbio"
.LC15:
	.string	"Unable to open session.pem"
.LC16:
	.string	"sess"
.LC17:
	.string	"Unable to load SSL_SESSION"
	.align 8
.LC18:
	.string	"SSL_SESSION_set_time(sess, (long)time(NULL))"
.LC19:
	.string	"SSL_set_session(con, sess)"
.LC20:
	.string	"rbio"
.LC21:
	.string	"wbio"
	.align 8
.LC22:
	.string	"SSL_set_session_ticket_ext(con, dummytick, strlen(dummytick))"
.LC23:
	.string	"0"
.LC24:
	.string	"SSL_connect(con)"
	.align 8
.LC25:
	.string	"len = BIO_get_mem_data(wbio, (char **)&data)"
	.align 8
.LC26:
	.string	"PACKET_buf_init(&pkt, data, len)"
	.align 8
.LC27:
	.string	"PACKET_forward(&pkt, SSL3_HM_HEADER_LENGTH)"
	.align 8
.LC28:
	.string	"PACKET_forward(&pkt, CLIENT_VERSION_LEN + SSL3_RANDOM_SIZE)"
	.align 8
.LC29:
	.string	"PACKET_get_length_prefixed_1(&pkt, &pkt2)"
	.align 8
.LC30:
	.string	"PACKET_get_length_prefixed_2(&pkt, &pkt2)"
	.align 8
.LC31:
	.string	"PACKET_as_length_prefixed_2(&pkt, &pkt2)"
	.align 8
.LC32:
	.string	"PACKET_get_net_2(&pkt2, &type)"
	.align 8
.LC33:
	.string	"PACKET_get_length_prefixed_2(&pkt2, &pkt3)"
	.align 8
.LC34:
	.string	"PACKET_equal(&pkt3, dummytick, strlen(dummytick))"
	.align 8
.LC35:
	.string	"currtest == TEST_PADDING_NOT_NEEDED"
	.align 8
.LC36:
	.string	"currtest == TEST_ADD_PADDING || currtest == TEST_ADD_PADDING_AND_PSK"
	.align 8
.LC37:
	.string	"msglen == F5_WORKAROUND_MAX_MSG_LEN"
	.text
	.type	test_client_hello, @function
test_client_hello:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	-112(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-128(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-144(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	TLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$89, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	cmpl	$3, -164(%rbp)
	je	.L50
	cmpl	$3, -164(%rbp)
	jg	.L86
	cmpl	$0, -164(%rbp)
	je	.L52
	cmpl	$0, -164(%rbp)
	js	.L86
	movl	-164(%rbp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L86
	jmp	.L53
.L52:
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$771, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L87
	jmp	.L48
.L50:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L88
	call	ERR_clear_error@PLT
.L53:
	movq	-48(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	movq	-48(%rbp), %rax
	movl	$1048576, %esi
	movq	%rax, %rdi
	call	SSL_CTX_clear_options@PLT
	cmpl	$1, -164(%rbp)
	jne	.L57
	leaq	alpn_prots(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_protos@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L89
	jmp	.L48
.L57:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	jmp	.L89
.L87:
	nop
	jmp	.L55
.L89:
	nop
.L55:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$149, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	cmpl	$3, -164(%rbp)
	jne	.L61
	movq	sessionfile(%rip), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L62
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L48
.L62:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_SSL_SESSION@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L63
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L48
.L63:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set_time@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
.L61:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$174, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	-64(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$174, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L66
.L65:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L48
.L66:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	cmpl	$0, -164(%rbp)
	jne	.L67
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session_ticket_ext@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L93
.L67:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$189, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L94
	leaq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	testl	%eax, %eax
	je	.L95
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	leaq	-112(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L95
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -80(%rbp)
	leaq	-112(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$203, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	leaq	-112(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$210, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	jmp	.L73
.L82:
	leaq	-148(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-144(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$221, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movl	-148(%rbp), %eax
	cmpl	$35, %eax
	jne	.L76
	cmpl	$0, -164(%rbp)
	jne	.L76
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L98
	movl	$1, -12(%rbp)
	jmp	.L98
.L76:
	movl	-148(%rbp), %eax
	cmpl	$21, %eax
	jne	.L73
	cmpl	$2, -164(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L99
	cmpl	$1, -164(%rbp)
	je	.L79
	cmpl	$3, -164(%rbp)
	jne	.L80
.L79:
	movl	$1, %ecx
	jmp	.L81
.L80:
	movl	$0, %ecx
.L81:
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$237, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	cmpq	$512, -80(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$239, %esi
	call	test_true@PLT
	movl	%eax, -12(%rbp)
.L73:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L82
	cmpl	$2, -164(%rbp)
	jne	.L100
	movl	$1, -12(%rbp)
	jmp	.L48
.L84:
	nop
	jmp	.L48
.L85:
	nop
	jmp	.L48
.L86:
	nop
	jmp	.L48
.L88:
	nop
	jmp	.L48
.L90:
	nop
	jmp	.L48
.L91:
	nop
	jmp	.L48
.L92:
	nop
	jmp	.L48
.L93:
	nop
	jmp	.L48
.L94:
	nop
	jmp	.L48
.L95:
	nop
	jmp	.L48
.L96:
	nop
	jmp	.L48
.L97:
	nop
	jmp	.L48
.L98:
	nop
	jmp	.L48
.L99:
	nop
	jmp	.L48
.L100:
	nop
.L48:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	test_client_hello, .-test_client_hello
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB539:
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
.LFE539:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC38:
	.string	"Error parsing test options\n"
	.align 8
.LC39:
	.string	"sessionfile = test_get_argument(0)"
.LC40:
	.string	"test_client_hello"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L104
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L105
.L104:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, sessionfile(%rip)
	movq	sessionfile(%rip), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$264, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L105
.L106:
	leaq	test_client_hello(%rip), %rsi
	leaq	.LC40(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L105:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC41:
	.string	"Usage: %s [options] sessionfile\n"
.LC42:
	.string	"Valid options are:\n"
.LC43:
	.string	"help"
.LC44:
	.string	"Display this summary"
.LC45:
	.string	"list"
	.align 8
.LC46:
	.string	"Display the list of tests available"
.LC47:
	.string	"test"
	.align 8
.LC48:
	.string	"Run a single test by id or name"
.LC49:
	.string	"iter"
	.align 8
.LC50:
	.string	"Run a single iteration of a test"
.LC51:
	.string	"indent"
	.align 8
.LC52:
	.string	"Number of tabs added to output"
.LC53:
	.string	"seed"
	.align 8
.LC54:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC41
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	500
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	501
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	502
	.long	115
	.quad	.LC48
	.quad	.LC49
	.long	503
	.long	110
	.quad	.LC50
	.quad	.LC51
	.long	504
	.long	112
	.quad	.LC52
	.quad	.LC53
	.long	505
	.long	110
	.quad	.LC54
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

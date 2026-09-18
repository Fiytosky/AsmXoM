	.file	"ssl_test.c"
	.text
	.type	ossl_check_const_X509_NAME_sk_type, @function
ossl_check_const_X509_NAME_sk_type:
.LFB376:
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
.LFE376:
	.size	ossl_check_const_X509_NAME_sk_type, .-ossl_check_const_X509_NAME_sk_type
	.local	conf
	.comm	conf,8,8
	.local	defctxnull
	.comm	defctxnull,8,8
	.local	thisprov
	.comm	thisprov,8,8
	.local	libctx
	.comm	libctx,8,8
	.section	.rodata
.LC0:
	.string	"no alert"
	.text
	.type	print_alert, @function
print_alert:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L4
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	SSL_alert_desc_string_long@PLT
	jmp	.L6
.L4:
	leaq	.LC0(%rip), %rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	print_alert, .-print_alert
	.section	.rodata
.LC1:
	.string	"test_ctx->expected_result"
.LC2:
	.string	"result->result"
.LC3:
	.string	"../test/ssl_test.c"
	.align 8
.LC4:
	.string	"ExpectedResult mismatch: expected %s, got %s."
	.text
	.type	check_result, @function
check_result:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	424(%rax), %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ssl_test_result_name@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	424(%rax), %eax
	movl	%eax, %edi
	call	ssl_test_result_name@PLT
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$37, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$1, %eax
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	check_result, .-check_result
	.section	.rodata
.LC5:
	.string	"result->client_alert_received"
.LC6:
	.string	"result->client_alert_sent"
	.align 8
.LC7:
	.string	"Client sent alert %s but server received %s."
.LC8:
	.string	"result->server_alert_received"
.LC9:
	.string	"result->server_alert_sent"
	.align 8
.LC10:
	.string	"Server sent alert %s but client received %s."
	.align 8
.LC11:
	.string	"ClientAlert mismatch: expected %s, got %s."
	.align 8
.LC12:
	.string	"ServerAlert mismatch: expected %s, got %s."
.LC13:
	.string	"1"
	.align 8
.LC14:
	.string	"result->client_num_fatal_alerts_sent"
	.align 8
.LC15:
	.string	"result->server_num_fatal_alerts_sent"
	.text
	.type	check_alerts, @function
check_alerts:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %edi
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$49, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L11:
	movq	-24(%rbp), %rax
	movl	24(%rax), %edi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L12
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L12:
	movq	-32(%rbp), %rax
	movl	428(%rax), %eax
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	428(%rax), %eax
	cmpl	%eax, %edx
	je	.L13
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	428(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$82, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-32(%rbp), %rax
	movl	432(%rax), %eax
	testl	%eax, %eax
	je	.L15
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	432(%rax), %eax
	cmpl	%eax, %edx
	je	.L15
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	432(%rax), %eax
	movl	%eax, %edi
	call	print_alert
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$90, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L14
.L16:
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L14
.L17:
	movl	$1, %eax
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	check_alerts, .-check_alerts
	.section	.rodata
.LC16:
	.string	"result->server_protocol"
.LC17:
	.string	"result->client_protocol"
	.align 8
.LC18:
	.string	"Client has protocol %s but server has %s."
.LC19:
	.string	"test_ctx->expected_protocol"
	.align 8
.LC20:
	.string	"Protocol mismatch: expected %s, got %s.\n"
	.text
	.type	check_protocol, @function
check_protocol:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %edi
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$105, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	ssl_protocol_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	ssl_protocol_name@PLT
	movq	%rax, %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$106, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-32(%rbp), %rax
	movl	436(%rax), %eax
	testl	%eax, %eax
	je	.L21
	movq	-32(%rbp), %rax
	movl	436(%rax), %edi
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L21
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	ssl_protocol_name@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	436(%rax), %eax
	movl	%eax, %edi
	call	ssl_protocol_name@PLT
	movq	%rax, %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$115, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L20
.L21:
	movl	$1, %eax
.L20:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	check_protocol, .-check_protocol
	.section	.rodata
.LC21:
	.string	"test_ctx->expected_servername"
.LC22:
	.string	"result->servername"
	.align 8
.LC23:
	.string	"Client ServerName mismatch, expected %s, got %s."
	.text
	.type	check_servername, @function
check_servername:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	440(%rax), %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$126, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %edi
	call	ssl_servername_name@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	440(%rax), %eax
	movl	%eax, %edi
	call	ssl_servername_name@PLT
	movq	%rax, %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$127, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movl	$1, %eax
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	check_servername, .-check_servername
	.section	.rodata
	.align 8
.LC24:
	.string	"test_ctx->session_ticket_expected"
.LC25:
	.string	"result->session_ticket"
	.align 8
.LC26:
	.string	"Client SessionTicketExpected mismatch, expected %s, got %s."
	.text
	.type	check_session_ticket, @function
check_session_ticket:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	444(%rax), %eax
	testl	%eax, %eax
	jne	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movq	-32(%rbp), %rax
	movl	444(%rax), %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %esi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L28
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %edi
	call	ssl_session_ticket_name@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	444(%rax), %eax
	movl	%eax, %edi
	call	ssl_session_ticket_name@PLT
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$141, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L27
.L28:
	movl	$1, %eax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	check_session_ticket, .-check_session_ticket
	.section	.rodata
.LC27:
	.string	"test_ctx->session_id_expected"
.LC28:
	.string	"result->session_id"
	.align 8
.LC29:
	.string	"Client SessionIdExpected mismatch, expected %s, got %s\n."
	.text
	.type	check_session_id, @function
check_session_id:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	544(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movq	-32(%rbp), %rax
	movl	544(%rax), %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	movl	%eax, %edi
	call	ssl_session_id_name@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	544(%rax), %eax
	movl	%eax, %edi
	call	ssl_session_id_name@PLT
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r8
	movl	$154, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L31
.L32:
	movl	$1, %eax
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	check_session_id, .-check_session_id
	.section	.rodata
	.align 8
.LC30:
	.string	"test_ctx->compression_expected"
.LC31:
	.string	"result->compression"
	.text
	.type	check_compression, @function
check_compression:
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
	movq	-16(%rbp), %rax
	movl	448(%rax), %edi
	movq	-8(%rbp), %rax
	movl	44(%rax), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	check_compression, .-check_compression
	.section	.rodata
.LC32:
	.string	"result->server_npn_negotiated"
.LC33:
	.string	"result->client_npn_negotiated"
	.align 8
.LC34:
	.string	"test_ctx->expected_npn_protocol"
	.text
	.type	check_npn, @function
check_npn:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, -4(%rbp)
.L37:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	456(%rax), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$175, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, -4(%rbp)
.L38:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	check_npn, .-check_npn
	.section	.rodata
	.align 8
.LC35:
	.string	"result->server_alpn_negotiated"
	.align 8
.LC36:
	.string	"result->client_alpn_negotiated"
	.align 8
.LC37:
	.string	"test_ctx->expected_alpn_protocol"
	.text
	.type	check_alpn, @function
check_alpn:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, -4(%rbp)
.L41:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	464(%rax), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, -4(%rbp)
.L42:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	check_alpn, .-check_alpn
	.section	.rodata
	.align 8
.LC38:
	.string	"test_ctx->expected_session_ticket_app_data"
	.align 8
.LC39:
	.string	"result->result_session_ticket_app_data"
	.text
	.type	check_session_ticket_app_data, @function
check_session_ticket_app_data:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
.L45:
	movq	-32(%rbp), %rax
	movq	560(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-32(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
.L46:
	cmpq	$0, -8(%rbp)
	jne	.L47
	cmpq	$0, -16(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movq	-32(%rbp), %rax
	movq	560(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rsi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$208, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	check_session_ticket_app_data, .-check_session_ticket_app_data
	.section	.rodata
.LC40:
	.string	"result->server_resumed"
.LC41:
	.string	"result->client_resumed"
.LC42:
	.string	"test_ctx->resumption_expected"
	.text
	.type	check_resumption, @function
check_resumption:
.LFB510:
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
	movl	92(%rax), %edi
	movq	-8(%rbp), %rax
	movl	88(%rax), %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$217, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-16(%rbp), %rax
	movl	472(%rax), %edi
	movq	-8(%rbp), %rax
	movl	88(%rax), %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$219, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L52
.L53:
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	check_resumption, .-check_resumption
	.section	.rodata
.LC43:
	.string	"absent"
.LC44:
	.string	"%s type mismatch, %s vs %s\n"
	.text
	.type	check_nid, @function
check_nid:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L55
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L56
.L55:
	movl	$1, %eax
	jmp	.L57
.L56:
	cmpl	$0, -32(%rbp)
	je	.L58
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rbx
	jmp	.L59
.L58:
	leaq	.LC43(%rip), %rbx
.L59:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$228, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	check_nid, .-check_nid
	.section	.rodata
.LC45:
	.string	"    <empty>"
.LC46:
	.string	"\n"
	.text
	.type	print_ca_names, @function
print_ca_names:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L61
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L62
.L61:
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L60
.L62:
	movl	$0, -4(%rbp)
	jmp	.L64
.L65:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rsi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$8520479, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	addl	$1, -4(%rbp)
.L64:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L65
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	print_ca_names, .-print_ca_names
	.section	.rodata
.LC47:
	.string	"0"
	.align 8
.LC48:
	.string	"sk_X509_NAME_num(expected_names)"
	.align 8
.LC49:
	.string	"X509_NAME_cmp(sk_X509_NAME_value(names, i), sk_X509_NAME_value(expected_names, i))"
.LC50:
	.string	"%s: list mismatch"
.LC51:
	.string	"Expected Names:"
.LC52:
	.string	"Received Names:"
	.text
	.type	check_ca_names, @function
check_ca_names:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	cmpq	$0, -56(%rbp)
	je	.L69
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L70
.L69:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L77
	movl	$1, %eax
	jmp	.L68
.L70:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, %ebx
	jne	.L78
	movl	$0, -20(%rbp)
	jmp	.L74
.L76:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L79
	addl	$1, -20(%rbp)
.L74:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L76
	movl	$1, %eax
	jmp	.L68
.L77:
	nop
	jmp	.L72
.L78:
	nop
	jmp	.L72
.L79:
	nop
.L72:
	movq	-40(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	print_ca_names
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	print_ca_names
	movl	$0, %eax
.L68:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	check_ca_names, .-check_ca_names
	.section	.rodata
.LC53:
	.string	"Tmp key"
	.text
	.type	check_tmp_key, @function
check_tmp_key:
.LFB514:
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
	movl	96(%rax), %edx
	movq	-16(%rbp), %rax
	movl	476(%rax), %eax
	leaq	.LC53(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	check_tmp_key, .-check_tmp_key
	.section	.rodata
.LC54:
	.string	"Server certificate"
	.text
	.type	check_server_cert_type, @function
check_server_cert_type:
.LFB515:
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
	movl	100(%rax), %edx
	movq	-16(%rbp), %rax
	movl	480(%rax), %eax
	leaq	.LC54(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	check_server_cert_type, .-check_server_cert_type
	.section	.rodata
.LC55:
	.string	"Server signing hash"
	.text
	.type	check_server_sign_hash, @function
check_server_sign_hash:
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
	movl	104(%rax), %edx
	movq	-16(%rbp), %rax
	movl	484(%rax), %eax
	leaq	.LC55(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	check_server_sign_hash, .-check_server_sign_hash
	.section	.rodata
.LC56:
	.string	"Server signing"
	.text
	.type	check_server_sign_type, @function
check_server_sign_type:
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
	movq	-8(%rbp), %rax
	movl	108(%rax), %edx
	movq	-16(%rbp), %rax
	movl	488(%rax), %eax
	leaq	.LC56(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	check_server_sign_type, .-check_server_sign_type
	.section	.rodata
.LC57:
	.string	"Server CA names"
	.text
	.type	check_server_ca_names, @function
check_server_ca_names:
.LFB518:
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
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	496(%rax), %rax
	leaq	.LC57(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_ca_names
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	check_server_ca_names, .-check_server_ca_names
	.section	.rodata
.LC58:
	.string	"Client certificate"
	.text
	.type	check_client_cert_type, @function
check_client_cert_type:
.LFB519:
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
	movl	120(%rax), %edx
	movq	-16(%rbp), %rax
	movl	504(%rax), %eax
	leaq	.LC58(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	check_client_cert_type, .-check_client_cert_type
	.section	.rodata
.LC59:
	.string	"Client signing hash"
	.text
	.type	check_client_sign_hash, @function
check_client_sign_hash:
.LFB520:
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
	movl	124(%rax), %edx
	movq	-16(%rbp), %rax
	movl	508(%rax), %eax
	leaq	.LC59(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	check_client_sign_hash, .-check_client_sign_hash
	.section	.rodata
.LC60:
	.string	"Client signing"
	.text
	.type	check_client_sign_type, @function
check_client_sign_type:
.LFB521:
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
	movl	128(%rax), %edx
	movq	-16(%rbp), %rax
	movl	512(%rax), %eax
	leaq	.LC60(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	check_client_sign_type, .-check_client_sign_type
	.section	.rodata
.LC61:
	.string	"Client CA names"
	.text
	.type	check_client_ca_names, @function
check_client_ca_names:
.LFB522:
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
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	520(%rax), %rax
	leaq	.LC61(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_ca_names
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	check_client_ca_names, .-check_client_ca_names
	.section	.rodata
.LC62:
	.string	"result->cipher"
.LC63:
	.string	"test_ctx->expected_cipher"
	.text
	.type	check_cipher, @function
check_cipher:
.LFB523:
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
	movq	552(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	movl	$1, %eax
	jmp	.L100
.L99:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$349, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L100
.L101:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	552(%rax), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$351, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L100
.L102:
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	check_cipher, .-check_cipher
	.type	check_test, @function
check_test:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_result
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_alerts
	andl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L104
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_protocol
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_servername
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_session_ticket
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_compression
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_session_id
	andl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_npn
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_cipher
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_alpn
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_session_ticket_app_data
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_resumption
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_tmp_key
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_server_cert_type
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_server_sign_hash
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_server_sign_type
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_server_ca_names
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_client_cert_type
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_client_sign_hash
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_client_sign_type
	andl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_client_ca_names
	andl	%eax, -4(%rbp)
.L104:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	check_test, .-check_test
	.section	.rodata
.LC64:
	.string	"test-%d"
.LC65:
	.string	"test_ctx"
	.align 8
.LC66:
	.string	"FIPS provider unable to run this test"
	.align 8
.LC67:
	.string	"SSL_CTX_set_options(server_ctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)"
	.align 8
.LC68:
	.string	"SSL_CTX_set_max_proto_version(server_ctx, 0)"
	.align 8
.LC69:
	.string	"server2_ctx = SSL_CTX_new_ex(libctx, NULL, DTLS_server_method())"
	.align 8
.LC70:
	.string	"SSL_CTX_set_options(server2_ctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)"
	.align 8
.LC71:
	.string	"SSL_CTX_set_max_proto_version(client_ctx, 0)"
	.align 8
.LC72:
	.string	"SSL_CTX_set_max_proto_version(resume_server_ctx, 0)"
	.align 8
.LC73:
	.string	"SSL_CTX_set_options(resume_server_ctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)"
	.align 8
.LC74:
	.string	"SSL_CTX_set_max_proto_version(resume_client_ctx, 0)"
.LC75:
	.string	"resume_server_ctx"
.LC76:
	.string	"resume_client_ctx"
	.align 8
.LC77:
	.string	"SSL_CTX_set_max_proto_version(server_ctx, maxversion)"
	.align 8
.LC78:
	.string	"server2_ctx = SSL_CTX_new_ex(libctx, NULL, TLS_server_method())"
	.align 8
.LC79:
	.string	"SSL_CTX_set_max_proto_version(server2_ctx, maxversion)"
	.align 8
.LC80:
	.string	"SSL_CTX_set_max_proto_version(client_ctx, maxversion)"
	.align 8
.LC81:
	.string	"SSL_CTX_set_max_proto_version(resume_server_ctx, maxversion)"
	.align 8
.LC82:
	.string	"SSL_CTX_set_max_proto_version(resume_client_ctx, maxversion)"
.LC83:
	.string	"server_ctx"
.LC84:
	.string	"client_ctx"
	.align 8
.LC85:
	.string	"CONF_modules_load(conf, test_app, 0)"
.LC86:
	.string	"server"
.LC87:
	.string	"client"
.LC88:
	.string	"server2"
.LC89:
	.string	"resume-server"
.LC90:
	.string	"resume-client"
	.text
	.type	test_handshake, @function
test_handshake:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -180(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	-180(%rbp), %edx
	leaq	.LC64(%rip), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	libctx(%rip), %rdx
	movq	conf(%rip), %rax
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_TEST_CTX_create@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$406, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L139
	movq	-64(%rbp), %rax
	movq	576(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-64(%rbp), %rax
	movq	576(%rax), %rdx
	movq	libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version_match@PLT
	testl	%eax, %eax
	jne	.L109
	leaq	.LC66(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$412, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -4(%rbp)
	jmp	.L108
.L109:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L110
	call	DTLS_server_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$419, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L140
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L140
	movq	-64(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L113
	call	DTLS_server_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$425, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L141
	movq	-24(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$427, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L141
.L113:
	call	DTLS_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$432, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L142
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L110
	call	DTLS_server_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	movq	-40(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$438, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	call	DTLS_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$443, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-40(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$445, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L145
	movq	-48(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$446, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L145
.L110:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L120
	movl	$0, -68(%rbp)
	call	TLS_server_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L146
	movq	-16(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$463, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L146
	movq	-64(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L123
	call	TLS_server_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$469, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L147
	movq	-24(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$471, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L147
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$474, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L148
.L123:
	call	TLS_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$479, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L120
	call	TLS_server_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$485, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L150
	movq	-40(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$487, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L150
	call	TLS_client_method@PLT
	movq	%rax, %rdx
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$492, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L151
	movq	-40(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$495, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L152
	movq	-48(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$496, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L152
.L120:
	movq	-16(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$506, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L153
	movq	-32(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$507, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L153
	movq	conf(%rip), %rax
	leaq	-176(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_modules_load@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$508, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L153
	leaq	.LC86(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_config@PLT
	testl	%eax, %eax
	je	.L154
	leaq	.LC87(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_config@PLT
	testl	%eax, %eax
	je	.L154
	cmpq	$0, -24(%rbp)
	je	.L135
	leaq	.LC88(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_config@PLT
	testl	%eax, %eax
	je	.L155
.L135:
	cmpq	$0, -40(%rbp)
	je	.L136
	leaq	.LC89(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_config@PLT
	testl	%eax, %eax
	je	.L156
.L136:
	cmpq	$0, -48(%rbp)
	je	.L137
	leaq	.LC90(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_config@PLT
	testl	%eax, %eax
	je	.L157
.L137:
	movq	-64(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_handshake@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L158
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_test
	movl	%eax, -4(%rbp)
	jmp	.L108
.L139:
	nop
	jmp	.L108
.L140:
	nop
	jmp	.L108
.L141:
	nop
	jmp	.L108
.L142:
	nop
	jmp	.L108
.L143:
	nop
	jmp	.L108
.L144:
	nop
	jmp	.L108
.L145:
	nop
	jmp	.L108
.L146:
	nop
	jmp	.L108
.L147:
	nop
	jmp	.L108
.L148:
	nop
	jmp	.L108
.L149:
	nop
	jmp	.L108
.L150:
	nop
	jmp	.L108
.L151:
	nop
	jmp	.L108
.L152:
	nop
	jmp	.L108
.L153:
	nop
	jmp	.L108
.L154:
	nop
	jmp	.L108
.L155:
	nop
	jmp	.L108
.L156:
	nop
	jmp	.L108
.L157:
	nop
	jmp	.L108
.L158:
	nop
.L108:
	movl	$0, %edi
	call	CONF_modules_unload@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_TEST_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	HANDSHAKE_RESULT_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_handshake, .-test_handshake
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB526:
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
.LFE526:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC91:
	.string	"Error parsing test options\n"
.LC92:
	.string	"conf = NCONF_new(NULL)"
	.align 8
.LC93:
	.string	"NCONF_load(conf, test_get_argument(0), NULL)"
.LC94:
	.string	"num_tests"
	.align 8
.LC95:
	.string	"NCONF_get_number_e(conf, NULL, \"num_tests\", &num_tests)"
	.align 8
.LC96:
	.string	"conf_file module_name [module_conf_file]\n"
.LC97:
	.string	"usage: ssl_test %s"
.LC98:
	.string	"test_handshake"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L162
	leaq	.LC91(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$551, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L167
.L162:
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, conf(%rip)
	movq	conf(%rip), %rax
	leaq	.LC92(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$555, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, %rcx
	movq	conf(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$557, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L164
	movq	conf(%rip), %rax
	leaq	-8(%rbp), %rdx
	leaq	.LC94(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$558, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	jne	.L165
.L164:
	leaq	.LC96(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$560, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L167
.L165:
	leaq	.LC96(%rip), %rcx
	leaq	thisprov(%rip), %rdx
	leaq	defctxnull(%rip), %rsi
	leaq	libctx(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	test_arg_libctx@PLT
	testl	%eax, %eax
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	test_handshake(%rip), %rsi
	leaq	.LC98(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	conf(%rip), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	defctxnull(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	thisprov(%rip), %rax
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
.LFE528:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC99:
	.string	"Usage: %s [options] conf_file module_name [module_conf_file]\n"
.LC100:
	.string	"Valid options are:\n"
.LC101:
	.string	"help"
.LC102:
	.string	"Display this summary"
.LC103:
	.string	"list"
	.align 8
.LC104:
	.string	"Display the list of tests available"
.LC105:
	.string	"test"
	.align 8
.LC106:
	.string	"Run a single test by id or name"
.LC107:
	.string	"iter"
	.align 8
.LC108:
	.string	"Run a single iteration of a test"
.LC109:
	.string	"indent"
	.align 8
.LC110:
	.string	"Number of tabs added to output"
.LC111:
	.string	"seed"
	.align 8
.LC112:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC99
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC100
	.quad	.LC101
	.long	500
	.long	45
	.quad	.LC102
	.quad	.LC103
	.long	501
	.long	45
	.quad	.LC104
	.quad	.LC105
	.long	502
	.long	115
	.quad	.LC106
	.quad	.LC107
	.long	503
	.long	110
	.quad	.LC108
	.quad	.LC109
	.long	504
	.long	112
	.quad	.LC110
	.quad	.LC111
	.long	505
	.long	110
	.quad	.LC112
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

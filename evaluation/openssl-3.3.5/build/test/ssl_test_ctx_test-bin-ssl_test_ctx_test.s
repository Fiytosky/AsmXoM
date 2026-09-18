	.file	"ssl_test_ctx_test.c"
	.text
	.local	conf
	.comm	conf,8,8
	.section	.rodata
.LC0:
	.string	"conf2->verify_callback"
.LC1:
	.string	"conf1->verify_callback"
.LC2:
	.string	"../test/ssl_test_ctx_test.c"
.LC3:
	.string	"conf2->servername"
.LC4:
	.string	"conf1->servername"
.LC5:
	.string	"conf2->npn_protocols"
.LC6:
	.string	"conf1->npn_protocols"
.LC7:
	.string	"conf2->alpn_protocols"
.LC8:
	.string	"conf1->alpn_protocols"
.LC9:
	.string	"conf2->ct_validation"
.LC10:
	.string	"conf1->ct_validation"
.LC11:
	.string	"conf2->max_fragment_len_mode"
.LC12:
	.string	"conf1->max_fragment_len_mode"
	.text
	.type	clientconf_eq, @function
clientconf_eq:
.LFB499:
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
	movl	(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	clientconf_eq, .-clientconf_eq
	.section	.rodata
.LC13:
	.string	"serv2->servername_callback"
.LC14:
	.string	"serv->servername_callback"
.LC15:
	.string	"serv2->npn_protocols"
.LC16:
	.string	"serv->npn_protocols"
.LC17:
	.string	"serv2->alpn_protocols"
.LC18:
	.string	"serv->alpn_protocols"
.LC19:
	.string	"serv2->broken_session_ticket"
.LC20:
	.string	"serv->broken_session_ticket"
	.align 8
.LC21:
	.string	"serv2->session_ticket_app_data"
.LC22:
	.string	"serv->session_ticket_app_data"
.LC23:
	.string	"serv2->cert_status"
.LC24:
	.string	"serv->cert_status"
	.text
	.type	serverconf_eq, @function
serverconf_eq:
.LFB500:
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
	movl	(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$54, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	serverconf_eq, .-serverconf_eq
	.section	.rodata
	.align 8
.LC25:
	.string	"clientconf_eq(&extra->client, &extra2->client)"
	.align 8
.LC26:
	.string	"serverconf_eq(&extra->server, &extra2->server)"
	.align 8
.LC27:
	.string	"serverconf_eq(&extra->server2, &extra2->server2)"
	.text
	.type	extraconf_eq, @function
extraconf_eq:
.LFB501:
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
	call	clientconf_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	serverconf_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movq	-16(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	serverconf_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L11
.L10:
	movl	$0, %eax
	jmp	.L12
.L11:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	extraconf_eq, .-extraconf_eq
	.section	.rodata
.LC28:
	.string	"ctx2->method"
.LC29:
	.string	"ctx->method"
.LC30:
	.string	"ctx2->handshake_mode"
.LC31:
	.string	"ctx->handshake_mode"
.LC32:
	.string	"ctx2->app_data_size"
.LC33:
	.string	"ctx->app_data_size"
.LC34:
	.string	"ctx2->max_fragment_size"
.LC35:
	.string	"ctx->max_fragment_size"
.LC36:
	.string	"ctx2->expected_result"
.LC37:
	.string	"ctx->expected_result"
.LC38:
	.string	"ctx2->expected_client_alert"
.LC39:
	.string	"ctx->expected_client_alert"
.LC40:
	.string	"ctx2->expected_server_alert"
.LC41:
	.string	"ctx->expected_server_alert"
.LC42:
	.string	"ctx2->expected_protocol"
.LC43:
	.string	"ctx->expected_protocol"
.LC44:
	.string	"ctx2->expected_servername"
.LC45:
	.string	"ctx->expected_servername"
.LC46:
	.string	"ctx2->session_ticket_expected"
.LC47:
	.string	"ctx->session_ticket_expected"
.LC48:
	.string	"ctx2->compression_expected"
.LC49:
	.string	"ctx->compression_expected"
.LC50:
	.string	"ctx2->expected_npn_protocol"
.LC51:
	.string	"ctx->expected_npn_protocol"
.LC52:
	.string	"ctx2->expected_alpn_protocol"
.LC53:
	.string	"ctx->expected_alpn_protocol"
.LC54:
	.string	"ctx2->expected_cipher"
.LC55:
	.string	"ctx->expected_cipher"
	.align 8
.LC56:
	.string	"ctx2->expected_session_ticket_app_data"
	.align 8
.LC57:
	.string	"ctx->expected_session_ticket_app_data"
.LC58:
	.string	"ctx2->resumption_expected"
.LC59:
	.string	"ctx->resumption_expected"
.LC60:
	.string	"ctx2->session_id_expected"
.LC61:
	.string	"ctx->session_id_expected"
	.text
	.type	testctx_eq, @function
testctx_eq:
.LFB502:
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
	movl	(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movq	-8(%rbp), %rax
	movl	12(%rax), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$80, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	extraconf_eq
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	leaq	224(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$224, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	extraconf_eq
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	424(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	424(%rax), %eax
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	428(%rax), %edi
	movq	-8(%rbp), %rax
	movl	428(%rax), %esi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	432(%rax), %edi
	movq	-8(%rbp), %rax
	movl	432(%rax), %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	436(%rax), %edi
	movq	-8(%rbp), %rax
	movl	436(%rax), %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	440(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	440(%rax), %eax
	movl	%eax, %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	444(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	444(%rax), %eax
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	448(%rax), %edi
	movq	-8(%rbp), %rax
	movl	448(%rax), %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movq	456(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	456(%rax), %rsi
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	464(%rax), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movq	552(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	552(%rax), %rsi
	leaq	.LC54(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movq	560(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	560(%rax), %rsi
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	472(%rax), %edi
	movq	-8(%rbp), %rax
	movl	472(%rax), %esi
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rax
	movl	544(%rax), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	544(%rax), %eax
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	testctx_eq, .-testctx_eq
	.section	.rodata
	.align 8
.LC62:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC63:
	.string	"fixture->expected_ctx = SSL_TEST_CTX_new(NULL)"
	.text
	.type	set_up, @function
set_up:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$114, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$114, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edi
	call	SSL_TEST_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L20
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$118, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	set_up, .-set_up
	.section	.rodata
	.align 8
.LC64:
	.string	"ctx = SSL_TEST_CTX_create(conf, fixture->test_section, fixture->expected_ctx->libctx)"
	.text
	.type	execute_test, @function
execute_test:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	568(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	conf(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_TEST_CTX_create@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$129, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	testctx_eq
	testl	%eax, %eax
	je	.L26
	movl	$1, -4(%rbp)
	jmp	.L24
.L26:
	nop
.L24:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_TEST_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	execute_test, .-execute_test
	.type	tear_down, @function
tear_down:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SSL_TEST_CTX_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	tear_down, .-tear_down
	.section	.rodata
.LC65:
	.string	"ssltest_default"
	.text
	.type	test_empty_configuration, @function
test_empty_configuration:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 424(%rax)
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L31:
	movl	-4(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_empty_configuration, .-test_empty_configuration
	.section	.rodata
.LC66:
	.string	"ssltest_good"
.LC67:
	.string	"foo,bar"
	.align 8
.LC68:
	.string	"fixture->expected_ctx->extra.client.npn_protocols"
.LC69:
	.string	"baz"
	.align 8
.LC70:
	.string	"fixture->expected_ctx->resume_extra.server2.alpn_protocols"
	.text
	.type	test_good_configuration, @function
test_good_configuration:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-32(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 4(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1024, 8(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$2048, 12(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 424(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$48, 428(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 432(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$770, 436(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$2, 440(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 444(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 448(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 544(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 472(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$3, 24(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$2, 28(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	leaq	.LC2(%rip), %rcx
	leaq	.LC67(%rip), %rax
	movl	$183, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 40(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$184, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 96(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 120(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	leaq	.LC2(%rip), %rcx
	leaq	.LC69(%rip), %rax
	movl	$193, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 376(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	376(%rax), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$2, 256(%rax)
	cmpq	$0, -32(%rbp)
	je	.L38
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	execute_test
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L38:
	movl	-20(%rbp), %eax
	jmp	.L34
.L39:
	nop
	jmp	.L36
.L40:
	nop
.L36:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_good_configuration, .-test_good_configuration
	.section	.rodata
.LC71:
	.string	"ssltest_unknown_option"
.LC72:
	.string	"ssltest_wrong_section"
	.align 8
.LC73:
	.string	"ssltest_unknown_expected_result"
.LC74:
	.string	"ssltest_unknown_alert"
.LC75:
	.string	"ssltest_unknown_protocol"
	.align 8
.LC76:
	.string	"ssltest_unknown_verify_callback"
.LC77:
	.string	"ssltest_unknown_servername"
	.align 8
.LC78:
	.string	"ssltest_unknown_servername_callback"
	.align 8
.LC79:
	.string	"ssltest_unknown_session_ticket_expected"
	.align 8
.LC80:
	.string	"ssltest_unknown_compression_expected"
	.align 8
.LC81:
	.string	"ssltest_unknown_session_id_expected"
.LC82:
	.string	"ssltest_unknown_method"
	.align 8
.LC83:
	.string	"ssltest_unknown_handshake_mode"
	.align 8
.LC84:
	.string	"ssltest_unknown_resumption_expected"
.LC85:
	.string	"ssltest_unknown_ct_validation"
	.align 8
.LC86:
	.string	"ssltest_invalid_max_fragment_len"
	.section	.data.rel.local,"aw"
	.align 32
	.type	bad_configurations, @object
	.size	bad_configurations, 128
bad_configurations:
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.section	.rodata
	.align 8
.LC87:
	.string	"ctx = SSL_TEST_CTX_create(conf, bad_configurations[idx], NULL)"
	.text
	.type	test_bad_configuration, @function
test_bad_configuration:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bad_configurations(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	conf(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_TEST_CTX_create@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$231, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_TEST_CTX_free@PLT
	movl	$0, %eax
	jmp	.L43
.L42:
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_bad_configuration, .-test_bad_configuration
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB509:
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
.LFE509:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC88:
	.string	"Error parsing test options\n"
.LC89:
	.string	"conf = NCONF_new(NULL)"
.LC90:
	.string	"0"
	.align 8
.LC91:
	.string	"NCONF_load(conf, test_get_argument(0), NULL)"
.LC92:
	.string	"test_empty_configuration"
.LC93:
	.string	"test_good_configuration"
.LC94:
	.string	"test_bad_configuration"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L47
	leaq	.LC88(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, conf(%rip)
	movq	conf(%rip), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$249, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, %rcx
	movq	conf(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load@PLT
	movl	%eax, %esi
	leaq	.LC90(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$252, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L48
.L50:
	leaq	test_empty_configuration(%rip), %rdx
	leaq	.LC92(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_good_configuration(%rip), %rdx
	leaq	.LC93(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bad_configuration(%rip), %rsi
	leaq	.LC94(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	conf(%rip), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"test_empty_configuration"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"test_good_configuration"
	.align 8
.LC95:
	.string	"Usage: %s [options] conf_file\n"
.LC96:
	.string	"Valid options are:\n"
.LC97:
	.string	"help"
.LC98:
	.string	"Display this summary"
.LC99:
	.string	"list"
	.align 8
.LC100:
	.string	"Display the list of tests available"
.LC101:
	.string	"test"
	.align 8
.LC102:
	.string	"Run a single test by id or name"
.LC103:
	.string	"iter"
	.align 8
.LC104:
	.string	"Run a single iteration of a test"
.LC105:
	.string	"indent"
	.align 8
.LC106:
	.string	"Number of tabs added to output"
.LC107:
	.string	"seed"
	.align 8
.LC108:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC95
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC96
	.quad	.LC97
	.long	500
	.long	45
	.quad	.LC98
	.quad	.LC99
	.long	501
	.long	45
	.quad	.LC100
	.quad	.LC101
	.long	502
	.long	115
	.quad	.LC102
	.quad	.LC103
	.long	503
	.long	110
	.quad	.LC104
	.quad	.LC105
	.long	504
	.long	112
	.quad	.LC106
	.quad	.LC107
	.long	505
	.long	110
	.quad	.LC108
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

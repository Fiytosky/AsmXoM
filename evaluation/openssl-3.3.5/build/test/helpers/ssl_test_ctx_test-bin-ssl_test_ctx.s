	.file	"ssl_test_ctx.c"
	.text
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_X509_NAME_sk_type, @function
ossl_check_X509_NAME_sk_type:
.LFB361:
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
.LFE361:
	.size	ossl_check_X509_NAME_sk_type, .-ossl_check_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_freefunc_type, @function
ossl_check_X509_NAME_freefunc_type:
.LFB364:
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
.LFE364:
	.size	ossl_check_X509_NAME_freefunc_type, .-ossl_check_X509_NAME_freefunc_type
	.section	.rodata
	.align 4
	.type	default_app_data_size, @object
	.size	default_app_data_size, 4
default_app_data_size:
	.long	256
	.align 4
	.type	default_max_fragment_size, @object
	.size	default_max_fragment_size, 4
default_max_fragment_size:
	.long	512
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
.LC2:
	.string	"parse_boolean given: '%s'"
	.align 8
.LC3:
	.string	"../test/helpers/ssl_test_ctx.c"
	.text
	.type	parse_boolean, @function
parse_boolean:
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
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, %eax
	jmp	.L9
.L8:
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$33, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	parse_boolean, .-parse_boolean
	.type	parse_enum, @function
parse_enum:
.LFB500:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L12
.L15:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L14
.L13:
	addq	$1, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L15
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	parse_enum, .-parse_enum
	.section	.rodata
.LC4:
	.string	"InvalidValue"
	.text
	.type	enum_name, @function
enum_name:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L17
.L20:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L18
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L19
.L18:
	addq	$1, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L20
	leaq	.LC4(%rip), %rax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	enum_name, .-enum_name
	.section	.rodata
.LC5:
	.string	"Success"
.LC6:
	.string	"ServerFail"
.LC7:
	.string	"ClientFail"
.LC8:
	.string	"InternalError"
.LC9:
	.string	"FirstHandshakeFailed"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ssl_test_results, @object
	.size	ssl_test_results, 80
ssl_test_results:
	.quad	.LC5
	.long	0
	.zero	4
	.quad	.LC6
	.long	1
	.zero	4
	.quad	.LC7
	.long	2
	.zero	4
	.quad	.LC8
	.long	3
	.zero	4
	.quad	.LC9
	.long	4
	.zero	4
	.text
	.type	parse_expected_result, @function
parse_expected_result:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_test_results(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$5, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L24
.L22:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 424(%rax)
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	parse_expected_result, .-parse_expected_result
	.globl	ssl_test_result_name
	.type	ssl_test_result_name, @function
ssl_test_result_name:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_test_results(%rip), %rcx
	movl	%eax, %edx
	movl	$5, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ssl_test_result_name, .-ssl_test_result_name
	.section	.rodata
.LC10:
	.string	"UnknownCA"
.LC11:
	.string	"HandshakeFailure"
.LC12:
	.string	"UnrecognizedName"
.LC13:
	.string	"NoRenegotiation"
.LC14:
	.string	"BadCertificate"
.LC15:
	.string	"NoApplicationProtocol"
.LC16:
	.string	"CertificateRequired"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_alerts, @object
	.size	ssl_alerts, 112
ssl_alerts:
	.quad	.LC10
	.long	48
	.zero	4
	.quad	.LC11
	.long	40
	.zero	4
	.quad	.LC12
	.long	112
	.zero	4
	.quad	.LC13
	.long	100
	.zero	4
	.quad	.LC14
	.long	42
	.zero	4
	.quad	.LC15
	.long	120
	.zero	4
	.quad	.LC16
	.long	116
	.zero	4
	.text
	.type	parse_alert, @function
parse_alert:
.LFB504:
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
	leaq	ssl_alerts(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$7, %esi
	call	parse_enum
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	parse_alert, .-parse_alert
	.type	parse_client_alert, @function
parse_client_alert:
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
	leaq	428(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_alert
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	parse_client_alert, .-parse_client_alert
	.type	parse_server_alert, @function
parse_server_alert:
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
	movq	-8(%rbp), %rax
	leaq	432(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_alert
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	parse_server_alert, .-parse_server_alert
	.globl	ssl_alert_name
	.type	ssl_alert_name, @function
ssl_alert_name:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_alerts(%rip), %rcx
	movl	%eax, %edx
	movl	$7, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ssl_alert_name, .-ssl_alert_name
	.section	.rodata
.LC17:
	.string	"TLSv1.3"
.LC18:
	.string	"TLSv1.2"
.LC19:
	.string	"TLSv1.1"
.LC20:
	.string	"TLSv1"
.LC21:
	.string	"SSLv3"
.LC22:
	.string	"DTLSv1"
.LC23:
	.string	"DTLSv1.2"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_protocols, @object
	.size	ssl_protocols, 112
ssl_protocols:
	.quad	.LC17
	.long	772
	.zero	4
	.quad	.LC18
	.long	771
	.zero	4
	.quad	.LC19
	.long	770
	.zero	4
	.quad	.LC20
	.long	769
	.zero	4
	.quad	.LC21
	.long	768
	.zero	4
	.quad	.LC22
	.long	65279
	.zero	4
	.quad	.LC23
	.long	65277
	.zero	4
	.text
	.type	parse_protocol, @function
parse_protocol:
.LFB508:
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
	leaq	436(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	ssl_protocols(%rip), %rdi
	movq	%rax, %rcx
	movl	$7, %esi
	call	parse_enum
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	parse_protocol, .-parse_protocol
	.globl	ssl_protocol_name
	.type	ssl_protocol_name, @function
ssl_protocol_name:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_protocols(%rip), %rcx
	movl	%eax, %edx
	movl	$7, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	ssl_protocol_name, .-ssl_protocol_name
	.section	.rodata
.LC24:
	.string	"None"
.LC25:
	.string	"AcceptAll"
.LC26:
	.string	"RetryOnce"
.LC27:
	.string	"RejectAll"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_verify_callbacks, @object
	.size	ssl_verify_callbacks, 64
ssl_verify_callbacks:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	.LC26
	.long	2
	.zero	4
	.quad	.LC27
	.long	3
	.zero	4
	.text
	.type	parse_client_verify_callback, @function
parse_client_verify_callback:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_verify_callbacks(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L42
.L40:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	parse_client_verify_callback, .-parse_client_verify_callback
	.globl	ssl_verify_callback_name
	.type	ssl_verify_callback_name, @function
ssl_verify_callback_name:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_verify_callbacks(%rip), %rcx
	movl	%eax, %edx
	movl	$4, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ssl_verify_callback_name, .-ssl_verify_callback_name
	.section	.rodata
.LC28:
	.string	"server1"
.LC29:
	.string	"server2"
.LC30:
	.string	"invalid"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_servername, @object
	.size	ssl_servername, 64
ssl_servername:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	.LC29
	.long	2
	.zero	4
	.quad	.LC30
	.long	3
	.zero	4
	.text
	.type	parse_servername, @function
parse_servername:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_servername(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L48
.L46:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	parse_servername, .-parse_servername
	.type	parse_expected_servername, @function
parse_expected_servername:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_servername(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L52
.L50:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 440(%rax)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	parse_expected_servername, .-parse_expected_servername
	.globl	ssl_servername_name
	.type	ssl_servername_name, @function
ssl_servername_name:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_servername(%rip), %rcx
	movl	%eax, %edx
	movl	$4, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ssl_servername_name, .-ssl_servername_name
	.section	.rodata
.LC31:
	.string	"IgnoreMismatch"
.LC32:
	.string	"RejectMismatch"
.LC33:
	.string	"ClientHelloIgnoreMismatch"
.LC34:
	.string	"ClientHelloRejectMismatch"
.LC35:
	.string	"ClientHelloNoV12"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_servername_callbacks, @object
	.size	ssl_servername_callbacks, 96
ssl_servername_callbacks:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	.LC31
	.long	1
	.zero	4
	.quad	.LC32
	.long	2
	.zero	4
	.quad	.LC33
	.long	3
	.zero	4
	.quad	.LC34
	.long	4
	.zero	4
	.quad	.LC35
	.long	5
	.zero	4
	.text
	.type	parse_servername_callback, @function
parse_servername_callback:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_servername_callbacks(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L58
.L56:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	parse_servername_callback, .-parse_servername_callback
	.globl	ssl_servername_callback_name
	.type	ssl_servername_callback_name, @function
ssl_servername_callback_name:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_servername_callbacks(%rip), %rcx
	movl	%eax, %edx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ssl_servername_callback_name, .-ssl_servername_callback_name
	.section	.rodata
.LC36:
	.string	"Ignore"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_session_ticket, @object
	.size	ssl_session_ticket, 48
ssl_session_ticket:
	.quad	.LC36
	.long	0
	.zero	4
	.quad	.LC0
	.long	1
	.zero	4
	.quad	.LC1
	.long	2
	.zero	4
	.text
	.type	parse_session_ticket, @function
parse_session_ticket:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_session_ticket(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L64
.L62:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 444(%rax)
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	parse_session_ticket, .-parse_session_ticket
	.globl	ssl_session_ticket_name
	.type	ssl_session_ticket_name, @function
ssl_session_ticket_name:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_session_ticket(%rip), %rcx
	movl	%eax, %edx
	movl	$3, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ssl_session_ticket_name, .-ssl_session_ticket_name
	.type	parse_test_compression_expected, @function
parse_test_compression_expected:
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
	leaq	448(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	parse_test_compression_expected, .-parse_test_compression_expected
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_session_id, @object
	.size	ssl_session_id, 48
ssl_session_id:
	.quad	.LC36
	.long	0
	.zero	4
	.quad	.LC0
	.long	1
	.zero	4
	.quad	.LC1
	.long	2
	.zero	4
	.text
	.type	parse_session_id, @function
parse_session_id:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_session_id(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L72
.L70:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 544(%rax)
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	parse_session_id, .-parse_session_id
	.globl	ssl_session_id_name
	.type	ssl_session_id_name, @function
ssl_session_id_name:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_session_id(%rip), %rcx
	movl	%eax, %edx
	movl	$3, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ssl_session_id_name, .-ssl_session_id_name
	.section	.rodata
.LC37:
	.string	"TLS"
.LC38:
	.string	"DTLS"
.LC39:
	.string	"QUIC"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_test_methods, @object
	.size	ssl_test_methods, 48
ssl_test_methods:
	.quad	.LC37
	.long	0
	.zero	4
	.quad	.LC38
	.long	1
	.zero	4
	.quad	.LC39
	.long	2
	.zero	4
	.text
	.type	parse_test_method, @function
parse_test_method:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_test_methods(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L78
.L76:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	parse_test_method, .-parse_test_method
	.globl	ssl_test_method_name
	.type	ssl_test_method_name, @function
ssl_test_method_name:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_test_methods(%rip), %rcx
	movl	%eax, %edx
	movl	$3, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ssl_test_method_name, .-ssl_test_method_name
	.section	.rodata
.LC40:
	.string	"ctx->npn_protocols"
	.text
	.type	parse_client_npn_protocols, @function
parse_client_npn_protocols:
.LFB524:
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
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$352, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$352, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$352, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	parse_client_npn_protocols, .-parse_client_npn_protocols
	.type	parse_server_npn_protocols, @function
parse_server_npn_protocols:
.LFB525:
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
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$353, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$353, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$353, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	parse_server_npn_protocols, .-parse_server_npn_protocols
	.section	.rodata
.LC41:
	.string	"ctx->expected_npn_protocol"
	.text
	.type	parse_test_expected_npn_protocol, @function
parse_test_expected_npn_protocol:
.LFB526:
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
	movq	456(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$354, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$354, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 456(%rdx)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$354, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	parse_test_expected_npn_protocol, .-parse_test_expected_npn_protocol
	.section	.rodata
.LC42:
	.string	"ctx->alpn_protocols"
	.text
	.type	parse_client_alpn_protocols, @function
parse_client_alpn_protocols:
.LFB527:
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
	movq	24(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$355, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$355, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$355, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	parse_client_alpn_protocols, .-parse_client_alpn_protocols
	.type	parse_server_alpn_protocols, @function
parse_server_alpn_protocols:
.LFB528:
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
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$356, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$356, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$356, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	parse_server_alpn_protocols, .-parse_server_alpn_protocols
	.section	.rodata
.LC43:
	.string	"ctx->expected_alpn_protocol"
	.text
	.type	parse_test_expected_alpn_protocol, @function
parse_test_expected_alpn_protocol:
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
	movq	464(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 464(%rdx)
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$357, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	parse_test_expected_alpn_protocol, .-parse_test_expected_alpn_protocol
	.section	.rodata
.LC44:
	.string	"ctx->srp_user"
	.text
	.type	parse_client_srp_user, @function
parse_client_srp_user:
.LFB530:
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
	movq	48(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$360, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	parse_client_srp_user, .-parse_client_srp_user
	.type	parse_server_srp_user, @function
parse_server_srp_user:
.LFB531:
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
	movq	32(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$361, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$361, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$361, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	parse_server_srp_user, .-parse_server_srp_user
	.section	.rodata
.LC45:
	.string	"ctx->srp_password"
	.text
	.type	parse_client_srp_password, @function
parse_client_srp_password:
.LFB532:
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
	movq	56(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$362, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$362, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$362, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	parse_client_srp_password, .-parse_client_srp_password
	.type	parse_server_srp_password, @function
parse_server_srp_password:
.LFB533:
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
	movq	40(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$363, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$363, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$363, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	parse_server_srp_password, .-parse_server_srp_password
	.section	.rodata
	.align 8
.LC46:
	.string	"ctx->expected_session_ticket_app_data"
	.text
	.type	parse_test_expected_session_ticket_app_data, @function
parse_test_expected_session_ticket_app_data:
.LFB534:
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
	movq	560(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$366, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$366, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 560(%rdx)
	movq	-8(%rbp), %rax
	movq	560(%rax), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$366, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	parse_test_expected_session_ticket_app_data, .-parse_test_expected_session_ticket_app_data
	.section	.rodata
.LC47:
	.string	"ctx->session_ticket_app_data"
	.text
	.type	parse_server_session_ticket_app_data, @function
parse_server_session_ticket_app_data:
.LFB535:
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
	movq	56(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$367, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$367, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$367, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	parse_server_session_ticket_app_data, .-parse_server_session_ticket_app_data
	.section	.rodata
.LC48:
	.string	"Simple"
.LC49:
	.string	"Resume"
.LC50:
	.string	"RenegotiateServer"
.LC51:
	.string	"RenegotiateClient"
.LC52:
	.string	"KeyUpdateServer"
.LC53:
	.string	"KeyUpdateClient"
.LC54:
	.string	"PostHandshakeAuth"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_handshake_modes, @object
	.size	ssl_handshake_modes, 112
ssl_handshake_modes:
	.quad	.LC48
	.long	0
	.zero	4
	.quad	.LC49
	.long	1
	.zero	4
	.quad	.LC50
	.long	2
	.zero	4
	.quad	.LC51
	.long	3
	.zero	4
	.quad	.LC52
	.long	4
	.zero	4
	.quad	.LC53
	.long	5
	.zero	4
	.quad	.LC54
	.long	6
	.zero	4
	.text
	.type	parse_handshake_mode, @function
parse_handshake_mode:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_handshake_modes(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$7, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L108
.L106:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$1, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	parse_handshake_mode, .-parse_handshake_mode
	.globl	ssl_handshake_mode_name
	.type	ssl_handshake_mode_name, @function
ssl_handshake_mode_name:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_handshake_modes(%rip), %rcx
	movl	%eax, %edx
	movl	$7, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	ssl_handshake_mode_name, .-ssl_handshake_mode_name
	.section	.rodata
.LC55:
	.string	"ctx->reneg_ciphers"
	.text
	.type	parse_client_reneg_ciphers, @function
parse_client_reneg_ciphers:
.LFB538:
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
	movq	40(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$400, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	parse_client_reneg_ciphers, .-parse_client_reneg_ciphers
	.section	.rodata
.LC56:
	.string	"KeyUpdateRequested"
.LC57:
	.string	"KeyUpdateNotRequested"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_key_update_types, @object
	.size	ssl_key_update_types, 32
ssl_key_update_types:
	.quad	.LC56
	.long	1
	.zero	4
	.quad	.LC57
	.long	0
	.zero	4
	.text
	.type	parse_key_update_type, @function
parse_key_update_type:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_key_update_types(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$2, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L114
	movl	$0, %eax
	jmp	.L116
.L114:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$1, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	parse_key_update_type, .-parse_key_update_type
	.section	.rodata
.LC58:
	.string	"Permissive"
.LC59:
	.string	"Strict"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_ct_validation_modes, @object
	.size	ssl_ct_validation_modes, 48
ssl_ct_validation_modes:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	.LC58
	.long	1
	.zero	4
	.quad	.LC59
	.long	2
	.zero	4
	.text
	.type	parse_ct_validation, @function
parse_ct_validation:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_ct_validation_modes(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L120
.L118:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	$1, %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	parse_ct_validation, .-parse_ct_validation
	.globl	ssl_ct_validation_name
	.type	ssl_ct_validation_name, @function
ssl_ct_validation_name:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_ct_validation_modes(%rip), %rcx
	movl	%eax, %edx
	movl	$3, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	ssl_ct_validation_name, .-ssl_ct_validation_name
	.type	parse_test_resumption_expected, @function
parse_test_resumption_expected:
.LFB542:
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
	leaq	472(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	parse_test_resumption_expected, .-parse_test_resumption_expected
	.type	parse_server_broken_session_ticket, @function
parse_server_broken_session_ticket:
.LFB543:
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
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	parse_server_broken_session_ticket, .-parse_server_broken_session_ticket
	.type	parse_test_use_sctp, @function
parse_test_use_sctp:
.LFB544:
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
	leaq	528(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	parse_test_use_sctp, .-parse_test_use_sctp
	.type	parse_test_compress_certificates, @function
parse_test_compress_certificates:
.LFB545:
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
	leaq	532(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	parse_test_compress_certificates, .-parse_test_compress_certificates
	.type	parse_test_enable_client_sctp_label_bug, @function
parse_test_enable_client_sctp_label_bug:
.LFB546:
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
	leaq	536(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	parse_test_enable_client_sctp_label_bug, .-parse_test_enable_client_sctp_label_bug
	.type	parse_test_enable_server_sctp_label_bug, @function
parse_test_enable_server_sctp_label_bug:
.LFB547:
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
	leaq	540(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	parse_test_enable_server_sctp_label_bug, .-parse_test_enable_server_sctp_label_bug
	.section	.rodata
.LC60:
	.string	"GoodResponse"
.LC61:
	.string	"BadResponse"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_certstatus, @object
	.size	ssl_certstatus, 48
ssl_certstatus:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	.LC60
	.long	1
	.zero	4
	.quad	.LC61
	.long	2
	.zero	4
	.text
	.type	parse_certstatus, @function
parse_certstatus:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_certstatus(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L138
.L136:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	parse_certstatus, .-parse_certstatus
	.globl	ssl_certstatus_name
	.type	ssl_certstatus_name, @function
ssl_certstatus_name:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_certstatus(%rip), %rcx
	movl	%eax, %edx
	movl	$3, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	ssl_certstatus_name, .-ssl_certstatus_name
	.type	parse_test_app_data_size, @function
parse_test_app_data_size:
.LFB550:
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
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	parse_test_app_data_size, .-parse_test_app_data_size
	.type	parse_test_max_fragment_size, @function
parse_test_max_fragment_size:
.LFB551:
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
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	parse_test_max_fragment_size, .-parse_test_max_fragment_size
	.section	.rodata
.LC62:
	.string	"512"
.LC63:
	.string	"1024"
.LC64:
	.string	"2048"
.LC65:
	.string	"4096"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_max_fragment_len_mode, @object
	.size	ssl_max_fragment_len_mode, 80
ssl_max_fragment_len_mode:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	.LC62
	.long	1
	.zero	4
	.quad	.LC63
	.long	2
	.zero	4
	.quad	.LC64
	.long	3
	.zero	4
	.quad	.LC65
	.long	4
	.zero	4
	.text
	.type	parse_max_fragment_len_mode, @function
parse_max_fragment_len_mode:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-4(%rbp), %rax
	leaq	ssl_max_fragment_len_mode(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$5, %esi
	call	parse_enum
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L148
.L146:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	parse_max_fragment_len_mode, .-parse_max_fragment_len_mode
	.globl	ssl_max_fragment_len_name
	.type	ssl_max_fragment_len_name, @function
ssl_max_fragment_len_name:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	ssl_max_fragment_len_mode(%rip), %rcx
	movl	%eax, %edx
	movl	$5, %esi
	movq	%rcx, %rdi
	call	enum_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	ssl_max_fragment_len_name, .-ssl_max_fragment_len_name
	.type	parse_expected_key_type, @function
parse_expected_key_type:
.LFB554:
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
	jne	.L152
	movl	$0, %eax
	jmp	.L163
.L152:
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L154
	movq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_get0_info@PLT
	jmp	.L155
.L154:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -12(%rbp)
.L155:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L156
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -12(%rbp)
.L156:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L157
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_curve_nist2nid@PLT
	movl	%eax, -12(%rbp)
.L157:
	movl	-12(%rbp), %eax
	cmpl	$1287, %eax
	je	.L158
	cmpl	$1287, %eax
	jg	.L159
	cmpl	$1285, %eax
	je	.L160
	cmpl	$1286, %eax
	je	.L161
	jmp	.L159
.L160:
	movl	$927, -12(%rbp)
	jmp	.L159
.L161:
	movl	$931, -12(%rbp)
	jmp	.L159
.L158:
	movl	$933, -12(%rbp)
	nop
.L159:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L162
	movl	$0, %eax
	jmp	.L163
.L162:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	parse_expected_key_type, .-parse_expected_key_type
	.type	parse_expected_tmp_key_type, @function
parse_expected_tmp_key_type:
.LFB555:
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
	leaq	476(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_key_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	parse_expected_tmp_key_type, .-parse_expected_tmp_key_type
	.type	parse_expected_server_cert_type, @function
parse_expected_server_cert_type:
.LFB556:
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
	leaq	480(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_key_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	parse_expected_server_cert_type, .-parse_expected_server_cert_type
	.type	parse_expected_server_sign_type, @function
parse_expected_server_sign_type:
.LFB557:
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
	leaq	488(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_key_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	parse_expected_server_sign_type, .-parse_expected_server_sign_type
	.type	parse_expected_client_cert_type, @function
parse_expected_client_cert_type:
.LFB558:
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
	leaq	504(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_key_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	parse_expected_client_cert_type, .-parse_expected_client_cert_type
	.type	parse_expected_client_sign_type, @function
parse_expected_client_sign_type:
.LFB559:
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
	leaq	512(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_key_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	parse_expected_client_sign_type, .-parse_expected_client_sign_type
	.type	parse_expected_sign_hash, @function
parse_expected_sign_hash:
.LFB560:
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
	jne	.L175
	movl	$0, %eax
	jmp	.L176
.L175:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L177
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -4(%rbp)
.L177:
	cmpl	$0, -4(%rbp)
	jne	.L178
	movl	$0, %eax
	jmp	.L176
.L178:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	parse_expected_sign_hash, .-parse_expected_sign_hash
	.type	parse_expected_server_sign_hash, @function
parse_expected_server_sign_hash:
.LFB561:
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
	leaq	484(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_sign_hash
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	parse_expected_server_sign_hash, .-parse_expected_server_sign_hash
	.type	parse_expected_client_sign_hash, @function
parse_expected_client_sign_hash:
.LFB562:
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
	leaq	508(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_expected_sign_hash
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	parse_expected_client_sign_hash, .-parse_expected_client_sign_hash
	.section	.rodata
.LC66:
	.string	"empty"
	.text
	.type	parse_expected_ca_names, @function
parse_expected_ca_names:
.LFB563:
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
	cmpq	$0, -16(%rbp)
	jne	.L184
	movl	$0, %eax
	jmp	.L185
.L184:
	leaq	.LC66(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L186
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L187
.L186:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_load_client_CA_file_ex@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L187:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	parse_expected_ca_names, .-parse_expected_ca_names
	.type	parse_expected_server_ca_names, @function
parse_expected_server_ca_names:
.LFB564:
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
	movq	568(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	496(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_expected_ca_names
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	parse_expected_server_ca_names, .-parse_expected_server_ca_names
	.type	parse_expected_client_ca_names, @function
parse_expected_client_ca_names:
.LFB565:
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
	movq	568(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	520(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_expected_ca_names
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	parse_expected_client_ca_names, .-parse_expected_client_ca_names
	.section	.rodata
.LC67:
	.string	"ctx->expected_cipher"
	.text
	.type	parse_test_expected_cipher, @function
parse_test_expected_cipher:
.LFB566:
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
	movq	552(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$647, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$647, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 552(%rdx)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$647, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	parse_test_expected_cipher, .-parse_test_expected_cipher
	.type	parse_client_enable_pha, @function
parse_client_enable_pha:
.LFB567:
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
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	parse_client_enable_pha, .-parse_client_enable_pha
	.type	parse_server_force_pha, @function
parse_server_force_pha:
.LFB568:
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
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	parse_server_force_pha, .-parse_server_force_pha
	.type	parse_client_no_extms_on_reneg, @function
parse_client_no_extms_on_reneg:
.LFB569:
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
	leaq	68(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_boolean
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	parse_client_no_extms_on_reneg, .-parse_client_no_extms_on_reneg
	.section	.rodata
.LC68:
	.string	"ctx->fips_version"
	.text
	.type	parse_test_fips_version, @function
parse_test_fips_version:
.LFB570:
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
	movq	576(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$656, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$656, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 576(%rdx)
	movq	-8(%rbp), %rax
	movq	576(%rax), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$656, %esi
	call	test_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	parse_test_fips_version, .-parse_test_fips_version
	.section	.rodata
.LC69:
	.string	"ExpectedResult"
.LC70:
	.string	"ExpectedClientAlert"
.LC71:
	.string	"ExpectedServerAlert"
.LC72:
	.string	"ExpectedProtocol"
.LC73:
	.string	"ExpectedServerName"
.LC74:
	.string	"SessionTicketExpected"
.LC75:
	.string	"CompressionExpected"
.LC76:
	.string	"SessionIdExpected"
.LC77:
	.string	"Method"
.LC78:
	.string	"ExpectedNPNProtocol"
.LC79:
	.string	"ExpectedALPNProtocol"
.LC80:
	.string	"HandshakeMode"
.LC81:
	.string	"KeyUpdateType"
.LC82:
	.string	"ResumptionExpected"
.LC83:
	.string	"ApplicationData"
.LC84:
	.string	"MaxFragmentSize"
.LC85:
	.string	"ExpectedTmpKeyType"
.LC86:
	.string	"ExpectedServerCertType"
.LC87:
	.string	"ExpectedServerSignHash"
.LC88:
	.string	"ExpectedServerSignType"
.LC89:
	.string	"ExpectedServerCANames"
.LC90:
	.string	"ExpectedClientCertType"
.LC91:
	.string	"ExpectedClientSignHash"
.LC92:
	.string	"ExpectedClientSignType"
.LC93:
	.string	"ExpectedClientCANames"
.LC94:
	.string	"UseSCTP"
.LC95:
	.string	"CompressCertificates"
.LC96:
	.string	"EnableClientSCTPLabelBug"
.LC97:
	.string	"EnableServerSCTPLabelBug"
.LC98:
	.string	"ExpectedCipher"
.LC99:
	.string	"ExpectedSessionTicketAppData"
.LC100:
	.string	"FIPSversion"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_test_ctx_options, @object
	.size	ssl_test_ctx_options, 512
ssl_test_ctx_options:
	.quad	.LC69
	.quad	parse_expected_result
	.quad	.LC70
	.quad	parse_client_alert
	.quad	.LC71
	.quad	parse_server_alert
	.quad	.LC72
	.quad	parse_protocol
	.quad	.LC73
	.quad	parse_expected_servername
	.quad	.LC74
	.quad	parse_session_ticket
	.quad	.LC75
	.quad	parse_test_compression_expected
	.quad	.LC76
	.quad	parse_session_id
	.quad	.LC77
	.quad	parse_test_method
	.quad	.LC78
	.quad	parse_test_expected_npn_protocol
	.quad	.LC79
	.quad	parse_test_expected_alpn_protocol
	.quad	.LC80
	.quad	parse_handshake_mode
	.quad	.LC81
	.quad	parse_key_update_type
	.quad	.LC82
	.quad	parse_test_resumption_expected
	.quad	.LC83
	.quad	parse_test_app_data_size
	.quad	.LC84
	.quad	parse_test_max_fragment_size
	.quad	.LC85
	.quad	parse_expected_tmp_key_type
	.quad	.LC86
	.quad	parse_expected_server_cert_type
	.quad	.LC87
	.quad	parse_expected_server_sign_hash
	.quad	.LC88
	.quad	parse_expected_server_sign_type
	.quad	.LC89
	.quad	parse_expected_server_ca_names
	.quad	.LC90
	.quad	parse_expected_client_cert_type
	.quad	.LC91
	.quad	parse_expected_client_sign_hash
	.quad	.LC92
	.quad	parse_expected_client_sign_type
	.quad	.LC93
	.quad	parse_expected_client_ca_names
	.quad	.LC94
	.quad	parse_test_use_sctp
	.quad	.LC95
	.quad	parse_test_compress_certificates
	.quad	.LC96
	.quad	parse_test_enable_client_sctp_label_bug
	.quad	.LC97
	.quad	parse_test_enable_server_sctp_label_bug
	.quad	.LC98
	.quad	parse_test_expected_cipher
	.quad	.LC99
	.quad	parse_test_expected_session_ticket_app_data
	.quad	.LC100
	.quad	parse_test_fips_version
	.section	.rodata
.LC101:
	.string	"VerifyCallback"
.LC102:
	.string	"ServerName"
.LC103:
	.string	"NPNProtocols"
.LC104:
	.string	"ALPNProtocols"
.LC105:
	.string	"CTValidation"
.LC106:
	.string	"RenegotiateCiphers"
.LC107:
	.string	"SRPUser"
.LC108:
	.string	"SRPPassword"
.LC109:
	.string	"MaxFragmentLenExt"
.LC110:
	.string	"EnablePHA"
.LC111:
	.string	"RenegotiateNoExtms"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_test_client_options, @object
	.size	ssl_test_client_options, 176
ssl_test_client_options:
	.quad	.LC101
	.quad	parse_client_verify_callback
	.quad	.LC102
	.quad	parse_servername
	.quad	.LC103
	.quad	parse_client_npn_protocols
	.quad	.LC104
	.quad	parse_client_alpn_protocols
	.quad	.LC105
	.quad	parse_ct_validation
	.quad	.LC106
	.quad	parse_client_reneg_ciphers
	.quad	.LC107
	.quad	parse_client_srp_user
	.quad	.LC108
	.quad	parse_client_srp_password
	.quad	.LC109
	.quad	parse_max_fragment_len_mode
	.quad	.LC110
	.quad	parse_client_enable_pha
	.quad	.LC111
	.quad	parse_client_no_extms_on_reneg
	.section	.rodata
.LC112:
	.string	"ServerNameCallback"
.LC113:
	.string	"BrokenSessionTicket"
.LC114:
	.string	"CertStatus"
.LC115:
	.string	"ForcePHA"
.LC116:
	.string	"SessionTicketAppData"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_test_server_options, @object
	.size	ssl_test_server_options, 144
ssl_test_server_options:
	.quad	.LC112
	.quad	parse_servername_callback
	.quad	.LC103
	.quad	parse_server_npn_protocols
	.quad	.LC104
	.quad	parse_server_alpn_protocols
	.quad	.LC113
	.quad	parse_server_broken_session_ticket
	.quad	.LC114
	.quad	parse_certstatus
	.quad	.LC107
	.quad	parse_server_srp_user
	.quad	.LC108
	.quad	parse_server_srp_password
	.quad	.LC115
	.quad	parse_server_force_pha
	.quad	.LC116
	.quad	parse_server_session_ticket_app_data
	.text
	.globl	SSL_TEST_CTX_new
	.type	SSL_TEST_CTX_new, @function
SSL_TEST_CTX_new:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC3(%rip), %rax
	movl	$744, %edx
	movq	%rax, %rsi
	movl	$584, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L203
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 568(%rax)
	movl	$256, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$512, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
.L203:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	SSL_TEST_CTX_new, .-SSL_TEST_CTX_new
	.type	ssl_test_extra_conf_free_data, @function
ssl_test_extra_conf_free_data:
.LFB572:
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
	leaq	.LC3(%rip), %rcx
	movl	$754, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$755, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$756, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$757, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$758, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$759, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$760, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$761, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$762, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$763, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$764, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$765, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$766, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$767, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$768, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ssl_test_extra_conf_free_data, .-ssl_test_extra_conf_free_data
	.type	ssl_test_ctx_free_extra_data, @function
ssl_test_ctx_free_extra_data:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	ssl_test_extra_conf_free_data
	movq	-8(%rbp), %rax
	addq	$224, %rax
	movq	%rax, %rdi
	call	ssl_test_extra_conf_free_data
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	ssl_test_ctx_free_extra_data, .-ssl_test_ctx_free_extra_data
	.globl	SSL_TEST_CTX_free
	.type	SSL_TEST_CTX_free, @function
SSL_TEST_CTX_free:
.LFB574:
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
	cmpq	$0, -24(%rbp)
	je	.L210
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_test_ctx_free_extra_data
	movq	-24(%rbp), %rax
	movq	456(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$782, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$783, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$784, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	552(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$787, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	576(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$788, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$789, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L207
.L210:
	nop
.L207:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	SSL_TEST_CTX_free, .-SSL_TEST_CTX_free
	.section	.rodata
	.align 8
.LC117:
	.string	"sk_conf = NCONF_get_section(conf, client_section)"
.LC118:
	.string	"Bad value %s for option %s"
.LC119:
	.string	"Unknown test option: %s"
	.text
	.type	parse_client_options, @function
parse_client_options:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$799, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L212
	movl	$0, %eax
	jmp	.L213
.L212:
	movl	$0, -4(%rbp)
	jmp	.L214
.L221:
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L215
.L219:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ssl_test_client_options(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L216
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ssl_test_client_options(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L217
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$808, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L213
.L217:
	movl	$1, -20(%rbp)
	jmp	.L218
.L216:
	addq	$1, -16(%rbp)
.L215:
	cmpq	$10, -16(%rbp)
	jbe	.L219
.L218:
	cmpl	$0, -20(%rbp)
	jne	.L220
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$817, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L213
.L220:
	addl	$1, -4(%rbp)
.L214:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L221
	movl	$1, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	parse_client_options, .-parse_client_options
	.section	.rodata
	.align 8
.LC120:
	.string	"sk_conf = NCONF_get_section(conf, server_section)"
	.text
	.type	parse_server_options, @function
parse_server_options:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$832, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L223
	movl	$0, %eax
	jmp	.L224
.L223:
	movl	$0, -4(%rbp)
	jmp	.L225
.L232:
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L226
.L230:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ssl_test_server_options(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L227
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ssl_test_server_options(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L228
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$841, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L224
.L228:
	movl	$1, -20(%rbp)
	jmp	.L229
.L227:
	addq	$1, -16(%rbp)
.L226:
	cmpq	$8, -16(%rbp)
	jbe	.L230
.L229:
	cmpl	$0, -20(%rbp)
	jne	.L231
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$850, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L224
.L231:
	addl	$1, -4(%rbp)
.L225:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L232
	movl	$1, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	parse_server_options, .-parse_server_options
	.section	.rodata
	.align 8
.LC121:
	.string	"sk_conf = NCONF_get_section(conf, test_section)"
	.align 8
.LC122:
	.string	"ctx = SSL_TEST_CTX_new(libctx)"
.LC123:
	.string	"client"
.LC124:
	.string	"server"
.LC125:
	.string	"resume-client"
.LC126:
	.string	"resume-server"
.LC127:
	.string	"resume-server2"
	.text
	.globl	SSL_TEST_CTX_create
	.type	SSL_TEST_CTX_create, @function
SSL_TEST_CTX_create:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC121(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$866, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L253
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_TEST_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$867, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L253
	movl	$0, -12(%rbp)
	jmp	.L237
.L250:
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC123(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L238
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_client_options
	testl	%eax, %eax
	jne	.L239
	jmp	.L236
.L238:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC124(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L240
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_server_options
	testl	%eax, %eax
	jne	.L239
	jmp	.L236
.L240:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L241
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	160(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_server_options
	testl	%eax, %eax
	jne	.L239
	jmp	.L236
.L241:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC125(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L242
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	224(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_client_options
	testl	%eax, %eax
	jne	.L239
	jmp	.L236
.L242:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC126(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L243
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_server_options
	testl	%eax, %eax
	jne	.L239
	jmp	.L236
.L243:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC127(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L244
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	360(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_server_options
	testl	%eax, %eax
	jne	.L239
	jmp	.L236
.L244:
	movq	$0, -24(%rbp)
	jmp	.L245
.L249:
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ssl_test_ctx_options(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L246
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ssl_test_ctx_options(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L247
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$900, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L236
.L247:
	movl	$1, -28(%rbp)
	jmp	.L248
.L246:
	addq	$1, -24(%rbp)
.L245:
	cmpq	$31, -24(%rbp)
	jbe	.L249
.L248:
	cmpl	$0, -28(%rbp)
	jne	.L239
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$909, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L236
.L239:
	addl	$1, -12(%rbp)
.L237:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L250
	jmp	.L251
.L253:
	nop
.L236:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_TEST_CTX_free@PLT
	movq	$0, -8(%rbp)
.L251:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	SSL_TEST_CTX_create, .-SSL_TEST_CTX_create
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

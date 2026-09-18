	.file	"ssl_handshake_rtt_test.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB631:
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
.LFE631:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB632:
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
.LFE632:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB647:
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
.LFE647:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB648:
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
.LFE648:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB724:
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
.LFE724:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB725:
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
.LFE725:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	libctx
	.comm	libctx,8,8
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"create_ssl_ctx_pair(libctx, TLS_server_method(), TLS_client_method(), TLS1_VERSION, (tst <= 1) ? TLS1_2_VERSION : TLS1_3_VERSION, &sctx, &cctx, cert, privkey)"
	.align 8
.LC1:
	.string	"../test/ssl_handshake_rtt_test.c"
	.align 8
.LC2:
	.string	"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)"
.LC3:
	.string	"s"
.LC4:
	.string	"st = &s->statem"
.LC5:
	.string	"0"
	.align 8
.LC6:
	.string	"SSL_get_handshake_rtt(SSL_CONNECTION_GET_SSL(s), &rtt)"
.LC7:
	.string	"1000"
.LC8:
	.string	"rtt"
	.text
	.type	test_handshake_rtt, @function
test_handshake_rtt:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -100(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	cmpl	$1, -100(%rbp)
	jg	.L14
	movl	$771, %r14d
	jmp	.L15
.L14:
	movl	$772, %r14d
.L15:
	call	TLS_client_method@PLT
	movq	%rax, %r13
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	movq	libctx(%rip), %rax
	leaq	-72(%rbp), %rcx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-64(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movl	%r14d, %r8d
	movl	$769, %ecx
	movq	%r13, %rdx
	movq	%rax, %rdi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L19
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	jmp	.L20
.L19:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	sete	%al
.L20:
	testb	%al, %al
	je	.L21
	movq	$0, -48(%rbp)
	jmp	.L22
.L21:
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L23
	movq	-80(%rbp), %rax
	jmp	.L24
.L23:
	movq	-88(%rbp), %rax
.L24:
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L25
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L26
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L22
.L26:
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L22
.L25:
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L27
	movq	-80(%rbp), %rax
	jmp	.L28
.L27:
	movq	-88(%rbp), %rax
.L28:
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L29
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L30
	movq	-80(%rbp), %rax
	jmp	.L31
.L30:
	movq	-88(%rbp), %rax
.L31:
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L22
.L29:
	movq	$0, -48(%rbp)
.L22:
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-48(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L43
.L33:
	cmpl	$4, -100(%rbp)
	je	.L35
	cmpl	$4, -100(%rbp)
	jg	.L36
	cmpl	$3, -100(%rbp)
	je	.L37
	cmpl	$3, -100(%rbp)
	jg	.L36
	cmpl	$2, -100(%rbp)
	je	.L38
	cmpl	$2, -100(%rbp)
	jg	.L36
	cmpl	$0, -100(%rbp)
	je	.L39
	cmpl	$1, -100(%rbp)
	je	.L40
	jmp	.L36
.L39:
	movq	-56(%rbp), %rax
	movl	$13, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client_write_transition@PLT
	movl	$1, %edi
	call	OSSL_sleep@PLT
	movq	-56(%rbp), %rax
	movl	$9, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client_write_transition@PLT
	jmp	.L36
.L40:
	movq	-56(%rbp), %rax
	movl	$29, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_server_write_transition@PLT
	movl	$1, %edi
	call	OSSL_sleep@PLT
	movq	-56(%rbp), %rax
	movl	$36, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_server_write_transition@PLT
	jmp	.L36
.L38:
	movq	-56(%rbp), %rax
	movl	$13, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client_write_transition@PLT
	movl	$1, %edi
	call	OSSL_sleep@PLT
	movq	-56(%rbp), %rax
	movl	$9, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client_write_transition@PLT
	jmp	.L36
.L37:
	movq	-56(%rbp), %rax
	movl	$29, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_server_write_transition@PLT
	movl	$1, %edi
	call	OSSL_sleep@PLT
	movq	-56(%rbp), %rax
	movl	$36, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_server_write_transition@PLT
	jmp	.L36
.L35:
	movq	-56(%rbp), %rax
	movl	$50, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client_write_transition@PLT
	movl	$1, %edi
	call	OSSL_sleep@PLT
	movq	-56(%rbp), %rax
	movl	$9, 20(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client_write_transition@PLT
	nop
.L36:
	movq	-48(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_handshake_rtt@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L45
	movq	-96(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1000, %r9d
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, -36(%rbp)
	jmp	.L18
.L44:
	nop
	jmp	.L18
.L45:
	nop
	jmp	.L18
.L46:
	nop
.L18:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L43:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	test_handshake_rtt, .-test_handshake_rtt
	.section	.rodata
.LC9:
	.string	"test_handshake_rtt"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_handshake_rtt(%rip), %rsi
	leaq	.LC9(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

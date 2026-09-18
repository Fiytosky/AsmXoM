	.file	"rpktest.c"
	.text
	.local	certsdir
	.comm	certsdir,8,8
	.local	rootcert
	.comm	rootcert,8,8
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	cert2
	.comm	cert2,8,8
	.local	privkey2
	.comm	privkey2,8,8
	.local	cert448
	.comm	cert448,8,8
	.local	privkey448
	.comm	privkey448,8,8
	.local	cert25519
	.comm	cert25519,8,8
	.local	privkey25519
	.comm	privkey25519,8,8
	.local	libctx
	.comm	libctx,8,8
	.local	defctxnull
	.comm	defctxnull,8,8
	.section	.rodata
	.type	cert_type_rpk, @object
	.size	cert_type_rpk, 2
cert_type_rpk:
	.string	"\002"
	.type	SID_CTX, @object
	.size	SID_CTX, 3
SID_CTX:
	.ascii	"rpk"
	.align 8
.LC0:
	.string	"rpk_verify_client_cb: ok=%d err=%d"
.LC1:
	.string	"../test/rpktest.c"
	.text
	.type	rpk_verify_client_cb, @function
rpk_verify_client_cb:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_rpk@PLT
	testq	%rax, %rax
	je	.L2
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$47, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	rpk_verify_client_cb, .-rpk_verify_client_cb
	.section	.rodata
	.align 8
.LC2:
	.string	"rpk_verify_server_cb: ok=%d err=%d"
	.text
	.type	rpk_verify_server_cb, @function
rpk_verify_server_cb:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_rpk@PLT
	testq	%rax, %rax
	je	.L5
	cmpl	$0, -4(%rbp)
	je	.L5
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$59, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	rpk_verify_server_cb, .-rpk_verify_server_cb
	.section	.rodata
.LC3:
	.string	"RPK_TESTS * RPK_DIMS"
.LC4:
	.string	"idx"
.LC5:
	.string	"root_x509"
.LC6:
	.string	"root_pkey"
.LC7:
	.string	"EDCSA disabled"
.LC8:
	.string	"x509"
.LC9:
	.string	"other_x509"
.LC10:
	.string	"null"
.LC11:
	.string	"defctxnull"
	.align 8
.LC12:
	.string	"create_ssl_ctx_pair(test_libctx, TLS_server_method(), TLS_client_method(), tls_version, tls_version, &sctx, &cctx, NULL, NULL)"
	.align 8
.LC13:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_rpk, sizeof(cert_type_rpk))"
	.align 8
.LC14:
	.string	"SSL_CTX_set1_client_cert_type(sctx, cert_type_rpk, sizeof(cert_type_rpk))"
	.align 8
.LC15:
	.string	"SSL_CTX_set1_server_cert_type(cctx, cert_type_rpk, sizeof(cert_type_rpk))"
	.align 8
.LC16:
	.string	"SSL_CTX_set1_client_cert_type(cctx, cert_type_rpk, sizeof(cert_type_rpk))"
	.align 8
.LC17:
	.string	"SSL_CTX_set_session_id_context(sctx, SID_CTX, sizeof(SID_CTX))"
	.align 8
.LC18:
	.string	"SSL_CTX_set_session_id_context(cctx, SID_CTX, sizeof(SID_CTX))"
.LC19:
	.string	"0"
.LC20:
	.string	"SSL_CTX_dane_enable(sctx)"
.LC21:
	.string	"SSL_CTX_dane_enable(cctx)"
	.align 8
.LC22:
	.string	"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)"
	.align 8
.LC23:
	.string	"SSL_dane_enable(serverssl, NULL)"
.LC24:
	.string	"example.com"
	.align 8
.LC25:
	.string	"SSL_dane_enable(clientssl, \"example.com\")"
.LC26:
	.string	"1"
	.align 8
.LC27:
	.string	"SSL_use_PrivateKey_file(serverssl, privkey_file, SSL_FILETYPE_PEM)"
	.align 8
.LC28:
	.string	"SSL_use_certificate_file(serverssl, cert_file, SSL_FILETYPE_PEM)"
	.align 8
.LC29:
	.string	"SSL_check_private_key(serverssl)"
.LC30:
	.string	"idx < RPK_TESTS"
	.align 8
.LC31:
	.string	"SSL_add_expected_rpk(clientssl, pkey)"
	.align 8
.LC32:
	.string	"SSL_add_expected_rpk(serverssl, pkey)"
	.align 8
.LC33:
	.string	"SSL_use_PrivateKey_file(clientssl, privkey_file, SSL_FILETYPE_PEM)"
	.align 8
.LC34:
	.string	"SSL_use_certificate_file(clientssl, cert_file, SSL_FILETYPE_PEM)"
	.align 8
.LC35:
	.string	"SSL_check_private_key(clientssl)"
	.align 8
.LC36:
	.string	"SSL_add_expected_rpk(clientssl, root_pkey)"
	.align 8
.LC37:
	.string	"SSL_add_expected_rpk(clientssl, other_pkey)"
.LC38:
	.string	"PHA requires TLSv1.3"
	.align 8
.LC39:
	.string	"Only testing resumption with server RPK"
	.align 8
.LC40:
	.string	"Only testing client authentication resumption with client RPK"
.LC41:
	.string	"ret"
.LC42:
	.string	"expected"
.LC43:
	.string	"client_verify_result"
	.align 8
.LC44:
	.string	"SSL_get_verify_result(clientssl)"
.LC45:
	.string	"SSL_get0_peer_rpk(clientssl)"
.LC46:
	.string	"TLSEXT_cert_type_rpk"
	.align 8
.LC47:
	.string	"SSL_get_negotiated_server_cert_type(serverssl)"
	.align 8
.LC48:
	.string	"SSL_get_negotiated_server_cert_type(clientssl)"
	.align 8
.LC49:
	.string	"SSL_get0_peer_certificate(clientssl)"
.LC50:
	.string	"TLSEXT_cert_type_x509"
	.align 8
.LC51:
	.string	"SSL_verify_client_post_handshake(serverssl)"
.LC52:
	.string	"SSL_do_handshake(serverssl)"
.LC53:
	.string	"SSL_read(clientssl, NULL, 0)"
.LC54:
	.string	"SSL_read(serverssl, NULL, 0)"
.LC55:
	.string	"server_verify_result"
	.align 8
.LC56:
	.string	"SSL_get_verify_result(serverssl)"
.LC57:
	.string	"SSL_get0_peer_rpk(serverssl)"
	.align 8
.LC58:
	.string	"SSL_get_negotiated_client_cert_type(serverssl)"
	.align 8
.LC59:
	.string	"SSL_get_negotiated_client_cert_type(clientssl)"
	.align 8
.LC60:
	.string	"SSL_get0_peer_certificate(serverssl)"
	.align 8
.LC61:
	.string	"(client_sess = SSL_get1_session(clientssl))"
	.align 8
.LC62:
	.string	"(client_pkey = SSL_SESSION_get0_peer_rpk(client_sess))"
	.align 8
.LC63:
	.string	"(server_sess = SSL_get1_session(serverssl))"
	.align 8
.LC64:
	.string	"(server_pkey = SSL_SESSION_get0_peer_rpk(server_sess))"
	.align 8
.LC65:
	.string	"SSL_set_session(clientssl, client_sess)"
	.align 8
.LC66:
	.string	"SSL_dane_enable(serverssl, \"example.com\")"
	.align 8
.LC67:
	.string	"SSL_add_expected_rpk(clientssl, client_pkey)"
	.align 8
.LC68:
	.string	"SSL_add_expected_rpk(serverssl, server_pkey)"
.LC69:
	.string	"verify"
.LC70:
	.string	"client_expected"
.LC71:
	.string	"SSL_session_reused(clientssl)"
	.align 8
.LC72:
	.string	"idx_ss_rpk=%d, idx_sc_rpk=%d, idx_cs_rpk=%d, idx_cc_rpk=%d, idx_cert=%d, idx_prot=%d, idx=%d"
	.text
	.type	test_rpk, @function
test_rpk:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movl	-260(%rbp), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2304, %r9d
	movl	%esi, %r8d
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L183
.L8:
	movl	-260(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$8, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -172(%rbp)
	movl	-260(%rbp), %edx
	movslq	%edx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$8, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	sall	$7, %eax
	subl	%eax, %edx
	movl	%edx, -260(%rbp)
	movl	-260(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$7, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -176(%rbp)
	movl	-260(%rbp), %edx
	movslq	%edx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$7, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	sall	$6, %eax
	subl	%eax, %edx
	movl	%edx, -260(%rbp)
	movl	-260(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$6, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -180(%rbp)
	movl	-260(%rbp), %edx
	movslq	%edx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$6, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	subl	%eax, %edx
	movl	%edx, -260(%rbp)
	movl	-260(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -184(%rbp)
	movl	-260(%rbp), %edx
	movslq	%edx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$5, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	subl	%eax, %edx
	movl	%edx, -260(%rbp)
	movl	-260(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$3, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -188(%rbp)
	movl	-260(%rbp), %edx
	movslq	%edx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	subl	%eax, %edx
	movl	%edx, -260(%rbp)
	movl	-260(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -192(%rbp)
	movl	-260(%rbp), %edx
	movslq	%edx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$2, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, -260(%rbp)
	movq	rootcert(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$145, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L185
	cmpl	$3, -188(%rbp)
	je	.L13
	cmpl	$3, -188(%rbp)
	jg	.L14
	cmpl	$2, -188(%rbp)
	je	.L15
	cmpl	$2, -188(%rbp)
	jg	.L14
	cmpl	$0, -188(%rbp)
	je	.L16
	cmpl	$1, -188(%rbp)
	je	.L17
	jmp	.L14
.L16:
	movq	cert(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	privkey(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	cert2(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.L18
.L17:
	movq	cert2(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	privkey2(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	cert(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.L18
.L15:
	movq	cert448(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	privkey448(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	cert(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.L18
.L13:
	movq	cert25519(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	privkey25519(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	cert(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.L18
.L14:
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L18:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$183, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L186
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$188, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L187
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -144(%rbp)
	cmpl	$0, -192(%rbp)
	je	.L21
	cmpl	$1, -192(%rbp)
	je	.L22
	jmp	.L11
.L21:
	movl	$772, -48(%rbp)
	jmp	.L24
.L22:
	movl	$771, -48(%rbp)
	nop
.L24:
	cmpl	$15, -260(%rbp)
	jne	.L25
	movq	libctx(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, defctxnull(%rip)
	movq	defctxnull(%rip), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$224, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L188
.L25:
	call	TLS_client_method@PLT
	movq	%rax, %rbx
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-232(%rbp), %r8
	movl	-48(%rbp), %edi
	movl	-48(%rbp), %edx
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	leaq	-224(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%edx, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L189
	cmpl	$0, -172(%rbp)
	je	.L27
	movq	-232(%rbp), %rax
	leaq	cert_type_rpk(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L190
.L27:
	cmpl	$0, -176(%rbp)
	je	.L28
	movq	-232(%rbp), %rax
	leaq	cert_type_rpk(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_client_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$237, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
.L28:
	cmpl	$0, -180(%rbp)
	je	.L29
	movq	-224(%rbp), %rax
	leaq	cert_type_rpk(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L192
.L29:
	cmpl	$0, -184(%rbp)
	je	.L30
	movq	-224(%rbp), %rax
	leaq	cert_type_rpk(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_client_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$243, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
.L30:
	movq	-232(%rbp), %rax
	leaq	SID_CTX(%rip), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_session_id_context@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$245, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L194
	movq	-224(%rbp), %rax
	leaq	SID_CTX(%rip), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_session_id_context@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L195
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$250, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L196
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$252, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L197
	movq	-224(%rbp), %rax
	leaq	rpk_verify_client_cb(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_verify@PLT
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rax
	leaq	-240(%rbp), %rcx
	leaq	-248(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$258, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-248(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$262, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L199
	movq	-240(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L200
	movq	-248(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L201
	cmpl	$1, -260(%rbp)
	jne	.L39
	cmpl	$0, -172(%rbp)
	je	.L40
	cmpl	$0, -180(%rbp)
	jne	.L41
.L40:
	movl	$0, -40(%rbp)
	movl	$1, -100(%rbp)
	jmp	.L41
.L39:
	movq	-248(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L202
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$280, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L203
.L41:
	cmpl	$17, -260(%rbp)
	je	.L43
	cmpl	$17, -260(%rbp)
	jg	.L44
	cmpl	$16, -260(%rbp)
	je	.L45
	cmpl	$16, -260(%rbp)
	jg	.L44
	cmpl	$15, -260(%rbp)
	je	.L46
	cmpl	$15, -260(%rbp)
	jg	.L44
	cmpl	$14, -260(%rbp)
	je	.L47
	cmpl	$14, -260(%rbp)
	jg	.L44
	cmpl	$13, -260(%rbp)
	je	.L48
	cmpl	$13, -260(%rbp)
	jg	.L44
	cmpl	$12, -260(%rbp)
	je	.L49
	cmpl	$12, -260(%rbp)
	jg	.L44
	cmpl	$11, -260(%rbp)
	je	.L50
	cmpl	$11, -260(%rbp)
	jg	.L44
	cmpl	$10, -260(%rbp)
	je	.L51
	cmpl	$10, -260(%rbp)
	jg	.L44
	cmpl	$9, -260(%rbp)
	je	.L52
	cmpl	$9, -260(%rbp)
	jg	.L44
	cmpl	$8, -260(%rbp)
	je	.L53
	cmpl	$8, -260(%rbp)
	jg	.L44
	cmpl	$7, -260(%rbp)
	je	.L54
	cmpl	$7, -260(%rbp)
	jg	.L44
	cmpl	$6, -260(%rbp)
	je	.L55
	cmpl	$6, -260(%rbp)
	jg	.L44
	cmpl	$5, -260(%rbp)
	je	.L56
	cmpl	$5, -260(%rbp)
	jg	.L44
	cmpl	$4, -260(%rbp)
	je	.L57
	cmpl	$4, -260(%rbp)
	jg	.L44
	cmpl	$3, -260(%rbp)
	je	.L58
	cmpl	$3, -260(%rbp)
	jg	.L44
	cmpl	$2, -260(%rbp)
	je	.L59
	cmpl	$2, -260(%rbp)
	jg	.L44
	cmpl	$0, -260(%rbp)
	je	.L60
	cmpl	$1, -260(%rbp)
	je	.L61
.L44:
	cmpl	$17, -260(%rbp)
	setle	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L204
	jmp	.L11
.L60:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L205
	jmp	.L11
.L61:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L206
	jmp	.L11
.L59:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	-248(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L208
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$303, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L209
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L210
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L211
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movl	$1, -92(%rbp)
	jmp	.L63
.L58:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$313, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L212
	movq	-240(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$315, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L213
	jmp	.L11
.L57:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$319, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movq	-240(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L215
	jmp	.L11
.L56:
	movq	-240(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$325, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L216
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$327, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L217
	jmp	.L11
.L55:
	movq	-240(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$331, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L218
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$333, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L219
	jmp	.L11
.L54:
	cmpl	$1, -172(%rbp)
	jne	.L79
	cmpl	$1, -180(%rbp)
	jne	.L79
	movl	$-1, -44(%rbp)
.L79:
	movq	-240(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$339, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L220
	movq	-240(%rbp), %rax
	leaq	rpk_verify_client_cb(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movq	$65, -112(%rbp)
	jmp	.L63
.L53:
	cmpl	$1, -172(%rbp)
	jne	.L81
	cmpl	$1, -180(%rbp)
	jne	.L81
	movl	$-1, -44(%rbp)
.L81:
	movq	-240(%rbp), %rax
	leaq	rpk_verify_client_cb(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movq	$95, -112(%rbp)
	jmp	.L63
.L52:
	cmpl	$772, -48(%rbp)
	je	.L82
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L82:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$356, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L221
	movq	-248(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$361, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L223
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L224
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$365, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L225
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$11, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movq	-240(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_post_handshake_auth@PLT
	movl	$1, -92(%rbp)
	jmp	.L63
.L51:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$372, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L226
	movq	-248(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$374, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L227
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$377, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L228
	cmpl	$0, -176(%rbp)
	je	.L91
	cmpl	$0, -184(%rbp)
	jne	.L92
.L91:
	movl	$0, -40(%rbp)
	movl	$1, -100(%rbp)
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	jmp	.L93
.L92:
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
.L93:
	movl	$1, -92(%rbp)
	jmp	.L63
.L50:
	cmpl	$0, -172(%rbp)
	je	.L94
	cmpl	$0, -180(%rbp)
	jne	.L95
.L94:
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$391, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L95:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$394, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L229
	movl	$1, -96(%rbp)
	jmp	.L63
.L49:
	cmpl	$0, -172(%rbp)
	je	.L97
	cmpl	$0, -180(%rbp)
	jne	.L98
.L97:
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$400, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L98:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$403, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-248(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-240(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movl	$1, -96(%rbp)
	jmp	.L63
.L48:
	cmpl	$0, -172(%rbp)
	je	.L100
	cmpl	$0, -180(%rbp)
	jne	.L101
.L100:
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L101:
	cmpl	$0, -176(%rbp)
	je	.L102
	cmpl	$0, -184(%rbp)
	jne	.L103
.L102:
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L103:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$418, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L231
	movq	-248(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$420, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L232
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$423, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L233
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L234
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$427, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L235
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movl	$1, -92(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L63
.L47:
	cmpl	$0, -172(%rbp)
	je	.L109
	cmpl	$0, -180(%rbp)
	jne	.L110
.L109:
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L110:
	cmpl	$0, -176(%rbp)
	je	.L111
	cmpl	$0, -184(%rbp)
	jne	.L112
.L111:
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$439, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -36(%rbp)
	jmp	.L11
.L112:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$442, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L236
	movq	-248(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$444, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L237
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$447, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L238
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$449, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L239
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$451, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L240
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movq	-248(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-240(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movl	$1, -92(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L63
.L46:
	movq	-240(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L241
	jmp	.L11
.L45:
	cmpl	$1, -172(%rbp)
	jne	.L119
	cmpl	$1, -180(%rbp)
	jne	.L119
	movl	$0, -40(%rbp)
	movl	$1, -100(%rbp)
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
.L119:
	movq	-240(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$470, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L242
	jmp	.L11
.L43:
	cmpl	$1, -172(%rbp)
	jne	.L243
	cmpl	$1, -180(%rbp)
	jne	.L243
	movl	$0, -40(%rbp)
	movl	$1, -100(%rbp)
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	jmp	.L243
.L204:
	nop
	jmp	.L63
.L205:
	nop
	jmp	.L63
.L206:
	nop
	jmp	.L63
.L213:
	nop
	jmp	.L63
.L215:
	nop
	jmp	.L63
.L217:
	nop
	jmp	.L63
.L219:
	nop
	jmp	.L63
.L241:
	nop
	jmp	.L63
.L242:
	nop
	jmp	.L63
.L243:
	nop
.L63:
	movq	-240(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	-100(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %edi
	movl	-40(%rbp), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$484, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L244
	cmpl	$0, -40(%rbp)
	jg	.L123
	movl	$1, -36(%rbp)
	jmp	.L11
.L123:
	cmpl	$0, -172(%rbp)
	je	.L124
	cmpl	$0, -180(%rbp)
	je	.L124
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_result@PLT
	movq	%rax, %rsi
	movq	-112(%rbp), %rdi
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$494, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L245
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_rpk@PLT
	movq	%rax, %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$496, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L246
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_server_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$498, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L247
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_server_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$500, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L129
	jmp	.L11
.L124:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_certificate@PLT
	movq	%rax, %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$503, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_server_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$505, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L249
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_server_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$507, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L250
.L129:
	cmpl	$9, -260(%rbp)
	jne	.L132
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_verify_client_post_handshake@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$513, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L251
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L252
	movq	-240(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$517, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L253
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$519, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L254
.L132:
	cmpl	$0, -92(%rbp)
	je	.L136
	cmpl	$0, -176(%rbp)
	je	.L137
	cmpl	$0, -184(%rbp)
	je	.L137
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_result@PLT
	movq	%rax, %rsi
	movq	-168(%rbp), %rdi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$526, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L255
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_rpk@PLT
	movq	%rax, %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$528, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L256
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_client_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$530, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L257
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_client_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$532, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L136
	jmp	.L11
.L137:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_certificate@PLT
	movq	%rax, %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$535, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L258
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_client_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$537, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L259
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_client_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$539, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L260
.L136:
	cmpl	$0, -96(%rbp)
	je	.L144
	movq	$0, -208(%rbp)
	movq	$0, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_session@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$548, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L261
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_peer_rpk@PLT
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$549, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L261
	cmpl	$0, -92(%rbp)
	je	.L147
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_session@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$552, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L262
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_peer_rpk@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$553, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L262
.L147:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rax
	leaq	-240(%rbp), %rcx
	leaq	-248(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$562, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L263
	movq	-240(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$564, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L263
	movq	-248(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$568, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L264
	movq	-248(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$570, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L265
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$572, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L266
	movq	-248(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$574, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L267
	movq	-240(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$576, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L268
	cmpl	$14, -260(%rbp)
	je	.L156
	cmpl	$14, -260(%rbp)
	jg	.L269
	cmpl	$13, -260(%rbp)
	je	.L158
	cmpl	$13, -260(%rbp)
	jg	.L269
	cmpl	$11, -260(%rbp)
	je	.L159
	cmpl	$12, -260(%rbp)
	je	.L160
	jmp	.L269
.L159:
	movq	-240(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$583, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L270
	jmp	.L11
.L160:
	movq	-240(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$587, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L271
	movq	-240(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-248(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	jmp	.L161
.L158:
	movq	-240(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$593, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L272
	movq	-248(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$595, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L273
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$598, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L274
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$600, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L275
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$602, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L276
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	jmp	.L161
.L156:
	movq	-240(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$607, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L277
	movq	-248(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_expected_rpk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$609, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L278
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$612, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L279
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$614, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L280
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$616, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L281
	movq	-248(%rbp), %rax
	leaq	rpk_verify_server_cb(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movq	-248(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-240(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	jmp	.L161
.L269:
	nop
	jmp	.L161
.L270:
	nop
.L161:
	movq	-240(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$625, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L282
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_result@PLT
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$628, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L283
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$630, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L284
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_rpk@PLT
	movq	%rax, %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$633, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L285
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_server_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$635, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L286
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_server_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$637, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L287
	cmpl	$0, -92(%rbp)
	je	.L144
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_rpk@PLT
	movq	%rax, %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$641, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L288
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_client_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$643, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L289
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_negotiated_client_cert_type@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$645, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L290
.L144:
	movl	$1, -36(%rbp)
	jmp	.L11
.L184:
	nop
	jmp	.L11
.L185:
	nop
	jmp	.L11
.L186:
	nop
	jmp	.L11
.L187:
	nop
	jmp	.L11
.L188:
	nop
	jmp	.L11
.L189:
	nop
	jmp	.L11
.L190:
	nop
	jmp	.L11
.L191:
	nop
	jmp	.L11
.L192:
	nop
	jmp	.L11
.L193:
	nop
	jmp	.L11
.L194:
	nop
	jmp	.L11
.L195:
	nop
	jmp	.L11
.L196:
	nop
	jmp	.L11
.L197:
	nop
	jmp	.L11
.L198:
	nop
	jmp	.L11
.L199:
	nop
	jmp	.L11
.L200:
	nop
	jmp	.L11
.L201:
	nop
	jmp	.L11
.L202:
	nop
	jmp	.L11
.L203:
	nop
	jmp	.L11
.L207:
	nop
	jmp	.L11
.L208:
	nop
	jmp	.L11
.L209:
	nop
	jmp	.L11
.L210:
	nop
	jmp	.L11
.L211:
	nop
	jmp	.L11
.L212:
	nop
	jmp	.L11
.L214:
	nop
	jmp	.L11
.L216:
	nop
	jmp	.L11
.L218:
	nop
	jmp	.L11
.L220:
	nop
	jmp	.L11
.L221:
	nop
	jmp	.L11
.L222:
	nop
	jmp	.L11
.L223:
	nop
	jmp	.L11
.L224:
	nop
	jmp	.L11
.L225:
	nop
	jmp	.L11
.L226:
	nop
	jmp	.L11
.L227:
	nop
	jmp	.L11
.L228:
	nop
	jmp	.L11
.L229:
	nop
	jmp	.L11
.L230:
	nop
	jmp	.L11
.L231:
	nop
	jmp	.L11
.L232:
	nop
	jmp	.L11
.L233:
	nop
	jmp	.L11
.L234:
	nop
	jmp	.L11
.L235:
	nop
	jmp	.L11
.L236:
	nop
	jmp	.L11
.L237:
	nop
	jmp	.L11
.L238:
	nop
	jmp	.L11
.L239:
	nop
	jmp	.L11
.L240:
	nop
	jmp	.L11
.L244:
	nop
	jmp	.L11
.L245:
	nop
	jmp	.L11
.L246:
	nop
	jmp	.L11
.L247:
	nop
	jmp	.L11
.L248:
	nop
	jmp	.L11
.L249:
	nop
	jmp	.L11
.L250:
	nop
	jmp	.L11
.L251:
	nop
	jmp	.L11
.L252:
	nop
	jmp	.L11
.L253:
	nop
	jmp	.L11
.L254:
	nop
	jmp	.L11
.L255:
	nop
	jmp	.L11
.L256:
	nop
	jmp	.L11
.L257:
	nop
	jmp	.L11
.L258:
	nop
	jmp	.L11
.L259:
	nop
	jmp	.L11
.L260:
	nop
	jmp	.L11
.L261:
	nop
	jmp	.L11
.L262:
	nop
	jmp	.L11
.L263:
	nop
	jmp	.L11
.L264:
	nop
	jmp	.L11
.L265:
	nop
	jmp	.L11
.L266:
	nop
	jmp	.L11
.L267:
	nop
	jmp	.L11
.L268:
	nop
	jmp	.L11
.L271:
	nop
	jmp	.L11
.L272:
	nop
	jmp	.L11
.L273:
	nop
	jmp	.L11
.L274:
	nop
	jmp	.L11
.L275:
	nop
	jmp	.L11
.L276:
	nop
	jmp	.L11
.L277:
	nop
	jmp	.L11
.L278:
	nop
	jmp	.L11
.L279:
	nop
	jmp	.L11
.L280:
	nop
	jmp	.L11
.L281:
	nop
	jmp	.L11
.L282:
	nop
	jmp	.L11
.L283:
	nop
	jmp	.L11
.L284:
	nop
	jmp	.L11
.L285:
	nop
	jmp	.L11
.L286:
	nop
	jmp	.L11
.L287:
	nop
	jmp	.L11
.L288:
	nop
	jmp	.L11
.L289:
	nop
	jmp	.L11
.L290:
	nop
.L11:
	movq	defctxnull(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, defctxnull(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpl	$0, -36(%rbp)
	jne	.L182
	movl	-180(%rbp), %r8d
	movl	-176(%rbp), %esi
	movl	-172(%rbp), %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	-260(%rbp), %ecx
	pushq	%rcx
	movl	-192(%rbp), %ecx
	pushq	%rcx
	movl	-188(%rbp), %ecx
	pushq	%rcx
	movl	-184(%rbp), %ecx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$666, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$32, %rsp
.L182:
	movl	-36(%rbp), %eax
.L183:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	test_rpk, .-test_rpk
	.section	.rodata
	.align 8
.LC73:
	.string	"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_2_VERSION, TLS1_2_VERSION, &sctx, &cctx, NULL, NULL)"
	.align 8
.LC74:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_dups, sizeof(cert_type_dups))"
	.align 8
.LC75:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_bad, sizeof(cert_type_bad))"
	.align 8
.LC76:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_extra, sizeof(cert_type_extra))"
	.align 8
.LC77:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_unsup, sizeof(cert_type_unsup))"
	.align 8
.LC78:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_just_x509, sizeof(cert_type_just_x509))"
	.align 8
.LC79:
	.string	"SSL_CTX_set1_server_cert_type(sctx, cert_type_just_rpk, sizeof(cert_type_just_rpk))"
	.text
	.type	test_rpk_api, @function
test_rpk_api:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movw	$2, -43(%rbp)
	movb	$0, -41(%rbp)
	movb	$-1, -44(%rbp)
	movw	$2, -47(%rbp)
	movb	$-1, -45(%rbp)
	movw	$769, -49(%rbp)
	movb	$0, -50(%rbp)
	movb	$2, -51(%rbp)
	call	TLS_client_method@PLT
	movq	%rax, %rbx
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-40(%rbp), %rdx
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	leaq	-32(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$771, %r8d
	movl	$771, %ecx
	movq	%rbx, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$690, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L301
	movq	-40(%rbp), %rax
	leaq	-43(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$696, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L302
	movq	-40(%rbp), %rax
	leaq	-44(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$699, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L303
	movq	-40(%rbp), %rax
	leaq	-47(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$702, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L304
	movq	-40(%rbp), %rax
	leaq	-49(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$705, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L305
	movq	-40(%rbp), %rax
	leaq	-50(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$708, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L306
	movq	-40(%rbp), %rax
	leaq	-51(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set1_server_cert_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$711, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L307
	movl	$1, -20(%rbp)
	jmp	.L293
.L301:
	nop
	jmp	.L293
.L302:
	nop
	jmp	.L293
.L303:
	nop
	jmp	.L293
.L304:
	nop
	jmp	.L293
.L305:
	nop
	jmp	.L293
.L306:
	nop
	jmp	.L293
.L307:
	nop
.L293:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	test_rpk_api, .-test_rpk_api
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB553:
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
.LFE553:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC80:
	.string	"Error parsing test options\n"
	.align 8
.LC81:
	.string	"certsdir = test_get_argument(0)"
.LC82:
	.string	"rootcert.pem"
.LC83:
	.string	"servercert.pem"
.LC84:
	.string	"serverkey.pem"
.LC85:
	.string	"server-ecdsa-cert.pem"
.LC86:
	.string	"server-ecdsa-key.pem"
.LC87:
	.string	"server-ed448-cert.pem"
.LC88:
	.string	"server-ed448-key.pem"
.LC89:
	.string	"server-ed25519-cert.pem"
.LC90:
	.string	"server-ed25519-key.pem"
.LC91:
	.string	"test_rpk_api"
.LC92:
	.string	"test_rpk"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L311
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$725, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L312
.L311:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, certsdir(%rip)
	movq	certsdir(%rip), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$729, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L313
	movl	$0, %eax
	jmp	.L312
.L313:
	movq	certsdir(%rip), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, rootcert(%rip)
	movq	rootcert(%rip), %rax
	testq	%rax, %rax
	je	.L325
	movq	certsdir(%rip), %rax
	leaq	.LC83(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	testq	%rax, %rax
	je	.L326
	movq	certsdir(%rip), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	testq	%rax, %rax
	je	.L327
	movq	certsdir(%rip), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert2(%rip)
	movq	cert2(%rip), %rax
	testq	%rax, %rax
	je	.L328
	movq	certsdir(%rip), %rax
	leaq	.LC86(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey2(%rip)
	movq	privkey2(%rip), %rax
	testq	%rax, %rax
	je	.L329
	movq	certsdir(%rip), %rax
	leaq	.LC87(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert448(%rip)
	movq	cert2(%rip), %rax
	testq	%rax, %rax
	je	.L330
	movq	certsdir(%rip), %rax
	leaq	.LC88(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey448(%rip)
	movq	privkey2(%rip), %rax
	testq	%rax, %rax
	je	.L331
	movq	certsdir(%rip), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert25519(%rip)
	movq	cert2(%rip), %rax
	testq	%rax, %rax
	je	.L332
	movq	certsdir(%rip), %rax
	leaq	.LC90(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey25519(%rip)
	movq	privkey2(%rip), %rax
	testq	%rax, %rax
	je	.L333
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, libctx(%rip)
	movq	libctx(%rip), %rax
	testq	%rax, %rax
	je	.L334
	leaq	test_rpk_api(%rip), %rdx
	leaq	.LC91(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_rpk(%rip), %rsi
	leaq	.LC92(%rip), %rax
	movl	$1, %ecx
	movl	$2304, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	jmp	.L312
.L325:
	nop
	jmp	.L315
.L326:
	nop
	jmp	.L315
.L327:
	nop
	jmp	.L315
.L328:
	nop
	jmp	.L315
.L329:
	nop
	jmp	.L315
.L330:
	nop
	jmp	.L315
.L331:
	nop
	jmp	.L315
.L332:
	nop
	jmp	.L315
.L333:
	nop
	jmp	.L315
.L334:
	nop
.L315:
	movl	$0, %eax
.L312:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	rootcert(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$782, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	cert(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$783, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$784, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	cert2(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$785, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey2(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$786, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	cert448(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$787, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey448(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$788, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	cert25519(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$789, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey25519(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$790, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC93:
	.string	"Usage: %s [options] certdir\n"
.LC94:
	.string	"Valid options are:\n"
.LC95:
	.string	"help"
.LC96:
	.string	"Display this summary"
.LC97:
	.string	"list"
	.align 8
.LC98:
	.string	"Display the list of tests available"
.LC99:
	.string	"test"
	.align 8
.LC100:
	.string	"Run a single test by id or name"
.LC101:
	.string	"iter"
	.align 8
.LC102:
	.string	"Run a single iteration of a test"
.LC103:
	.string	"indent"
	.align 8
.LC104:
	.string	"Number of tabs added to output"
.LC105:
	.string	"seed"
	.align 8
.LC106:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC93
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC94
	.quad	.LC95
	.long	500
	.long	45
	.quad	.LC96
	.quad	.LC97
	.long	501
	.long	45
	.quad	.LC98
	.quad	.LC99
	.long	502
	.long	115
	.quad	.LC100
	.quad	.LC101
	.long	503
	.long	110
	.quad	.LC102
	.quad	.LC103
	.long	504
	.long	112
	.quad	.LC104
	.quad	.LC105
	.long	505
	.long	110
	.quad	.LC106
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

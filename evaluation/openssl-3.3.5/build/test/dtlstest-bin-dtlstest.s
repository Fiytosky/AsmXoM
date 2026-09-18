	.file	"dtlstest.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB482:
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
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	timer_cb_count
	.comm	timer_cb_count,4,4
	.data
	.align 32
	.type	certstatus, @object
	.size	certstatus, 35
certstatus:
	.base64	"Fv79AAEAAAAAAA8AFhYAAAwABQAAAAAACoCAgICAgICAgIA="
	.section	.rodata
	.align 8
	.type	dummy_cookie, @object
	.size	dummy_cookie, 8
dummy_cookie:
	.string	"0123456"
	.text
	.type	generate_cookie_cb, @function
generate_cookie_cb:
.LFB524:
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
	movq	dummy_cookie(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$8, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	generate_cookie_cb, .-generate_cookie_cb
	.section	.rodata
.LC0:
	.string	"dummy_cookie"
.LC1:
	.string	"cookie"
.LC2:
	.string	"../test/dtlstest.c"
	.text
	.type	verify_cookie_cb, @function
verify_cookie_cb:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %r8d
	movq	-16(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	dummy_cookie(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	verify_cookie_cb, .-verify_cookie_cb
	.type	timer_cb, @function
timer_cb:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	timer_cb_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, timer_cb_count(%rip)
	cmpl	$0, -12(%rbp)
	jne	.L9
	movl	$50000, %eax
	jmp	.L10
.L9:
	movl	-12(%rbp), %eax
	addl	%eax, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	timer_cb, .-timer_cb
	.section	.rodata
	.align 8
.LC3:
	.string	"create_ssl_ctx_pair(NULL, DTLS_server_method(), DTLS_client_method(), DTLS1_VERSION, 0, &sctx, &cctx, cert, privkey)"
.LC4:
	.string	"AES128-SHA"
	.align 8
.LC5:
	.string	"SSL_CTX_set_cipher_list(cctx, \"AES128-SHA\")"
.LC6:
	.string	"c_to_s_fbio"
	.align 8
.LC7:
	.string	"create_ssl_objects(sctx, cctx, &serverssl1, &clientssl1, NULL, c_to_s_fbio)"
	.align 8
.LC8:
	.string	"create_bare_ssl_connection(serverssl1, clientssl1, SSL_ERROR_NONE, 0, 0)"
	.align 8
.LC9:
	.string	"timer_callback was not called."
	.text
	.type	test_dtls_unprocessed, @function
test_dtls_unprocessed:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -100(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, timer_cb_count(%rip)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-72(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L21
.L12:
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	call	bio_f_tls_dump_filter@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdi
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-88(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	cmpl	$1, -100(%rbp)
	jne	.L18
	movb	$-1, 10+certstatus(%rip)
.L18:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -56(%rbp)
	leaq	certstatus(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$2, %r8d
	movl	$1, %ecx
	movl	$35, %edx
	movq	%rax, %rdi
	call	mempacket_test_inject@PLT
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	create_bare_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$127, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movl	timer_cb_count(%rip), %eax
	testl	%eax, %eax
	jne	.L20
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L20:
	movl	$1, -36(%rbp)
	jmp	.L15
.L22:
	nop
	jmp	.L15
.L23:
	nop
	jmp	.L15
.L24:
	nop
	jmp	.L15
.L25:
	nop
.L15:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L21:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_dtls_unprocessed, .-test_dtls_unprocessed
	.section	.rodata
.LC10:
	.string	"SSL_CTX_set_dh_auto(sctx, 1)"
	.align 8
.LC11:
	.string	"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)"
	.align 8
.LC12:
	.string	"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)"
	.align 8
.LC13:
	.string	"sess = SSL_get1_session(clientssl)"
	.align 8
.LC14:
	.string	"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, c_to_s_fbio)"
	.align 8
.LC15:
	.string	"SSL_set_session(clientssl, sess)"
.LC16:
	.string	"SSL_session_reused(clientssl)"
.LC17:
	.string	"-1"
	.align 8
.LC18:
	.string	"(int)BIO_ctrl(mempackbio, MEMPACKET_CTRL_GET_DROP_REC, 0, NULL)"
	.text
	.type	test_dtls_drop_records, @function
test_dtls_drop_records:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -116(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-88(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-96(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L44
.L27:
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$216, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movq	-88(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	movq	-88(%rbp), %rax
	leaq	generate_cookie_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_generate_cb@PLT
	movq	-88(%rbp), %rax
	leaq	verify_cookie_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_verify_cb@PLT
	cmpl	$16, -116(%rbp)
	jle	.L31
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	leaq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_session@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$229, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$3, -64(%rbp)
	movl	$1, -68(%rbp)
	movl	$2, -72(%rbp)
	movl	$2, -60(%rbp)
	subl	$17, -116(%rbp)
	jmp	.L34
.L31:
	movl	$3, -64(%rbp)
	movl	$1, -68(%rbp)
	movl	$10, -72(%rbp)
	movl	$1, -60(%rbp)
.L34:
	call	bio_f_tls_dump_filter@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	cmpq	$0, -56(%rbp)
	je	.L37
	movq	-112(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$260, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
.L37:
	movq	-112(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	movq	-104(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -116(%rbp)
	jl	.L38
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	subl	%eax, -116(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.L39
	movl	$1, -48(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	subl	%eax, -116(%rbp)
	jmp	.L39
.L38:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -116(%rbp)
	jl	.L40
	movl	$1, -48(%rbp)
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	subl	%eax, -116(%rbp)
.L40:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -40(%rbp)
.L39:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$32768, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$65536, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	cmpq	$0, -56(%rbp)
	je	.L42
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
.L42:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$98304, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$293, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L52
	movl	$1, -44(%rbp)
	jmp	.L30
.L45:
	nop
	jmp	.L30
.L46:
	nop
	jmp	.L30
.L47:
	nop
	jmp	.L30
.L48:
	nop
	jmp	.L30
.L49:
	nop
	jmp	.L30
.L50:
	nop
	jmp	.L30
.L51:
	nop
	jmp	.L30
.L52:
	nop
.L30:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-44(%rbp), %eax
.L44:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_dtls_drop_records, .-test_dtls_drop_records
	.type	test_cookie, @function
test_cookie:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-56(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$315, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L59
.L54:
	movq	-48(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	movq	-48(%rbp), %rax
	leaq	generate_cookie_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_generate_cb@PLT
	movq	-48(%rbp), %rax
	leaq	verify_cookie_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_verify_cb@PLT
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$333, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$335, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movl	$1, -36(%rbp)
	jmp	.L58
.L60:
	nop
.L58:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L59:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_cookie, .-test_cookie
	.type	test_dtls_duplicate_records, @function
test_dtls_duplicate_records:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-56(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$355, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L67
.L62:
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$369, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	movq	-72(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	movq	-64(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$1, %edx
	movl	$131072, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$1, %edx
	movl	$131072, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$379, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movl	$1, -36(%rbp)
	jmp	.L65
.L68:
	nop
	jmp	.L65
.L69:
	nop
.L65:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L67:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_dtls_duplicate_records, .-test_dtls_duplicate_records
	.section	.rodata
	.align 8
.LC19:
	.string	"create_ssl_ctx_pair(NULL, DTLS_server_method(), NULL, 0, 0, &sctx, NULL, cert, privkey)"
.LC20:
	.string	"serverssl"
.LC21:
	.string	"rbio"
.LC22:
	.string	"wbio"
.LC23:
	.string	"sizeof(buf)"
	.align 8
.LC24:
	.string	"BIO_write(sbio, buf, sizeof(buf))"
.LC25:
	.string	"0"
.LC26:
	.string	"ret = SSL_accept(serverssl)"
.LC27:
	.string	"SSL_ERROR_SSL"
.LC28:
	.string	"SSL_get_error(serverssl, ret)"
.LC29:
	.string	"SSL_R_UNEXPECTED_MESSAGE"
	.align 8
.LC30:
	.string	"ERR_GET_REASON(ERR_get_error())"
	.text
	.type	test_just_finished, @function
test_just_finished:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	$0, -20(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movl	$16645654, %eax
	movabsq	$22127671508992, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movl	$20, %eax
	movq	%rax, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -99(%rbp)
	movq	$0, -91(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_server_method@PLT
	leaq	-72(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	pushq	$0
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$423, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L80
.L71:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -48(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-32(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-40(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	timer_cb(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	leaq	-128(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$45, %r9d
	movl	%esi, %r8d
	movl	$447, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$451, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L83
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$455, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L84
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$244, %r9d
	movl	%esi, %r8d
	movl	$458, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movl	$1, -20(%rbp)
	jmp	.L75
.L81:
	nop
	jmp	.L75
.L82:
	nop
	jmp	.L75
.L83:
	nop
	jmp	.L75
.L84:
	nop
	jmp	.L75
.L85:
	nop
.L75:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-20(%rbp), %eax
.L80:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	test_just_finished, .-test_just_finished
	.section	.rodata
	.align 8
.LC31:
	.string	"create_ssl_objects(sctx, cctx, &sssl, &cssl, NULL, NULL)"
.LC32:
	.string	"SSL_connect(cssl)"
.LC33:
	.string	"SSL_accept(sssl)"
.LC34:
	.string	"bio"
.LC35:
	.string	"mempacket_swap_epoch(bio)"
.LC36:
	.string	"(int)sizeof(msg)"
	.align 8
.LC37:
	.string	"SSL_write(sssl, msg, sizeof(msg))"
	.align 8
.LC38:
	.string	"mempacket_move_packet(bio, 0, 1)"
	.align 8
.LC39:
	.string	"mempacket_move_packet(bio, 0, 2)"
	.align 8
.LC40:
	.string	"mempacket_move_packet(bio, 1, 2)"
.LC41:
	.string	"SSL_pending(cssl)"
.LC42:
	.string	"SSL_has_pending(cssl)"
	.align 8
.LC43:
	.string	"SSL_read(cssl, buf, sizeof(buf))"
	.text
	.type	test_swap_records, @function
test_swap_records:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -100(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -36(%rbp)
	movl	$50462976, -84(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-56(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-64(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$487, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L111
.L87:
	movq	-64(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$494, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$504, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L113
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$509, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L114
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$513, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L115
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$517, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L116
	cmpl	$0, -100(%rbp)
	jne	.L95
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$523, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mempacket_swap_epoch@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$524, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L117
.L95:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$529, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L118
	movq	-72(%rbp), %rax
	leaq	-84(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$533, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L119
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$537, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	cmpl	$1, -100(%rbp)
	jne	.L100
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	mempacket_move_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$541, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L101
	jmp	.L90
.L100:
	cmpl	$2, -100(%rbp)
	jne	.L102
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	mempacket_move_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$545, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L101
	jmp	.L90
.L102:
	cmpl	$3, -100(%rbp)
	jne	.L101
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	mempacket_move_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$550, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
.L101:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$558, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L122
	cmpl	$0, -100(%rbp)
	je	.L104
	cmpl	$1, -100(%rbp)
	jne	.L105
.L104:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_pending@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$563, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L123
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_has_pending@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$564, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L124
	jmp	.L123
.L105:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_pending@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$569, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L125
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_has_pending@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$570, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
	jmp	.L108
.L124:
	nop
.L108:
	movq	-80(%rbp), %rax
	leaq	-94(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$577, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L126
	movl	$1, -36(%rbp)
	jmp	.L90
.L112:
	nop
	jmp	.L90
.L113:
	nop
	jmp	.L90
.L114:
	nop
	jmp	.L90
.L115:
	nop
	jmp	.L90
.L116:
	nop
	jmp	.L90
.L117:
	nop
	jmp	.L90
.L118:
	nop
	jmp	.L90
.L119:
	nop
	jmp	.L90
.L120:
	nop
	jmp	.L90
.L121:
	nop
	jmp	.L90
.L122:
	nop
	jmp	.L90
.L123:
	nop
	jmp	.L90
.L125:
	nop
	jmp	.L90
.L126:
	nop
.L90:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L111:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	test_swap_records, .-test_swap_records
	.section	.rodata
	.align 8
.LC44:
	.string	"mempacket_dup_last_packet(bio)"
.LC45:
	.string	"msg"
.LC46:
	.string	"buf"
	.align 8
.LC47:
	.string	"ret = SSL_read(cssl, buf, sizeof(buf))"
.LC48:
	.string	"SSL_ERROR_WANT_READ"
.LC49:
	.string	"SSL_get_error(cssl, ret)"
	.text
	.type	test_duplicate_app_data, @function
test_duplicate_app_data:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -36(%rbp)
	movl	$50462976, -92(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-72(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$600, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L146
.L128:
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$607, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L147
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$617, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L148
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$622, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L149
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$626, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L150
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$630, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L151
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$634, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L152
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$638, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L153
	movq	-80(%rbp), %rax
	leaq	-92(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$645, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mempacket_dup_last_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$648, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	mempacket_move_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$652, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$659, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L157
	movq	-88(%rbp), %rax
	leaq	-102(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$665, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L158
	leaq	-102(%rbp), %rdi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$4
	leaq	-92(%rbp), %rsi
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$668, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L159
	movq	-88(%rbp), %rax
	leaq	-102(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$675, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L160
	movq	-88(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$676, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L160
	movl	$1, -36(%rbp)
	jmp	.L131
.L147:
	nop
	jmp	.L131
.L148:
	nop
	jmp	.L131
.L149:
	nop
	jmp	.L131
.L150:
	nop
	jmp	.L131
.L151:
	nop
	jmp	.L131
.L152:
	nop
	jmp	.L131
.L153:
	nop
	jmp	.L131
.L154:
	nop
	jmp	.L131
.L155:
	nop
	jmp	.L131
.L156:
	nop
	jmp	.L131
.L157:
	nop
	jmp	.L131
.L158:
	nop
	jmp	.L131
.L159:
	nop
	jmp	.L131
.L160:
	nop
.L131:
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
.L146:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	test_duplicate_app_data, .-test_duplicate_app_data
	.section	.rodata
	.align 8
.LC50:
	.string	"create_bare_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE, 1, 1)"
	.text
	.type	test_listen, @function
test_listen:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	DTLS_client_method@PLT
	movq	%rax, %r13
	call	DTLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-56(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$65279, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$696, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$0, %eax
	jmp	.L167
.L162:
	movq	-48(%rbp), %rax
	leaq	generate_cookie_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_generate_cb@PLT
	movq	-48(%rbp), %rax
	leaq	verify_cookie_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_verify_cb@PLT
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$713, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L168
	movq	-72(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	movq	-64(%rbp), %rax
	leaq	timer_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLS_set_timer_cb@PLT
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	create_bare_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$724, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L169
	movl	$1, -36(%rbp)
	jmp	.L165
.L168:
	nop
	jmp	.L165
.L169:
	nop
.L165:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
.L167:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	test_listen, .-test_listen
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB535:
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
.LFE535:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC51:
	.string	"Error parsing test options\n"
.LC52:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC53:
	.string	"privkey = test_get_argument(1)"
.LC54:
	.string	"test_dtls_unprocessed"
.LC55:
	.string	"test_dtls_drop_records"
.LC56:
	.string	"test_cookie"
.LC57:
	.string	"test_dtls_duplicate_records"
.LC58:
	.string	"test_just_finished"
.LC59:
	.string	"test_swap_records"
.LC60:
	.string	"test_listen"
.LC61:
	.string	"test_duplicate_app_data"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L173
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$743, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L174
.L173:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$747, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$748, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L176
.L175:
	movl	$0, %eax
	jmp	.L174
.L176:
	leaq	test_dtls_unprocessed(%rip), %rsi
	leaq	.LC54(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_dtls_drop_records(%rip), %rsi
	leaq	.LC55(%rip), %rax
	movl	$1, %ecx
	movl	$27, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_cookie(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dtls_duplicate_records(%rip), %rdx
	leaq	.LC57(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_just_finished(%rip), %rdx
	leaq	.LC58(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_swap_records(%rip), %rsi
	leaq	.LC59(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_listen(%rip), %rdx
	leaq	.LC60(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_duplicate_app_data(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L174:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	bio_f_tls_dump_filter_free@PLT
	call	bio_s_mempacket_test_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC62:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC63:
	.string	"Valid options are:\n"
.LC64:
	.string	"help"
.LC65:
	.string	"Display this summary"
.LC66:
	.string	"list"
	.align 8
.LC67:
	.string	"Display the list of tests available"
.LC68:
	.string	"test"
	.align 8
.LC69:
	.string	"Run a single test by id or name"
.LC70:
	.string	"iter"
	.align 8
.LC71:
	.string	"Run a single iteration of a test"
.LC72:
	.string	"indent"
	.align 8
.LC73:
	.string	"Number of tabs added to output"
.LC74:
	.string	"seed"
	.align 8
.LC75:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC62
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC63
	.quad	.LC64
	.long	500
	.long	45
	.quad	.LC65
	.quad	.LC66
	.long	501
	.long	45
	.quad	.LC67
	.quad	.LC68
	.long	502
	.long	115
	.quad	.LC69
	.quad	.LC70
	.long	503
	.long	110
	.quad	.LC71
	.quad	.LC72
	.long	504
	.long	112
	.quad	.LC73
	.quad	.LC74
	.long	505
	.long	110
	.quad	.LC75
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

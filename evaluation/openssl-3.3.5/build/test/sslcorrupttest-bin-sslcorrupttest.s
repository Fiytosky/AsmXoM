	.file	"sslcorrupttest.c"
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
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB510:
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
	je	.L6
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	docorrupt
	.comm	docorrupt,4,4
	.type	copy_flags, @function
copy_flags:
.LFB524:
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
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	copy_flags, .-copy_flags
	.type	tls_corrupt_read, @function
tls_corrupt_read:
.LFB525:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	copy_flags
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	tls_corrupt_read, .-tls_corrupt_read
	.section	.rodata
.LC0:
	.string	"../test/sslcorrupttest.c"
	.align 8
.LC1:
	.string	"copy = OPENSSL_memdup(in, inl)"
	.text
	.type	tls_corrupt_write, @function
tls_corrupt_write:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	movl	docorrupt(%rip), %eax
	testl	%eax, %eax
	je	.L12
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	$44, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$44, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	xorl	$1, %edx
	movb	%dl, (%rax)
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$49, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L15
.L12:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	copy_flags
	movl	-4(%rbp), %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	tls_corrupt_write, .-tls_corrupt_write
	.type	tls_corrupt_ctrl, @function
tls_corrupt_ctrl:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	cmpl	$12, -28(%rbp)
	jne	.L19
	movq	$0, -8(%rbp)
	jmp	.L20
.L19:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L20:
	movq	-8(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	tls_corrupt_ctrl, .-tls_corrupt_ctrl
	.type	tls_corrupt_gets, @function
tls_corrupt_gets:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	tls_corrupt_gets, .-tls_corrupt_gets
	.type	tls_corrupt_puts, @function
tls_corrupt_puts:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	tls_corrupt_puts, .-tls_corrupt_puts
	.type	tls_corrupt_new, @function
tls_corrupt_new:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	tls_corrupt_new, .-tls_corrupt_new
	.type	tls_corrupt_free, @function
tls_corrupt_free:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	tls_corrupt_free, .-tls_corrupt_free
	.local	method_tls_corrupt
	.comm	method_tls_corrupt,8,8
	.section	.rodata
.LC2:
	.string	"TLS corrupt filter"
	.text
	.type	bio_f_tls_corrupt_filter, @function
bio_f_tls_corrupt_filter:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_tls_corrupt(%rip), %rax
	testq	%rax, %rax
	jne	.L30
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movl	$640, %edi
	call	BIO_meth_new@PLT
	movq	%rax, method_tls_corrupt(%rip)
	movq	method_tls_corrupt(%rip), %rax
	testq	%rax, %rax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_read@PLT
	testl	%eax, %eax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_puts(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_puts@PLT
	testl	%eax, %eax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_gets(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_gets@PLT
	testl	%eax, %eax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	je	.L31
	movq	method_tls_corrupt(%rip), %rax
	leaq	tls_corrupt_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	jne	.L30
.L31:
	movl	$0, %eax
	jmp	.L32
.L30:
	movq	method_tls_corrupt(%rip), %rax
.L32:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	bio_f_tls_corrupt_filter, .-bio_f_tls_corrupt_filter
	.type	bio_f_tls_corrupt_filter_free, @function
bio_f_tls_corrupt_filter_free:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_tls_corrupt(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	bio_f_tls_corrupt_filter_free, .-bio_f_tls_corrupt_filter_free
	.local	cipher_list
	.comm	cipher_list,8,8
	.section	.rodata
	.align 8
.LC3:
	.string	"ctx = SSL_CTX_new(TLS_server_method())"
.LC4:
	.string	"ssl = SSL_new(ctx)"
	.align 8
.LC5:
	.string	"sk_ciphers = SSL_get1_supported_ciphers(ssl)"
.LC6:
	.string	"cipher_list"
.LC7:
	.string	"0"
.LC8:
	.string	"j"
	.text
	.type	setup_cipher_list, @function
setup_cipher_list:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	call	TLS_server_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$147, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$148, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_supported_ciphers@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$149, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$157, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, cipher_list(%rip)
	movq	cipher_list(%rip), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L39
.L41:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_auth_nid@PLT
	cmpl	$1046, %eax
	jne	.L40
	movq	cipher_list(%rip), %rcx
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	cltq
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, (%rbx)
.L40:
	addl	$1, -36(%rbp)
.L39:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -36(%rbp)
	jl	.L41
	movl	-40(%rbp), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L45
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L37
.L43:
	nop
	jmp	.L37
.L44:
	nop
	jmp	.L37
.L45:
	nop
.L37:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	setup_cipher_list, .-setup_cipher_list
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.section	.rodata
.LC9:
	.string	"Starting #%d, %s"
	.align 8
.LC10:
	.string	"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)"
.LC11:
	.string	"SSL_CTX_set_dh_auto(sctx, 1)"
	.align 8
.LC12:
	.string	"SSL_CTX_set_cipher_list(cctx, cipher_list[testidx])"
.LC13:
	.string	""
	.align 8
.LC14:
	.string	"SSL_CTX_set_ciphersuites(cctx, \"\")"
	.align 8
.LC15:
	.string	"ciphers = SSL_CTX_get_ciphers(cctx)"
.LC16:
	.string	"1"
.LC17:
	.string	"sk_SSL_CIPHER_num(ciphers)"
	.align 8
.LC18:
	.string	"currcipher = sk_SSL_CIPHER_value(ciphers, 0)"
	.align 8
.LC19:
	.string	"SSL_CTX_set_max_proto_version(cctx, TLS1_2_VERSION)"
	.align 8
.LC20:
	.string	"c_to_s_fbio = BIO_new(bio_f_tls_corrupt_filter())"
	.align 8
.LC21:
	.string	"create_ssl_objects(sctx, cctx, &server, &client, NULL, c_to_s_fbio)"
	.align 8
.LC22:
	.string	"create_ssl_connection(server, client, SSL_ERROR_NONE)"
	.align 8
.LC23:
	.string	"SSL_write(client, junk, sizeof(junk))"
	.align 8
.LC24:
	.string	"SSL_read(server, junk, sizeof(junk))"
	.align 8
.LC25:
	.string	"Decryption failed or bad record MAC not seen"
	.text
	.type	test_ssl_corrupt, @function
test_ssl_corrupt:
.LFB535:
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
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, docorrupt(%rip)
	movq	cipher_list(%rip), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-116(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$195, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	TLS_client_method@PLT
	movq	%rax, %r13
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-88(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$769, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$197, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L59
.L47:
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$203, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	cipher_list(%rip), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-88(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_ciphers@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$206, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L60
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$208, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$771, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$215, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	call	bio_f_tls_corrupt_filter
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$218, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L62
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdi
	leaq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movl	$1, docorrupt(%rip)
	movq	-104(%rbp), %rax
	leaq	junk.1(%rip), %rcx
	movl	$16000, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L65
	movq	-96(%rbp), %rax
	leaq	junk.1(%rip), %rcx
	movl	$16000, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$234, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L66
.L57:
	call	ERR_get_error@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L58
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L51
.L58:
	movl	-68(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$281, %eax
	jne	.L57
	movl	$1, -36(%rbp)
	jmp	.L51
.L60:
	nop
	jmp	.L51
.L61:
	nop
	jmp	.L51
.L62:
	nop
	jmp	.L51
.L63:
	nop
	jmp	.L51
.L64:
	nop
	jmp	.L51
.L65:
	nop
	jmp	.L51
.L66:
	nop
.L51:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-88(%rbp), %rax
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
.LFE535:
	.size	test_ssl_corrupt, .-test_ssl_corrupt
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB536:
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
.LFE536:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC26:
	.string	"Error parsing test options\n"
.LC27:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC28:
	.string	"privkey = test_get_argument(1)"
.LC29:
	.string	"test_ssl_corrupt"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L70
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L71
.L70:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$266, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L73
.L72:
	movl	$0, %eax
	jmp	.L71
.L73:
	call	setup_cipher_list
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L74
	movl	-4(%rbp), %eax
	leaq	test_ssl_corrupt(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
.L74:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	bio_f_tls_corrupt_filter_free
	movq	cipher_list(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	cleanup_tests, .-cleanup_tests
	.local	junk.1
	.comm	junk.1,16000,32
	.section	.rodata
	.align 8
.LC30:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC31:
	.string	"Valid options are:\n"
.LC32:
	.string	"help"
.LC33:
	.string	"Display this summary"
.LC34:
	.string	"list"
	.align 8
.LC35:
	.string	"Display the list of tests available"
.LC36:
	.string	"test"
	.align 8
.LC37:
	.string	"Run a single test by id or name"
.LC38:
	.string	"iter"
	.align 8
.LC39:
	.string	"Run a single iteration of a test"
.LC40:
	.string	"indent"
	.align 8
.LC41:
	.string	"Number of tabs added to output"
.LC42:
	.string	"seed"
	.align 8
.LC43:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	500
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	501
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	502
	.long	115
	.quad	.LC37
	.quad	.LC38
	.long	503
	.long	110
	.quad	.LC39
	.quad	.LC40
	.long	504
	.long	112
	.quad	.LC41
	.quad	.LC42
	.long	505
	.long	110
	.quad	.LC43
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

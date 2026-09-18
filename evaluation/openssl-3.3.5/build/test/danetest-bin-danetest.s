	.file	"danetest.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB326:
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
.LFE326:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB328:
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
.LFE328:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.local	basedomain
	.comm	basedomain,8,8
	.local	CAfile
	.comm	CAfile,8,8
	.local	tlsafile
	.comm	tlsafile,8,8
	.local	saved_errno
	.comm	saved_errno,4,4
	.type	save_errno, @function
save_errno:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, saved_errno(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	save_errno, .-save_errno
	.type	restore_errno, @function
restore_errno:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	call	__errno_location@PLT
	movl	saved_errno(%rip), %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	restore_errno, .-restore_errno
	.section	.rodata
	.align 8
.LC0:
	.string	"store_ctx = X509_STORE_CTX_new()"
.LC1:
	.string	"../test/danetest.c"
	.align 8
.LC2:
	.string	"ssl_ctx = SSL_get_SSL_CTX(ssl)"
	.align 8
.LC3:
	.string	"store = SSL_CTX_get_cert_store(ssl_ctx)"
	.align 8
.LC4:
	.string	"X509_STORE_CTX_init(store_ctx, store, NULL, chain)"
	.align 8
.LC5:
	.string	"X509_STORE_CTX_set_ex_data(store_ctx, store_ctx_idx, ssl)"
.LC6:
	.string	"ssl_client"
.LC7:
	.string	"ssl_server"
.LC8:
	.string	"0"
	.align 8
.LC9:
	.string	"ret = X509_STORE_CTX_verify(store_ctx)"
	.text
	.type	verify_chain, @function
verify_chain:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	movl	%eax, -52(%rbp)
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_SSL_CTX@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_cert_store@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$65, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movq	-72(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_ex_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	je	.L12
	leaq	.LC6(%rip), %rax
	jmp	.L13
.L12:
	leaq	.LC7(%rip), %rax
.L13:
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_STORE_CTX_set_default@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_param@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_param@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1@PLT
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_ctx_dane_init
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_callback@PLT
	testq	%rax, %rax
	je	.L14
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_callback@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_verify_cb@PLT
.L14:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_verify@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, -20(%rbp)
.L15:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_verify_result@PLT
	jmp	.L11
.L17:
	nop
.L11:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	verify_chain, .-verify_chain
	.section	.rodata
.LC10:
	.string	"chain = sk_X509_new_null()"
.LC11:
	.string	"CERTIFICATE"
.LC12:
	.string	"TRUSTED CERTIFICATE"
.LC13:
	.string	"X509 CERTIFICATE"
.LC14:
	.string	"cert = d(0, &p, len)"
.LC15:
	.string	"len"
.LC16:
	.string	"p - data"
.LC17:
	.string	"Certificate parsing error"
.LC18:
	.string	"sk_X509_push(chain, cert)"
.LC19:
	.string	"Unknown chain file object %s"
	.text
	.type	load_chain, @function
load_chain:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movl	$0, -20(%rbp)
	jmp	.L21
.L32:
	movq	-64(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L22
	movq	-64(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L22
	movq	-64(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L23
.L22:
	movq	-64(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L24
	movq	d2i_X509_AUX@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L25
.L24:
	movq	d2i_X509@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
.L25:
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L27
.L26:
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L20
.L27:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$123, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L36
	jmp	.L20
.L23:
	movq	-64(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L20
.L36:
	nop
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$132, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -80(%rbp)
	addl	$1, -20(%rbp)
.L21:
	movl	-20(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.L31
	cmpq	$0, -40(%rbp)
	jne	.L31
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	cmpl	$1, %eax
	je	.L32
.L31:
	movl	-20(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jne	.L37
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	jmp	.L34
.L35:
	nop
	jmp	.L20
.L37:
	nop
.L20:
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	load_chain, .-load_chain
	.section	.rodata
.LC20:
	.string	"input too long"
.LC21:
	.string	"EOF before newline"
	.text
	.type	read_to_eol, @function
read_to_eol:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	buf.6(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	jg	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	leaq	buf.6(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	buf.6(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	cmpb	$10, %al
	je	.L44
	cmpl	$4095, -4(%rbp)
	jne	.L42
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L43
.L42:
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
.L43:
	movl	$0, %eax
	jmp	.L40
.L46:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	buf.6(%rip), %rdx
	movb	$0, (%rax,%rdx)
.L44:
	cmpl	$0, -4(%rbp)
	jle	.L45
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	buf.6(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L46
.L45:
	leaq	buf.6(%rip), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	read_to_eol, .-read_to_eol
	.section	.rodata
	.align 8
.LC22:
	.string	"ret = OPENSSL_malloc(strlen(in) / 2)"
	.text
	.type	hexdecode, @function
hexdecode:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	shrq	%rax
	leaq	.LC1(%rip), %rcx
	movl	$185, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$185, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L48
	movq	$-1, %rax
	jmp	.L49
.L48:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$0, -9(%rbp)
	jmp	.L50
.L55:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L57
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L53
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L49
.L53:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movzbl	-9(%rbp), %eax
	orl	%edx, %eax
	movb	%al, -9(%rbp)
	xorl	$1, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L54
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	movb	$0, -9(%rbp)
	jmp	.L52
.L54:
	salb	$4, -9(%rbp)
	jmp	.L52
.L57:
	nop
.L52:
	addq	$1, -56(%rbp)
.L50:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
	cmpl	$0, -16(%rbp)
	je	.L56
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L49
.L56:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	subq	%rdx, %rax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	hexdecode, .-hexdecode
	.type	checked_uint8, @function
checked_uint8:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	save_errno
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -24(%rbp)
	call	restore_errno
	movl	%eax, -28(%rbp)
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, -24(%rbp)
	je	.L59
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -24(%rbp)
	jne	.L60
.L59:
	cmpl	$34, -28(%rbp)
	je	.L61
.L60:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L61
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -24(%rbp)
	je	.L62
.L61:
	movq	$-1, %rax
	jmp	.L66
.L62:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L64
.L68:
	nop
	addq	$1, -8(%rbp)
.L64:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L68
	movq	-8(%rbp), %rax
	subq	-56(%rbp), %rax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	checked_uint8, .-checked_uint8
	.section	.rodata
.LC23:
	.string	"bad TLSA %s field in: %s"
.LC24:
	.string	"unusable TLSA rrdata: %s"
.LC25:
	.string	"error loading TLSA rrdata: %s"
	.text
	.type	tlsa_import_rr, @function
tlsa_import_rr:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	tlsa_fields.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L70
.L73:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jg	.L71
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$263, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L72
.L71:
	addq	$24, -8(%rbp)
.L70:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	movq	-24(%rbp), %r8
	movq	data.4(%rip), %rdi
	movzbl	mtype.3(%rip), %eax
	movzbl	%al, %ecx
	movzbl	selector.2(%rip), %eax
	movzbl	%al, %edx
	movzbl	usage.1(%rip), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSL_dane_tlsa_add@PLT
	movl	%eax, -28(%rbp)
	movq	data.4(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$269, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -28(%rbp)
	jne	.L74
	movq	-48(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$271, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L72
.L74:
	cmpl	$0, -28(%rbp)
	jns	.L75
	movq	-48(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$275, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L72
.L75:
	movl	-28(%rbp), %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	tlsa_import_rr, .-tlsa_import_rr
	.type	allws, @function
allws:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L77
.L79:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L79
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	allws, .-allws
	.section	.rodata
.LC26:
	.string	"%d %d %d %d %d%n"
.LC27:
	.string	"Malformed line for test %d"
.LC28:
	.string	"ssl = SSL_new(ctx)"
.LC29:
	.string	"chain = load_chain(f, ncert)"
.LC30:
	.string	"want"
.LC31:
	.string	"err"
	.align 8
.LC32:
	.string	"Verification failure in test %d: %d=%s"
.LC33:
	.string	"Unexpected error in test %d"
.LC34:
	.string	"want == 0 && ok == 0"
	.align 8
.LC35:
	.string	"Verification failure in test %d: ok=0"
.LC36:
	.string	"want_depth"
.LC37:
	.string	"mdpth"
.LC38:
	.string	"In test test %d"
	.text
	.type	test_tlsafile, @function
test_tlsafile:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L81
.L105:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L106
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L106
	addl	$1, -4(%rbp)
	leaq	-68(%rbp), %r9
	leaq	-64(%rbp), %r8
	leaq	-60(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	-24(%rbp), %rax
	leaq	-76(%rbp), %rdi
	pushq	%rdi
	leaq	-72(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	addq	$16, %rsp
	cmpl	$5, %eax
	jne	.L85
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	allws
	testl	%eax, %eax
	jne	.L86
.L85:
	movl	-4(%rbp), %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$318, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L103
.L86:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$322, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L103
.L88:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_dane_enable@PLT
	testl	%eax, %eax
	jg	.L89
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	$0, %eax
	jmp	.L103
.L89:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.L90
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_dane_set_flags@PLT
.L90:
	movl	$0, -12(%rbp)
	jmp	.L91
.L94:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	read_to_eol
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L92
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tlsa_import_rr
	testl	%eax, %eax
	jne	.L93
.L92:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	$0, %eax
	jmp	.L103
.L93:
	addl	$1, -12(%rbp)
.L91:
	movl	-56(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L94
	call	ERR_clear_error@PLT
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	load_chain
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$341, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L95
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	$0, %eax
	jmp	.L103
.L95:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_chain
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_result@PLT
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_verify_result@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get0_dane_authority@PLT
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_verify_result@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	-68(%rbp), %edi
	movl	-48(%rbp), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$360, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L96
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jne	.L97
	movl	-48(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rcx
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r9
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$362, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L98
.L97:
	movl	-4(%rbp), %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$365, %esi
	movl	$0, %eax
	call	test_info@PLT
.L98:
	movl	$0, -8(%rbp)
	jmp	.L81
.L96:
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jne	.L99
	cmpl	$0, -44(%rbp)
	jne	.L99
	movl	$1, %ecx
	jmp	.L100
.L99:
	movl	$0, %ecx
.L100:
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$369, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L101
	movl	-4(%rbp), %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$370, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -8(%rbp)
	jmp	.L81
.L101:
	movl	-72(%rbp), %edi
	movl	-52(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$374, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L81
	movl	-4(%rbp), %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -8(%rbp)
	jmp	.L81
.L106:
	nop
.L81:
	cmpl	$0, -8(%rbp)
	jle	.L104
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	read_to_eol
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L105
.L104:
	call	ERR_clear_error@PLT
	movl	-8(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_tlsafile, .-test_tlsafile
	.section	.rodata
.LC39:
	.string	"r"
	.align 8
.LC40:
	.string	"f = BIO_new_file(tlsafile, \"r\")"
	.align 8
.LC41:
	.string	"ctx = SSL_CTX_new(TLS_client_method())"
.LC42:
	.string	"SSL_CTX_dane_enable(ctx)"
	.align 8
.LC43:
	.string	"SSL_CTX_load_verify_file(ctx, CAfile)"
	.align 8
.LC44:
	.string	"SSL_CTX_dane_mtype_set(ctx, EVP_sha512(), 2, 1)"
	.align 8
.LC45:
	.string	"SSL_CTX_dane_mtype_set(ctx, EVP_sha256(), 1, 2)"
	.align 8
.LC46:
	.string	"test_tlsafile(ctx, basedomain, f, tlsafile)"
	.text
	.type	run_tlsatest, @function
run_tlsatest:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	tlsafile(%rip), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$390, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L112
	call	TLS_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$391, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L112
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_dane_enable@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$392, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L112
	movq	CAfile(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$393, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	call	EVP_sha512@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	SSL_CTX_dane_mtype_set@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$394, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L112
	call	EVP_sha256@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_CTX_dane_mtype_set@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$395, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L112
	movq	tlsafile(%rip), %rcx
	movq	basedomain(%rip), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_tlsafile
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$396, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L112
	movl	$1, -12(%rbp)
	jmp	.L110
.L112:
	nop
.L110:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	run_tlsatest, .-run_tlsatest
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB516:
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
.LFE516:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC47:
	.string	"Error parsing test options\n"
	.align 8
.LC48:
	.string	"basedomain = test_get_argument(0)"
.LC49:
	.string	"CAfile = test_get_argument(1)"
	.align 8
.LC50:
	.string	"tlsafile = test_get_argument(2)"
.LC51:
	.string	"run_tlsatest"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L116
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$412, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L117
.L116:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, basedomain(%rip)
	movq	basedomain(%rip), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$416, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, CAfile(%rip)
	movq	CAfile(%rip), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$417, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, tlsafile(%rip)
	movq	tlsafile(%rip), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$418, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L117
.L119:
	leaq	run_tlsatest(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L117:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	setup_tests, .-setup_tests
	.type	store_ctx_dane_init, @function
store_ctx_dane_init:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_dane@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_dane@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	store_ctx_dane_init, .-store_ctx_dane_init
	.local	buf.6
	.comm	buf.6,4096,32
	.section	.rodata
.LC52:
	.string	"usage"
.LC53:
	.string	"selector"
.LC54:
	.string	"mtype"
.LC55:
	.string	"data"
	.section	.data.rel.local,"aw"
	.align 32
	.type	tlsa_fields.5, @object
	.size	tlsa_fields.5, 120
tlsa_fields.5:
	.quad	usage.1
	.quad	.LC52
	.quad	checked_uint8
	.quad	selector.2
	.quad	.LC53
	.quad	checked_uint8
	.quad	mtype.3
	.quad	.LC54
	.quad	checked_uint8
	.quad	data.4
	.quad	.LC55
	.quad	hexdecode
	.quad	0
	.zero	16
	.local	data.4
	.comm	data.4,8,8
	.local	mtype.3
	.comm	mtype.3,1,1
	.local	selector.2
	.comm	selector.2,1,1
	.local	usage.1
	.comm	usage.1,1,1
	.section	.rodata
	.align 8
.LC56:
	.string	"Usage: %s [options] basedomain CAfile tlsafile\n"
.LC57:
	.string	"Valid options are:\n"
.LC58:
	.string	"help"
.LC59:
	.string	"Display this summary"
.LC60:
	.string	"list"
	.align 8
.LC61:
	.string	"Display the list of tests available"
.LC62:
	.string	"test"
	.align 8
.LC63:
	.string	"Run a single test by id or name"
.LC64:
	.string	"iter"
	.align 8
.LC65:
	.string	"Run a single iteration of a test"
.LC66:
	.string	"indent"
	.align 8
.LC67:
	.string	"Number of tabs added to output"
.LC68:
	.string	"seed"
	.align 8
.LC69:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC56
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC57
	.quad	.LC58
	.long	500
	.long	45
	.quad	.LC59
	.quad	.LC60
	.long	501
	.long	45
	.quad	.LC61
	.quad	.LC62
	.long	502
	.long	115
	.quad	.LC63
	.quad	.LC64
	.long	503
	.long	110
	.quad	.LC65
	.quad	.LC66
	.long	504
	.long	112
	.quad	.LC67
	.quad	.LC68
	.long	505
	.long	110
	.quad	.LC69
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

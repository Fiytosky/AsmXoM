	.file	"http_test.c"
	.text
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB102:
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
.LFE102:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB105:
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
.LFE105:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.local	x509_it
	.comm	x509_it,8,8
	.local	x509
	.comm	x509,8,8
	.section	.rodata
.LC0:
	.string	"GET "
.LC1:
	.string	"POST "
	.align 8
.LC2:
	.string	"count >= 5 && CHECK_AND_SKIP_PREFIX(hdr, \"POST \")"
.LC3:
	.string	"../test/http_test.c"
.LC4:
	.string	"\"HTTP/1.\""
.LC5:
	.string	"++hdr"
.LC6:
	.string	"HTTP/1."
.LC7:
	.string	"*hdr"
.LC8:
	.string	"'0'"
.LC9:
	.string	"'1'"
.LC10:
	.string	"*hdr++"
.LC11:
	.string	"'\\r'"
.LC12:
	.string	"'\\n'"
.LC13:
	.string	"/path/result.crt"
	.align 8
.LC14:
	.string	"HTTP/1.%c 301 Moved Permanently\r\nLocation: %s\r\n\r\n"
.LC15:
	.string	"HTTP/1.%c 200 OK\r\n"
.LC16:
	.string	"keep-alive"
.LC17:
	.string	"close"
.LC18:
	.string	"Connection: %s\r\n"
	.align 8
.LC19:
	.string	"Content-Type: %s\r\nContent-Length: %d\r\n\r\n"
.LC20:
	.string	"Connection: "
.LC21:
	.string	"\r\n"
	.text
	.type	mock_http_server, @function
mock_http_server:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, %eax
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movb	%al, -68(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$3, -24(%rbp)
	jle	.L6
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L6
	addq	$4, -8(%rbp)
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L8
	cmpq	$4, -24(%rbp)
	jle	.L9
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L9
	addq	$5, -8(%rbp)
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L35
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L35
.L12:
	movl	$7, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %r8
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rsi
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L35
.L13:
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	$48, %r8d
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_char_le@PLT
	testl	%eax, %eax
	je	.L14
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$49, %r9d
	movl	%esi, %r8d
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_char_le@PLT
	testl	%eax, %eax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L35
.L15:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$13, %r9d
	movl	%esi, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	jne	.L17
.L16:
	movl	$0, %eax
	jmp	.L35
.L17:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	subq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	js	.L18
	cmpq	$0, -64(%rbp)
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L35
.L19:
	leaq	.LC13(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L20
	cmpl	$0, -28(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L35
.L21:
	movsbl	-68(%rbp), %edx
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L35
.L20:
	movsbl	-68(%rbp), %edx
	leaq	.LC15(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L22
	movl	$0, %eax
	jmp	.L35
.L22:
	cmpb	$48, -68(%rbp)
	sete	%al
	movzbl	%al, %eax
	cmpl	%eax, -72(%rbp)
	jne	.L23
	cmpb	$48, -68(%rbp)
	jne	.L24
	leaq	.LC16(%rip), %rax
	jmp	.L25
.L24:
	leaq	.LC17(%rip), %rax
.L25:
	leaq	.LC18(%rip), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L23
	movl	$0, %eax
	jmp	.L35
.L23:
	cmpl	$0, -28(%rbp)
	je	.L26
	cmpq	$0, -88(%rbp)
	je	.L27
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	jmp	.L28
.L27:
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L28
	movl	$0, %eax
	jmp	.L35
.L28:
	movl	-12(%rbp), %ecx
	movq	-80(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L29
	movl	$0, %eax
	jmp	.L35
.L29:
	cmpq	$0, -88(%rbp)
	je	.L30
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L35
.L30:
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d_bio@PLT
	jmp	.L35
.L26:
	leaq	.LC20(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L31
	addq	$12, -8(%rbp)
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	testb	%al, %al
	je	.L33
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	addq	$2, -8(%rbp)
.L33:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cltq
	cmpq	%rax, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	mock_http_server, .-mock_http_server
	.type	http_bio_cb_ex, @function
http_bio_cb_ex:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback_arg@PLT
	movq	%rax, -8(%rbp)
	cmpl	$134, -28(%rbp)
	jne	.L37
	cmpl	$11, -32(%rbp)
	jne	.L37
	movq	x509_it(%rip), %r8
	movq	x509(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %r9
	movq	-8(%rbp), %rax
	movq	8(%rax), %r10
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	mock_http_server
	addq	$16, %rsp
	movl	%eax, 16(%rbp)
.L37:
	movl	16(%rbp), %eax
	cltq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	http_bio_cb_ex, .-http_bio_cb_ex
	.section	.rodata
.LC22:
	.string	"text/plain"
.LC23:
	.string	"test\n"
.LC24:
	.string	"more\n"
.LC25:
	.string	"application/x-x509-ca-cert"
.LC26:
	.string	"text/html; charset=utf-8"
.LC27:
	.string	"/will-be-redirected"
.LC28:
	.string	"http://httpbin.org/"
.LC29:
	.string	"sizeof(DOCTYPE_HTML) - 1"
	.align 8
.LC30:
	.string	"BIO_gets(rsp, rtext, sizeof(rtext))"
.LC31:
	.string	"<!DOCTYPE html>\n"
.LC32:
	.string	"DOCTYPE_HTML"
.LC33:
	.string	"rtext"
.LC34:
	.string	"sizeof(text1) - 1"
.LC35:
	.string	"text1"
.LC36:
	.string	"rcert"
.LC37:
	.string	"0"
.LC38:
	.string	"X509_cmp(x509, rcert)"
	.text
	.type	test_http_method, @function
test_http_method:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movl	%edi, -180(%rbp)
	movl	%esi, -184(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movb	$48, -104(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -76(%rbp)
	cmpl	$0, -184(%rbp)
	je	.L40
	leaq	.LC22(%rip), %rax
	movq	%rax, -40(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L41
	leaq	.LC23(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	cmpl	$5, %eax
	jne	.L41
	leaq	.LC24(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	cmpl	$5, %eax
	je	.L42
.L41:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -24(%rbp)
.L42:
	leaq	.LC23(%rip), %rax
	movq	%rax, -112(%rbp)
	jmp	.L43
.L40:
	leaq	.LC25(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	x509(%rip), %rdx
	movq	x509_it(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d_mem_bio@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -112(%rbp)
.L43:
	cmpq	$0, -56(%rbp)
	je	.L68
	cmpq	$0, -64(%rbp)
	je	.L68
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	http_bio_cb_ex(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
	cmpl	$0, -180(%rbp)
	je	.L47
	cmpl	$0, -184(%rbp)
	sete	%al
	movzbl	%al, %esi
	cmpl	$0, -76(%rbp)
	jne	.L48
	movq	-40(%rbp), %rdx
	jmp	.L49
.L48:
	leaq	.LC26(%rip), %rdx
.L49:
	cmpl	$0, -76(%rbp)
	jne	.L50
	movq	-64(%rbp), %rdi
	jmp	.L51
.L50:
	movl	$0, %edi
.L51:
	cmpl	$0, -76(%rbp)
	jne	.L52
	movq	-56(%rbp), %rcx
	jmp	.L53
.L52:
	movl	$0, %ecx
.L53:
	cmpl	$0, -76(%rbp)
	jne	.L54
	cmpl	$0, -184(%rbp)
	je	.L55
	leaq	.LC13(%rip), %rax
	jmp	.L56
.L55:
	leaq	.LC27(%rip), %rax
	jmp	.L56
.L54:
	leaq	.LC28(%rip), %rax
.L56:
	subq	$8, %rsp
	pushq	$0
	pushq	$102400
	pushq	%rsi
	pushq	%rdx
	pushq	-72(%rbp)
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_get@PLT
	addq	$64, %rsp
	movq	%rax, -32(%rbp)
	jmp	.L57
.L47:
	cmpl	$0, -184(%rbp)
	sete	%al
	movzbl	%al, %edx
	leaq	.LC13(%rip), %rax
	pushq	$0
	pushq	$0
	pushq	$102400
	pushq	%rdx
	pushq	-40(%rbp)
	pushq	-24(%rbp)
	pushq	-40(%rbp)
	pushq	-72(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_HTTP_transfer@PLT
	addq	$112, %rsp
	movq	%rax, -32(%rbp)
.L57:
	cmpq	$0, -32(%rbp)
	je	.L69
	cmpl	$0, -180(%rbp)
	je	.L58
	cmpl	$0, -76(%rbp)
	je	.L58
	leaq	-160(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$179, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	leaq	.LC31(%rip), %rdi
	leaq	-160(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	$1, %eax
	jmp	.L60
.L59:
	movl	$0, %eax
.L60:
	movl	%eax, -44(%rbp)
	jmp	.L61
.L58:
	cmpl	$0, -184(%rbp)
	je	.L62
	leaq	-167(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L63
	leaq	.LC23(%rip), %rdi
	leaq	-167(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	movl	%eax, -44(%rbp)
	jmp	.L61
.L62:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_X509_bio@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	x509(%rip), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$191, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L61:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L46
.L68:
	nop
	jmp	.L46
.L69:
	nop
.L46:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	test_http_method, .-test_http_method
	.section	.rodata
.LC39:
	.string	"rsp"
.LC40:
	.string	"OSSL_HTTP_is_alive(rctx)"
.LC41:
	.string	"keep_alive > 0"
	.text
	.type	test_http_keep_alive, @function
test_http_keep_alive:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movl	%esi, -120(%rbp)
	movl	%edx, -124(%rbp)
	movb	%al, -116(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movb	$48, -72(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L84
	cmpq	$0, -40(%rbp)
	je	.L84
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movzbl	-116(%rbp), %eax
	movb	%al, -72(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -68(%rbp)
	leaq	http_bio_cb_ex(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
	movl	$1, -24(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L74
.L82:
	leaq	.LC13(%rip), %rdx
	leaq	-104(%rbp), %rax
	movl	-120(%rbp), %ecx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	-48(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_transfer@PLT
	addq	$112, %rsp
	movq	%rax, -56(%rbp)
	cmpl	$2, -120(%rbp)
	jne	.L75
	cmpl	$0, -124(%rbp)
	jne	.L75
	cmpl	$0, -24(%rbp)
	je	.L76
	movq	-56(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$235, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L76
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_is_alive@PLT
	movl	%eax, %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L76
	movl	$1, %eax
	jmp	.L77
.L76:
	movl	$0, %eax
.L77:
	movl	%eax, -24(%rbp)
	jmp	.L78
.L75:
	cmpl	$0, -24(%rbp)
	je	.L79
	movq	-56(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$238, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L79
	cmpl	$0, -120(%rbp)
	setg	%al
	movzbl	%al, %ebx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_is_alive@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movl	$0, %eax
.L80:
	movl	%eax, -24(%rbp)
.L78:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$0, -120(%rbp)
	addl	$1, -20(%rbp)
.L74:
	cmpl	$0, -24(%rbp)
	je	.L81
	cmpl	$2, -20(%rbp)
	jle	.L82
.L81:
	movq	-104(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_close@PLT
	jmp	.L73
.L84:
	nop
.L73:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_http_keep_alive, .-test_http_keep_alive
	.section	.rodata
.LC42:
	.string	"%d"
.LC43:
	.string	"1"
	.align 8
.LC44:
	.string	"sscanf(exp_port, \"%d\", &exp_num)"
	.align 8
.LC45:
	.string	"OSSL_HTTP_parse_url(url, &ssl, &user, &host, &port, &num, &path, &query, &frag)"
.LC46:
	.string	"exp_host"
.LC47:
	.string	"host"
.LC48:
	.string	"exp_port"
.LC49:
	.string	"port"
.LC50:
	.string	"exp_num"
.LC51:
	.string	"num"
.LC52:
	.string	"exp_path"
.LC53:
	.string	"path"
.LC54:
	.string	"exp_ssl"
.LC55:
	.string	"ssl"
.LC56:
	.string	"user:pass"
.LC57:
	.string	"\"user:pass\""
.LC58:
	.string	"user"
.LC59:
	.string	"fr"
.LC60:
	.string	"\"fr\""
.LC61:
	.string	"frag"
.LC62:
	.string	"q"
.LC63:
	.string	"\"q\""
.LC64:
	.string	"query"
	.text
	.type	test_http_url_ok, @function
test_http_url_ok:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	%eax, %esi
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L93
.L86:
	leaq	-64(%rbp), %r9
	leaq	-32(%rbp), %r8
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-68(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	leaq	-40(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HTTP_parse_url@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$261, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-24(%rbp), %rsi
	movq	-104(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L88
	movq	-32(%rbp), %rsi
	movq	-112(%rbp), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L88
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L88
	movq	-40(%rbp), %rsi
	movq	-120(%rbp), %rdi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L88
	movl	-68(%rbp), %esi
	movl	-92(%rbp), %edi
	leaq	.LC54(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	$0, %eax
.L89:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L90
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
	movq	-16(%rbp), %rsi
	leaq	.LC56(%rip), %rdi
	leaq	.LC57(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -4(%rbp)
.L90:
	cmpl	$0, -4(%rbp)
	je	.L91
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L91
	movq	-56(%rbp), %rsi
	leaq	.LC59(%rip), %rdi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -4(%rbp)
.L91:
	cmpl	$0, -4(%rbp)
	je	.L92
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L92
	movq	-48(%rbp), %rsi
	leaq	.LC62(%rip), %rdi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -4(%rbp)
.L92:
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$275, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$276, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$277, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$278, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	test_http_url_ok, .-test_http_url_ok
	.section	.rodata
	.align 8
.LC65:
	.string	"OSSL_HTTP_parse_url(url, NULL, NULL, &host, NULL, NULL, &path, NULL, NULL)"
.LC66:
	.string	"\"host\""
.LC67:
	.string	"exp_path_qu"
	.text
	.type	test_http_url_path_query_ok, @function
test_http_url_path_query_ok:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_parse_url@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rsi
	leaq	.LC47(%rip), %rdi
	leaq	.LC66(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$290, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L95
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC67(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$291, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L95
	movl	$1, %eax
	jmp	.L96
.L95:
	movl	$0, %eax
.L96:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$292, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	test_http_url_path_query_ok, .-test_http_url_path_query_ok
	.section	.rodata
.LC68:
	.string	"/path"
.LC69:
	.string	"65535"
.LC70:
	.string	"host:65535/path"
	.text
	.type	test_http_url_dns, @function
test_http_url_dns:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC68(%rip), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC70(%rip), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	test_http_url_dns, .-test_http_url_dns
	.section	.rodata
.LC71:
	.string	"/p/2017-01-03T00:00:00"
.LC72:
	.string	"80"
.LC73:
	.string	"host/p/2017-01-03T00:00:00"
	.align 8
.LC74:
	.string	"http://host/p/2017-01-03T00:00:00"
.LC75:
	.string	"443"
	.align 8
.LC76:
	.string	"https://host/p/2017-01-03T00:00:00"
	.text
	.type	test_http_url_timestamp, @function
test_http_url_timestamp:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC71(%rip), %rsi
	leaq	.LC72(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC73(%rip), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	testl	%eax, %eax
	je	.L101
	leaq	.LC71(%rip), %rsi
	leaq	.LC72(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	testl	%eax, %eax
	je	.L101
	leaq	.LC71(%rip), %rsi
	leaq	.LC75(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC76(%rip), %rax
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	testl	%eax, %eax
	je	.L101
	movl	$1, %eax
	jmp	.L103
.L101:
	movl	$0, %eax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	test_http_url_timestamp, .-test_http_url_timestamp
	.section	.rodata
.LC77:
	.string	"/p?q=x"
.LC78:
	.string	"http://usr@host:1/p?q=x#frag"
.LC79:
	.string	"/?query"
.LC80:
	.string	"http://host?query#frag"
.LC81:
	.string	"/"
.LC82:
	.string	"http://host:9999#frag"
	.text
	.type	test_http_url_path_query, @function
test_http_url_path_query:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC77(%rip), %rdx
	leaq	.LC78(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_http_url_path_query_ok
	testl	%eax, %eax
	je	.L105
	leaq	.LC79(%rip), %rdx
	leaq	.LC80(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_http_url_path_query_ok
	testl	%eax, %eax
	je	.L105
	leaq	.LC81(%rip), %rdx
	leaq	.LC82(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_http_url_path_query_ok
	testl	%eax, %eax
	je	.L105
	movl	$1, %eax
	jmp	.L107
.L105:
	movl	$0, %eax
.L107:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	test_http_url_path_query, .-test_http_url_path_query
	.section	.rodata
.LC83:
	.string	"/p"
.LC84:
	.string	"user:pass@host/p?q#fr"
	.text
	.type	test_http_url_userinfo_query_fragment, @function
test_http_url_userinfo_query_fragment:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC83(%rip), %rsi
	leaq	.LC72(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC84(%rip), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	test_http_url_userinfo_query_fragment, .-test_http_url_userinfo_query_fragment
	.section	.rodata
.LC85:
	.string	"/p/q"
.LC86:
	.string	"1.2.3.4"
.LC87:
	.string	"https://1.2.3.4/p/q"
	.text
	.type	test_http_url_ipv4, @function
test_http_url_ipv4:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC85(%rip), %rsi
	leaq	.LC75(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC87(%rip), %rax
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	test_http_url_ipv4, .-test_http_url_ipv4
	.section	.rodata
.LC88:
	.string	"6"
.LC89:
	.string	"[FF01::101]"
.LC90:
	.string	"http://[FF01::101]:6"
	.text
	.type	test_http_url_ipv6, @function
test_http_url_ipv6:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC81(%rip), %rsi
	leaq	.LC88(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC90(%rip), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_http_url_ok
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	test_http_url_ipv6, .-test_http_url_ipv6
	.section	.rodata
	.align 8
.LC91:
	.string	"OSSL_HTTP_parse_url(url, &ssl, NULL, &host, &port, &num, &path, NULL, NULL)"
	.text
	.type	test_http_url_invalid, @function
test_http_url_invalid:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	$1, -40(%rbp)
	leaq	-36(%rbp), %r8
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_HTTP_parse_url@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$340, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L115
	movq	-16(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$342, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L115
	movq	-24(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$343, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L115
	movq	-32(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$344, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L117
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$346, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$348, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L117:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	test_http_url_invalid, .-test_http_url_invalid
	.section	.rodata
.LC92:
	.string	"htttps://1.2.3.4:65535/pkix"
	.text
	.type	test_http_url_invalid_prefix, @function
test_http_url_invalid_prefix:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC92(%rip), %rax
	movq	%rax, %rdi
	call	test_http_url_invalid
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	test_http_url_invalid_prefix, .-test_http_url_invalid_prefix
	.section	.rodata
.LC93:
	.string	"https://1.2.3.4:65536/pkix"
.LC94:
	.string	"https://1.2.3.4:"
	.text
	.type	test_http_url_invalid_port, @function
test_http_url_invalid_port:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC93(%rip), %rax
	movq	%rax, %rdi
	call	test_http_url_invalid
	testl	%eax, %eax
	je	.L122
	leaq	.LC94(%rip), %rax
	movq	%rax, %rdi
	call	test_http_url_invalid
	testl	%eax, %eax
	je	.L122
	movl	$1, %eax
	jmp	.L124
.L122:
	movl	$0, %eax
.L124:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	test_http_url_invalid_port, .-test_http_url_invalid_port
	.section	.rodata
.LC95:
	.string	"https://[FF01::101]pkix"
	.text
	.type	test_http_url_invalid_path, @function
test_http_url_invalid_path:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC95(%rip), %rax
	movq	%rax, %rdi
	call	test_http_url_invalid
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	test_http_url_invalid_path, .-test_http_url_invalid_path
	.type	test_http_get_txt, @function
test_http_get_txt:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$1, %edi
	call	test_http_method
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	test_http_get_txt, .-test_http_get_txt
	.type	test_http_post_txt, @function
test_http_post_txt:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$0, %edi
	call	test_http_method
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	test_http_post_txt, .-test_http_post_txt
	.type	test_http_get_x509, @function
test_http_get_x509:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$1, %edi
	call	test_http_method
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	test_http_get_x509, .-test_http_get_x509
	.type	test_http_post_x509, @function
test_http_post_x509:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	test_http_method
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	test_http_post_x509, .-test_http_post_x509
	.type	test_http_keep_alive_0_no_no, @function
test_http_keep_alive_0_no_no:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$48, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	test_http_keep_alive_0_no_no, .-test_http_keep_alive_0_no_no
	.type	test_http_keep_alive_1_no_no, @function
test_http_keep_alive_1_no_no:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$49, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	test_http_keep_alive_1_no_no, .-test_http_keep_alive_1_no_no
	.type	test_http_keep_alive_0_prefer_yes, @function
test_http_keep_alive_0_prefer_yes:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$1, %esi
	movl	$48, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	test_http_keep_alive_0_prefer_yes, .-test_http_keep_alive_0_prefer_yes
	.type	test_http_keep_alive_1_prefer_yes, @function
test_http_keep_alive_1_prefer_yes:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$1, %esi
	movl	$49, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	test_http_keep_alive_1_prefer_yes, .-test_http_keep_alive_1_prefer_yes
	.type	test_http_keep_alive_0_require_yes, @function
test_http_keep_alive_0_require_yes:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$2, %esi
	movl	$48, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	test_http_keep_alive_0_require_yes, .-test_http_keep_alive_0_require_yes
	.type	test_http_keep_alive_1_require_yes, @function
test_http_keep_alive_1_require_yes:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$2, %esi
	movl	$49, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	test_http_keep_alive_1_require_yes, .-test_http_keep_alive_1_require_yes
	.type	test_http_keep_alive_0_require_no, @function
test_http_keep_alive_0_require_no:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$2, %esi
	movl	$48, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	test_http_keep_alive_0_require_no, .-test_http_keep_alive_0_require_no
	.type	test_http_keep_alive_1_require_no, @function
test_http_keep_alive_1_require_no:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$2, %esi
	movl	$49, %edi
	call	test_http_keep_alive
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	test_http_keep_alive_1_require_no, .-test_http_keep_alive_1_require_no
	.section	.rodata
.LC96:
	.string	"wbio"
.LC97:
	.string	"rbio"
.LC98:
	.string	"rctx"
	.align 8
.LC99:
	.string	"OSSL_HTTP_REQ_CTX_set_request_line(rctx, 0 , NULL, NULL, RPATH)"
.LC100:
	.string	"mem"
	.text
	.type	test_http_resp_hdr_limit, @function
test_http_resp_hdr_limit:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movb	$48, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC96(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	movq	-32(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	leaq	.LC23(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -72(%rbp)
	movb	$49, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	http_bio_cb_ex(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$450, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L160
	leaq	.LC13(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_set_request_line@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_exchange@PLT
	movq	%rax, -40(%rbp)
	cmpq	$1, -88(%rbp)
	jne	.L157
	movq	-40(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$465, %esi
	call	test_ptr_null@PLT
	movl	%eax, -4(%rbp)
	jmp	.L154
.L157:
	movq	-40(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$467, %esi
	call	test_ptr@PLT
	movl	%eax, -4(%rbp)
	jmp	.L154
.L159:
	nop
	jmp	.L154
.L160:
	nop
	jmp	.L154
.L161:
	nop
.L154:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	test_http_resp_hdr_limit, .-test_http_resp_hdr_limit
	.type	test_hdr_resp_hdr_limit_none, @function
test_hdr_resp_hdr_limit_none:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_http_resp_hdr_limit
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	test_hdr_resp_hdr_limit_none, .-test_hdr_resp_hdr_limit_none
	.type	test_hdr_resp_hdr_limit_short, @function
test_hdr_resp_hdr_limit_short:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	test_http_resp_hdr_limit
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	test_hdr_resp_hdr_limit_short, .-test_hdr_resp_hdr_limit_short
	.type	test_hdr_resp_hdr_limit_256, @function
test_hdr_resp_hdr_limit_256:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$256, %edi
	call	test_http_resp_hdr_limit
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	test_hdr_resp_hdr_limit_256, .-test_hdr_resp_hdr_limit_256
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	x509(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	cleanup_tests, .-cleanup_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB609:
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
.LFE609:
	.size	test_get_options, .-test_get_options
	.section	.rodata
	.align 8
.LC101:
	.string	"(x509 = load_cert_pem(test_get_argument(0), NULL))"
.LC102:
	.string	"test_http_url_dns"
.LC103:
	.string	"test_http_url_timestamp"
.LC104:
	.string	"test_http_url_path_query"
	.align 8
.LC105:
	.string	"test_http_url_userinfo_query_fragment"
.LC106:
	.string	"test_http_url_ipv4"
.LC107:
	.string	"test_http_url_ipv6"
.LC108:
	.string	"test_http_url_invalid_prefix"
.LC109:
	.string	"test_http_url_invalid_port"
.LC110:
	.string	"test_http_url_invalid_path"
.LC111:
	.string	"test_http_get_txt"
.LC112:
	.string	"test_http_post_txt"
.LC113:
	.string	"test_http_get_x509"
.LC114:
	.string	"test_http_post_x509"
.LC115:
	.string	"test_http_keep_alive_0_no_no"
.LC116:
	.string	"test_http_keep_alive_1_no_no"
	.align 8
.LC117:
	.string	"test_http_keep_alive_0_prefer_yes"
	.align 8
.LC118:
	.string	"test_http_keep_alive_1_prefer_yes"
	.align 8
.LC119:
	.string	"test_http_keep_alive_0_require_yes"
	.align 8
.LC120:
	.string	"test_http_keep_alive_1_require_yes"
	.align 8
.LC121:
	.string	"test_http_keep_alive_0_require_no"
	.align 8
.LC122:
	.string	"test_http_keep_alive_1_require_no"
.LC123:
	.string	"test_hdr_resp_hdr_limit_none"
.LC124:
	.string	"test_hdr_resp_hdr_limit_short"
.LC125:
	.string	"test_hdr_resp_hdr_limit_256"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L172
	movl	$0, %eax
	jmp	.L173
.L172:
	call	X509_it@PLT
	movq	%rax, x509_it(%rip)
	movl	$0, %edi
	call	test_get_argument@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, x509(%rip)
	movq	x509(%rip), %rax
	leaq	.LC101(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$505, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L174
	movl	$0, %eax
	jmp	.L173
.L174:
	leaq	test_http_url_dns(%rip), %rdx
	leaq	.LC102(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_timestamp(%rip), %rdx
	leaq	.LC103(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_path_query(%rip), %rdx
	leaq	.LC104(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_userinfo_query_fragment(%rip), %rdx
	leaq	.LC105(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_ipv4(%rip), %rdx
	leaq	.LC106(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_ipv6(%rip), %rdx
	leaq	.LC107(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_invalid_prefix(%rip), %rdx
	leaq	.LC108(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_invalid_port(%rip), %rdx
	leaq	.LC109(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_url_invalid_path(%rip), %rdx
	leaq	.LC110(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_get_txt(%rip), %rdx
	leaq	.LC111(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_post_txt(%rip), %rdx
	leaq	.LC112(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_get_x509(%rip), %rdx
	leaq	.LC113(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_post_x509(%rip), %rdx
	leaq	.LC114(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_0_no_no(%rip), %rdx
	leaq	.LC115(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_1_no_no(%rip), %rdx
	leaq	.LC116(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_0_prefer_yes(%rip), %rdx
	leaq	.LC117(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_1_prefer_yes(%rip), %rdx
	leaq	.LC118(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_0_require_yes(%rip), %rdx
	leaq	.LC119(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_1_require_yes(%rip), %rdx
	leaq	.LC120(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_0_require_no(%rip), %rdx
	leaq	.LC121(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_http_keep_alive_1_require_no(%rip), %rdx
	leaq	.LC122(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hdr_resp_hdr_limit_none(%rip), %rdx
	leaq	.LC123(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hdr_resp_hdr_limit_short(%rip), %rdx
	leaq	.LC124(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hdr_resp_hdr_limit_256(%rip), %rdx
	leaq	.LC125(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L173:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC126:
	.string	"Usage: %s [options] cert.pem\n"
.LC127:
	.string	"Valid options are:\n"
.LC128:
	.string	"help"
.LC129:
	.string	"Display this summary"
.LC130:
	.string	"list"
	.align 8
.LC131:
	.string	"Display the list of tests available"
.LC132:
	.string	"test"
	.align 8
.LC133:
	.string	"Run a single test by id or name"
.LC134:
	.string	"iter"
	.align 8
.LC135:
	.string	"Run a single iteration of a test"
.LC136:
	.string	"indent"
	.align 8
.LC137:
	.string	"Number of tabs added to output"
.LC138:
	.string	"seed"
	.align 8
.LC139:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC126
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC127
	.quad	.LC128
	.long	500
	.long	45
	.quad	.LC129
	.quad	.LC130
	.long	501
	.long	45
	.quad	.LC131
	.quad	.LC132
	.long	502
	.long	115
	.quad	.LC133
	.quad	.LC134
	.long	503
	.long	110
	.quad	.LC135
	.quad	.LC136
	.long	504
	.long	112
	.quad	.LC137
	.quad	.LC138
	.long	505
	.long	110
	.quad	.LC139
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"http_client.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB342:
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
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB344:
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
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB359:
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
.LFE359:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/http/http_client.c"
	.text
	.globl	OSSL_HTTP_REQ_CTX_new
	.type	OSSL_HTTP_REQ_CTX_new, @function
OSSL_HTTP_REQ_CTX_new:
.LFB378:
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
	cmpq	$0, -24(%rbp)
	je	.L10
	cmpq	$0, -32(%rbp)
	jne	.L11
.L10:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L11:
	leaq	.LC0(%rip), %rax
	movl	$103, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-8(%rbp), %rax
	movl	$4096, (%rax)
	cmpl	$0, -36(%rbp)
	jle	.L14
	movl	-36(%rbp), %eax
	jmp	.L15
.L14:
	movl	$4096, %eax
.L15:
	movq	-8(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$256, 192(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L12
.L16:
	movq	-8(%rbp), %rax
	movq	$102400, 152(%rax)
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	OSSL_HTTP_REQ_CTX_new, .-OSSL_HTTP_REQ_CTX_new
	.globl	OSSL_HTTP_REQ_CTX_free
	.type	OSSL_HTTP_REQ_CTX_free, @function
OSSL_HTTP_REQ_CTX_free:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
.L20:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$135, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$137, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$139, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L17
.L21:
	nop
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	OSSL_HTTP_REQ_CTX_free, .-OSSL_HTTP_REQ_CTX_free
	.globl	OSSL_HTTP_REQ_CTX_get0_mem_bio
	.type	OSSL_HTTP_REQ_CTX_get0_mem_bio, @function
OSSL_HTTP_REQ_CTX_get0_mem_bio:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	OSSL_HTTP_REQ_CTX_get0_mem_bio, .-OSSL_HTTP_REQ_CTX_get0_mem_bio
	.globl	OSSL_HTTP_REQ_CTX_get_resp_len
	.type	OSSL_HTTP_REQ_CTX_get_resp_len, @function
OSSL_HTTP_REQ_CTX_get_resp_len:
.LFB381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	OSSL_HTTP_REQ_CTX_get_resp_len, .-OSSL_HTTP_REQ_CTX_get_resp_len
	.globl	OSSL_HTTP_REQ_CTX_set_max_response_length
	.type	OSSL_HTTP_REQ_CTX_set_max_response_length, @function
OSSL_HTTP_REQ_CTX_set_max_response_length:
.LFB382:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L28
.L29:
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	jmp	.L32
.L31:
	movl	$102400, %eax
.L32:
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	OSSL_HTTP_REQ_CTX_set_max_response_length, .-OSSL_HTTP_REQ_CTX_set_max_response_length
	.section	.rodata
.LC1:
	.string	"POST"
.LC2:
	.string	"GET"
.LC3:
	.string	"%s "
.LC4:
	.string	"http://%s"
.LC5:
	.string	":%s"
.LC6:
	.string	"/"
.LC7:
	.string	"http://"
.LC8:
	.string	"%s HTTP/1.0\r\n"
	.text
	.globl	OSSL_HTTP_REQ_CTX_set_request_line
	.type	OSSL_HTTP_REQ_CTX_set_request_line, @function
OSSL_HTTP_REQ_CTX_set_request_line:
.LFB383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movl	$0, %eax
	jmp	.L35
.L36:
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 104(%rax)
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L37
	leaq	.LC1(%rip), %rax
	jmp	.L38
.L37:
	leaq	.LC2(%rip), %rax
.L38:
	movq	-8(%rbp), %rdx
	movq	88(%rdx), %rcx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L39
	movl	$0, %eax
	jmp	.L35
.L39:
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L41
	movl	$0, %eax
	jmp	.L35
.L41:
	cmpq	$0, -32(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L40
	movl	$0, %eax
	jmp	.L35
.L40:
	cmpq	$0, -40(%rbp)
	jne	.L42
	leaq	.LC6(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L43
.L42:
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L44
	cmpq	$0, -24(%rbp)
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L44:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L43
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L43
	movl	$0, %eax
	jmp	.L35
.L43:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L45
	movl	$0, %eax
	jmp	.L35
.L45:
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$4097, (%rax)
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	OSSL_HTTP_REQ_CTX_set_request_line, .-OSSL_HTTP_REQ_CTX_set_request_line
	.section	.rodata
.LC9:
	.string	": "
.LC10:
	.string	"\r\n"
	.text
	.globl	OSSL_HTTP_REQ_CTX_add1_header
	.type	OSSL_HTTP_REQ_CTX_add1_header, @function
OSSL_HTTP_REQ_CTX_add1_header:
.LFB384:
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
	cmpq	$0, -8(%rbp)
	je	.L47
	cmpq	$0, -16(%rbp)
	jne	.L48
.L47:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L50:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L51
	movl	$0, %eax
	jmp	.L49
.L51:
	cmpq	$0, -24(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	je	.L53
	movl	$0, %eax
	jmp	.L49
.L53:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L52
	movl	$0, %eax
	jmp	.L49
.L52:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	OSSL_HTTP_REQ_CTX_add1_header, .-OSSL_HTTP_REQ_CTX_add1_header
	.globl	OSSL_HTTP_REQ_CTX_set_expected
	.type	OSSL_HTTP_REQ_CTX_set_expected, @function
OSSL_HTTP_REQ_CTX_set_expected:
.LFB385:
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
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L55:
	cmpl	$0, -28(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4097, %eax
	je	.L57
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$263, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	cmpq	$0, -16(%rbp)
	je	.L58
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$266, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L56
.L58:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 120(%rax)
	cmpl	$0, -24(%rbp)
	js	.L59
	cmpl	$0, -24(%rbp)
	jle	.L60
	movl	$0, %edi
	call	time@PLT
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	jmp	.L61
.L60:
	movl	$0, %edx
.L61:
	movq	-8(%rbp), %rax
	movq	%rdx, 168(%rax)
	jmp	.L62
.L59:
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 168(%rax)
.L62:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 160(%rax)
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	OSSL_HTTP_REQ_CTX_set_expected, .-OSSL_HTTP_REQ_CTX_set_expected
	.section	.rodata
.LC11:
	.string	"keep-alive"
.LC12:
	.string	"Connection"
.LC13:
	.string	"text/"
.LC14:
	.string	"Content-Type: %s\r\n"
.LC15:
	.string	"Content-Length: %ld\r\n"
	.text
	.type	set1_content, @function
set1_content:
.LFB386:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	cmpq	$0, -40(%rbp)
	jne	.L65
	cmpq	$0, -32(%rbp)
	je	.L65
.L64:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L65:
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L67
	leaq	.LC11(%rip), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_add1_header@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L80
.L67:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
	cmpq	$0, -40(%rbp)
	jne	.L68
	movl	$1, %eax
	jmp	.L80
.L68:
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L69:
	cmpq	$0, -32(%rbp)
	jne	.L70
	movq	-24(%rbp), %rax
	movl	$1, 108(%rax)
	jmp	.L71
.L70:
	leaq	.LC13(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L72
	movq	-24(%rbp), %rax
	movl	$1, 108(%rax)
.L72:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L71
	movl	$0, %eax
	jmp	.L80
.L71:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	$1026, %eax
	jne	.L73
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$107, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cmpq	$1, %rax
	jne	.L74
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	testl	%eax, %eax
	jne	.L74
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	jmp	.L76
.L74:
	movq	$0, -16(%rbp)
	jmp	.L76
.L73:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
.L76:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L77
	cmpq	$0, -8(%rbp)
	jle	.L78
.L77:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jns	.L78
	movl	$0, %eax
	jmp	.L80
.L78:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	set1_content, .-set1_content
	.globl	OSSL_HTTP_REQ_CTX_set1_req
	.type	OSSL_HTTP_REQ_CTX_set1_req, @function
OSSL_HTTP_REQ_CTX_set1_req:
.LFB387:
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
	movl	$1, -12(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L82
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d_mem_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.L82:
	cmpl	$0, -12(%rbp)
	je	.L83
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set1_content
	testl	%eax, %eax
	je	.L83
	movl	$1, %eax
	jmp	.L84
.L83:
	movl	$0, %eax
.L84:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	OSSL_HTTP_REQ_CTX_set1_req, .-OSSL_HTTP_REQ_CTX_set1_req
	.globl	OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines
	.type	OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines, @function
OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L86
.L87:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 192(%rax)
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines, .-OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines
	.section	.rodata
.LC16:
	.string	"host"
.LC17:
	.string	"Host"
	.text
	.type	add1_headers, @function
add1_headers:
.LFB389:
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
	cmpq	$0, -40(%rbp)
	je	.L90
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
	movl	$1, %eax
	jmp	.L91
.L90:
	movl	$0, %eax
.L91:
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L92
.L96:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L93
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, -8(%rbp)
.L93:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_add1_header@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	addl	$1, -4(%rbp)
.L92:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L96
	cmpl	$0, -8(%rbp)
	je	.L97
	movq	-40(%rbp), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_add1_header@PLT
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L95
.L97:
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	add1_headers, .-add1_headers
	.type	http_req_ctx_new, @function
http_req_ctx_new:
.LFB390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -24(%rbp)
	movl	40(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 56(%rax)
	cmpq	$0, 16(%rbp)
	je	.L101
	leaq	.LC0(%rip), %rcx
	movq	16(%rbp), %rax
	movl	$407, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L107
.L101:
	cmpq	$0, 24(%rbp)
	je	.L103
	leaq	.LC0(%rip), %rcx
	movq	24(%rbp), %rax
	movl	$410, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L108
.L103:
	cmpq	$0, 32(%rbp)
	je	.L104
	leaq	.LC0(%rip), %rcx
	movq	32(%rbp), %rax
	movl	$413, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L109
.L104:
	cmpl	$0, 48(%rbp)
	jle	.L105
	movl	$0, %edi
	call	time@PLT
	movl	48(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	jmp	.L106
.L105:
	movl	$0, %edx
.L106:
	movq	-8(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-8(%rbp), %rax
	jmp	.L100
.L107:
	nop
	jmp	.L102
.L108:
	nop
	jmp	.L102
.L109:
	nop
.L102:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_free@PLT
	movl	$0, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	http_req_ctx_new, .-http_req_ctx_new
	.section	.rodata
.LC18:
	.string	"HTTP/1."
.LC19:
	.string	"code=%s"
.LC20:
	.string	"code=%s, reason=%s"
.LC21:
	.string	"content=%s"
	.text
	.type	parse_http_line1, @function
parse_http_line1:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	.LC18(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L111
	addq	$7, -56(%rbp)
	movl	$0, %eax
	jmp	.L112
.L111:
	movl	$1, %eax
.L112:
	testb	%al, %al
	jne	.L147
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	setg	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L115
.L148:
	nop
	addq	$1, -16(%rbp)
.L115:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L116
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L148
.L116:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L149
	jmp	.L119
.L121:
	addq	$1, -16(%rbp)
.L119:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L120
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L121
.L120:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L150
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L123
.L151:
	nop
	addq	$1, -24(%rbp)
.L123:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L124
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L151
.L124:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L152
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	leaq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L153
	jmp	.L128
.L130:
	addq	$1, -24(%rbp)
.L128:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L129
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L130
.L129:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L131
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.L132
.L133:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
.L132:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L133
.L131:
	cmpl	$200, -28(%rbp)
	je	.L134
	cmpl	$200, -28(%rbp)
	jl	.L135
	movl	-28(%rbp), %eax
	subl	$301, %eax
	cmpl	$1, %eax
	ja	.L135
.L134:
	movl	-28(%rbp), %eax
	jmp	.L144
.L135:
	movl	$105, -8(%rbp)
	cmpl	$399, -28(%rbp)
	jg	.L137
	movl	$114, -8(%rbp)
.L137:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L138
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$492, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movl	-8(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L139
.L138:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$494, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movl	-8(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L139:
	movl	-28(%rbp), %eax
	jmp	.L144
.L147:
	nop
	jmp	.L114
.L149:
	nop
	jmp	.L114
.L150:
	nop
	jmp	.L114
.L152:
	nop
	jmp	.L114
.L153:
	nop
.L114:
	movl	$0, -4(%rbp)
	jmp	.L140
.L143:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L141
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
.L141:
	addl	$1, -4(%rbp)
.L140:
	cmpl	$59, -4(%rbp)
	jg	.L142
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L143
.L142:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$504, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	movl	$126, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	parse_http_line1, .-parse_http_line1
	.section	.rodata
.LC22:
	.string	"length=%zu, max=%zu"
	.align 8
.LC23:
	.string	"ASN.1 length=%zu, Content-Length=%zu"
	.text
	.type	check_set_resp_len, @function
check_set_resp_len:
.LFB392:
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
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L155
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$511, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$117, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L156
.L155:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L157
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$120, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L156
.L157:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movl	$1, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	check_set_resp_len, .-check_set_resp_len
	.type	may_still_retry, @function
may_still_retry:
.LFB393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L159
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.L160
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$531, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$2147483647, -16(%rbp)
	jg	.L162
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	jmp	.L163
.L162:
	movl	$2147483647, %edx
.L163:
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L159:
	movl	$1, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	may_still_retry, .-may_still_retry
	.section	.rodata
.LC24:
	.string	"Location"
.LC25:
	.string	"Content-Type"
.LC26:
	.string	"expected=%s, actual=%s"
.LC27:
	.string	"close"
.LC28:
	.string	"Content-Length"
.LC29:
	.string	"input=%s"
.LC30:
	.string	"expected=%s"
	.text
	.globl	OSSL_HTTP_REQ_CTX_nbio
	.type	OSSL_HTTP_REQ_CTX_nbio, @function
OSSL_HTTP_REQ_CTX_nbio:
.LFB394:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -100(%rbp)
	movl	$1, -64(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L165
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$555, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L165:
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L168
.L167:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L168:
	movq	-136(%rbp), %rax
	movq	$0, 184(%rax)
.L169:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L170
	movq	-136(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L171
	movq	-136(%rbp), %rax
	movl	16(%rax), %edx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cltq
	movq	%rax, -40(%rbp)
	jmp	.L172
.L171:
	call	ERR_set_mark@PLT
	movq	-136(%rbp), %rax
	movl	16(%rax), %edx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	cltq
	movq	%rax, -40(%rbp)
	cmpq	$-2, -40(%rbp)
	jne	.L173
	call	ERR_pop_to_mark@PLT
	movq	-136(%rbp), %rax
	movl	16(%rax), %edx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_get_line@PLT
	cltq
	movq	%rax, -40(%rbp)
	jmp	.L172
.L173:
	call	ERR_clear_last_mark@PLT
.L172:
	cmpq	$0, -40(%rbp)
	jg	.L174
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L175
	movl	$-1, %eax
	jmp	.L246
.L175:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L174:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cltq
	cmpq	%rax, -40(%rbp)
	je	.L170
	movl	$0, %eax
	jmp	.L246
.L170:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4102, %eax
	je	.L176
	cmpl	$4102, %eax
	jg	.L177
	cmpl	$4101, %eax
	jg	.L177
	cmpl	$4099, %eax
	jge	.L178
	cmpl	$4098, %eax
	je	.L179
	cmpl	$4098, %eax
	jg	.L177
	cmpl	$4097, %eax
	je	.L180
	cmpl	$4097, %eax
	jg	.L177
	cmpl	$4096, %eax
	je	.L181
	cmpl	$4096, %eax
	jg	.L177
	cmpl	$5, %eax
	je	.L182
	cmpl	$5, %eax
	jg	.L177
	cmpl	$2, %eax
	jg	.L183
	testl	%eax, %eax
	jg	.L208
	jmp	.L177
.L183:
	cmpl	$4, %eax
	je	.L208
	jmp	.L177
.L180:
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	je	.L185
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L185:
	movq	-136(%rbp), %rax
	movl	$4098, (%rax)
.L179:
	movq	-136(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-136(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-136(%rbp), %rax
	movl	$4099, (%rax)
.L178:
	movq	-136(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jle	.L186
	movq	-136(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	movq	-136(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	jne	.L187
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L188
	movl	$-1, %eax
	jmp	.L246
.L188:
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L187:
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4099, %eax
	jne	.L190
	movq	-136(%rbp), %rax
	movl	$4100, (%rax)
.L190:
	movq	-136(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-136(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	subq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 136(%rax)
	jmp	.L169
.L186:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4100, %eax
	jne	.L191
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-136(%rbp), %rax
	movl	$4101, (%rax)
.L191:
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L192
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L192
	movq	-136(%rbp), %rax
	movl	16(%rax), %edx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cltq
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jg	.L193
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L194
	movl	$-1, %eax
	jmp	.L246
.L194:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L193:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-136(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L169
.L192:
	movq	-136(%rbp), %rax
	movl	$4102, (%rax)
.L176:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.L195
	movq	-136(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L169
.L195:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L196
	movl	$-1, %eax
	jmp	.L246
.L196:
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L181:
	movl	$0, %eax
	jmp	.L246
.L184:
.L208:
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.L197
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	jne	.L198
.L197:
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	jl	.L169
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L198:
	movq	-136(%rbp), %rax
	movl	16(%rax), %edx
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	cltq
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jg	.L200
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L201
	jmp	.L169
.L201:
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L200:
	addq	$1, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L202
	movq	-136(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L202
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$700, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L202:
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	jne	.L203
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$708, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-136(%rbp), %rax
	movl	$4096, (%rax)
	movl	$0, %eax
	jmp	.L246
.L203:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L204
	leaq	-100(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_http_line1
	cmpl	$200, %eax
	je	.L205
	cmpl	$200, %eax
	jl	.L206
	subl	$301, %eax
	cmpl	$1, %eax
	ja	.L206
	jmp	.L247
.L205:
	movq	-136(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L208
.L247:
	movq	-136(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	jne	.L209
	movq	-136(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L208
.L209:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$732, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L206:
	movq	-136(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L208
.L204:
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L210
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movb	$0, (%rax)
	jmp	.L211
.L212:
	addq	$1, -56(%rbp)
.L211:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L212
	movq	-56(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jne	.L213
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -120(%rbp)
.L213:
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L210
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
.L210:
	cmpq	$0, -56(%rbp)
	je	.L214
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L214
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L215
	leaq	.LC24(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L215
	movq	-136(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movl	$0, %eax
	jmp	.L246
.L215:
	leaq	.LC25(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L216
	leaq	.LC13(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L216
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L216
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L217
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L218
	movq	-56(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L218
	movq	-96(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jne	.L218
	movq	-96(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	je	.L217
.L218:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rcx
	leaq	.LC26(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L217:
	movl	$1, -28(%rbp)
.L216:
	leaq	.LC12(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L219
	leaq	.LC11(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L220
	movl	$1, -100(%rbp)
	jmp	.L214
.L220:
	leaq	.LC27(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L214
	movl	$0, -100(%rbp)
	jmp	.L214
.L219:
	leaq	.LC28(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L214
	leaq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	je	.L221
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L222
.L221:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$790, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	movl	$119, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L222:
	movq	-48(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_set_resp_len
	testl	%eax, %eax
	jne	.L214
	movl	$0, %eax
	jmp	.L246
.L214:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.L223
.L226:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L224
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L248
.L224:
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.L223:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L226
	jmp	.L225
.L248:
	nop
.L225:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L227
	jmp	.L208
.L227:
	movq	$0, -24(%rbp)
	movq	-136(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L228
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L228
	movq	-136(%rbp), %rax
	movl	160(%rax), %eax
	cmpl	$2, %eax
	jne	.L229
	movq	-136(%rbp), %rax
	movl	$0, 160(%rax)
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$816, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L229:
	movq	-136(%rbp), %rax
	movl	$0, 160(%rax)
.L228:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L230
	movl	$0, %eax
	jmp	.L246
.L230:
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L231
	cmpl	$0, -28(%rbp)
	jne	.L231
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$840, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	movl	$121, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L231:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L232
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$846, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L232:
	movq	-136(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L233
	movq	-136(%rbp), %rax
	movl	$4104, (%rax)
	movl	$1, %eax
	jmp	.L246
.L233:
	movq	-136(%rbp), %rax
	movl	$5, (%rax)
.L182:
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -40(%rbp)
	cmpq	$1, -40(%rbp)
	jg	.L234
	jmp	.L169
.L234:
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movzbl	(%rax), %eax
	cmpb	$48, %al
	je	.L235
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$870, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L235:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L236
	cmpq	$5, -40(%rbp)
	jg	.L237
	jmp	.L169
.L237:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L238
	cmpq	$4, -40(%rbp)
	jle	.L239
.L238:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$885, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L239:
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L240
.L241:
	salq	$8, -48(%rbp)
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -48(%rbp)
	addl	$1, -60(%rbp)
.L240:
	movl	-60(%rbp), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	jg	.L241
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	jmp	.L242
.L236:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$2, %eax
	cltq
	movq	%rax, -48(%rbp)
.L242:
	movq	-48(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_set_resp_len
	testl	%eax, %eax
	jne	.L243
	movl	$0, %eax
	jmp	.L246
.L243:
	movq	-136(%rbp), %rax
	movl	$6, (%rax)
.L177:
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	js	.L169
	movq	-136(%rbp), %rax
	movq	144(%rax), %rax
	movq	-40(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L245
	jmp	.L169
.L245:
	movq	-136(%rbp), %rax
	movl	$4103, (%rax)
	movl	$1, %eax
.L246:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	OSSL_HTTP_REQ_CTX_nbio, .-OSSL_HTTP_REQ_CTX_nbio
	.globl	OSSL_HTTP_REQ_CTX_nbio_d2i
	.type	OSSL_HTTP_REQ_CTX_nbio_d2i, @function
OSSL_HTTP_REQ_CTX_nbio_d2i:
.LFB395:
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
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_nbio@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L250
	movl	-4(%rbp), %eax
	jmp	.L252
.L250:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	OSSL_HTTP_REQ_CTX_nbio_d2i, .-OSSL_HTTP_REQ_CTX_nbio_d2i
	.section	.rodata
.LC31:
	.string	"443"
.LC32:
	.string	"80"
	.text
	.type	explict_or_default_port, @function
explict_or_default_port:
.LFB396:
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
	cmpq	$0, -32(%rbp)
	jne	.L254
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_parse_hostserv@PLT
	testl	%eax, %eax
	jne	.L255
	movl	$0, %eax
	jmp	.L256
.L255:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L257
	cmpl	$0, -36(%rbp)
	je	.L258
	leaq	.LC31(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L257
.L258:
	leaq	.LC32(%rip), %rax
	movq	%rax, -32(%rbp)
.L257:
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$940, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L254:
	movq	-32(%rbp), %rax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	explict_or_default_port, .-explict_or_default_port
	.type	http_new_bio, @function
http_new_bio:
.LFB397:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L260
	movl	$0, %eax
	jmp	.L261
.L260:
	cmpq	$0, -64(%rbp)
	je	.L262
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L262:
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	explict_or_default_port
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new_connect@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L265
	cmpq	$0, -16(%rbp)
	je	.L266
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L264
.L265:
	nop
	jmp	.L264
.L266:
	nop
.L264:
	movq	-24(%rbp), %rax
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	http_new_bio, .-http_new_bio
	.globl	OSSL_HTTP_REQ_CTX_exchange
	.type	OSSL_HTTP_REQ_CTX_exchange, @function
OSSL_HTTP_REQ_CTX_exchange:
.LFB398:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$983, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L269
.L268:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_nbio@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L279
	movq	-24(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_wait@PLT
	testl	%eax, %eax
	jg	.L268
	movl	$0, %eax
	jmp	.L269
.L279:
	nop
	cmpl	$0, -4(%rbp)
	jne	.L273
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	jne	.L274
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jle	.L275
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L274
.L275:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1002, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L274:
	movl	$0, %eax
	jmp	.L269
.L273:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4104, %eax
	jne	.L276
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L269
.L276:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	OSSL_HTTP_REQ_CTX_exchange, .-OSSL_HTTP_REQ_CTX_exchange
	.globl	OSSL_HTTP_is_alive
	.type	OSSL_HTTP_is_alive, @function
OSSL_HTTP_is_alive:
.LFB399:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L281
	movq	-8(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L281
	movl	$1, %eax
	jmp	.L283
.L281:
	movl	$0, %eax
.L283:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	OSSL_HTTP_is_alive, .-OSSL_HTTP_is_alive
	.globl	OSSL_HTTP_open
	.type	OSSL_HTTP_open, @function
OSSL_HTTP_open:
.LFB400:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L285
	cmpq	$0, 24(%rbp)
	jne	.L285
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1027, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L286
.L285:
	cmpq	$0, 16(%rbp)
	je	.L287
	cmpq	$0, -96(%rbp)
	je	.L288
	cmpq	$0, 24(%rbp)
	je	.L287
.L288:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1031, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L286
.L287:
	cmpq	$0, -96(%rbp)
	je	.L289
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L290
	cmpq	$0, -80(%rbp)
	je	.L291
.L290:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1038, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L286
.L289:
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L292
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1046, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L286
.L292:
	cmpq	$0, -64(%rbp)
	je	.L294
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L294
	movq	$0, -64(%rbp)
.L294:
	movl	-84(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_adapt_proxy@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L295
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_parse_url@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L295
	movl	$0, %eax
	jmp	.L286
.L295:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	http_new_bio
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1058, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1059, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L291
	movl	$0, %eax
	jmp	.L286
.L291:
	call	ERR_set_mark@PLT
	cmpq	$0, 16(%rbp)
	jne	.L297
	movl	48(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_do_connect_retry@PLT
	testl	%eax, %eax
	jg	.L297
	cmpq	$0, -96(%rbp)
	jne	.L306
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	jmp	.L306
.L297:
	cmpq	$0, 24(%rbp)
	je	.L300
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -84(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rbp), %r8
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L300
	cmpq	$0, -96(%rbp)
	jne	.L307
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	jmp	.L307
.L300:
	cmpq	$0, 16(%rbp)
	je	.L302
	movq	16(%rbp), %rax
	jmp	.L303
.L302:
	movq	-8(%rbp), %rax
.L303:
	cmpq	$0, -96(%rbp)
	sete	%dl
	movzbl	%dl, %edi
	movl	-84(%rbp), %r9d
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	$8, %rsp
	movl	48(%rbp), %ecx
	pushq	%rcx
	movl	40(%rbp), %ecx
	pushq	%rcx
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	-72(%rbp)
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	http_req_ctx_new
	addq	$48, %rsp
	movq	%rax, -16(%rbp)
	jmp	.L299
.L306:
	nop
	jmp	.L299
.L307:
	nop
.L299:
	cmpq	$0, -16(%rbp)
	je	.L304
	call	ERR_pop_to_mark@PLT
	jmp	.L305
.L304:
	call	ERR_clear_last_mark@PLT
.L305:
	movq	-16(%rbp), %rax
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE400:
	.size	OSSL_HTTP_open, .-OSSL_HTTP_open
	.globl	OSSL_HTTP_set1_request
	.type	OSSL_HTTP_set1_request, @function
OSSL_HTTP_set1_request:
.LFB401:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L309
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L310
.L309:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L311
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L311
	movl	$1, %eax
	jmp	.L312
.L311:
	movl	$0, %eax
.L312:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L313
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L313
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L310
.L313:
	movq	-24(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	cmpl	$0, -4(%rbp)
	je	.L314
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	jmp	.L315
.L314:
	movl	$0, %eax
.L315:
	cmpq	$0, -56(%rbp)
	setne	%cl
	movzbl	%cl, %esi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	OSSL_HTTP_REQ_CTX_set_request_line@PLT
	testl	%eax, %eax
	je	.L316
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add1_headers
	testl	%eax, %eax
	je	.L316
	movl	40(%rbp), %edi
	movl	32(%rbp), %ecx
	movl	16(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_set_expected@PLT
	testl	%eax, %eax
	je	.L316
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set1_content
	testl	%eax, %eax
	je	.L316
	movl	$1, %eax
	jmp	.L310
.L316:
	movl	$0, %eax
.L310:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	OSSL_HTTP_set1_request, .-OSSL_HTTP_set1_request
	.section	.rodata
.LC33:
	.string	""
.LC34:
	.string	":"
.LC35:
	.string	"s"
.LC36:
	.string	"server=http%s://%s%s%s"
.LC37:
	.string	" proxy="
.LC38:
	.string	" violating the protocol"
	.align 8
.LC39:
	.string	", likely because it requires the use of TLS"
.LC40:
	.string	" peer has disconnected%s"
	.text
	.globl	OSSL_HTTP_exchange
	.type	OSSL_HTTP_exchange, @function
OSSL_HTTP_exchange:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L319
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L320
.L319:
	cmpq	$0, -240(%rbp)
	je	.L321
	movq	-240(%rbp), %rax
	movq	$0, (%rax)
.L321:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_exchange@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L322
	movq	-232(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L323
	cmpq	$0, -240(%rbp)
	jne	.L324
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L322
.L324:
	movq	-232(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-240(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L322
.L323:
	call	ERR_peek_error@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, -24(%rbp)
	cmpl	$20, -20(%rbp)
	je	.L325
	cmpl	$61, -20(%rbp)
	je	.L325
	cmpl	$32, -20(%rbp)
	jne	.L326
	cmpl	$147, -24(%rbp)
	je	.L325
.L326:
	cmpl	$32, -20(%rbp)
	jne	.L327
	cmpl	$103, -24(%rbp)
	je	.L325
.L327:
	cmpl	$58, -20(%rbp)
	jne	.L322
	cmpl	$147, -24(%rbp)
	jne	.L322
.L325:
	movq	-232(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L329
	movq	-232(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L330
	movq	-232(%rbp), %rax
	movq	80(%rax), %rdx
	jmp	.L331
.L330:
	leaq	.LC33(%rip), %rdx
.L331:
	movq	-232(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L332
	leaq	.LC34(%rip), %rcx
	jmp	.L333
.L332:
	leaq	.LC33(%rip), %rcx
.L333:
	movq	-232(%rbp), %rax
	movq	72(%rax), %r8
	movq	-232(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L334
	leaq	.LC35(%rip), %rax
	jmp	.L335
.L334:
	leaq	.LC33(%rip), %rax
.L335:
	leaq	.LC36(%rip), %rsi
	leaq	-224(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$200, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L329:
	movq	-232(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L336
	movq	-232(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC37(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L336:
	cmpq	$0, -16(%rbp)
	jne	.L322
	movq	-232(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L337
	leaq	.LC38(%rip), %rax
	jmp	.L338
.L337:
	leaq	.LC39(%rip), %rax
.L338:
	leaq	.LC40(%rip), %rdx
	leaq	-224(%rbp), %rdi
	movq	%rax, %rcx
	movl	$200, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L322:
	cmpq	$0, -8(%rbp)
	je	.L339
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L339
	movq	$0, -8(%rbp)
.L339:
	movq	-8(%rbp), %rax
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	OSSL_HTTP_exchange, .-OSSL_HTTP_exchange
	.section	.rodata
.LC41:
	.string	"https:"
	.text
	.type	redirection_ok, @function
redirection_ok:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$49, -4(%rbp)
	jle	.L341
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L342
.L341:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L343
	movl	$1, %eax
	jmp	.L342
.L343:
	leaq	.LC41(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L344
	leaq	.LC41(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L344
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L342
.L344:
	movl	$1, %eax
.L342:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	redirection_ok, .-redirection_ok
	.globl	OSSL_HTTP_get
	.type	OSSL_HTTP_get, @function
OSSL_HTTP_get:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	64(%rbp), %eax
	testl	%eax, %eax
	jle	.L346
	movl	$0, %edi
	call	time@PLT
	movl	64(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L347
.L346:
	movq	$0, -32(%rbp)
.L347:
	cmpq	$0, -88(%rbp)
	jne	.L348
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L361
.L348:
	leaq	.LC0(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$1231, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L350
	movl	$0, %eax
	jmp	.L361
.L350:
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	leaq	-68(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_HTTP_parse_url@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L362
	movl	64(%rbp), %edi
	movl	-68(%rbp), %r8d
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %r9
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movl	24(%rbp), %edi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-128(%rbp)
	pushq	-120(%rbp)
	movq	%rax, %rdi
	call	OSSL_HTTP_open@PLT
	addq	$48, %rsp
	movq	%rax, -40(%rbp)
.L353:
	movq	$0, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L354
	movq	-64(%rbp), %rsi
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	$-1
	pushq	56(%rbp)
	movl	48(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HTTP_set1_request@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L355
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_free@PLT
	movq	$0, -40(%rbp)
	jmp	.L354
.L355:
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_exchange@PLT
	movq	%rax, -24(%rbp)
.L354:
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L356
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L356
	movq	-80(%rbp), %rdx
	addl	$1, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	redirection_ok
	testl	%eax, %eax
	je	.L357
	leaq	64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	may_still_retry
	testl	%eax, %eax
	je	.L357
	movq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1265, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L358
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1268, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L353
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1270, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1271, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_close@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L361
.L358:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1280, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_close@PLT
	jmp	.L350
.L357:
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1285, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L356:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1287, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1288, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_close@PLT
	testl	%eax, %eax
	jne	.L363
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L363
.L362:
	nop
	jmp	.L352
.L363:
	nop
.L352:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1295, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
.L361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	OSSL_HTTP_get, .-OSSL_HTTP_get
	.globl	OSSL_HTTP_transfer
	.type	OSSL_HTTP_transfer, @function
OSSL_HTTP_transfer:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L365
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L366
.L365:
	movq	$0, -8(%rbp)
.L366:
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L367
	movq	24(%rbp), %r9
	movl	-52(%rbp), %r8d
	movq	16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	movl	112(%rbp), %edi
	pushq	%rdi
	movl	56(%rbp), %edi
	pushq	%rdi
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	movq	%rax, %rdi
	call	OSSL_HTTP_open@PLT
	addq	$48, %rsp
	movq	%rax, -8(%rbp)
	movl	$-1, 112(%rbp)
.L367:
	cmpq	$0, -8(%rbp)
	je	.L368
	movq	88(%rbp), %r9
	movq	80(%rbp), %r8
	movq	72(%rbp), %rcx
	movq	64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	120(%rbp), %edi
	pushq	%rdi
	movl	112(%rbp), %edi
	pushq	%rdi
	pushq	104(%rbp)
	movl	96(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HTTP_set1_request@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L369
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_exchange@PLT
	movq	%rax, -16(%rbp)
.L369:
	cmpq	$0, -16(%rbp)
	je	.L370
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_is_alive@PLT
	testl	%eax, %eax
	jne	.L368
.L370:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_close@PLT
	testl	%eax, %eax
	jne	.L371
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -16(%rbp)
.L371:
	movq	$0, -8(%rbp)
.L368:
	cmpq	$0, -24(%rbp)
	je	.L372
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L372:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	OSSL_HTTP_transfer, .-OSSL_HTTP_transfer
	.globl	OSSL_HTTP_close
	.type	OSSL_HTTP_close, @function
OSSL_HTTP_close:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L375
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L375
	movq	-24(%rbp), %rax
	movq	40(%rax), %r8
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L375
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L375:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	OSSL_HTTP_close, .-OSSL_HTTP_close
	.type	base64encode, @function
base64encode:
.LFB407:
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
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	%rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	je	.L378
	addq	$1, -8(%rbp)
.L378:
	salq	$2, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1367, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L379
	movl	$0, %eax
	jmp	.L380
.L379:
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncodeBlock@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L381
	movl	-20(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L381
	movl	$1, %eax
	jmp	.L382
.L381:
	movl	$0, %eax
.L382:
	cltq
	testq	%rax, %rax
	jne	.L383
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1373, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L380
.L383:
	movq	-16(%rbp), %rax
.L380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	base64encode, .-base64encode
	.section	.rodata
.LC42:
	.string	"%s: out of memory"
.LC43:
	.string	"CONNECT %s:%s HTTP/1.0\r\n"
	.align 8
.LC44:
	.string	"Proxy-Connection: Keep-Alive\r\n"
.LC45:
	.string	"%s:%s"
	.align 8
.LC46:
	.string	"Proxy-Authorization: Basic %s\r\n"
.LC47:
	.string	"timed out"
.LC48:
	.string	"failed waiting for data"
.LC49:
	.string	"%s: HTTP CONNECT %s\n"
.LC50:
	.string	"HTTP/"
	.align 8
.LC51:
	.string	"%s: HTTP CONNECT failed, non-HTTP response\n"
.LC52:
	.string	"1."
	.align 8
.LC53:
	.string	"%s: HTTP CONNECT failed, bad HTTP version %.*s\n"
.LC54:
	.string	" 2"
.LC55:
	.string	"reason=%s"
	.align 8
.LC56:
	.string	"%s: HTTP CONNECT failed, reason=%s\n"
	.text
	.globl	OSSL_HTTP_proxy_connect
	.type	OSSL_HTTP_proxy_connect, @function
OSSL_HTTP_proxy_connect:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -124(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$1390, %edx
	movq	%rax, %rsi
	movl	$8192, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	call	BIO_f_buffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	cmpl	$0, -124(%rbp)
	jle	.L385
	movl	$0, %edi
	call	time@PLT
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L386
.L385:
	movq	$0, -24(%rbp)
.L386:
	cmpq	$0, -88(%rbp)
	je	.L387
	cmpq	$0, -96(%rbp)
	je	.L387
	cmpq	$0, 16(%rbp)
	je	.L388
	cmpq	$0, 24(%rbp)
	jne	.L388
.L387:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L389
.L388:
	cmpq	$0, -104(%rbp)
	je	.L390
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L391
.L390:
	leaq	.LC31(%rip), %rax
	movq	%rax, -104(%rbp)
.L391:
	cmpq	$0, -48(%rbp)
	je	.L392
	cmpq	$0, -56(%rbp)
	jne	.L393
.L392:
	movq	24(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L389
.L393:
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC43(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC44(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -112(%rbp)
	je	.L394
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L395
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -32(%rbp)
.L395:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1427, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L424
	cmpq	$0, -120(%rbp)
	je	.L397
	movq	-120(%rbp), %rax
	jmp	.L398
.L397:
	leaq	.LC33(%rip), %rax
.L398:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	-112(%rbp), %rdx
	leaq	.LC45(%rip), %r9
	movq	-64(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%r9, %rdx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-32(%rbp), %rdx
	cmpl	%edx, %eax
	jne	.L425
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	base64encode
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L426
	movq	-40(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$1436, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L400
.L425:
	nop
	jmp	.L400
.L426:
	nop
.L400:
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$1439, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpq	$0, -40(%rbp)
	je	.L427
.L394:
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L404:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L428
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L429
	jmp	.L404
.L428:
	nop
	jmp	.L420
.L429:
	nop
.L420:
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_wait@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L405
	cmpl	$0, -68(%rbp)
	jne	.L406
	leaq	.LC47(%rip), %rax
	jmp	.L407
.L406:
	leaq	.LC48(%rip), %rax
.L407:
	movq	24(%rbp), %rdx
	leaq	.LC49(%rip), %rsi
	movq	16(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L389
.L405:
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -12(%rbp)
	cmpl	$12, -12(%rbp)
	jle	.L430
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC50(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L410
	addq	$5, -8(%rbp)
	movl	$0, %eax
	jmp	.L411
.L410:
	movl	$1, %eax
.L411:
	testb	%al, %al
	je	.L412
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	24(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L389
.L412:
	leaq	.LC52(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L413
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	.LC53(%rip), %rsi
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movl	$3, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L389
.L413:
	addq	$3, -8(%rbp)
	leaq	.LC54(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L414
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L416
	addq	$1, -8(%rbp)
	jmp	.L416
.L418:
	subl	$1, -12(%rbp)
.L416:
	cmpl	$0, -12(%rbp)
	jle	.L417
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L418
.L417:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1500, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rcx
	movl	$100, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	.LC56(%rip), %rsi
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L389
.L414:
	movl	$1, -16(%rbp)
	jmp	.L419
.L430:
	nop
	jmp	.L420
.L419:
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jg	.L419
	jmp	.L389
.L424:
	nop
	jmp	.L389
.L427:
	nop
.L389:
	cmpq	$0, -56(%rbp)
	je	.L421
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L421:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1525, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	OSSL_HTTP_proxy_connect, .-OSSL_HTTP_proxy_connect
	.section	.rodata
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 22
__func__.19:
	.string	"OSSL_HTTP_REQ_CTX_new"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 31
__func__.18:
	.string	"OSSL_HTTP_REQ_CTX_get0_mem_bio"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 31
__func__.17:
	.string	"OSSL_HTTP_REQ_CTX_get_resp_len"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 42
__func__.16:
	.string	"OSSL_HTTP_REQ_CTX_set_max_response_length"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 35
__func__.15:
	.string	"OSSL_HTTP_REQ_CTX_set_request_line"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 30
__func__.14:
	.string	"OSSL_HTTP_REQ_CTX_add1_header"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 31
__func__.13:
	.string	"OSSL_HTTP_REQ_CTX_set_expected"
	.align 8
	.type	__func__.12, @object
	.size	__func__.12, 13
__func__.12:
	.string	"set1_content"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 45
__func__.11:
	.string	"OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 17
__func__.10:
	.string	"parse_http_line1"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 19
__func__.9:
	.string	"check_set_resp_len"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"may_still_retry"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 23
__func__.7:
	.string	"OSSL_HTTP_REQ_CTX_nbio"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 27
__func__.6:
	.string	"OSSL_HTTP_REQ_CTX_exchange"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"OSSL_HTTP_open"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"OSSL_HTTP_set1_request"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"OSSL_HTTP_exchange"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"redirection_ok"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"OSSL_HTTP_get"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"OSSL_HTTP_proxy_connect"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

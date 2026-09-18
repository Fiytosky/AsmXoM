	.file	"bio_ssl.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"ssl"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	methods_sslp, @object
	.size	methods_sslp, 112
methods_sslp:
	.long	519
	.zero	4
	.quad	.LC0
	.quad	ssl_write
	.quad	0
	.quad	ssl_read
	.quad	0
	.quad	ssl_puts
	.quad	0
	.quad	ssl_ctrl
	.quad	ssl_new
	.quad	ssl_free
	.quad	ssl_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_ssl
	.type	BIO_f_ssl, @function
BIO_f_ssl:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_sslp(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	BIO_f_ssl, .-BIO_f_ssl
	.section	.rodata
.LC1:
	.string	"../ssl/bio_ssl.c"
	.text
	.type	ssl_new, @function
ssl_new:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$62, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl_new, .-ssl_new
	.type	ssl_free, @function
ssl_free:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_shutdown@PLT
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
.L23:
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
.L21:
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$89, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ssl_free, .-ssl_free
	.type	ssl_read, @function
ssl_read:
.LFB732:
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
	movq	%rcx, -80(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_read_internal@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$8, %eax
	je	.L27
	cmpl	$8, %eax
	jg	.L37
	cmpl	$7, %eax
	je	.L29
	cmpl	$7, %eax
	jg	.L37
	cmpl	$4, %eax
	je	.L30
	cmpl	$4, %eax
	jg	.L37
	cmpl	$3, %eax
	je	.L31
	cmpl	$3, %eax
	jg	.L37
	testl	%eax, %eax
	je	.L32
	cmpl	$2, %eax
	je	.L33
	jmp	.L37
.L32:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L34
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	movl	$1, -8(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L38
	cmpl	$0, -8(%rbp)
	jne	.L38
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jnb	.L38
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	jmp	.L38
.L33:
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L36
.L31:
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L36
.L30:
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$1, -4(%rbp)
	jmp	.L36
.L27:
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$3, -4(%rbp)
	jmp	.L36
.L29:
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$2, -4(%rbp)
	jmp	.L36
.L37:
	nop
	jmp	.L36
.L38:
	nop
.L36:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_retry_reason@PLT
	movl	-12(%rbp), %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ssl_read, .-ssl_read
	.type	ssl_write, @function
ssl_write:
.LFB733:
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
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_write_internal@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$7, %eax
	je	.L42
	cmpl	$7, %eax
	jg	.L51
	cmpl	$4, %eax
	je	.L44
	cmpl	$4, %eax
	jg	.L51
	cmpl	$3, %eax
	je	.L45
	cmpl	$3, %eax
	jg	.L51
	testl	%eax, %eax
	je	.L46
	cmpl	$2, %eax
	je	.L47
	jmp	.L51
.L46:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L48
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	movl	$1, -4(%rbp)
.L48:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L52
	cmpl	$0, -4(%rbp)
	jne	.L52
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jnb	.L52
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	jmp	.L52
.L45:
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L50
.L47:
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L50
.L44:
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$1, -8(%rbp)
	jmp	.L50
.L42:
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$2, -8(%rbp)
.L51:
	nop
	jmp	.L50
.L52:
	nop
.L50:
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_retry_reason@PLT
	movl	-28(%rbp), %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ssl_write, .-ssl_write
	.type	ssl_ctrl, @function
ssl_ctrl:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$1, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L54
	cmpl	$109, -92(%rbp)
	je	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	cmpl	$127, -92(%rbp)
	je	.L56
	cmpl	$127, -92(%rbp)
	jg	.L57
	cmpl	$126, -92(%rbp)
	je	.L58
	cmpl	$126, -92(%rbp)
	jg	.L57
	cmpl	$125, -92(%rbp)
	je	.L59
	cmpl	$125, -92(%rbp)
	jg	.L57
	cmpl	$119, -92(%rbp)
	je	.L60
	cmpl	$119, -92(%rbp)
	jg	.L57
	cmpl	$110, -92(%rbp)
	je	.L61
	cmpl	$110, -92(%rbp)
	jg	.L57
	cmpl	$109, -92(%rbp)
	je	.L62
	cmpl	$109, -92(%rbp)
	jg	.L57
	cmpl	$105, -92(%rbp)
	je	.L63
	cmpl	$105, -92(%rbp)
	jg	.L57
	cmpl	$101, -92(%rbp)
	je	.L64
	cmpl	$101, -92(%rbp)
	jg	.L57
	cmpl	$92, -92(%rbp)
	je	.L65
	cmpl	$92, -92(%rbp)
	jg	.L57
	cmpl	$91, -92(%rbp)
	je	.L66
	cmpl	$91, -92(%rbp)
	jg	.L57
	cmpl	$14, -92(%rbp)
	je	.L67
	cmpl	$14, -92(%rbp)
	jg	.L57
	cmpl	$13, -92(%rbp)
	je	.L68
	cmpl	$13, -92(%rbp)
	jg	.L57
	cmpl	$12, -92(%rbp)
	je	.L69
	cmpl	$12, -92(%rbp)
	jg	.L57
	cmpl	$11, -92(%rbp)
	je	.L70
	cmpl	$11, -92(%rbp)
	jg	.L57
	cmpl	$10, -92(%rbp)
	je	.L71
	cmpl	$10, -92(%rbp)
	jg	.L57
	cmpl	$9, -92(%rbp)
	je	.L72
	cmpl	$9, -92(%rbp)
	jg	.L57
	cmpl	$8, -92(%rbp)
	je	.L73
	cmpl	$8, -92(%rbp)
	jg	.L57
	cmpl	$7, -92(%rbp)
	je	.L74
	cmpl	$7, -92(%rbp)
	jg	.L57
	cmpl	$6, -92(%rbp)
	je	.L75
	cmpl	$6, -92(%rbp)
	jg	.L57
	cmpl	$1, -92(%rbp)
	je	.L76
	cmpl	$3, -92(%rbp)
	je	.L77
	jmp	.L57
.L76:
	cmpq	$0, -40(%rbp)
	je	.L78
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L79
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L80
.L79:
	movq	$0, -24(%rbp)
	jmp	.L80
.L78:
	movq	$0, -24(%rbp)
.L80:
	cmpq	$0, -24(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L55
.L81:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L82
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L83
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
.L83:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_clear@PLT
	testl	%eax, %eax
	jne	.L84
	movq	$0, -16(%rbp)
	jmp	.L85
.L84:
	cmpq	$0, -32(%rbp)
	je	.L86
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	jmp	.L85
.L86:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	jmp	.L85
.L88:
	movq	$1, -16(%rbp)
	jmp	.L85
.L77:
	movq	$0, -16(%rbp)
	jmp	.L85
.L60:
	cmpq	$0, -104(%rbp)
	je	.L89
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	jmp	.L85
.L89:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	jmp	.L85
.L56:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$59, -104(%rbp)
	jg	.L91
	movq	$5, -104(%rbp)
.L91:
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L85
.L59:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$511, -104(%rbp)
	jle	.L110
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L110
.L58:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -16(%rbp)
	jmp	.L85
.L62:
	cmpq	$0, -40(%rbp)
	je	.L93
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_free
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_new
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L55
.L94:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
.L93:
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_shutdown@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L95
	cmpq	$0, -32(%rbp)
	je	.L96
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
.L96:
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_next@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
.L95:
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L85
.L61:
	cmpq	$0, -112(%rbp)
	je	.L97
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L85
.L97:
	movq	$0, -16(%rbp)
	jmp	.L85
.L73:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_shutdown@PLT
	cltq
	movq	%rax, -16(%rbp)
	jmp	.L85
.L72:
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_shutdown@PLT
	jmp	.L85
.L68:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	jmp	.L85
.L71:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_pending@PLT
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L111
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -16(%rbp)
	jmp	.L111
.L70:
	movq	-88(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L85
.L75:
	cmpq	$0, -32(%rbp)
	je	.L112
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	cmpq	%rax, -32(%rbp)
	je	.L112
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	jmp	.L112
.L74:
	movq	-88(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.L113
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	jmp	.L113
.L64:
	movq	-88(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_retry_reason@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$7, %eax
	je	.L102
	cmpl	$7, %eax
	jg	.L114
	cmpl	$4, %eax
	je	.L104
	cmpl	$4, %eax
	jg	.L114
	cmpl	$2, %eax
	je	.L105
	cmpl	$3, %eax
	je	.L106
	jmp	.L114
.L105:
	movq	-88(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L107
.L106:
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L107
.L102:
	movq	-88(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_retry_reason@PLT
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_retry_reason@PLT
	jmp	.L107
.L104:
	movq	-88(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_retry_reason@PLT
	jmp	.L107
.L114:
	nop
.L107:
	jmp	.L85
.L69:
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_dup@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	jmp	.L85
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	jmp	.L85
.L67:
	movq	$0, -16(%rbp)
	jmp	.L85
.L66:
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_rpoll_descriptor@PLT
	testl	%eax, %eax
	jne	.L115
	movq	$0, -16(%rbp)
	jmp	.L115
.L65:
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_wpoll_descriptor@PLT
	testl	%eax, %eax
	jne	.L116
	movq	$0, -16(%rbp)
	jmp	.L116
.L57:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	jmp	.L85
.L110:
	nop
	jmp	.L85
.L111:
	nop
	jmp	.L85
.L112:
	nop
	jmp	.L85
.L113:
	nop
	jmp	.L85
.L115:
	nop
	jmp	.L85
.L116:
	nop
.L85:
	movq	-16(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ssl_ctrl, .-ssl_ctrl
	.type	ssl_callback_ctrl, @function
ssl_callback_ctrl:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$14, -44(%rbp)
	jne	.L118
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	BIO_callback_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L119
.L118:
	movq	$0, -8(%rbp)
	nop
.L119:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ssl_callback_ctrl, .-ssl_callback_ctrl
	.type	ssl_puts, @function
ssl_puts:
.LFB736:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ssl_puts, .-ssl_puts
	.globl	BIO_new_buffer_ssl_connect
	.type	BIO_new_buffer_ssl_connect, @function
BIO_new_buffer_ssl_connect:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L124
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L125
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	jne	.L124
.L125:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new_ssl_connect@PLT
	jmp	.L126
.L124:
	call	BIO_f_buffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L127
	movl	$0, %eax
	jmp	.L126
.L127:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new_ssl_connect@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L131
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L132
	movq	-24(%rbp), %rax
	jmp	.L126
.L131:
	nop
	jmp	.L129
.L132:
	nop
.L129:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L126:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	BIO_new_buffer_ssl_connect, .-BIO_new_buffer_ssl_connect
	.globl	BIO_new_ssl_connect
	.type	BIO_new_ssl_connect, @function
BIO_new_ssl_connect:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	BIO_s_connect@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L134
	movl	$0, %eax
	jmp	.L135
.L134:
	cmpq	$0, -56(%rbp)
	je	.L136
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L137
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	jne	.L136
.L137:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$157, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	je	.L141
.L136:
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_new_ssl@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L142
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L143
	movq	-32(%rbp), %rax
	jmp	.L135
.L141:
	nop
	jmp	.L138
.L142:
	nop
	jmp	.L138
.L143:
	nop
.L138:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L135:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	BIO_new_ssl_connect, .-BIO_new_ssl_connect
	.globl	BIO_new_ssl
	.type	BIO_new_ssl, @function
BIO_new_ssl:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	BIO_f_ssl@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L145
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L147
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L146
.L147:
	cmpl	$0, -28(%rbp)
	je	.L148
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	jmp	.L149
.L148:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
.L149:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	BIO_new_ssl, .-BIO_new_ssl
	.globl	BIO_ssl_copy_session_id
	.type	BIO_ssl_copy_session_id, @function
BIO_ssl_copy_session_id:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L151
	cmpq	$0, -32(%rbp)
	jne	.L152
.L151:
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L155
.L154:
	movl	$0, %eax
	jmp	.L153
.L155:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_copy_session_id@PLT
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L153
.L156:
	movl	$1, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	BIO_ssl_copy_session_id, .-BIO_ssl_copy_session_id
	.globl	BIO_ssl_shutdown
	.type	BIO_ssl_shutdown, @function
BIO_ssl_shutdown:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L158
.L161:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	$519, %eax
	jne	.L162
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L160
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	jmp	.L160
.L162:
	nop
.L160:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
.L158:
	cmpq	$0, -24(%rbp)
	jne	.L161
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	BIO_ssl_shutdown, .-BIO_ssl_shutdown
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

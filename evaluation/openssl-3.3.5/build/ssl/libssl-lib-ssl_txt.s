	.file	"ssl_txt.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB578:
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
.LFE578:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_to_time_t, @function
ossl_time_to_time_t:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	ossl_time_to_time_t, .-ossl_time_to_time_t
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L12
	movl	$-1, %eax
	jmp	.L11
.L12:
	movl	$0, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
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
	.string	"../ssl/ssl_txt.c"
	.text
	.globl	SSL_SESSION_print_fp
	.type	SSL_SESSION_print_fp, @function
SSL_SESSION_print_fp:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	SSL_SESSION_print_fp, .-SSL_SESSION_print_fp
	.section	.rodata
.LC1:
	.string	"SSL-Session:\n"
.LC2:
	.string	"    Protocol  : %s\n"
.LC3:
	.string	"    Cipher    : %06lX\n"
.LC4:
	.string	"    Cipher    : %04lX\n"
.LC5:
	.string	"unknown"
.LC6:
	.string	"    Cipher    : %s\n"
.LC7:
	.string	"    Session-ID: "
.LC8:
	.string	"%02X"
.LC9:
	.string	"\n    Session-ID-ctx: "
.LC10:
	.string	"\n    Resumption PSK: "
.LC11:
	.string	"\n    Master-Key: "
.LC12:
	.string	"\n    PSK identity: "
.LC13:
	.string	"None"
.LC14:
	.string	"%s"
.LC15:
	.string	"\n    PSK identity hint: "
.LC16:
	.string	"\n    SRP username: "
	.align 8
.LC17:
	.string	"\n    TLS session ticket lifetime hint: %ld (seconds)"
.LC18:
	.string	"\n    TLS session ticket:\n"
.LC19:
	.string	"\n    Compression: %d"
.LC20:
	.string	"\n    Compression: %d (%s)"
.LC21:
	.string	"\n    Start Time: %lld"
.LC22:
	.string	"\n    Timeout   : %lld (sec)"
.LC23:
	.string	"\n"
.LC24:
	.string	"    Verify return code: "
.LC25:
	.string	"%ld (%s)\n"
.LC26:
	.string	"yes"
.LC27:
	.string	"no"
	.align 8
.LC28:
	.string	"    Extended master secret: %s\n"
.LC29:
	.string	"    Max Early Data: %u\n"
	.text
	.globl	SSL_SESSION_print
	.type	SSL_SESSION_print, @function
SSL_SESSION_print:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L83
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L84
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ssl_protocol_to_string@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L85
	movq	-48(%rbp), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	andl	$4278190080, %eax
	cmpq	$33554432, %rax
	jne	.L36
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	andl	$16777215, %eax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L37
	jmp	.L32
.L36:
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	movzwl	%ax, %edx
	leaq	.LC4(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L37
	jmp	.L32
.L35:
	movq	-48(%rbp), %rax
	movq	760(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-48(%rbp), %rax
	movq	760(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L39
.L38:
	leaq	.LC5(%rip), %rax
.L39:
	leaq	.LC6(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L86
.L37:
	leaq	.LC7(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L87
	movq	$0, -8(%rbp)
	jmp	.L41
.L43:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$600, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L88
	addq	$1, -8(%rbp)
.L41:
	movq	-48(%rbp), %rax
	movq	592(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L43
	leaq	.LC9(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L89
	movq	$0, -8(%rbp)
	jmp	.L45
.L47:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$640, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L90
	addq	$1, -8(%rbp)
.L45:
	movq	-48(%rbp), %rax
	movq	632(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L47
	cmpl	$0, -12(%rbp)
	je	.L48
	leaq	.LC10(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L49
	jmp	.L32
.L48:
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L91
.L49:
	movq	$0, -8(%rbp)
	jmp	.L50
.L52:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$80, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L92
	addq	$1, -8(%rbp)
.L50:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L52
	leaq	.LC12(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L93
	movq	-48(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-48(%rbp), %rax
	movq	680(%rax), %rax
	jmp	.L55
.L54:
	leaq	.LC13(%rip), %rax
.L55:
	leaq	.LC14(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L94
	leaq	.LC15(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L95
	movq	-48(%rbp), %rax
	movq	672(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-48(%rbp), %rax
	movq	672(%rax), %rax
	jmp	.L59
.L58:
	leaq	.LC13(%rip), %rax
.L59:
	leaq	.LC14(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L96
	leaq	.LC16(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L97
	movq	-48(%rbp), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-48(%rbp), %rax
	movq	864(%rax), %rax
	jmp	.L63
.L62:
	leaq	.LC13(%rip), %rax
.L63:
	leaq	.LC14(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L98
	movq	-48(%rbp), %rax
	movq	824(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-48(%rbp), %rax
	movq	824(%rax), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L99
.L65:
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	je	.L66
	leaq	.LC18(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L100
	movq	-48(%rbp), %rax
	movq	816(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	808(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	testl	%eax, %eax
	jle	.L101
.L66:
	movq	-48(%rbp), %rax
	movl	752(%rax), %eax
	testl	%eax, %eax
	je	.L68
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	pushq	$0
	leaq	-32(%rbp), %rdx
	pushq	%rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ssl_cipher_get_evp@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L102
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L71
	movq	-48(%rbp), %rax
	movl	752(%rax), %edx
	leaq	.LC19(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L68
	jmp	.L32
.L71:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	leaq	.LC20(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L103
.L68:
	movq	-48(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L73
	movq	-48(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_to_time_t
	movq	%rax, %rdx
	leaq	.LC21(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L104
.L73:
	movq	-48(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L74
	movq	-48(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L105
.L74:
	leaq	.LC23(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L106
	leaq	.LC24(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L107
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	720(%rax), %rdx
	leaq	.LC25(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L108
	movq	-48(%rbp), %rax
	movl	888(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L78
	leaq	.LC26(%rip), %rax
	jmp	.L79
.L78:
	leaq	.LC27(%rip), %rax
.L79:
	leaq	.LC28(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L109
	cmpl	$0, -12(%rbp)
	je	.L81
	movq	-48(%rbp), %rax
	movl	836(%rax), %edx
	leaq	.LC29(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L110
.L81:
	movl	$1, %eax
	jmp	.L82
.L83:
	nop
	jmp	.L32
.L84:
	nop
	jmp	.L32
.L85:
	nop
	jmp	.L32
.L86:
	nop
	jmp	.L32
.L87:
	nop
	jmp	.L32
.L88:
	nop
	jmp	.L32
.L89:
	nop
	jmp	.L32
.L90:
	nop
	jmp	.L32
.L91:
	nop
	jmp	.L32
.L92:
	nop
	jmp	.L32
.L93:
	nop
	jmp	.L32
.L94:
	nop
	jmp	.L32
.L95:
	nop
	jmp	.L32
.L96:
	nop
	jmp	.L32
.L97:
	nop
	jmp	.L32
.L98:
	nop
	jmp	.L32
.L99:
	nop
	jmp	.L32
.L100:
	nop
	jmp	.L32
.L101:
	nop
	jmp	.L32
.L102:
	nop
	jmp	.L32
.L103:
	nop
	jmp	.L32
.L104:
	nop
	jmp	.L32
.L105:
	nop
	jmp	.L32
.L106:
	nop
	jmp	.L32
.L107:
	nop
	jmp	.L32
.L108:
	nop
	jmp	.L32
.L109:
	nop
	jmp	.L32
.L110:
	nop
.L32:
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	SSL_SESSION_print, .-SSL_SESSION_print
	.section	.rodata
.LC30:
	.string	"RSA "
.LC31:
	.string	"Session-ID:"
.LC32:
	.string	" Master-Key:"
	.text
	.globl	SSL_SESSION_print_keylog
	.type	SSL_SESSION_print_keylog, @function
SSL_SESSION_print_keylog:
.LFB731:
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
	je	.L127
	movq	-32(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L128
	leaq	.LC30(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L129
	leaq	.LC31(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L130
	movq	$0, -8(%rbp)
	jmp	.L118
.L120:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$600, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L131
	addq	$1, -8(%rbp)
.L118:
	movq	-32(%rbp), %rax
	movq	592(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L120
	leaq	.LC32(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L132
	movq	$0, -8(%rbp)
	jmp	.L122
.L124:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$80, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L133
	addq	$1, -8(%rbp)
.L122:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L124
	leaq	.LC23(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L134
	movl	$1, %eax
	jmp	.L126
.L127:
	nop
	jmp	.L113
.L128:
	nop
	jmp	.L113
.L129:
	nop
	jmp	.L113
.L130:
	nop
	jmp	.L113
.L131:
	nop
	jmp	.L113
.L132:
	nop
	jmp	.L113
.L133:
	nop
	jmp	.L113
.L134:
	nop
.L113:
	movl	$0, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	SSL_SESSION_print_keylog, .-SSL_SESSION_print_keylog
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"SSL_SESSION_print_fp"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

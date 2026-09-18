	.file	"sess_id.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
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
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
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
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.globl	sess_id_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"context"
.LC4:
	.string	"Set the session ID context"
.LC5:
	.string	"Input options:\n"
.LC6:
	.string	"in"
.LC7:
	.string	"Input file - default stdin"
.LC8:
	.string	"inform"
	.align 8
.LC9:
	.string	"Input format - default PEM (DER or PEM)"
.LC10:
	.string	"Output options:\n"
.LC11:
	.string	"out"
.LC12:
	.string	"Output file - default stdout"
.LC13:
	.string	"outform"
	.align 8
.LC14:
	.string	"Output format - default PEM (PEM, DER or NSS)"
.LC15:
	.string	"text"
.LC16:
	.string	"Print ssl session id details"
.LC17:
	.string	"cert"
.LC18:
	.string	"Output certificate "
.LC19:
	.string	"noout"
	.align 8
.LC20:
	.string	"Don't output the encoded session info"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	sess_id_options, @object
	.size	sess_id_options, 312
sess_id_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	9
	.long	115
	.quad	.LC4
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	4
	.long	115
	.quad	.LC7
	.quad	.LC8
	.long	2
	.long	70
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	5
	.long	62
	.quad	.LC12
	.quad	.LC13
	.long	3
	.long	102
	.quad	.LC14
	.quad	.LC15
	.long	6
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	7
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	8
	.long	45
	.quad	.LC20
	.quad	0
	.zero	16
	.section	.rodata
.LC21:
	.string	"%s: Use -help for summary.\n"
.LC22:
	.string	"Context too long\n"
.LC23:
	.string	"Error setting id context\n"
.LC24:
	.string	"No certificate present\n"
	.align 8
.LC25:
	.string	"bad output format specified for outfile\n"
.LC26:
	.string	"unable to write SSL_SESSION\n"
.LC27:
	.string	"unable to write X509\n"
	.text
	.globl	sess_id_main
	.type	sess_id_main, @function
sess_id_main:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$32773, -100(%rbp)
	movl	$32773, -104(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$1, -56(%rbp)
	movl	$0, -64(%rbp)
	movq	sess_id_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movl	-116(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L21:
	cmpl	$9, -84(%rbp)
	je	.L7
	cmpl	$9, -84(%rbp)
	jg	.L6
	cmpl	$8, -84(%rbp)
	je	.L8
	cmpl	$8, -84(%rbp)
	jg	.L6
	cmpl	$7, -84(%rbp)
	je	.L9
	cmpl	$7, -84(%rbp)
	jg	.L6
	cmpl	$6, -84(%rbp)
	je	.L10
	cmpl	$6, -84(%rbp)
	jg	.L6
	cmpl	$5, -84(%rbp)
	je	.L11
	cmpl	$5, -84(%rbp)
	jg	.L6
	cmpl	$4, -84(%rbp)
	je	.L12
	cmpl	$4, -84(%rbp)
	jg	.L6
	cmpl	$3, -84(%rbp)
	je	.L13
	cmpl	$3, -84(%rbp)
	jg	.L6
	cmpl	$2, -84(%rbp)
	je	.L14
	cmpl	$2, -84(%rbp)
	jg	.L6
	cmpl	$0, -84(%rbp)
	jg	.L15
	cmpl	$-1, -84(%rbp)
	jge	.L16
	jmp	.L6
.L15:
	cmpl	$1, -84(%rbp)
	je	.L17
	jmp	.L6
.L41:
	nop
	jmp	.L16
.L42:
	nop
	jmp	.L16
.L43:
	nop
.L16:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L17:
	movq	sess_id_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -56(%rbp)
	jmp	.L18
.L14:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-100(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L41
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	$262, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L42
	jmp	.L6
.L12:
	call	opt_arg@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L11:
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L6
.L10:
	addl	$1, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L6
.L9:
	addl	$1, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L6
.L8:
	addl	$1, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L6
.L7:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L21
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L43
	movl	-100(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	load_sess_id
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_peer@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L24
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -96(%rbp)
	cmpq	$32, -96(%rbp)
	jbe	.L25
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L25:
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set1_id_context@PLT
	testl	%eax, %eax
	jne	.L24
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L24:
	cmpl	$0, -48(%rbp)
	je	.L26
	cmpl	$0, -52(%rbp)
	je	.L27
.L26:
	movl	-104(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
.L27:
	cmpl	$0, -52(%rbp)
	je	.L28
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_print@PLT
	cmpl	$0, -44(%rbp)
	je	.L28
	cmpq	$0, -72(%rbp)
	jne	.L29
	leaq	.LC24(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L28
.L29:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
.L28:
	cmpl	$0, -48(%rbp)
	jne	.L30
	cmpl	$0, -44(%rbp)
	jne	.L30
	movl	-104(%rbp), %eax
	cmpl	$4, %eax
	jne	.L31
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	i2d_SSL_SESSION@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	movl	%eax, -60(%rbp)
	jmp	.L32
.L31:
	movl	-104(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L33
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_SSL_SESSION@PLT
	movl	%eax, -60(%rbp)
	jmp	.L32
.L33:
	movl	-104(%rbp), %eax
	cmpl	$14, %eax
	jne	.L34
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_print_keylog@PLT
	movl	%eax, -60(%rbp)
	jmp	.L32
.L34:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L32:
	cmpl	$0, -60(%rbp)
	jne	.L36
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L30:
	cmpl	$0, -48(%rbp)
	jne	.L36
	cmpq	$0, -72(%rbp)
	je	.L36
	movl	-104(%rbp), %eax
	cmpl	$4, %eax
	jne	.L37
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_bio@PLT
	movl	%eax, -60(%rbp)
	jmp	.L38
.L37:
	movl	-104(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L39
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	movl	%eax, -60(%rbp)
	jmp	.L38
.L39:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L38:
	cmpl	$0, -60(%rbp)
	jne	.L36
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L36:
	movl	$0, -56(%rbp)
	jmp	.L18
.L44:
	nop
	jmp	.L18
.L45:
	nop
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	-56(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	sess_id_main, .-sess_id_main
	.section	.rodata
.LC28:
	.string	"unable to load SSL_SESSION\n"
	.text
	.type	load_sess_id, @function
load_sess_id:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	cmpl	$4, -28(%rbp)
	jne	.L49
	movq	-16(%rbp), %rax
	movq	d2i_SSL_SESSION@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	SSL_SESSION_new@GOTPCREL(%rip), %rdx
	movq	%rdx, %rdi
	movl	$0, %ecx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	movq	%rax, -8(%rbp)
	jmp	.L50
.L49:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_SSL_SESSION@PLT
	movq	%rax, -8(%rbp)
.L50:
	cmpq	$0, -8(%rbp)
	jne	.L53
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L48
.L52:
	nop
	jmp	.L48
.L53:
	nop
.L48:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	load_sess_id, .-load_sess_id
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

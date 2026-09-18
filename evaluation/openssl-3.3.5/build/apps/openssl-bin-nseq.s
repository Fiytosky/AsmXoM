	.file	"nseq.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB329:
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
.LFE329:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB330:
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
.LFE330:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB331:
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
.LFE331:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
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
	.globl	nseq_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"Input options:\n"
.LC4:
	.string	"in"
.LC5:
	.string	"Input file"
.LC6:
	.string	"Output options:\n"
.LC7:
	.string	"toseq"
.LC8:
	.string	"Output NS Sequence file"
.LC9:
	.string	"out"
.LC10:
	.string	"Output file"
.LC11:
	.string	"Provider options:\n"
.LC12:
	.string	"provider-path"
	.align 8
.LC13:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC14:
	.string	"provider"
	.align 8
.LC15:
	.string	"Provider to load (can be specified multiple times)"
.LC16:
	.string	"propquery"
	.align 8
.LC17:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	nseq_options, @object
	.size	nseq_options, 288
nseq_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	3
	.long	60
	.quad	.LC5
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	2
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	4
	.long	62
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	1602
	.long	115
	.quad	.LC13
	.quad	.LC14
	.long	1601
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	1603
	.long	115
	.quad	.LC17
	.quad	0
	.zero	16
	.section	.rodata
.LC18:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC19:
	.string	"%s: Error reading certs file %s\n"
	.align 8
.LC20:
	.string	"%s: Error reading sequence file %s\n"
	.text
	.globl	nseq_main
	.type	nseq_main, @function
nseq_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	nseq_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx
	movl	-100(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -88(%rbp)
	jmp	.L12
.L23:
	cmpl	$1604, -92(%rbp)
	je	.L12
	cmpl	$1604, -92(%rbp)
	jg	.L12
	cmpl	$1603, -92(%rbp)
	jg	.L12
	cmpl	$1601, -92(%rbp)
	jge	.L14
	cmpl	$1600, -92(%rbp)
	je	.L12
	cmpl	$1600, -92(%rbp)
	jg	.L12
	cmpl	$4, -92(%rbp)
	je	.L15
	cmpl	$4, -92(%rbp)
	jg	.L12
	cmpl	$3, -92(%rbp)
	je	.L16
	cmpl	$3, -92(%rbp)
	jg	.L12
	cmpl	$2, -92(%rbp)
	je	.L17
	cmpl	$2, -92(%rbp)
	jg	.L12
	cmpl	$0, -92(%rbp)
	jg	.L18
	cmpl	$-1, -92(%rbp)
	jge	.L19
	jmp	.L12
.L18:
	cmpl	$1, -92(%rbp)
	je	.L20
	jmp	.L12
.L38:
	nop
.L19:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	.LC18(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L21
.L20:
	movl	$0, -48(%rbp)
	movq	nseq_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	jmp	.L21
.L17:
	movl	$1, -44(%rbp)
	jmp	.L12
.L16:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L12
.L15:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L12
.L14:
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L37
	nop
.L12:
	call	opt_next@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.L23
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L38
	movq	-64(%rbp), %rax
	movl	$32773, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	-72(%rbp), %rax
	movl	$32773, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L40
	cmpl	$0, -44(%rbp)
	je	.L27
	call	NETSCAPE_CERT_SEQUENCE_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L41
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L42
	jmp	.L30
.L31:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L43
.L30:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L31
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L32
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L21
.L32:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_NETSCAPE_CERT_SEQUENCE@PLT
	movl	$0, -48(%rbp)
	jmp	.L21
.L27:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_NETSCAPE_CERT_SEQUENCE@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L21
.L33:
	movl	$0, -52(%rbp)
	jmp	.L34
.L35:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dump_cert_text@PLT
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	addl	$1, -52(%rbp)
.L34:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -52(%rbp)
	jl	.L35
	movl	$0, -48(%rbp)
	jmp	.L21
.L37:
	nop
	jmp	.L21
.L39:
	nop
	jmp	.L21
.L40:
	nop
	jmp	.L21
.L41:
	nop
	jmp	.L21
.L42:
	nop
	jmp	.L21
.L43:
	nop
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	NETSCAPE_CERT_SEQUENCE_free@PLT
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	nseq_main, .-nseq_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

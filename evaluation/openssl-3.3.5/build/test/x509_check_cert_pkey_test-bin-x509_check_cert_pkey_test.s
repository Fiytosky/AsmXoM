	.file	"x509_check_cert_pkey_test.c"
	.text
	.type	ossl_check_const_X509_INFO_sk_type, @function
ossl_check_const_X509_INFO_sk_type:
.LFB363:
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
.LFE363:
	.size	ossl_check_const_X509_INFO_sk_type, .-ossl_check_const_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_sk_type, @function
ossl_check_X509_INFO_sk_type:
.LFB364:
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
.LFE364:
	.size	ossl_check_X509_INFO_sk_type, .-ossl_check_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_freefunc_type, @function
ossl_check_X509_INFO_freefunc_type:
.LFB367:
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
.LFE367:
	.size	ossl_check_X509_INFO_freefunc_type, .-ossl_check_X509_INFO_freefunc_type
	.local	c
	.comm	c,8,8
	.local	k
	.comm	k,8,8
	.local	t
	.comm	t,8,8
	.local	e
	.comm	e,8,8
	.section	.rodata
.LC0:
	.string	"cert"
.LC1:
	.string	"req"
.LC2:
	.string	"invalid 'type'"
	.align 8
.LC3:
	.string	"../test/x509_check_cert_pkey_test.c"
.LC4:
	.string	"ok"
.LC5:
	.string	"failed"
.LC6:
	.string	"invalid 'expected'"
.LC7:
	.string	"r"
.LC8:
	.string	"bio = BIO_new_file(k, \"r\")"
	.align 8
.LC9:
	.string	"pkey = PEM_read_bio_PrivateKey(bio, NULL, NULL, NULL)"
.LC10:
	.string	"bio = BIO_new_file(c, \"r\")"
.LC11:
	.string	"read PEM x509 failed"
.LC12:
	.string	"read PEM x509 req failed"
.LC13:
	.string	"expected"
.LC14:
	.string	"result"
	.align 8
.LC15:
	.string	"check private key: expected: %d, got: %d"
	.text
	.type	test_x509_check_cert_pkey, @function
test_x509_check_cert_pkey:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	t(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$1, -40(%rbp)
	jmp	.L9
.L8:
	movq	t(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$2, -40(%rbp)
	jmp	.L9
.L10:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L11
.L9:
	movq	e(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$1, -44(%rbp)
	jmp	.L13
.L12:
	movq	e(%rip), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, -44(%rbp)
	jmp	.L13
.L14:
	leaq	.LC6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L11
.L13:
	movq	k(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$62, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	c(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$68, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	cmpl	$1, -40(%rbp)
	je	.L18
	cmpl	$2, -40(%rbp)
	je	.L19
	jmp	.L22
.L18:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L21
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$75, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L11
.L21:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	movl	%eax, -48(%rbp)
	jmp	.L22
.L19:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509_REQ@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	leaq	.LC12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L11
.L23:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_check_private_key@PLT
	movl	%eax, -48(%rbp)
	nop
.L22:
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L24
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$96, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L11
.L24:
	movl	$1, -36(%rbp)
	jmp	.L11
.L26:
	nop
	jmp	.L11
.L27:
	nop
	jmp	.L11
.L28:
	nop
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_x509_check_cert_pkey, .-test_x509_check_cert_pkey
	.local	file
	.comm	file,8,8
	.local	expected
	.comm	expected,4,4
	.section	.rodata
	.align 8
.LC16:
	.string	"(in = BIO_new_file(file, \"r\"))"
.LC17:
	.string	""
.LC18:
	.string	"count"
	.text
	.type	test_PEM_X509_INFO_read_bio, @function
test_PEM_X509_INFO_read_bio:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	$0, -24(%rbp)
	movq	file(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_X509_INFO_read_bio@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, -20(%rbp)
	jmp	.L32
.L36:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L33
	addl	$1, -24(%rbp)
.L33:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L34
	addl	$1, -24(%rbp)
.L34:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L35
	addl	$1, -24(%rbp)
.L35:
	addl	$1, -20(%rbp)
.L32:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L36
	movq	X509_INFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	expected(%rip), %edi
	movl	-24(%rbp), %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_PEM_X509_INFO_read_bio, .-test_PEM_X509_INFO_read_bio
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC19:
	.string	"Error parsing test options\n"
.LC20:
	.string	"file = test_get_argument(0)"
.LC21:
	.string	"num = test_get_argument(1)"
.LC22:
	.string	"%d"
.LC23:
	.string	"1"
.LC24:
	.string	"sscanf(num, \"%d\", &expected)"
.LC25:
	.string	"test_PEM_X509_INFO_read_bio"
.LC26:
	.string	"c = test_get_argument(0)"
.LC27:
	.string	"k = test_get_argument(1)"
.LC28:
	.string	"t = test_get_argument(2)"
.LC29:
	.string	"e = test_get_argument(3)"
.LC30:
	.string	"test_x509_check_cert_pkey"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L40
	leaq	.LC19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L41
.L40:
	call	test_get_argument_count@PLT
	cmpq	$2, %rax
	jne	.L42
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, file(%rip)
	movq	file(%rip), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$164, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L44
.L43:
	movl	$0, %eax
	jmp	.L41
.L44:
	leaq	expected(%rip), %rdx
	leaq	.LC22(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$166, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L41
.L45:
	leaq	test_PEM_X509_INFO_read_bio(%rip), %rdx
	leaq	.LC25(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	jmp	.L41
.L42:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, c(%rip)
	movq	c(%rip), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$172, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, k(%rip)
	movq	k(%rip), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, t(%rip)
	movq	t(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$174, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movl	$3, %edi
	call	test_get_argument@PLT
	movq	%rax, e(%rip)
	movq	e(%rip), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$175, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	movl	$0, %eax
	jmp	.L41
.L47:
	leaq	test_x509_check_cert_pkey(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC31:
	.string	"Usage: %s [options] cert key type expected\n     or [options] file num\n"
.LC32:
	.string	"Valid options are:\n"
.LC33:
	.string	"help"
.LC34:
	.string	"Display this summary"
.LC35:
	.string	"list"
	.align 8
.LC36:
	.string	"Display the list of tests available"
.LC37:
	.string	"test"
	.align 8
.LC38:
	.string	"Run a single test by id or name"
.LC39:
	.string	"iter"
	.align 8
.LC40:
	.string	"Run a single iteration of a test"
.LC41:
	.string	"indent"
	.align 8
.LC42:
	.string	"Number of tabs added to output"
.LC43:
	.string	"seed"
	.align 8
.LC44:
	.string	"Seed value to randomize tests with"
	.align 8
.LC45:
	.string	"cert\tcertificate or CSR filename in PEM\n"
	.align 8
.LC46:
	.string	"key\tprivate key filename in PEM\n"
	.align 8
.LC47:
	.string	"type\t\tvalue must be 'cert' or 'req'\n"
	.align 8
.LC48:
	.string	"expected\tthe expected return value, either 'ok' or 'failed'\n"
	.align 8
.LC49:
	.string	"file\tPEM format file containing certs, keys, and/OR CRLs\n"
	.align 8
.LC50:
	.string	"num\texpected number of credentials to be loaded from file\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 360
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	500
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	501
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	502
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	503
	.long	110
	.quad	.LC40
	.quad	.LC41
	.long	504
	.long	112
	.quad	.LC42
	.quad	.LC43
	.long	505
	.long	110
	.quad	.LC44
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC45
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC46
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC47
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC48
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC49
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC50
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

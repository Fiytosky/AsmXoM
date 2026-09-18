	.file	"pairwise_fail_test.c"
	.text
	.local	libctx
	.comm	libctx,8,8
	.local	pairwise_name
	.comm	pairwise_name,8,8
	.local	dsaparam_file
	.comm	dsaparam_file,8,8
	.local	self_test_args
	.comm	self_test_args,8,8
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB468:
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
.LFE468:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC0:
	.string	"st-phase"
.LC1:
	.string	"Corrupt"
.LC2:
	.string	"st-type"
	.text
	.type	self_test_on_pairwise_fail, @function
self_test_on_pairwise_fail:
.LFB469:
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
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L4
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L5
.L4:
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	leaq	.LC2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L8
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L9
.L8:
	movl	$0, %eax
	jmp	.L6
.L9:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L6
.L7:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	self_test_on_pairwise_fail, .-self_test_on_pairwise_fail
	.section	.rodata
.LC3:
	.string	"fips"
	.align 8
.LC4:
	.string	"prov = OSSL_PROVIDER_load(libctx, \"fips\")"
.LC5:
	.string	"../test/pairwise_fail_test.c"
	.text
	.type	setup_selftest_pairwise_failure, @function
setup_selftest_pairwise_failure:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, self_test_args(%rip)
	movq	libctx(%rip), %rax
	leaq	self_test_args(%rip), %rdx
	leaq	self_test_on_pairwise_fail(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_set_callback@PLT
	movl	$1, -4(%rbp)
	jmp	.L12
.L14:
	nop
.L12:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_selftest_pairwise_failure, .-setup_selftest_pairwise_failure
	.section	.rodata
.LC6:
	.string	"Conditional_PCT"
.LC7:
	.string	"rsa"
	.align 8
.LC8:
	.string	"setup_selftest_pairwise_failure(type)"
.LC9:
	.string	"RSA"
	.align 8
.LC10:
	.string	"pkey = EVP_PKEY_Q_keygen(libctx, NULL, \"RSA\", (size_t)2048)"
.LC11:
	.string	"ec"
.LC12:
	.string	"eckat"
.LC13:
	.string	"Conditional_KAT"
.LC14:
	.string	"P-256"
.LC15:
	.string	"EC"
	.align 8
.LC16:
	.string	"pkey = EVP_PKEY_Q_keygen(libctx, NULL, \"EC\", \"P-256\")"
.LC17:
	.string	"dsa"
.LC18:
	.string	"dsakat"
.LC19:
	.string	"r"
	.align 8
.LC20:
	.string	"bio = BIO_new_file(dsaparam_file, \"r\")"
	.align 8
.LC21:
	.string	"pParams = PEM_read_bio_Parameters_ex(bio, NULL, libctx, NULL)"
	.align 8
.LC22:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(libctx, pParams, NULL)"
.LC23:
	.string	"1"
.LC24:
	.string	"EVP_PKEY_keygen_init(ctx)"
.LC25:
	.string	"0"
.LC26:
	.string	"EVP_PKEY_keygen(ctx, &pkey)"
.LC27:
	.string	"pkey"
.LC28:
	.string	"eddsa"
.LC29:
	.string	"ED25519"
	.align 8
.LC30:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(libctx, \"ED25519\", NULL)"
	.text
	.type	test_keygen_pairwise_failure, @function
test_keygen_pairwise_failure:
.LFB471:
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
	movq	$0, -48(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	pairwise_name(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_selftest_pairwise_failure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	libctx(%rip), %rax
	leaq	.LC9(%rip), %rdx
	movl	$2048, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$99, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L19
	jmp	.L18
.L16:
	movq	pairwise_name(%rip), %rax
	leaq	.LC11(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L20
	movq	pairwise_name(%rip), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	leaq	.LC13(%rip), %rax
	movq	%rax, -32(%rbp)
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_selftest_pairwise_failure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	libctx(%rip), %rax
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$106, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L19
	jmp	.L18
.L20:
	movq	pairwise_name(%rip), %rax
	leaq	.LC17(%rip), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L23
	movq	pairwise_name(%rip), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L24
	leaq	.LC13(%rip), %rax
	movq	%rax, -32(%rbp)
.L24:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_selftest_pairwise_failure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	dsaparam_file(%rip), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$113, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movq	libctx(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_Parameters_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L43
	movq	-48(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$123, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L19
	jmp	.L18
.L23:
	movq	pairwise_name(%rip), %rax
	leaq	.LC28(%rip), %rcx
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_selftest_pairwise_failure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	libctx(%rip), %rax
	leaq	.LC29(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$128, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L47
	movq	-48(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$134, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L48
.L19:
	movl	$1, -36(%rbp)
	jmp	.L18
.L36:
	nop
	jmp	.L18
.L37:
	nop
	jmp	.L18
.L38:
	nop
	jmp	.L18
.L39:
	nop
	jmp	.L18
.L40:
	nop
	jmp	.L18
.L41:
	nop
	jmp	.L18
.L42:
	nop
	jmp	.L18
.L43:
	nop
	jmp	.L18
.L44:
	nop
	jmp	.L18
.L45:
	nop
	jmp	.L18
.L46:
	nop
	jmp	.L18
.L47:
	nop
	jmp	.L18
.L48:
	nop
.L18:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_keygen_pairwise_failure, .-test_keygen_pairwise_failure
	.section	.rodata
.LC31:
	.string	"Failed to load config\n"
.LC32:
	.string	"test_keygen_pairwise_failure"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L50
.L57:
	cmpl	$505, -12(%rbp)
	jg	.L51
	cmpl	$500, -12(%rbp)
	jge	.L50
	cmpl	$4, -12(%rbp)
	je	.L53
	cmpl	$4, -12(%rbp)
	jg	.L51
	cmpl	$2, -12(%rbp)
	je	.L54
	cmpl	$3, -12(%rbp)
	je	.L55
	jmp	.L51
.L54:
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L50
.L55:
	call	opt_arg@PLT
	movq	%rax, pairwise_name(%rip)
	jmp	.L50
.L53:
	call	opt_arg@PLT
	movq	%rax, dsaparam_file(%rip)
	jmp	.L50
.L51:
	movl	$0, %eax
	jmp	.L56
.L50:
	call	opt_next@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L57
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, libctx(%rip)
	movq	libctx(%rip), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L56
.L58:
	movq	libctx(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	jne	.L59
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L56
.L59:
	leaq	test_keygen_pairwise_failure(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC33:
	.string	"Usage: %s [options]\n"
.LC34:
	.string	"Valid options are:\n"
.LC35:
	.string	"help"
.LC36:
	.string	"Display this summary"
.LC37:
	.string	"list"
	.align 8
.LC38:
	.string	"Display the list of tests available"
.LC39:
	.string	"test"
	.align 8
.LC40:
	.string	"Run a single test by id or name"
.LC41:
	.string	"iter"
	.align 8
.LC42:
	.string	"Run a single iteration of a test"
.LC43:
	.string	"indent"
	.align 8
.LC44:
	.string	"Number of tabs added to output"
.LC45:
	.string	"seed"
	.align 8
.LC46:
	.string	"Seed value to randomize tests with"
.LC47:
	.string	"config"
	.align 8
.LC48:
	.string	"The configuration file to use for the libctx"
.LC49:
	.string	"pairwise"
	.align 8
.LC50:
	.string	"Test keygen pairwise test failures"
.LC51:
	.string	"dsaparam"
.LC52:
	.string	"DSA param file"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 288
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC33
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	500
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	501
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	502
	.long	115
	.quad	.LC40
	.quad	.LC41
	.long	503
	.long	110
	.quad	.LC42
	.quad	.LC43
	.long	504
	.long	112
	.quad	.LC44
	.quad	.LC45
	.long	505
	.long	110
	.quad	.LC46
	.quad	.LC47
	.long	2
	.long	60
	.quad	.LC48
	.quad	.LC49
	.long	3
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	4
	.long	115
	.quad	.LC52
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

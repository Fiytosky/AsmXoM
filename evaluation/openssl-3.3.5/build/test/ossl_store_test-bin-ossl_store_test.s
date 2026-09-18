	.file	"ossl_store_test.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB458:
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
.LFE458:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB460:
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
.LFE460:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	inputdir
	.comm	inputdir,8,8
	.local	infile
	.comm	infile,8,8
	.local	sm2file
	.comm	sm2file,8,8
	.local	datadir
	.comm	datadir,8,8
	.section	.rodata
.LC0:
	.string	"input"
.LC1:
	.string	"../test/ossl_store_test.c"
.LC2:
	.string	"nothing"
	.align 8
.LC3:
	.string	"search = OSSL_STORE_SEARCH_by_alias(\"nothing\")"
.LC4:
	.string	"DummyUI"
	.align 8
.LC5:
	.string	"ui_method= UI_create_method(\"DummyUI\")"
	.align 8
.LC6:
	.string	"sctx = OSSL_STORE_open_ex(input, NULL, NULL, ui_method, NULL, NULL, NULL, NULL)"
.LC7:
	.string	"OSSL_STORE_find(sctx, NULL)"
.LC8:
	.string	"OSSL_STORE_find(sctx, search)"
	.text
	.type	test_store_open, @function
test_store_open:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -28(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	infile(%rip), %rdx
	movq	inputdir(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_alias@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	UI_create_method@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_find@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$52, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L8
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_find@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$53, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_destroy_method@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_store_open, .-test_store_open
	.section	.rodata
	.align 8
.LC9:
	.string	"search = OSSL_STORE_SEARCH_by_key_fingerprint( EVP_sha256(), NULL, 0)"
	.text
	.type	test_store_search_by_key_fingerprint_fail, @function
test_store_search_by_key_fingerprint_fail:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	call	EVP_sha256@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_key_fingerprint@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$66, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_store_search_by_key_fingerprint_fail, .-test_store_search_by_key_fingerprint_fail
	.section	.rodata
.LC10:
	.string	"ctx"
	.text
	.type	get_params, @function
get_params:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	jmp	.L16
.L19:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	cmpl	$2, %eax
	jne	.L17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get1_PARAMS@PLT
	movq	%rax, -8(%rbp)
.L17:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	movq	$0, -32(%rbp)
.L16:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L18
	cmpq	$0, -8(%rbp)
	je	.L19
.L18:
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	movl	%eax, -12(%rbp)
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L15
.L22:
	nop
.L15:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	get_params, .-get_params
	.section	.rodata
.LC11:
	.string	"DH"
.LC12:
	.string	"DHX"
.LC13:
	.string	"DSA"
.LC14:
	.string	"Invalid test index"
.LC15:
	.string	"%s/%s-params.pem"
	.align 8
.LC16:
	.string	"BIO_snprintf(uri, sizeof(uri), urifmt, datadir, type)"
.LC17:
	.string	"Testing uri: %s"
.LC18:
	.string	"get_params(uri, type)"
	.text
	.type	test_store_get_params, @function
test_store_get_params:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4128, %rsp
	movl	%edi, -4116(%rbp)
	cmpl	$2, -4116(%rbp)
	je	.L24
	cmpl	$2, -4116(%rbp)
	jg	.L25
	cmpl	$0, -4116(%rbp)
	je	.L26
	cmpl	$1, -4116(%rbp)
	je	.L27
	jmp	.L25
.L26:
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L28
.L27:
	leaq	.LC12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L28
.L24:
	leaq	.LC13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L28
.L25:
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L32
.L28:
	leaq	.LC15(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	datadir(%rip), %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	-4112(%rbp), %rax
	movq	%rsi, %r8
	movl	$4096, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L32
.L30:
	leaq	-4112(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$145, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rdx
	leaq	-4112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_params
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_store_get_params, .-test_store_get_params
	.section	.rodata
.LC19:
	.string	"libctx = OSSL_LIB_CTX_new()"
.LC20:
	.string	"default"
	.align 8
.LC21:
	.string	"provider = OSSL_PROVIDER_load(libctx, \"default\")"
.LC22:
	.string	"r"
	.align 8
.LC23:
	.string	"bio = BIO_new_file(input, \"r\")"
.LC24:
	.string	"file"
	.align 8
.LC25:
	.string	"store_ctx = OSSL_STORE_attach(bio, \"file\", libctx, NULL, NULL, NULL, NULL, NULL, NULL)"
.LC26:
	.string	"ERR_LIB_OSSL_STORE"
.LC27:
	.string	"ERR_GET_LIB(ERR_peek_error())"
	.align 8
.LC28:
	.string	"OSSL_STORE_R_UNREGISTERED_SCHEME"
	.align 8
.LC29:
	.string	"ERR_GET_REASON(ERR_peek_error())"
	.text
	.type	test_store_attach_unregistered_scheme, @function
test_store_attach_unregistered_scheme:
.LFB478:
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
	movq	sm2file(%rip), %rdx
	movq	inputdir(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	leaq	.LC20(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	leaq	.LC22(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rdx
	leaq	.LC24(%rip), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_STORE_attach@PLT
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$169, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$44, %r9d
	movl	%esi, %r8d
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L34
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$105, %r9d
	movl	%esi, %r8d
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L34
	movl	$1, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$179, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_store_attach_unregistered_scheme, .-test_store_attach_unregistered_scheme
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB479:
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
.LFE479:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC30:
	.string	"No data directory specified"
.LC31:
	.string	"No input directory specified"
.LC32:
	.string	"test_store_open"
	.align 8
.LC33:
	.string	"test_store_search_by_key_fingerprint_fail"
.LC34:
	.string	"test_store_get_params"
	.align 8
.LC35:
	.string	"test_store_attach_unregistered_scheme"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L40
.L48:
	cmpl	$505, -4(%rbp)
	jg	.L41
	cmpl	$500, -4(%rbp)
	jge	.L40
	cmpl	$4, -4(%rbp)
	je	.L43
	cmpl	$4, -4(%rbp)
	jg	.L41
	cmpl	$3, -4(%rbp)
	je	.L44
	cmpl	$3, -4(%rbp)
	jg	.L41
	cmpl	$1, -4(%rbp)
	je	.L45
	cmpl	$2, -4(%rbp)
	je	.L46
	jmp	.L41
.L45:
	call	opt_arg@PLT
	movq	%rax, inputdir(%rip)
	jmp	.L40
.L46:
	call	opt_arg@PLT
	movq	%rax, infile(%rip)
	jmp	.L40
.L44:
	call	opt_arg@PLT
	movq	%rax, sm2file(%rip)
	jmp	.L40
.L43:
	call	opt_arg@PLT
	movq	%rax, datadir(%rip)
	jmp	.L40
.L41:
	movl	$0, %eax
	jmp	.L47
.L40:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L48
	movq	datadir(%rip), %rax
	testq	%rax, %rax
	jne	.L49
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L47
.L49:
	movq	inputdir(%rip), %rax
	testq	%rax, %rax
	jne	.L50
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$227, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L47
.L50:
	movq	infile(%rip), %rax
	testq	%rax, %rax
	je	.L51
	leaq	test_store_open(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L51:
	leaq	test_store_search_by_key_fingerprint_fail(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_store_get_params(%rip), %rsi
	leaq	.LC34(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	sm2file(%rip), %rax
	testq	%rax, %rax
	je	.L52
	leaq	test_store_attach_unregistered_scheme(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L52:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC36:
	.string	"Usage: %s [options]\n"
.LC37:
	.string	"Valid options are:\n"
.LC38:
	.string	"help"
.LC39:
	.string	"Display this summary"
.LC40:
	.string	"list"
	.align 8
.LC41:
	.string	"Display the list of tests available"
.LC42:
	.string	"test"
	.align 8
.LC43:
	.string	"Run a single test by id or name"
.LC44:
	.string	"iter"
	.align 8
.LC45:
	.string	"Run a single iteration of a test"
.LC46:
	.string	"indent"
	.align 8
.LC47:
	.string	"Number of tabs added to output"
.LC48:
	.string	"seed"
	.align 8
.LC49:
	.string	"Seed value to randomize tests with"
.LC50:
	.string	"dir"
.LC51:
	.string	"in"
.LC52:
	.string	"sm2"
.LC53:
	.string	"data"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 312
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC36
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	500
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	501
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	502
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	503
	.long	110
	.quad	.LC45
	.quad	.LC46
	.long	504
	.long	112
	.quad	.LC47
	.quad	.LC48
	.long	505
	.long	110
	.quad	.LC49
	.quad	.LC50
	.long	1
	.long	47
	.zero	8
	.quad	.LC51
	.long	2
	.long	60
	.zero	8
	.quad	.LC52
	.long	3
	.long	60
	.zero	8
	.quad	.LC53
	.long	4
	.long	115
	.zero	8
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

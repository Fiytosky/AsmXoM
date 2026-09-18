	.file	"evp_fetch_prov_test.c"
	.text
	.local	config_file
	.comm	config_file,8,8
	.section	.rodata
.LC0:
	.string	"digest"
	.section	.data.rel.local,"aw"
	.align 8
	.type	alg, @object
	.size	alg, 8
alg:
	.quad	.LC0
	.local	use_default_ctx
	.comm	use_default_ctx,4,4
	.local	fetch_property
	.comm	fetch_property,8,8
	.data
	.align 4
	.type	expected_fetch_result, @object
	.size	expected_fetch_result, 4
expected_fetch_result:
	.long	1
	.text
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
.LC1:
	.string	"ctx = EVP_MD_CTX_new()"
.LC2:
	.string	"../test/evp_fetch_prov_test.c"
	.align 8
.LC3:
	.string	"EVP_DigestInit_ex(ctx, md, NULL)"
	.align 8
.LC4:
	.string	"EVP_DigestUpdate(ctx, msg, len)"
	.align 8
.LC5:
	.string	"EVP_DigestFinal_ex(ctx, out, NULL)"
.LC6:
	.string	"exptd"
.LC7:
	.string	"out"
.LC8:
	.string	"md == EVP_MD_CTX_get0_md(ctx)"
	.text
	.type	calculate_digest, @function
calculate_digest:
.LFB469:
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
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$65, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-48(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$32
	pushq	-80(%rbp)
	movl	$32, %r9d
	movq	%rsi, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	cmpq	%rax, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, -4(%rbp)
	jmp	.L6
.L8:
	nop
.L6:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	calculate_digest, .-calculate_digest
	.section	.rodata
.LC9:
	.string	"ctx"
	.align 8
.LC10:
	.string	"OSSL_LIB_CTX_load_config(ctx, config_file)"
.LC11:
	.string	"prov[i]"
	.text
	.type	load_providers, @function
load_providers:
.LFB470:
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
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$86, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	config_file(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	call	test_get_argument_count@PLT
	cmpq	$2, %rax
	ja	.L21
	movq	$0, -32(%rbp)
	jmp	.L14
.L16:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	addq	$1, -32(%rbp)
.L14:
	call	test_get_argument_count@PLT
	cmpq	%rax, -32(%rbp)
	jb	.L16
	movl	$1, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L11
.L19:
	nop
	jmp	.L11
.L20:
	nop
	jmp	.L11
.L21:
	nop
	jmp	.L11
.L22:
	nop
.L11:
	cmpl	$0, -20(%rbp)
	jne	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
.L17:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	load_providers, .-load_providers
	.type	unload_providers, @function
unload_providers:
.LFB471:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
.L24:
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
.L25:
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_thread_stop_ex@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
.L27:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	unload_providers, .-unload_providers
	.section	.rodata
.LC12:
	.string	"legacy"
.LC13:
	.string	"0"
	.align 8
.LC14:
	.string	"OSSL_PROVIDER_available(ctx, \"legacy\")"
	.text
	.type	test_legacy_provider_unloaded, @function
test_legacy_provider_unloaded:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$130, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	config_file(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC12(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L36
	movl	$1, -4(%rbp)
	jmp	.L30
.L34:
	nop
	jmp	.L30
.L35:
	nop
	jmp	.L30
.L36:
	nop
.L30:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_legacy_provider_unloaded, .-test_legacy_provider_unloaded
	.section	.rodata
.LC15:
	.string	"algor = X509_ALGOR_new()"
	.align 8
.LC16:
	.string	"X509_ALGOR_set0(algor, OBJ_nid2obj(nid), V_ASN1_UNDEF, NULL)"
	.text
	.type	make_algor, @function
make_algor:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	X509_ALGOR_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$149, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L39
.L38:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	make_algor, .-make_algor
	.section	.rodata
.LC17:
	.string	"md"
.LC18:
	.string	"SHA256"
.LC19:
	.string	"EVP_MD_is_a(md, \"SHA256\")"
	.align 8
.LC20:
	.string	"calculate_digest(md, testmsg, sizeof(testmsg), exptd)"
.LC21:
	.string	"SHA256_DIGEST_LENGTH"
.LC22:
	.string	"EVP_MD_get_size(md)"
.LC23:
	.string	"SHA256_CBLOCK"
.LC24:
	.string	"EVP_MD_get_block_size(md)"
	.text
	.type	test_md, @function
test_md:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movabsq	$8031924123371070792, %rax
	movq	%rax, -12(%rbp)
	movl	$6581362, -4(%rbp)
	movabsq	$-715737639695986393, %rax
	movabsq	$7882977224855885491, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$2664297512692348164, %rax
	movabsq	$2802244267301465232, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$170, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC18(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-48(%rbp), %rdx
	leaq	-12(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$12, %edx
	movq	%rax, %rdi
	call	calculate_digest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$32, %r9d
	movl	%esi, %r8d
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$64, %r9d
	movl	%esi, %r8d
	movl	$174, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	movl	$1, %eax
	jmp	.L44
.L42:
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_md, .-test_md
	.type	test_implicit_EVP_MD_fetch, @function
test_implicit_EVP_MD_fetch:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	use_default_ctx(%rip), %eax
	testl	%eax, %eax
	je	.L46
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_providers
	testl	%eax, %eax
	je	.L47
.L46:
	call	EVP_sha256@PLT
	movq	%rax, %rdi
	call	test_md
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -4(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	unload_providers
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_implicit_EVP_MD_fetch, .-test_implicit_EVP_MD_fetch
	.section	.rodata
.LC25:
	.string	"EVP_MD_up_ref(md)"
	.text
	.type	test_explicit_EVP_MD_fetch, @function
test_explicit_EVP_MD_fetch:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -12(%rbp)
	movl	use_default_ctx(%rip), %eax
	testl	%eax, %eax
	jne	.L51
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_providers
	testl	%eax, %eax
	je	.L58
.L51:
	movq	fetch_property(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movl	expected_fetch_result(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_md
	testl	%eax, %eax
	je	.L59
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$206, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	jmp	.L56
.L53:
	movq	-8(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L61
.L56:
	movl	$1, -12(%rbp)
	jmp	.L52
.L58:
	nop
	jmp	.L52
.L59:
	nop
	jmp	.L52
.L60:
	nop
	jmp	.L52
.L61:
	nop
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	unload_providers
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_explicit_EVP_MD_fetch, .-test_explicit_EVP_MD_fetch
	.type	test_explicit_EVP_MD_fetch_by_name, @function
test_explicit_EVP_MD_fetch_by_name:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	test_explicit_EVP_MD_fetch
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_explicit_EVP_MD_fetch_by_name, .-test_explicit_EVP_MD_fetch_by_name
	.section	.rodata
	.align 8
.LC26:
	.string	"OBJ_obj2txt(id, sizeof(id), obj, 0)"
	.align 8
.LC27:
	.string	"OBJ_obj2txt(id, sizeof(id), obj, 1)"
	.text
	.type	test_explicit_EVP_MD_fetch_by_X509_ALGOR, @function
test_explicit_EVP_MD_fetch_by_X509_ALGOR:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	$0, -4(%rbp)
	movl	$672, %edi
	call	make_algor
	movq	%rax, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movw	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L73
.L65:
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	cmpl	$0, -84(%rbp)
	je	.L67
	cmpl	$1, -84(%rbp)
	je	.L68
	jmp	.L69
.L67:
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$244, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L74
	jmp	.L71
.L68:
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$1, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$248, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L75
	jmp	.L69
.L74:
	nop
.L69:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	test_explicit_EVP_MD_fetch
	movl	%eax, -4(%rbp)
	jmp	.L71
.L75:
	nop
.L71:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-4(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_explicit_EVP_MD_fetch_by_X509_ALGOR, .-test_explicit_EVP_MD_fetch_by_X509_ALGOR
	.section	.rodata
.LC28:
	.string	"ctx = EVP_CIPHER_CTX_new()"
	.align 8
.LC29:
	.string	"EVP_CipherInit_ex(ctx, cipher, NULL, key, NULL, 1)"
	.align 8
.LC30:
	.string	"EVP_CipherUpdate(ctx, ct, &ctlen, msg, len)"
	.align 8
.LC31:
	.string	"EVP_CipherFinal_ex(ctx, ct, &ctlen)"
	.align 8
.LC32:
	.string	"EVP_CipherInit_ex(ctx, cipher, NULL, key, NULL, 0)"
	.align 8
.LC33:
	.string	"EVP_CipherUpdate(ctx, pt, &ptlen, ct, ctlen)"
	.align 8
.LC34:
	.string	"EVP_CipherFinal_ex(ctx, pt, &ptlen)"
.LC35:
	.string	"msg"
.LC36:
	.string	"pt"
	.text
	.type	encrypt_decrypt, @function
encrypt_decrypt:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$271, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	leaq	-48(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$272, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	-200(%rbp), %rax
	movl	%eax, %edi
	movq	-192(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$273, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	leaq	-20(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	leaq	-48(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$275, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movl	-20(%rbp), %edi
	leaq	-112(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$276, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	leaq	-24(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movl	-24(%rbp), %eax
	movslq	%eax, %rdi
	leaq	-176(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-200(%rbp)
	pushq	-192(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L81
	movl	$1, -4(%rbp)
	jmp	.L79
.L81:
	nop
.L79:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	encrypt_decrypt, .-encrypt_decrypt
	.section	.rodata
.LC37:
	.string	"cipher"
	.align 8
.LC38:
	.string	"encrypt_decrypt(cipher, testmsg, sizeof(testmsg))"
	.text
	.type	test_cipher, @function
test_cipher:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movabsq	$8031924123371070792, %rax
	movq	%rax, -12(%rbp)
	movl	$6581362, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$291, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-12(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	encrypt_decrypt
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movl	$1, %eax
	jmp	.L85
.L83:
	movl	$0, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_cipher, .-test_cipher
	.type	test_implicit_EVP_CIPHER_fetch, @function
test_implicit_EVP_CIPHER_fetch:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	use_default_ctx(%rip), %eax
	testl	%eax, %eax
	je	.L87
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_providers
	testl	%eax, %eax
	je	.L88
.L87:
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rdi
	call	test_cipher
	testl	%eax, %eax
	je	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	$0, %eax
.L89:
	movl	%eax, -4(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	unload_providers
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_implicit_EVP_CIPHER_fetch, .-test_implicit_EVP_CIPHER_fetch
	.section	.rodata
.LC39:
	.string	"EVP_CIPHER_up_ref(cipher)"
	.text
	.type	test_explicit_EVP_CIPHER_fetch, @function
test_explicit_EVP_CIPHER_fetch:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -12(%rbp)
	movl	use_default_ctx(%rip), %eax
	testl	%eax, %eax
	jne	.L92
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_providers
	testl	%eax, %eax
	je	.L99
.L92:
	movq	fetch_property(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -8(%rbp)
	movl	expected_fetch_result(%rip), %eax
	testl	%eax, %eax
	je	.L94
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_cipher
	testl	%eax, %eax
	je	.L100
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$323, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L101
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	jmp	.L97
.L94:
	movq	-8(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$328, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L102
.L97:
	movl	$1, -12(%rbp)
	jmp	.L93
.L99:
	nop
	jmp	.L93
.L100:
	nop
	jmp	.L93
.L101:
	nop
	jmp	.L93
.L102:
	nop
.L93:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	unload_providers
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_explicit_EVP_CIPHER_fetch, .-test_explicit_EVP_CIPHER_fetch
	.section	.rodata
.LC40:
	.string	"AES-128-CBC"
	.text
	.type	test_explicit_EVP_CIPHER_fetch_by_name, @function
test_explicit_EVP_CIPHER_fetch_by_name:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	call	test_explicit_EVP_CIPHER_fetch
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_explicit_EVP_CIPHER_fetch_by_name, .-test_explicit_EVP_CIPHER_fetch_by_name
	.type	test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR, @function
test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	$0, -4(%rbp)
	movl	$419, %edi
	call	make_algor
	movq	%rax, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movw	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L106
	movl	$0, %eax
	jmp	.L114
.L106:
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	cmpl	$0, -84(%rbp)
	je	.L108
	cmpl	$1, -84(%rbp)
	je	.L109
	jmp	.L110
.L108:
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$360, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L115
	jmp	.L112
.L109:
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$1, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$364, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L116
	jmp	.L110
.L115:
	nop
.L110:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	test_explicit_EVP_CIPHER_fetch
	movl	%eax, -4(%rbp)
	jmp	.L112
.L116:
	nop
.L112:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-4(%rbp), %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR, .-test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR
	.section	.rodata
.LC41:
	.string	"test_legacy_provider_unloaded"
.LC42:
	.string	"test_implicit_EVP_MD_fetch"
	.align 8
.LC43:
	.string	"test_explicit_EVP_MD_fetch_by_name"
	.align 8
.LC44:
	.string	"test_explicit_EVP_MD_fetch_by_X509_ALGOR"
	.align 8
.LC45:
	.string	"test_implicit_EVP_CIPHER_fetch"
	.align 8
.LC46:
	.string	"test_explicit_EVP_CIPHER_fetch_by_name"
	.align 8
.LC47:
	.string	"test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L118
.L127:
	cmpl	$505, -4(%rbp)
	jg	.L119
	cmpl	$500, -4(%rbp)
	jge	.L118
	cmpl	$5, -4(%rbp)
	je	.L121
	cmpl	$5, -4(%rbp)
	jg	.L119
	cmpl	$4, -4(%rbp)
	je	.L122
	cmpl	$4, -4(%rbp)
	jg	.L119
	cmpl	$3, -4(%rbp)
	je	.L123
	cmpl	$3, -4(%rbp)
	jg	.L119
	cmpl	$1, -4(%rbp)
	je	.L124
	cmpl	$2, -4(%rbp)
	je	.L125
	jmp	.L119
.L121:
	call	opt_arg@PLT
	movq	%rax, config_file(%rip)
	jmp	.L118
.L124:
	call	opt_arg@PLT
	movq	%rax, alg(%rip)
	jmp	.L118
.L125:
	call	opt_arg@PLT
	movq	%rax, fetch_property(%rip)
	jmp	.L118
.L123:
	movl	$0, expected_fetch_result(%rip)
	jmp	.L118
.L122:
	movl	$1, use_default_ctx(%rip)
	jmp	.L118
.L119:
	movl	$0, %eax
	jmp	.L126
.L118:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L127
	leaq	test_legacy_provider_unloaded(%rip), %rdx
	leaq	.LC41(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movq	alg(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L128
	leaq	test_implicit_EVP_MD_fetch(%rip), %rdx
	leaq	.LC42(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_explicit_EVP_MD_fetch_by_name(%rip), %rdx
	leaq	.LC43(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_explicit_EVP_MD_fetch_by_X509_ALGOR(%rip), %rsi
	leaq	.LC44(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	jmp	.L129
.L128:
	leaq	test_implicit_EVP_CIPHER_fetch(%rip), %rdx
	leaq	.LC45(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_explicit_EVP_CIPHER_fetch_by_name(%rip), %rdx
	leaq	.LC46(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR(%rip), %rsi
	leaq	.LC47(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
.L129:
	movl	$1, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC48:
	.string	"Usage: %s [options] [provname...]\n"
.LC49:
	.string	"Valid options are:\n"
.LC50:
	.string	"help"
.LC51:
	.string	"Display this summary"
.LC52:
	.string	"list"
	.align 8
.LC53:
	.string	"Display the list of tests available"
.LC54:
	.string	"test"
	.align 8
.LC55:
	.string	"Run a single test by id or name"
.LC56:
	.string	"iter"
	.align 8
.LC57:
	.string	"Run a single iteration of a test"
.LC58:
	.string	"indent"
	.align 8
.LC59:
	.string	"Number of tabs added to output"
.LC60:
	.string	"seed"
	.align 8
.LC61:
	.string	"Seed value to randomize tests with"
.LC62:
	.string	"config"
	.align 8
.LC63:
	.string	"The configuration file to use for the libctx"
.LC64:
	.string	"type"
.LC65:
	.string	"The fetch type to test"
.LC66:
	.string	"property"
	.align 8
.LC67:
	.string	"The fetch property e.g. provider=fips"
.LC68:
	.string	"fetchfail"
.LC69:
	.string	"fetch is expected to fail"
.LC70:
	.string	"defaultctx"
	.align 8
.LC71:
	.string	"Use the default context if this is set"
	.align 8
.LC72:
	.string	"file\tProvider names to explicitly load\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 360
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC48
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC49
	.quad	.LC50
	.long	500
	.long	45
	.quad	.LC51
	.quad	.LC52
	.long	501
	.long	45
	.quad	.LC53
	.quad	.LC54
	.long	502
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	503
	.long	110
	.quad	.LC57
	.quad	.LC58
	.long	504
	.long	112
	.quad	.LC59
	.quad	.LC60
	.long	505
	.long	110
	.quad	.LC61
	.quad	.LC62
	.long	5
	.long	60
	.quad	.LC63
	.quad	.LC64
	.long	1
	.long	115
	.quad	.LC65
	.quad	.LC66
	.long	2
	.long	115
	.quad	.LC67
	.quad	.LC68
	.long	3
	.long	45
	.quad	.LC69
	.quad	.LC70
	.long	4
	.long	45
	.quad	.LC71
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC72
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

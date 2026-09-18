	.file	"provider_internal_test.c"
	.text
	.local	buf
	.comm	buf,256,32
	.section	.rodata
.LC0:
	.string	"greeting"
	.section	.data.rel.local,"aw"
	.align 32
	.type	greeting_request, @object
	.size	greeting_request, 80
greeting_request:
	.quad	.LC0
	.long	4
	.zero	4
	.quad	buf
	.quad	256
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC1:
	.string	"no greeting received"
	.align 8
.LC2:
	.string	"ossl_provider_activate(prov, 1, 0)"
	.align 8
.LC3:
	.string	"../test/provider_internal_test.c"
	.align 8
.LC4:
	.string	"ossl_provider_get_params(prov, greeting_request)"
	.align 8
.LC5:
	.string	"greeting = greeting_request[0].data"
.LC6:
	.string	"0"
.LC7:
	.string	"greeting_request[0].data_size"
.LC8:
	.string	"expected_greeting"
	.align 8
.LC9:
	.string	"ossl_provider_deactivate(prov, 1)"
.LC10:
	.string	"Got this greeting: %s\n"
	.text
	.type	test_provider, @function
test_provider:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$29, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	greeting_request(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$30, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movq	16+greeting_request(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$31, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	movq	24+greeting_request(%rip), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L2
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$33, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$34, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$36, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_provider, .-test_provider
	.section	.rodata
.LC11:
	.string	"3.3.5"
	.align 8
.LC12:
	.string	"Hello OpenSSL %.20s, greetings from %s!"
	.text
	.type	expected_greeting1, @function
expected_greeting1:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	expected_greeting.0(%rip), %rax
	movq	%rsi, %r8
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	expected_greeting.0(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	expected_greeting1, .-expected_greeting1
	.section	.rodata
.LC13:
	.string	"p_test_builtin"
.LC14:
	.string	"fips=yes"
	.align 8
.LC15:
	.string	"prov = ossl_provider_new(NULL, name, PROVIDER_INIT_FUNCTION_NAME, NULL, 0)"
.LC16:
	.string	""
	.text
	.type	test_builtin_provider, @function
test_builtin_provider:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC13(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_set_default_properties@PLT
	movq	p_test_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_provider_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$66, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	expected_greeting1
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_provider
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	movl	%eax, -20(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_set_default_properties@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_builtin_provider, .-test_builtin_provider
	.section	.rodata
.LC17:
	.string	"p_test"
	.align 8
.LC18:
	.string	"prov = ossl_provider_new(NULL, name, NULL, NULL, 0)"
	.text
	.type	test_loaded_provider, @function
test_loaded_provider:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC17(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_provider_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	expected_greeting1
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_provider
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L14
.L12:
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_loaded_provider, .-test_loaded_provider
	.section	.rodata
.LC19:
	.string	"p_test_configured"
	.align 8
.LC20:
	.string	"Hello OpenSSL, greetings from Test Provider"
	.align 8
.LC21:
	.string	"prov = ossl_provider_find(NULL, name, 0)"
	.text
	.type	test_configured_provider, @function
test_configured_provider:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC19(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_provider_find@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_provider
	testl	%eax, %eax
	je	.L16
	movl	$1, %eax
	jmp	.L18
.L16:
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_configured_provider, .-test_configured_provider
	.section	.rodata
.LC22:
	.string	"ctx = OSSL_LIB_CTX_new()"
.LC23:
	.string	"default"
	.align 8
.LC24:
	.string	"prov = OSSL_PROVIDER_load(ctx, \"default\")"
	.align 8
.LC25:
	.string	"OSSL_PROVIDER_available(ctx, \"default\")"
.LC26:
	.string	"SHA256"
	.align 8
.LC27:
	.string	"md = EVP_MD_fetch(ctx, \"SHA256\", NULL)"
.LC28:
	.string	"%s provider is available\n"
.LC29:
	.string	"%s provider is not available\n"
	.text
	.type	test_cache_flushes, @function
test_cache_flushes:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC23(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$110, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC23(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC26(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$112, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$119, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L28
	leaq	.LC26(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$122, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	je	.L25
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L24
.L25:
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$128, %esi
	movl	$0, %eax
	call	test_info@PLT
.L24:
	movl	$1, -20(%rbp)
	jmp	.L22
.L27:
	nop
	jmp	.L22
.L28:
	nop
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_cache_flushes, .-test_cache_flushes
	.section	.rodata
.LC30:
	.string	"test_builtin_provider"
.LC31:
	.string	"test_loaded_provider"
.LC32:
	.string	"test_configured_provider"
.LC33:
	.string	"test_cache_flushes"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_builtin_provider(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_loaded_provider(%rip), %rdx
	leaq	.LC31(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_configured_provider(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cache_flushes(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.local	expected_greeting.0
	.comm	expected_greeting.0,256,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

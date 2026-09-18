	.file	"keymgmt_internal_test.c"
	.text
	.local	cert_filename
	.comm	cert_filename,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"../test/keymgmt_internal_test.c"
	.text
	.type	tear_down, @function
tear_down:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	tear_down, .-tear_down
	.section	.rodata
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC2:
	.string	"fixture->ctx1 = OSSL_LIB_CTX_new()"
.LC3:
	.string	"default"
	.align 8
.LC4:
	.string	"fixture->prov1 = OSSL_PROVIDER_load(fixture->ctx1, \"default\")"
	.align 8
.LC5:
	.string	"fixture->ctx2 = OSSL_LIB_CTX_new()"
	.align 8
.LC6:
	.string	"fixture->prov2 = OSSL_PROVIDER_load(fixture->ctx2, \"default\")"
	.text
	.type	set_up, @function
set_up:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$55, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	call	OSSL_LIB_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	call	OSSL_LIB_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	set_up, .-set_up
	.section	.rodata
.LC7:
	.string	"OSSL_PARAM_get_BN(p, &n)"
.LC8:
	.string	"0"
	.align 8
.LC9:
	.string	"BN_bn2nativepad(n, (unsigned char *)goal, sizeof(*goal))"
	.text
	.type	get_ulong_via_BN, @function
get_ulong_via_BN:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L10
.L9:
	movl	$0, -4(%rbp)
.L10:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	get_ulong_via_BN, .-get_ulong_via_BN
	.section	.rodata
.LC10:
	.string	"n"
	.align 8
.LC11:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_N)"
	.align 8
.LC12:
	.string	"get_ulong_via_BN(p, &keydata[N])"
.LC13:
	.string	"e"
	.align 8
.LC14:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_E)"
	.align 8
.LC15:
	.string	"get_ulong_via_BN(p, &keydata[E])"
.LC16:
	.string	"d"
	.align 8
.LC17:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_D)"
	.align 8
.LC18:
	.string	"get_ulong_via_BN(p, &keydata[D])"
.LC19:
	.string	"rsa-factor1"
	.align 8
.LC20:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_FACTOR1)"
	.align 8
.LC21:
	.string	"get_ulong_via_BN(p, &keydata[P])"
.LC22:
	.string	"rsa-factor2"
	.align 8
.LC23:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_FACTOR2)"
	.align 8
.LC24:
	.string	"get_ulong_via_BN(p, &keydata[Q])"
.LC25:
	.string	"rsa-factor3"
	.align 8
.LC26:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_FACTOR3)"
	.align 8
.LC27:
	.string	"get_ulong_via_BN(p, &keydata[F3])"
.LC28:
	.string	"rsa-exponent1"
	.align 8
.LC29:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_EXPONENT1)"
	.align 8
.LC30:
	.string	"get_ulong_via_BN(p, &keydata[DP])"
.LC31:
	.string	"rsa-exponent2"
	.align 8
.LC32:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_EXPONENT2)"
	.align 8
.LC33:
	.string	"get_ulong_via_BN(p, &keydata[DQ])"
.LC34:
	.string	"rsa-exponent3"
	.align 8
.LC35:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_EXPONENT3)"
	.align 8
.LC36:
	.string	"get_ulong_via_BN(p, &keydata[E3])"
.LC37:
	.string	"rsa-coefficient1"
	.align 8
.LC38:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_COEFFICIENT1)"
	.align 8
.LC39:
	.string	"get_ulong_via_BN(p, &keydata[QINV])"
.LC40:
	.string	"rsa-coefficient2"
	.align 8
.LC41:
	.string	"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_COEFFICIENT2)"
	.align 8
.LC42:
	.string	"get_ulong_via_BN(p, &keydata[C2])"
	.text
	.type	export_cb, @function
export_cb:
.LFB526:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	leaq	.LC10(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L15
	leaq	.LC13(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L15
	leaq	.LC16(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$113, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L16
.L15:
	movl	$0, %eax
	jmp	.L14
.L16:
	leaq	.LC19(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC22(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC25(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$121, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L14
.L18:
	leaq	.LC28(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$125, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	leaq	.LC31(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	leaq	.LC34(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$129, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L20
.L19:
	movl	$0, %eax
	jmp	.L14
.L20:
	leaq	.LC37(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$133, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$134, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	leaq	.LC40(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$135, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_ulong_via_BN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L14
.L22:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	export_cb, .-export_cb
	.section	.rodata
.LC43:
	.string	"rsa = RSA_new()"
.LC44:
	.string	"bn1 = BN_new()"
.LC45:
	.string	"BN_set_word(bn1, expected[N])"
.LC46:
	.string	"bn2 = BN_new()"
.LC47:
	.string	"BN_set_word(bn2, expected[E])"
.LC48:
	.string	"bn3 = BN_new()"
.LC49:
	.string	"BN_set_word(bn3, expected[D])"
	.align 8
.LC50:
	.string	"RSA_set0_key(rsa, bn1, bn2, bn3)"
.LC51:
	.string	"BN_set_word(bn1, expected[P])"
.LC52:
	.string	"BN_set_word(bn2, expected[Q])"
	.align 8
.LC53:
	.string	"RSA_set0_factors(rsa, bn1, bn2)"
	.align 8
.LC54:
	.string	"BN_set_word(bn1, expected[DP])"
	.align 8
.LC55:
	.string	"BN_set_word(bn2, expected[DQ])"
	.align 8
.LC56:
	.string	"BN_set_word(bn3, expected[QINV])"
	.align 8
.LC57:
	.string	"RSA_set0_crt_params(rsa, bn1, bn2, bn3)"
.LC58:
	.string	"bn_primes[0] = BN_new()"
	.align 8
.LC59:
	.string	"BN_set_word(bn_primes[0], expected[F3])"
.LC60:
	.string	"bn_exps[0] = BN_new()"
	.align 8
.LC61:
	.string	"BN_set_word(bn_exps[0], expected[E3])"
.LC62:
	.string	"bn_coeffs[0] = BN_new()"
	.align 8
.LC63:
	.string	"BN_set_word(bn_coeffs[0], expected[C2])"
	.align 8
.LC64:
	.string	"RSA_set0_multi_prime_params(rsa, bn_primes, bn_exps, bn_coeffs, 1)"
.LC65:
	.string	"pk = EVP_PKEY_new()"
.LC66:
	.string	"EVP_PKEY_assign_RSA(pk, rsa)"
.LC67:
	.string	"RSA"
	.align 8
.LC68:
	.string	"km1 = EVP_KEYMGMT_fetch(fixture->ctx1, \"RSA\", NULL)"
	.align 8
.LC69:
	.string	"km2 = EVP_KEYMGMT_fetch(fixture->ctx2, \"RSA\", NULL)"
.LC70:
	.string	"RSA-PSS"
	.align 8
.LC71:
	.string	"km3 = EVP_KEYMGMT_fetch(fixture->ctx1, \"RSA-PSS\", NULL)"
.LC72:
	.string	"km2"
.LC73:
	.string	"km1"
	.align 8
.LC74:
	.string	"provkey2 = evp_pkey_export_to_provider(pk, NULL, &km, NULL)"
	.align 8
.LC75:
	.string	"provkey = evp_pkey_export_to_provider(pk, NULL, &km1, NULL)"
	.align 8
.LC76:
	.string	"evp_keymgmt_export(km2, provkey, OSSL_KEYMGMT_SELECT_KEYPAIR, &export_cb, keydata)"
.LC77:
	.string	"keydata[i]"
.LC78:
	.string	"expected[i]"
.LC79:
	.string	"i = %zu"
.LC80:
	.string	"dup_pk = EVP_PKEY_dup(pk)"
.LC81:
	.string	"1"
.LC82:
	.string	"EVP_PKEY_eq(pk, dup_pk)"
	.text
	.type	test_pass_rsa, @function
test_pass_rsa:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	call	RSA_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$177, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$180, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	expected.2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	8+expected.2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$184, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	16+expected.2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$185, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$189, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	24+expected.2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	32+expected.2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$193, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$196, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	48+expected.2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$197, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	56+expected.2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$200, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	72+expected.2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$206, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	40+expected.2(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	call	BN_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$208, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	64+expected.2(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	call	BN_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	80+expected.2(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-144(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	RSA_set0_multi_prime_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	call	EVP_PKEY_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$216, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$217, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	$0, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$221, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC67(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$222, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$223, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-120(%rbp), %rsi
	movq	-72(%rbp), %rdi
	leaq	.LC72(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$224, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L54
.L37:
	movl	$0, -12(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$231, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$236, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	leaq	keydata.1(%rip), %rcx
	leaq	export_cb(%rip), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	evp_keymgmt_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$238, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	$0, -8(%rbp)
	jmp	.L41
.L44:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	keydata.1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	expected.2(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, %esi
	leaq	.LC77(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.L42
	movq	-8(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$252, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L43
.L42:
	addl	$1, -12(%rbp)
.L43:
	addq	$1, -8(%rbp)
.L41:
	cmpq	$11, -8(%rbp)
	jbe	.L44
	cmpl	$12, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L57
	cmpq	$0, -64(%rbp)
	jne	.L57
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L58
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC81(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L59
	jmp	.L37
.L48:
	nop
	jmp	.L25
.L49:
	nop
	jmp	.L25
.L50:
	nop
	jmp	.L25
.L51:
	nop
	jmp	.L25
.L52:
	nop
	jmp	.L25
.L53:
	nop
	jmp	.L25
.L54:
	nop
	jmp	.L25
.L55:
	nop
	jmp	.L25
.L56:
	nop
	jmp	.L25
.L57:
	nop
	jmp	.L25
.L58:
	nop
	jmp	.L25
.L59:
	nop
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_pass_rsa, .-test_pass_rsa
	.section	.data.rel.local,"aw"
	.align 8
	.type	tests, @object
	.size	tests, 8
tests:
	.quad	test_pass_rsa
	.text
	.type	test_pass_key, @function
test_pass_key:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	cmpq	$0, -16(%rbp)
	je	.L63
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L63:
	movl	-4(%rbp), %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_pass_key, .-test_pass_key
	.section	.rodata
.LC83:
	.string	"libctx = OSSL_LIB_CTX_new()"
	.align 8
.LC84:
	.string	"prov = OSSL_PROVIDER_load(libctx, \"default\")"
.LC85:
	.string	"r"
	.align 8
.LC86:
	.string	"Couldn't open '%s' for reading\n"
	.align 8
.LC87:
	.string	"'%s' doesn't appear to be a X.509 certificate in PEM format\n"
	.align 8
.LC88:
	.string	"keydata = evp_pkey_export_to_provider(pkey, NULL, NULL, NULL)"
	.align 8
.LC89:
	.string	"keydata = evp_pkey_export_to_provider(pkey, NULL, &keymgmt, NULL)"
	.text
	.type	test_evp_pkey_export_to_provider, @function
test_evp_pkey_export_to_provider:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -28(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$308, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	cert_filename(%rip), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L68
	movq	cert_filename(%rip), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$313, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L67
.L68:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L69
	movq	cert_filename(%rip), %rax
	leaq	.LC87(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$319, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L67
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -56(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L70
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$329, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L71
	jmp	.L67
.L70:
	cmpl	$1, -84(%rbp)
	jne	.L72
	leaq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$333, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L71
	jmp	.L67
.L72:
	leaq	.LC67(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$339, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L75
.L71:
	movl	$1, -28(%rbp)
	jmp	.L67
.L74:
	nop
	jmp	.L67
.L75:
	nop
.L67:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_evp_pkey_export_to_provider, .-test_evp_pkey_export_to_provider
	.section	.rodata
	.align 8
.LC90:
	.string	"cert_filename = test_get_argument(0)"
.LC91:
	.string	"test_pass_key"
	.align 8
.LC92:
	.string	"test_evp_pkey_export_to_provider"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert_filename(%rip)
	movq	cert_filename(%rip), %rax
	leaq	.LC90(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$356, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	leaq	test_pass_key(%rip), %rsi
	leaq	.LC91(%rip), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_pkey_export_to_provider(%rip), %rsi
	leaq	.LC92(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L78:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	expected.2, @object
	.size	expected.2, 96
expected.2:
	.quad	3161751493
	.quad	65537
	.quad	2064855961
	.quad	59747
	.quad	52919
	.quad	1
	.quad	34201
	.quad	48519
	.quad	2
	.quad	52283
	.quad	3
	.quad	0
	.local	keydata.1
	.comm	keydata.1,96,32
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"test_pass_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

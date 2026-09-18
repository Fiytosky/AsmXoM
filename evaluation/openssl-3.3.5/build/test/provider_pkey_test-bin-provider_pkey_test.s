	.file	"provider_pkey_test.c"
	.text
	.local	libctx
	.comm	libctx,8,8
	.section	.rodata
.LC0:
	.string	"RSA"
.LC1:
	.string	"sig"
.LC2:
	.string	"../test/provider_pkey_test.c"
	.align 8
.LC3:
	.string	"prov = EVP_SIGNATURE_get0_provider(sig)"
.LC4:
	.string	"expected_prov"
.LC5:
	.string	"prov"
	.align 8
.LC6:
	.string	"Fetched provider: %s, Expected provider: %s"
	.text
	.type	fetch_sig, @function
fetch_sig:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_fetch@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$32, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L7
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r8
	movl	$39, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L5
.L6:
	movl	$1, -20(%rbp)
	jmp	.L5
.L7:
	nop
.L5:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movl	-20(%rbp), %eax
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	fetch_sig, .-fetch_sig
	.section	.rodata
	.align 8
.LC7:
	.string	"fake_rsa = fake_rsa_start(libctx)"
.LC8:
	.string	"default"
	.align 8
.LC9:
	.string	"deflt = OSSL_PROVIDER_load(libctx, \"default\")"
.LC10:
	.string	"provider=fake-rsa"
	.align 8
.LC11:
	.string	"fetch_sig(libctx, \"RSA\", \"provider=fake-rsa\", fake_rsa)"
.LC12:
	.string	"?provider=fake-rsa"
	.align 8
.LC13:
	.string	"fetch_sig(libctx, \"RSA\", \"?provider=fake-rsa\", fake_rsa)"
	.align 8
.LC14:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(libctx, \"RSA\", \"provider=fake-rsa\")"
.LC15:
	.string	"EVP_PKEY_fromdata_init(ctx)"
	.align 8
.LC16:
	.string	"EVP_PKEY_fromdata(ctx, &pkey, EVP_PKEY_KEYPAIR, NULL)"
.LC17:
	.string	"pkey"
.LC18:
	.string	"?provider=default"
	.align 8
.LC19:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(libctx, pkey, \"?provider=default\")"
.LC20:
	.string	"1"
.LC21:
	.string	"EVP_PKEY_sign_init(ctx)"
	.align 8
.LC22:
	.string	"EVP_PKEY_sign(ctx, NULL, &siglen, NULL, 0)"
.LC23:
	.string	"256"
.LC24:
	.string	"siglen"
	.text
	.type	test_pkey_sig, @function
test_pkey_sig:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L24
.L9:
	movq	libctx(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	libctx(%rip), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC10(%rip), %rdi
	leaq	.LC0(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	fetch_sig
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	libctx(%rip), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC12(%rip), %rdi
	leaq	.LC0(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	fetch_sig
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	libctx(%rip), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$75, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-40(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$76, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L23:
	movq	-40(%rbp), %rcx
	movq	libctx(%rip), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$91, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	-48(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$256, %r9d
	movq	%rsi, %r8
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$2, -4(%rbp)
	jle	.L23
	movl	$1, -8(%rbp)
	jmp	.L12
.L25:
	nop
	jmp	.L12
.L26:
	nop
	jmp	.L12
.L27:
	nop
	jmp	.L12
.L28:
	nop
	jmp	.L12
.L29:
	nop
	jmp	.L12
.L30:
	nop
.L12:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-8(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_pkey_sig, .-test_pkey_sig
	.section	.rodata
	.align 8
.LC25:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(libctx, \"RSA\", NULL)"
.LC26:
	.string	"0"
.LC27:
	.string	"EVP_PKEY_keygen_init(ctx)"
	.align 8
.LC28:
	.string	"provider = EVP_PKEY_CTX_get0_provider(ctx)"
	.align 8
.LC29:
	.string	"provname = OSSL_PROVIDER_get0_name(provider)"
.LC30:
	.string	"\"default\""
.LC31:
	.string	"provname"
	.align 8
.LC32:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(libctx, \"RSA\", \"?provider=fake-rsa\")"
.LC33:
	.string	"fake-rsa"
.LC34:
	.string	"\"fake-rsa\""
	.text
	.type	test_alternative_keygen_init, @function
test_alternative_keygen_init:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$130, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	libctx(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$134, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$137, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L48
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_provider@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$140, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$143, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	leaq	.LC8(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L51
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$153, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	libctx(%rip), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$156, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_provider@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	leaq	.LC33(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L56
	movl	$1, -20(%rbp)
	jmp	.L33
.L46:
	nop
	jmp	.L33
.L47:
	nop
	jmp	.L33
.L48:
	nop
	jmp	.L33
.L49:
	nop
	jmp	.L33
.L50:
	nop
	jmp	.L33
.L51:
	nop
	jmp	.L33
.L52:
	nop
	jmp	.L33
.L53:
	nop
	jmp	.L33
.L54:
	nop
	jmp	.L33
.L55:
	nop
	jmp	.L33
.L56:
	nop
.L33:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_alternative_keygen_init, .-test_alternative_keygen_init
	.section	.rodata
	.align 8
.LC35:
	.string	"params = fake_rsa_key_params(0)"
	.align 8
.LC36:
	.string	"EVP_PKEY_fromdata(ctx, &pkey_fake, EVP_PKEY_PUBLIC_KEY, params)"
.LC37:
	.string	"pkey_fake"
.LC38:
	.string	"provider=default"
	.align 8
.LC39:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(libctx, \"RSA\", \"provider=default\")"
	.align 8
.LC40:
	.string	"EVP_PKEY_fromdata(ctx, &pkey_dflt, EVP_PKEY_PUBLIC_KEY, params)"
.LC41:
	.string	"pkey_dflt"
	.align 8
.LC42:
	.string	"EVP_PKEY_eq(pkey_fake, pkey_dflt)"
	.text
	.type	test_pkey_eq, @function
test_pkey_eq:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L67
.L58:
	movq	libctx(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L68
	movl	$0, %edi
	call	fake_rsa_key_params@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	libctx(%rip), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$199, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-48(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$204, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	$0, -16(%rbp)
	movl	$0, %edi
	call	fake_rsa_key_params@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$213, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movq	libctx(%rip), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$214, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$216, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$217, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-56(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$219, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L71
	movl	$1, -20(%rbp)
	jmp	.L61
.L68:
	nop
	jmp	.L61
.L69:
	nop
	jmp	.L61
.L70:
	nop
	jmp	.L61
.L71:
	nop
.L61:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-20(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_pkey_eq, .-test_pkey_eq
	.section	.rodata
.LC43:
	.string	"fake_rsa_query_operation_name"
.LC44:
	.string	"EVP_PKEY_can_sign(pkey_fake)"
	.text
	.type	test_pkey_can_sign, @function
test_pkey_can_sign:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$250, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L81
.L73:
	movq	fake_rsa_query_operation_name@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$257, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	movl	$0, %edi
	call	fake_rsa_key_params@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$260, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	movq	libctx(%rip), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_can_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	$0, -16(%rbp)
	movq	fake_rsa_query_operation_name@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movl	$0, %edi
	call	fake_rsa_key_params@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$284, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	libctx(%rip), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$285, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_can_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$291, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L76
.L82:
	nop
	jmp	.L76
.L83:
	nop
	jmp	.L76
.L84:
	nop
.L76:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	fake_rsa_query_operation_name@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movl	-20(%rbp), %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_pkey_can_sign, .-test_pkey_can_sign
	.section	.rodata
.LC45:
	.string	"fake_rsa"
	.align 8
.LC46:
	.string	"loader = OSSL_STORE_LOADER_fetch(libctx, \"fake_rsa\", propq)"
.LC47:
	.string	"fake_rsa:test"
	.align 8
.LC48:
	.string	"ctx = OSSL_STORE_open_ex(\"fake_rsa:test\", libctx, propq, NULL, NULL, NULL, NULL, NULL)"
.LC49:
	.string	"EVP_PKEY_is_a(pkey, \"RSA\")"
	.text
	.type	test_pkey_store, @function
test_pkey_store:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L86
	leaq	.LC12(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L87
.L86:
	leaq	.LC18(%rip), %rax
	movq	%rax, -40(%rbp)
.L87:
	movq	libctx(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$326, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L100
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$329, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$332, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC47(%rip), %rdi
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$338, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	jmp	.L93
.L96:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	cmpl	$4, %eax
	jne	.L94
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get1_PKEY@PLT
	movq	%rax, -24(%rbp)
.L94:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	movq	$0, -64(%rbp)
.L93:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	jne	.L95
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L95
	cmpq	$0, -24(%rbp)
	je	.L96
.L95:
	movq	-24(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$351, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L104
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$351, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L104
	movl	$1, -12(%rbp)
	jmp	.L89
.L100:
	nop
	jmp	.L89
.L101:
	nop
	jmp	.L89
.L102:
	nop
	jmp	.L89
.L103:
	nop
	jmp	.L89
.L104:
	nop
.L89:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_pkey_store, .-test_pkey_store
	.section	.rodata
	.align 8
.LC50:
	.string	"OSSL_STORE_delete(\"fake_rsa:test\", libctx, propq, NULL, NULL, NULL)"
.LC51:
	.string	"OSSL_STORE_close(ctx)"
.LC52:
	.string	"info"
	.text
	.type	test_pkey_delete, @function
test_pkey_delete:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$376, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L123
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$379, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$382, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L125
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC47(%rip), %rdi
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$389, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L126
	jmp	.L111
.L114:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	cmpl	$4, %eax
	jne	.L112
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get1_PKEY@PLT
	movq	%rax, -24(%rbp)
.L112:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	movq	$0, -64(%rbp)
.L111:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L113
	cmpq	$0, -24(%rbp)
	je	.L114
.L113:
	movq	-24(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$402, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L127
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$402, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L127
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -24(%rbp)
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC47(%rip), %rdi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	OSSL_STORE_delete@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L128
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$410, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L129
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC47(%rip), %rdi
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$414, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	jmp	.L120
.L121:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$420, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L131
.L120:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	je	.L121
	movl	$1, -12(%rbp)
	jmp	.L107
.L123:
	nop
	jmp	.L107
.L124:
	nop
	jmp	.L107
.L125:
	nop
	jmp	.L107
.L126:
	nop
	jmp	.L107
.L127:
	nop
	jmp	.L107
.L128:
	nop
	jmp	.L107
.L129:
	nop
	jmp	.L107
.L130:
	nop
	jmp	.L107
.L131:
	nop
.L107:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	call	fake_rsa_restore_store_state@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_pkey_delete, .-test_pkey_delete
	.section	.rodata
.LC53:
	.string	"Passphrase Testing"
	.text
	.type	fake_pw_read_string, @function
fake_pw_read_string:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_string_type@PLT
	cmpl	$1, %eax
	jne	.L133
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	UI_set_result@PLT
	movl	$1, %eax
	jmp	.L134
.L133:
	movl	$0, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	fake_pw_read_string, .-fake_pw_read_string
	.section	.rodata
.LC54:
	.string	"PW Callbacks"
	.align 8
.LC55:
	.string	"ui_method= UI_create_method(\"PW Callbacks\")"
.LC56:
	.string	"fake_rsa:openpwtest"
	.align 8
.LC57:
	.string	"ctx = OSSL_STORE_open_ex(\"fake_rsa:openpwtest\", libctx, propq, ui_method, NULL, NULL, NULL, NULL)"
	.align 8
.LC58:
	.string	"ctx = OSSL_STORE_open_ex(\"fake_rsa:openpwtest\", libctx, propq, NULL, NULL, NULL, NULL, NULL)"
	.text
	.type	test_pkey_store_open_ex, @function
test_pkey_store_open_ex:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$458, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L145
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	fake_rsa_start@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$461, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L146
	movq	libctx(%rip), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$464, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L147
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdi
	call	UI_create_method@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$470, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L148
	leaq	fake_pw_read_string(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_reader@PLT
	testl	%eax, %eax
	jne	.L149
	movq	libctx(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC56(%rip), %rdi
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$476, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L150
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movq	libctx(%rip), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC56(%rip), %rdi
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$482, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L151
	movl	$1, -12(%rbp)
	jmp	.L137
.L145:
	nop
	jmp	.L137
.L146:
	nop
	jmp	.L137
.L147:
	nop
	jmp	.L137
.L148:
	nop
	jmp	.L137
.L149:
	nop
	jmp	.L137
.L150:
	nop
	jmp	.L137
.L151:
	nop
.L137:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_destroy_method@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_finish@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_pkey_store_open_ex, .-test_pkey_store_open_ex
	.section	.rodata
.LC59:
	.string	"test_pkey_sig"
.LC60:
	.string	"test_alternative_keygen_init"
.LC61:
	.string	"test_pkey_eq"
.LC62:
	.string	"test_pkey_can_sign"
.LC63:
	.string	"test_pkey_store"
.LC64:
	.string	"test_pkey_delete"
.LC65:
	.string	"test_pkey_store_open_ex"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, libctx(%rip)
	movq	libctx(%rip), %rax
	testq	%rax, %rax
	jne	.L153
	movl	$0, %eax
	jmp	.L154
.L153:
	leaq	test_pkey_sig(%rip), %rdx
	leaq	.LC59(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_alternative_keygen_init(%rip), %rdx
	leaq	.LC60(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_eq(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_can_sign(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_store(%rip), %rsi
	leaq	.LC63(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_pkey_delete(%rip), %rdx
	leaq	.LC64(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_store_open_ex(%rip), %rdx
	leaq	.LC65(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L154:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB484:
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
.LFE484:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

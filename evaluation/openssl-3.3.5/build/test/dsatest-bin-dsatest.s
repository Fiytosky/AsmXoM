	.file	"dsatest.c"
	.text
	.data
	.align 32
	.type	out_p, @object
	.size	out_p, 64
out_p:
	.base64	"jfKklEkidqo9JXWbsGhpy+rA2Dr7jQz3y7gyTw14guXQdi/FtyEOr8Lprawyq3qsSWk9+/g3JMLsBzbuMcgCkQ=="
	.align 16
	.type	out_q, @object
	.size	out_q, 20
out_q:
	.base64	"x3MhjHN+yO6ZO08t7TD0jtrOkV8="
	.align 32
	.type	out_g, @object
	.size	out_g, 64
out_g:
	.base64	"Ym0CeDnqChNBMWOlW0y1ACmdVSKVbO/LO/8Q85nOLC5xy53l+iS6v1jlt5UhklycxC6fb0ZLCIzFcq9T5teIAg=="
	.section	.rodata
.LC0:
	.string	"cb = BN_GENCB_new()"
.LC1:
	.string	"../test/dsatest.c"
.LC2:
	.string	"dsa = DSA_new()"
	.align 8
.LC3:
	.string	"DSA_generate_parameters_ex(dsa, 512, seed, 20, &counter, &h, cb)"
.LC4:
	.string	"105"
.LC5:
	.string	"counter"
.LC6:
	.string	"2"
.LC7:
	.string	"h"
.LC8:
	.string	"j"
.LC9:
	.string	"i"
.LC10:
	.string	"out_q"
.LC11:
	.string	"buf"
.LC12:
	.string	"out_p"
.LC13:
	.string	"out_g"
.LC14:
	.string	"DSA_generate_key(dsa)"
	.align 8
.LC15:
	.string	"DSA_sign(0, str1, 20, sig, &siglen, dsa)"
.LC16:
	.string	"0"
	.align 8
.LC17:
	.string	"DSA_verify(0, str1, 20, sig, siglen, dsa)"
	.text
	.type	dsa_test, @function
dsa_test:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -600(%rbp)
	movq	$0, -608(%rbp)
	call	BN_GENCB_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	leaq	dsa_cb(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set@PLT
	call	DSA_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$86, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	leaq	-312(%rbp), %rsi
	leaq	-36(%rbp), %rcx
	leaq	seed.11(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$20, %ecx
	movl	$512, %esi
	movq	%rax, %rdi
	call	DSA_generate_parameters_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	movl	-36(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$105, %r9d
	movl	%esi, %r8d
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L19
	movq	-312(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L20
	leaq	-608(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pqg@PLT
	movq	-600(%rbp), %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -28(%rbp)
	movl	$20, -32(%rbp)
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L21
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	leaq	-304(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	out_q(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L21
	movq	-592(%rbp), %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -28(%rbp)
	movl	$64, -32(%rbp)
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L22
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	leaq	-304(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	out_p(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L22
	movq	-608(%rbp), %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -28(%rbp)
	movl	$64, -32(%rbp)
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	leaq	-304(%rbp), %rdi
	leaq	.LC13(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	out_g(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_generate_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rcx
	leaq	-580(%rbp), %rdx
	leaq	-576(%rbp), %rax
	leaq	str1.10(%rip), %rsi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movl	-580(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	leaq	-576(%rbp), %rax
	leaq	str1.10(%rip), %rsi
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$0, %edi
	call	DSA_verify@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L26
	movl	$1, -12(%rbp)
	jmp	.L3
.L17:
	nop
	jmp	.L3
.L18:
	nop
	jmp	.L3
.L19:
	nop
	jmp	.L3
.L20:
	nop
	jmp	.L3
.L21:
	nop
	jmp	.L3
.L22:
	nop
	jmp	.L3
.L23:
	nop
	jmp	.L3
.L24:
	nop
	jmp	.L3
.L25:
	nop
	jmp	.L3
.L26:
	nop
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	dsa_test, .-dsa_test
	.section	.rodata
.LC18:
	.string	"dsa_cb error"
	.text
	.type	dsa_cb, @function
dsa_cb:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L28
	movl	num.9(%rip), %eax
	addl	$1, %eax
	movl	%eax, num.9(%rip)
.L28:
	cmpl	$2, -4(%rbp)
	jne	.L29
	movl	ok.8(%rip), %eax
	addl	$1, %eax
	movl	%eax, ok.8(%rip)
.L29:
	movl	ok.8(%rip), %eax
	testl	%eax, %eax
	jne	.L30
	cmpl	$0, -4(%rbp)
	jne	.L30
	movl	num.9(%rip), %eax
	cmpl	$1, %eax
	jle	.L30
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	dsa_cb, .-dsa_cb
	.section	.rodata
	.align 8
.LC19:
	.string	"p_in = BN_bin2bn(expected_p, sizeof(expected_p), NULL)"
	.align 8
.LC20:
	.string	"q_in = BN_bin2bn(expected_q, sizeof(expected_q), NULL)"
	.align 8
.LC21:
	.string	"g_in = BN_bin2bn(expected_g, sizeof(expected_g), NULL)"
.LC22:
	.string	"DSA"
	.align 8
.LC23:
	.string	"pg_ctx = EVP_PKEY_CTX_new_from_name(NULL, \"DSA\", NULL)"
	.align 8
.LC24:
	.string	"EVP_PKEY_paramgen_init(pg_ctx)"
	.align 8
.LC25:
	.string	"EVP_PKEY_CTX_gettable_params(pg_ctx)"
	.align 8
.LC26:
	.string	"settables = EVP_PKEY_CTX_settable_params(pg_ctx)"
.LC27:
	.string	"pbits"
	.align 8
.LC28:
	.string	"OSSL_PARAM_locate_const(settables, OSSL_PKEY_PARAM_FFC_PBITS)"
.LC29:
	.string	"fips186_4"
	.align 8
.LC30:
	.string	"EVP_PKEY_CTX_set_dsa_paramgen_type(pg_ctx, \"fips186_4\")"
	.align 8
.LC31:
	.string	"EVP_PKEY_CTX_set_dsa_paramgen_bits(pg_ctx, 2048)"
	.align 8
.LC32:
	.string	"EVP_PKEY_CTX_set_dsa_paramgen_q_bits(pg_ctx, 224)"
	.align 8
.LC33:
	.string	"EVP_PKEY_CTX_set_dsa_paramgen_seed(pg_ctx, seed_data, sizeof(seed_data))"
.LC34:
	.string	""
.LC35:
	.string	"SHA256"
	.align 8
.LC36:
	.string	"EVP_PKEY_CTX_set_dsa_paramgen_md_props(pg_ctx, \"SHA256\", \"\")"
	.align 8
.LC37:
	.string	"EVP_PKEY_generate(pg_ctx, &param_key)"
	.align 8
.LC38:
	.string	"kg_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, param_key, NULL)"
.LC39:
	.string	"EVP_PKEY_keygen_init(kg_ctx)"
	.align 8
.LC40:
	.string	"EVP_PKEY_generate(kg_ctx, &key)"
.LC41:
	.string	"p"
	.align 8
.LC42:
	.string	"EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_FFC_P, &p_out)"
.LC43:
	.string	"p_out"
.LC44:
	.string	"p_in"
.LC45:
	.string	"q"
	.align 8
.LC46:
	.string	"EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_FFC_Q, &q_out)"
.LC47:
	.string	"q_out"
.LC48:
	.string	"q_in"
.LC49:
	.string	"g"
	.align 8
.LC50:
	.string	"EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_FFC_G, &g_out)"
.LC51:
	.string	"g_out"
.LC52:
	.string	"g_in"
.LC53:
	.string	"seed"
	.align 8
.LC54:
	.string	"EVP_PKEY_get_octet_string_param( key, OSSL_PKEY_PARAM_FFC_SEED, seed_out, sizeof(seed_out), &len)"
.LC55:
	.string	"seed_data"
.LC56:
	.string	"seed_out"
.LC57:
	.string	"gindex"
	.align 8
.LC58:
	.string	"EVP_PKEY_get_int_param(key, OSSL_PKEY_PARAM_FFC_GINDEX, &gindex_out)"
.LC59:
	.string	"-1"
.LC60:
	.string	"gindex_out"
.LC61:
	.string	"hindex"
	.align 8
.LC62:
	.string	"EVP_PKEY_get_int_param(key, OSSL_PKEY_PARAM_FFC_H, &hcount_out)"
.LC63:
	.string	"expected_h"
.LC64:
	.string	"hcount_out"
.LC65:
	.string	"pcounter"
	.align 8
.LC66:
	.string	"EVP_PKEY_get_int_param(key, OSSL_PKEY_PARAM_FFC_PCOUNTER, &pcount_out)"
.LC67:
	.string	"expected_c"
.LC68:
	.string	"pcount_out"
.LC69:
	.string	"group"
	.align 8
.LC70:
	.string	"EVP_PKEY_get_utf8_string_param(key, OSSL_PKEY_PARAM_GROUP_NAME, group_out, sizeof(group_out), &len)"
	.text
	.type	dsa_keygen_test, @function
dsa_keygen_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -56(%rbp)
	movl	$1316, -60(%rbp)
	movl	$2, -64(%rbp)
	leaq	expected_p.7(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$244, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	leaq	expected_q.6(%rip), %rax
	movl	$0, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$245, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	leaq	expected_g.5(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$246, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	leaq	.LC22(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$248, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_settable_params@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC27(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC29(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_bits@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_q_bits@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	seed_data.4(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_seed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC34(%rip), %rdx
	leaq	.LC35(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_md_props@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$259, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$261, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L42
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L42
	movq	-80(%rbp), %rax
	leaq	-88(%rbp), %rdx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$267, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$269, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-104(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$271, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$272, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-200(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	.LC53(%rip), %rsi
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$273, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movq	-200(%rbp), %r8
	leaq	-160(%rbp), %rdi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$28
	leaq	seed_data.4(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-108(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	-108(%rbp), %esi
	leaq	.LC59(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$279, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-116(%rbp), %rdx
	leaq	.LC61(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$280, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	-116(%rbp), %esi
	movl	-64(%rbp), %edi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	.LC65(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	-112(%rbp), %esi
	movl	-60(%rbp), %edi
	leaq	.LC67(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$286, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	leaq	-200(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	.LC69(%rip), %rsi
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movl	$1, -4(%rbp)
	jmp	.L35
.L41:
	nop
	jmp	.L35
.L42:
	nop
	jmp	.L35
.L43:
	nop
.L35:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	dsa_keygen_test, .-dsa_keygen_test
	.section	.rodata
	.align 8
.LC71:
	.string	"gen_ctx = EVP_PKEY_CTX_new_from_name(NULL, \"DSA\", NULL)"
	.align 8
.LC72:
	.string	"EVP_PKEY_paramgen_init(gen_ctx)"
	.align 8
.LC73:
	.string	"EVP_PKEY_CTX_set_dsa_paramgen_bits(gen_ctx, 512)"
	.align 8
.LC74:
	.string	"EVP_PKEY_generate(gen_ctx, &params)"
	.align 8
.LC75:
	.string	"check_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, params, NULL)"
	.align 8
.LC76:
	.string	"EVP_PKEY_param_check(check_ctx)"
	.text
	.type	test_dsa_default_paramgen_validate, @function
test_dsa_default_paramgen_validate:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC22(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$314, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L45
	cmpl	$0, -36(%rbp)
	je	.L46
	movq	-16(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_bits@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$317, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
.L46:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$318, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L45
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$319, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L45
	movl	$1, %eax
	jmp	.L47
.L45:
	movl	$0, %eax
.L47:
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_dsa_default_paramgen_validate, .-test_dsa_default_paramgen_validate
	.section	.rodata
	.align 8
.LC77:
	.string	"p = BN_bin2bn(out_p, sizeof(out_p), NULL)"
	.align 8
.LC78:
	.string	"q = BN_bin2bn(out_q, sizeof(out_q), NULL)"
	.align 8
.LC79:
	.string	"g = BN_bin2bn(out_g, sizeof(out_g), NULL)"
	.align 8
.LC80:
	.string	"pub = BN_bin2bn(out_pub, sizeof(out_pub), NULL)"
	.align 8
.LC81:
	.string	"priv = BN_bin2bn(out_priv, sizeof(out_priv), NULL)"
.LC82:
	.string	"priv2 = BN_dup(priv)"
.LC83:
	.string	"badq = BN_new()"
.LC84:
	.string	"BN_set_word(badq, 1)"
.LC85:
	.string	"badpriv = BN_new()"
.LC86:
	.string	"BN_set_word(badpriv, 0)"
.LC87:
	.string	"DSA_set0_pqg(dsa, p, q, g)"
.LC88:
	.string	"DSA_set0_key(dsa, pub, priv)"
.LC89:
	.string	"sizeof(signature)"
.LC90:
	.string	"DSA_size(dsa)"
	.align 8
.LC91:
	.string	"DSA_sign(0, msg, sizeof(msg), NULL, &signature_len0, dsa)"
.LC92:
	.string	"signature_len0"
	.align 8
.LC93:
	.string	"DSA_sign(0, msg, sizeof(msg), signature, &signature_len, dsa)"
.LC94:
	.string	"signature_len"
	.align 8
.LC95:
	.string	"DSA_set0_key(dsa, NULL, badpriv)"
	.align 8
.LC96:
	.string	"DSA_set0_key(dsa, NULL, priv2)"
	.align 8
.LC97:
	.string	"DSA_set0_pqg(dsa, NULL, badq, NULL)"
	.text
	.type	test_dsa_sig_infinite_loop, @function
test_dsa_sig_infinite_loop:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movb	$0, -81(%rbp)
	leaq	out_p(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$354, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	leaq	out_q(%rip), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$355, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	leaq	out_g(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$356, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	leaq	out_pub.3(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$357, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	leaq	out_priv.2(%rip), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$358, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$359, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$361, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$362, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$363, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	call	DSA_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$364, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$371, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_size@PLT
	movl	%eax, %esi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$64, %r9d
	movl	%esi, %r8d
	movl	$375, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L69
	movq	-16(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$379, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movl	-88(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$380, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L70
	movq	-16(%rbp), %rsi
	leaq	-92(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$383, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$384, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L71
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC92(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$385, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L71
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$389, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-92(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$392, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L73
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$396, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	$0, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	DSA_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$399, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-92(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$402, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L76
	movl	$1, -4(%rbp)
	jmp	.L52
.L66:
	nop
	jmp	.L52
.L67:
	nop
	jmp	.L52
.L68:
	nop
	jmp	.L52
.L69:
	nop
	jmp	.L52
.L70:
	nop
	jmp	.L52
.L71:
	nop
	jmp	.L52
.L72:
	nop
	jmp	.L52
.L73:
	nop
	jmp	.L52
.L74:
	nop
	jmp	.L52
.L75:
	nop
	jmp	.L52
.L76:
	nop
.L52:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_dsa_sig_infinite_loop, .-test_dsa_sig_infinite_loop
	.type	test_dsa_sig_neg_param, @function
test_dsa_sig_neg_param:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movb	$0, -57(%rbp)
	leaq	out_p(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$443, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	leaq	out_q(%rip), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$444, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	leaq	out_g(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$445, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	leaq	out_pub.1(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$446, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	leaq	out_priv.0(%rip), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$447, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	call	DSA_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$448, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$451, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movl	$1, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$455, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-16(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-57(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L92
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-16(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-57(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$465, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-16(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-57(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$470, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L94
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-16(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-57(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$476, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L95
	movl	$1, -4(%rbp)
	jmp	.L80
.L89:
	nop
	jmp	.L80
.L90:
	nop
	jmp	.L80
.L91:
	nop
	jmp	.L80
.L92:
	nop
	jmp	.L80
.L93:
	nop
	jmp	.L80
.L94:
	nop
	jmp	.L80
.L95:
	nop
.L80:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpl	$0, -8(%rbp)
	jne	.L87
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L87:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_dsa_sig_neg_param, .-test_dsa_sig_neg_param
	.section	.rodata
.LC98:
	.string	"dsa_test"
.LC99:
	.string	"dsa_keygen_test"
.LC100:
	.string	"test_dsa_sig_infinite_loop"
.LC101:
	.string	"test_dsa_sig_neg_param"
	.align 8
.LC102:
	.string	"test_dsa_default_paramgen_validate"
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
	leaq	dsa_test(%rip), %rdx
	leaq	.LC98(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dsa_keygen_test(%rip), %rdx
	leaq	.LC99(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dsa_sig_infinite_loop(%rip), %rdx
	leaq	.LC100(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dsa_sig_neg_param(%rip), %rdx
	leaq	.LC101(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dsa_default_paramgen_validate(%rip), %rsi
	leaq	.LC102(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.data
	.align 16
	.type	seed.11, @object
	.size	seed.11, 20
seed.11:
	.base64	"1QFOS2DvK6i2IRtAYroyJOBCfdM="
	.section	.rodata
	.align 16
	.type	str1.10, @object
	.size	str1.10, 21
str1.10:
	.string	"12345678901234567890"
	.local	num.9
	.comm	num.9,4,4
	.local	ok.8
	.comm	ok.8,4,4
	.align 32
	.type	expected_p.7, @object
	.size	expected_p.7, 256
expected_p.7:
	.base64	"20cHr/AGSVXJuwlBuNsfvKjtEgZ/iEm4yRKHIbsIbL3xie+E2XqT6EVAgew3JxqkIlGZ8N4E2+qh+TeDgJY2U/auFHMzD98L+S8IRjH5Zs1a62zzu3TziPAxXKTID4bzD5/AjFfkf5WzYshOrvPYFMxHwktP76/Nz7K76L4IyhWQWTXvNRz+6zMuJSJXnFUjDG/tfLbHNgvLK2ohoR1Vd9mRzcHNPYIWnKATpYNVOnN+LEQ+cC5QkW7KO+//hTVw/2EMsbK3lG9lpFdi7yGDDz5xrn3krfvj3dYD2prYjy27kIf429zscfLbC478Gn55sRsN/HDshcLFurlpP4i8"
	.ascii	"\313"
	.align 16
	.type	expected_q.6, @object
	.size	expected_q.6, 28
expected_q.6:
	.base64	"mbag7rOmmRq2Z43BK5vOKwFyWmV2PZNp4lau1w=="
	.align 32
	.type	expected_g.5, @object
	.size	expected_g.5, 256
expected_g.5:
	.base64	"Y/i27ionr09M9ggoh0rnH0VGJ1I7f2/SKcvoERklNXaZy08b4O0yngW1vtf2WrL2Dgx+9eEF/tqvDyceQCr3pyNJLNkbCr7/x3x9YMqjGcO35EOw9XVEkEZHsaZICyGO7nXmPafTezHR0p3iivxX/YoQMeuHNj9lciMs09YXpWJYZVdq1Kj+7Fd2DLFMk+2wtPlFsz7dR/H7fSV5PfynOZBoamuu8m5kjPu43XZOSmmMlxV3smfc60pAa7lHj6arbpjAl5oM6gD9Vhp0mjJr/r3fbIJUU01wZeOLN7jkcAi3OzAnrxx382LUmlm60W6JXDSaobdPfYzcvHQlXr93"
	.ascii	"F"
	.align 16
	.type	seed_data.4, @object
	.size	seed_data.4, 28
seed_data.4:
	.base64	"pvUojFB3pWhtOvXxxkzcNZUmPwPcAD9EeyrHKQ=="
	.data
	.align 32
	.type	out_pub.3, @object
	.size	out_pub.3, 64
out_pub.3:
	.base64	"BHLujapNiWAOstQ4hKIqYF9n154k3ehQ8iNxVVOUDWsuzTDabx4sz1m+BWwHDsY4BcsMRAoIE7YPFN5K9u1Oww=="
	.align 16
	.type	out_priv.2, @object
	.size	out_priv.2, 20
out_priv.2:
	.base64	"FwCyjcskyZjQfx+DGqHEpPgPfxI="
	.align 32
	.type	out_pub.1, @object
	.size	out_pub.1, 64
out_pub.1:
	.base64	"BHLujapNiWAOstQ4hKIqYF9n154k3ehQ8iNxVVOUDWsuzTDabx4sz1m+BWwHDsY4BcsMRAoIE7YPFN5K9u1Oww=="
	.align 16
	.type	out_priv.0, @object
	.size	out_priv.0, 20
out_priv.0:
	.base64	"FwCyjcskyZjQfx+DGqHEpPgPfxI="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
